`timescale 1ns / 1ps

// Top-level wrapper around the Xilinx FFT IP (xfft_0) with a Hamming window
// applied to the time-domain signal before the FFT.
//
// Data path:
//   in_real / in_imag → hamming_window → AXI4-Stream → xfft_0 → abs_sq → peak_detector
//
// This is a near-copy of fft_naive_top.v with one extra block (hamming_window)
// inserted on the input path. Everything downstream of the FFT IP — sign
// extension into the AXI lanes, |FFT|^2, and the peak detector — is unchanged.
//
// FFT config word (s_axis_config_tdata) for xfft_0:
//   bit 0      : FWD_INV = 1 -> forward FFT
//   bits [8:1] : SCALE_SCH = 8'b1010_1010
//                For 256-pt pipelined-streaming scaled FFT, total 1/256 scaling.
//   bits [15:9]: unused/padding = 0

module fft_windowed_top #(
    parameter integer DATA_WIDTH       = 12,
    parameter integer INDEX_WIDTH      = 8,
    parameter integer AXIS_LANE_WIDTH  = 16,
    parameter integer AXIS_DATA_WIDTH  = 32,
    parameter integer FFT_CONFIG_WIDTH = 16,
    parameter integer FRAME_LEN        = 256,
    // Hamming-window parameters
    parameter integer COEF_WIDTH       = 16,
    parameter integer COEF_FRAC        = 15,
    parameter         COEF_FILE        = "hamming_256.mem",
    // FFT config (same as Part 1)
    parameter [FFT_CONFIG_WIDTH-1:0] FFT_CONFIG_TDATA = 16'h0155
) (
    input  wire                         clk,
    input  wire                         rst,

    input  wire                         in_valid,
    output wire                         in_ready,
    input  wire                         in_last,
    input  wire signed [DATA_WIDTH-1:0] in_real,
    input  wire signed [DATA_WIDTH-1:0] in_imag,

    output wire [INDEX_WIDTH-1:0]       peak_index,
    output wire [(2*DATA_WIDTH):0]      peak_value,
    output wire                         peak_valid,

    // Debug taps for the FFT IP output stream
    output wire                         fft_out_valid,
    output wire                         fft_out_last,
    output wire [INDEX_WIDTH-1:0]       fft_xk_index,
    output wire [(2*DATA_WIDTH):0]      fft_abs_sq

);

    localparam integer MAG_WIDTH = (2 * DATA_WIDTH) + 1;

    // -------------------------------------------------------------------------
    // Stage 1 — Hamming window (combinational data path)
    // -------------------------------------------------------------------------
    wire                         win_valid;
    wire                         win_ready;
    wire                         win_last;
    wire signed [DATA_WIDTH-1:0] win_real;
    wire signed [DATA_WIDTH-1:0] win_imag;

    hamming_window #(
        .DATA_WIDTH(DATA_WIDTH),
        .COEF_WIDTH(COEF_WIDTH),
        .COEF_FRAC (COEF_FRAC),
        .FRAME_LEN (FRAME_LEN),
        .COEF_FILE (COEF_FILE)
    ) u_hamming_window (
        .clk      (clk),
        .rst      (rst),

        .in_valid (in_valid),
        .in_ready (in_ready),
        .in_last  (in_last),
        .in_real  (in_real),
        .in_imag  (in_imag),

        .out_valid(win_valid),
        .out_ready(win_ready),
        .out_last (win_last),
        .out_real (win_real),
        .out_imag (win_imag),

        .sample_index_dbg(),
        .coef_dbg        ()
    );

    assign win_out_valid = win_valid;
    assign win_out_real  = win_real;
    assign win_out_imag  = win_imag;

    // -------------------------------------------------------------------------
    // Config handshake — send FFT_CONFIG_TDATA once after reset, then lock data
    // -------------------------------------------------------------------------
    reg config_valid;
    reg config_done;

    wire config_ready;
    wire fft_in_ready;

    always @(posedge clk) begin
        if (rst) begin
            config_valid <= 1'b1;
            config_done  <= 1'b0;
        end else begin
            if (config_valid && config_ready) begin
                config_valid <= 1'b0;
                config_done  <= 1'b1;
            end
        end
    end

    // -------------------------------------------------------------------------
    // Stage 2 — AXI4-Stream into the FFT IP, gated until config is accepted
    // -------------------------------------------------------------------------
    wire [AXIS_DATA_WIDTH-1:0] fft_in_tdata;
    wire                       fft_in_tvalid;
    wire                       fft_in_tlast;

    assign fft_in_tvalid = win_valid & config_done;
    assign fft_in_tlast  = win_last  & config_done;
    assign win_ready     = fft_in_ready & config_done;

    // Sign-extend each 12-bit windowed operand into its 16-bit AXI lane.
    assign fft_in_tdata = {
        {(AXIS_LANE_WIDTH-DATA_WIDTH){win_imag[DATA_WIDTH-1]}},
        win_imag,
        {(AXIS_LANE_WIDTH-DATA_WIDTH){win_real[DATA_WIDTH-1]}},
        win_real
    };

    // -------------------------------------------------------------------------
    // FFT IP output side
    // -------------------------------------------------------------------------
    wire [AXIS_DATA_WIDTH-1:0] fft_out_tdata;
    wire [INDEX_WIDTH-1:0]     fft_out_tuser;
    wire                       fft_out_tvalid;
    wire                       fft_out_tready;
    wire                       fft_out_tlast;

    // Downstream (abs_sq + peak_detector) never stalls; tready stays high.
    assign fft_out_tready = 1'b1;
    assign fft_out_valid  = fft_out_tvalid;
    assign fft_out_last   = fft_out_tlast;
    assign fft_xk_index   = fft_out_tuser[INDEX_WIDTH-1:0];

    wire signed [DATA_WIDTH-1:0] fft_real = fft_out_tdata[DATA_WIDTH-1:0];
    wire signed [DATA_WIDTH-1:0] fft_imag = fft_out_tdata[AXIS_LANE_WIDTH+DATA_WIDTH-1:AXIS_LANE_WIDTH];

    // -------------------------------------------------------------------------
    // Xilinx FFT IP instantiation — same xfft_0 used in fft_naive_top.v
    // -------------------------------------------------------------------------
    xfft_0 u_xfft_0 (
        .aclk   (clk),
        .aresetn(~rst),

        .s_axis_config_tdata (FFT_CONFIG_TDATA),
        .s_axis_config_tvalid(config_valid),
        .s_axis_config_tready(config_ready),

        .s_axis_data_tdata (fft_in_tdata),
        .s_axis_data_tvalid(fft_in_tvalid),
        .s_axis_data_tready(fft_in_ready),
        .s_axis_data_tlast (fft_in_tlast),

        .m_axis_data_tdata (fft_out_tdata),
        .m_axis_data_tuser (fft_out_tuser),
        .m_axis_data_tvalid(fft_out_tvalid),
        .m_axis_data_tready(fft_out_tready),
        .m_axis_data_tlast (fft_out_tlast)
    );

    // -------------------------------------------------------------------------
    // |FFT[k]|^2 = real^2 + imag^2
    // -------------------------------------------------------------------------
    abs_sq #(
        .IN_WIDTH (DATA_WIDTH),
        .OUT_WIDTH(MAG_WIDTH)
    ) u_abs_sq (
        .real_in   (fft_real),
        .imag_in   (fft_imag),
        .abs_sq_out(fft_abs_sq)
    );

    // -------------------------------------------------------------------------
    // Peak detector — finds the bin with max |FFT|^2 per frame
    // -------------------------------------------------------------------------
    peak_detector #(
        .MAG_WIDTH  (MAG_WIDTH),
        .INDEX_WIDTH(INDEX_WIDTH)
    ) u_peak_detector (
        .clk         (clk),
        .rst         (rst),
        .sample_valid(fft_out_valid),
        .frame_end   (fft_out_valid && fft_out_last),
        .abs_sq      (fft_abs_sq),
        .xk_index    (fft_xk_index),
        .peak_index  (peak_index),
        .peak_value  (peak_value),
        .peak_valid  (peak_valid)
    );

endmodule
