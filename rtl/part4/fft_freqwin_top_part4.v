`timescale 1ns / 1ps

// Part 3 top: raw FFT followed by the three-term frequency-domain Hamming
// equivalent, then the same abs_sq and peak_detector blocks used by Part 1/2.
//
// Debug ports added so waveform viewer shows abs_sq and xk_index at the
// three-term output (tt_*) -- same signals as fft_abs_sq / fft_xk_index
// in Part 1 and Part 2 tops.
module fft_freqwin_top_part4 #(
    parameter integer N                = 256,
    parameter integer LOG2N            = 8,
    parameter integer IN_W             = 16,
    parameter integer FFT_W            = 12,
    parameter integer ABS_W            = (2 * FFT_W) + 1,
    parameter integer FFT_CONFIG_WIDTH = 16,
    parameter [FFT_CONFIG_WIDTH-1:0] FFT_CONFIG_TDATA = 16'h0155
) (
    input  wire                    clk,
    input  wire                    rst_n,

    input  wire signed [IN_W-1:0]  s_axis_data_tdata_re,
    input  wire signed [IN_W-1:0]  s_axis_data_tdata_im,
    input  wire                    s_axis_data_tvalid,
    input  wire                    s_axis_data_tlast,
    output wire                    s_axis_data_tready,

    output wire [LOG2N-1:0]        peak_index_o,
    output wire [ABS_W-1:0]        peak_value_o,
    output wire                    peak_valid_o,

    // ------------------------------------------------------------------
    // Debug / waveform ports  (equivalent to Part 1/2 fft_abs_sq etc.)
    // ------------------------------------------------------------------
    output wire [ABS_W-1:0]        fft_abs_sq,      // |X_three_term(k)|^2
    output wire [LOG2N-1:0]        fft_xk_index,    // bin index
    output wire                    fft_out_valid,   // tt_valid
    output wire                    fft_out_last     // tt_last
);

    localparam integer AXIS_DATA_W = 2 * IN_W;

    reg  config_valid;
    reg  config_done;
    wire config_ready;
    wire fft_in_ready;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            config_valid <= 1'b1;
            config_done  <= 1'b0;
        end else if (config_valid && config_ready) begin
            config_valid <= 1'b0;
            config_done  <= 1'b1;
        end
    end

    wire [AXIS_DATA_W-1:0] fft_in_tdata;
    wire                  fft_in_tvalid;
    wire                  fft_in_tlast;

    assign fft_in_tvalid       = s_axis_data_tvalid & config_done;
    assign fft_in_tlast        = s_axis_data_tlast  & config_done;
    assign s_axis_data_tready  = fft_in_ready & config_done;

    assign fft_in_tdata = {
        {(IN_W-FFT_W){s_axis_data_tdata_im[FFT_W-1]}},
        s_axis_data_tdata_im[FFT_W-1:0],
        {(IN_W-FFT_W){s_axis_data_tdata_re[FFT_W-1]}},
        s_axis_data_tdata_re[FFT_W-1:0]
    };

    wire [AXIS_DATA_W-1:0] fft_out_tdata;
    wire [LOG2N-1:0]      fft_out_tuser;
    wire                  fft_out_tvalid;
    wire                  fft_out_tready;
    wire                  fft_out_tlast;

    assign fft_out_tready = 1'b1;

    xfft_0 u_xfft_0 (
        .aclk   (clk),
        .aresetn(rst_n),

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

    wire signed [FFT_W-1:0] fft_re = fft_out_tdata[FFT_W-1:0];
    wire signed [FFT_W-1:0] fft_im = fft_out_tdata[IN_W+FFT_W-1:IN_W];

    wire signed [FFT_W-1:0] tt_re;
    wire signed [FFT_W-1:0] tt_im;
    wire [LOG2N-1:0]       tt_index;
    wire                   tt_valid;
    wire                   tt_last;

    three_term_part4 #(
        .N     (N),
        .LOG2N (LOG2N),
        .W     (FFT_W)
    ) u_three_term (
        .clk          (clk),
        .rst_n        (rst_n),
        .xk_re_in     (fft_re),
        .xk_im_in     (fft_im),
        .xk_index_in  (fft_out_tuser),
        .xk_valid_in  (fft_out_tvalid),
        .xk_last_in   (fft_out_tlast),
        .xk_re_out    (tt_re),
        .xk_im_out    (tt_im),
        .xk_index_out (tt_index),
        .xk_valid_out (tt_valid),
        .xk_last_out  (tt_last)
    );

    reg signed [FFT_W-1:0]     abs_re_d0;
    reg signed [FFT_W-1:0]     abs_im_d0;
    reg [LOG2N-1:0]            abs_index_d0;
    reg                        abs_valid_d0;
    reg                        abs_last_d0;

    reg signed [(2*FFT_W)-1:0] abs_real_sq_d1;
    reg signed [(2*FFT_W)-1:0] abs_imag_sq_d1;
    reg [LOG2N-1:0]            abs_index_d1;
    reg                        abs_valid_d1;
    reg                        abs_last_d1;

    reg [ABS_W-1:0]            abs_sq_value;
    reg [LOG2N-1:0]            abs_index_d2;
    reg                        abs_valid_d2;
    reg                        abs_last_d2;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            abs_re_d0      <= {FFT_W{1'b0}};
            abs_im_d0      <= {FFT_W{1'b0}};
            abs_index_d0   <= {LOG2N{1'b0}};
            abs_valid_d0   <= 1'b0;
            abs_last_d0    <= 1'b0;

            abs_real_sq_d1 <= {(2*FFT_W){1'b0}};
            abs_imag_sq_d1 <= {(2*FFT_W){1'b0}};
            abs_index_d1   <= {LOG2N{1'b0}};
            abs_valid_d1   <= 1'b0;
            abs_last_d1    <= 1'b0;

            abs_sq_value   <= {ABS_W{1'b0}};
            abs_index_d2   <= {LOG2N{1'b0}};
            abs_valid_d2   <= 1'b0;
            abs_last_d2    <= 1'b0;
        end else begin
            abs_re_d0      <= tt_re;
            abs_im_d0      <= tt_im;
            abs_index_d0   <= tt_index;
            abs_valid_d0   <= tt_valid;
            abs_last_d0    <= tt_last;

            abs_real_sq_d1 <= abs_re_d0 * abs_re_d0;
            abs_imag_sq_d1 <= abs_im_d0 * abs_im_d0;
            abs_index_d1   <= abs_index_d0;
            abs_valid_d1   <= abs_valid_d0;
            abs_last_d1    <= abs_last_d0;

            abs_sq_value   <= {1'b0, abs_real_sq_d1} + {1'b0, abs_imag_sq_d1};
            abs_index_d2   <= abs_index_d1;
            abs_valid_d2   <= abs_valid_d1;
            abs_last_d2    <= abs_last_d1;
        end
    end

    // ------------------------------------------------------------------
    // Wire debug outputs so the waveform viewer can probe them directly,
    // matching the Part 1/2 signal naming convention.
    // ------------------------------------------------------------------
    assign fft_abs_sq    = abs_sq_value;
    assign fft_xk_index  = abs_index_d2;
    assign fft_out_valid = abs_valid_d2;
    assign fft_out_last  = abs_last_d2;

    peak_detector #(
        .MAG_WIDTH  (ABS_W),
        .INDEX_WIDTH(LOG2N)
    ) u_peak_detector (
        .clk         (clk),
        .rst         (~rst_n),
        .sample_valid(abs_valid_d2),
        .frame_end   (abs_valid_d2 && abs_last_d2),
        .abs_sq      (abs_sq_value),
        .xk_index    (abs_index_d2),
        .peak_index  (peak_index_o),
        .peak_value  (peak_value_o),
        .peak_valid  (peak_valid_o)
    );

endmodule
