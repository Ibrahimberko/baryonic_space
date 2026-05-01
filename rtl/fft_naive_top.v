`timescale 1ns / 1ps

module fft_naive_top #(
    parameter integer DATA_WIDTH       = 12,
    parameter integer INDEX_WIDTH      = 8,
    parameter integer AXIS_LANE_WIDTH  = 16,
    parameter integer AXIS_DATA_WIDTH  = 32,
    parameter integer FFT_CONFIG_WIDTH = 16,
    parameter [FFT_CONFIG_WIDTH-1:0] FFT_CONFIG_TDATA = {{(FFT_CONFIG_WIDTH-1){1'b0}}, 1'b1}
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

    output wire                         fft_out_valid,
    output wire                         fft_out_last,
    output wire [INDEX_WIDTH-1:0]       fft_xk_index,
    output wire [(2*DATA_WIDTH):0]      fft_abs_sq
);

    localparam integer MAG_WIDTH = (2 * DATA_WIDTH) + 1;

    reg config_valid;
    reg config_done;

    wire config_ready;
    wire fft_in_ready;

    wire [AXIS_DATA_WIDTH-1:0] fft_in_tdata;
    wire                       fft_in_tvalid;
    wire                       fft_in_tlast;

    wire [AXIS_DATA_WIDTH-1:0] fft_out_tdata;
    wire [INDEX_WIDTH-1:0]     fft_out_tuser;
    wire                       fft_out_tvalid;
    wire                       fft_out_tready;
    wire                       fft_out_tlast;

    wire signed [DATA_WIDTH-1:0] fft_real;
    wire signed [DATA_WIDTH-1:0] fft_imag;

    assign fft_in_tvalid = in_valid & config_done;
    assign fft_in_tlast  = in_last;
    assign in_ready      = fft_in_ready & config_done;

    assign fft_out_tready = 1'b1;
    assign fft_out_valid  = fft_out_tvalid & fft_out_tready;
    assign fft_out_last   = fft_out_tlast;
    assign fft_xk_index   = fft_out_tuser[INDEX_WIDTH-1:0];

    // Confirmed Xilinx FFT complex AXI tdata packing for this generated IP:
    //   real = tdata[11:0]
    //   imag = tdata[27:16]
    // The 4 unused upper bits in each 16-bit lane are zero-filled here.
    assign fft_in_tdata = {
        {(AXIS_LANE_WIDTH-DATA_WIDTH){1'b0}},
        in_imag,
        {(AXIS_LANE_WIDTH-DATA_WIDTH){1'b0}},
        in_real
    };

    // Confirmed Xilinx FFT output packing for this generated IP:
    //   real = tdata[11:0]
    //   imag = tdata[27:16]
    assign fft_real = fft_out_tdata[DATA_WIDTH-1:0];
    assign fft_imag = fft_out_tdata[AXIS_LANE_WIDTH + DATA_WIDTH - 1:AXIS_LANE_WIDTH];

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

    // ---------------------------------------------------------------------
    // Xilinx FFT IP placeholder instantiation.
    //
    // This project intentionally does not generate or modify xfft_0.xci.
    // Manually create the FFT IP in Vivado as xfft_0, then compare the
    // generated instantiation template with this block.
    //
    // Confirmed widths for the generated xfft_0 template:
    //   s_axis_config_tdata = [15:0]
    //   s_axis_data_tdata   = [31:0]
    //   m_axis_data_tdata   = [31:0]
    //   m_axis_data_tuser   = [7:0]
    // TODO: Paste/update the Vivado-generated xfft_0 template here only if
    // your local IP exposes additional required event/status ports.
    // ---------------------------------------------------------------------
    xfft_0 u_xfft_0 (
        .aclk(clk),
        .aresetn(~rst),

        .s_axis_config_tdata(FFT_CONFIG_TDATA),
        .s_axis_config_tvalid(config_valid),
        .s_axis_config_tready(config_ready),

        .s_axis_data_tdata(fft_in_tdata),
        .s_axis_data_tvalid(fft_in_tvalid),
        .s_axis_data_tready(fft_in_ready),
        .s_axis_data_tlast(fft_in_tlast),

        .m_axis_data_tdata(fft_out_tdata),
        .m_axis_data_tuser(fft_out_tuser),
        .m_axis_data_tvalid(fft_out_tvalid),
        .m_axis_data_tready(fft_out_tready),
        .m_axis_data_tlast(fft_out_tlast)
    );

    abs_sq #(
        .IN_WIDTH(DATA_WIDTH),
        .OUT_WIDTH(MAG_WIDTH)
    ) u_abs_sq (
        .real_in(fft_real),
        .imag_in(fft_imag),
        .abs_sq_out(fft_abs_sq)
    );

    peak_detector #(
        .MAG_WIDTH(MAG_WIDTH),
        .INDEX_WIDTH(INDEX_WIDTH)
    ) u_peak_detector (
        .clk(clk),
        .rst(rst),
        .sample_valid(fft_out_valid),
        .frame_start(fft_out_valid && (fft_xk_index == {INDEX_WIDTH{1'b0}})),
        .frame_end(fft_out_valid && fft_out_last),
        .abs_sq(fft_abs_sq),
        .xk_index(fft_xk_index),
        .peak_index(peak_index),
        .peak_value(peak_value),
        .peak_valid(peak_valid)
    );

endmodule
