`timescale 1ns / 1ps

// Part 4 top wrapper:
//   PS AXI-Lite -> DDS PINC register -> DDS Compiler -> Part 3 Windowed FFT
//   PS AXI-Lite <- peak index/value/status <- peak_detector
//
// The DDS Compiler IP must be generated as dds_compiler_0 with programmable
// PINC config input and sine/cosine AXI-stream output.
module fft_pl_ps_top #(
    parameter integer N                   = 256,
    parameter integer LOG2N               = 8,
    parameter integer IN_W                = 16,
    parameter integer DDS_SAMPLE_W        = 12,
    parameter integer DDS_LANE_W          = 16,
    parameter integer DDS_AXIS_W          = 32,
    parameter integer FFT_W               = 12,
    parameter integer ABS_W               = (2 * FFT_W) + 1,
    parameter integer FFT_CONFIG_WIDTH    = 16,
    parameter [FFT_CONFIG_WIDTH-1:0] FFT_CONFIG_TDATA = 16'h0155,
    parameter [31:0] DEFAULT_PINC         = 32'd214748365
) (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET rst_n, FREQ_HZ 200000000" *)
    input  wire                    clk,
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input  wire                    rst_n,

    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
    (* X_INTERFACE_PARAMETER = "PROTOCOL AXI4LITE, DATA_WIDTH 32, ADDR_WIDTH 4, FREQ_HZ 200000000, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1" *)
    input  wire [3:0]              s_axi_awaddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
    input  wire                    s_axi_awvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
    output wire                    s_axi_awready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
    input  wire [31:0]             s_axi_wdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
    input  wire [3:0]              s_axi_wstrb,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
    input  wire                    s_axi_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
    output wire                    s_axi_wready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
    output wire [1:0]              s_axi_bresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
    output wire                    s_axi_bvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
    input  wire                    s_axi_bready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
    input  wire [3:0]              s_axi_araddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
    input  wire                    s_axi_arvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
    output wire                    s_axi_arready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
    output wire [31:0]             s_axi_rdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
    output wire [1:0]              s_axi_rresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
    output wire                    s_axi_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
    input  wire                    s_axi_rready,

    output wire [LOG2N-1:0]        peak_index_dbg,
    output wire                    peak_valid_dbg,
    output wire [31:0]             dds_pinc_dbg
);

    wire [31:0]      dds_pinc;
    wire             dds_pinc_wr_pulse;
    wire [LOG2N-1:0] peak_index;
    wire [ABS_W-1:0] peak_value;
    wire             peak_valid;

    assign peak_index_dbg = peak_index;
    assign peak_valid_dbg = peak_valid;
    assign dds_pinc_dbg   = dds_pinc;

    part4_axi_lite_regs #(
        .ADDR_WIDTH (4),
        .DATA_WIDTH (32),
        .INDEX_WIDTH(LOG2N),
        .MAG_WIDTH  (ABS_W),
        .DEFAULT_DDS_PINC(DEFAULT_PINC)
    ) u_regs (
        .s_axi_aclk        (clk),
        .s_axi_aresetn     (rst_n),
        .s_axi_awaddr      (s_axi_awaddr),
        .s_axi_awvalid     (s_axi_awvalid),
        .s_axi_awready     (s_axi_awready),
        .s_axi_wdata       (s_axi_wdata),
        .s_axi_wstrb       (s_axi_wstrb),
        .s_axi_wvalid      (s_axi_wvalid),
        .s_axi_wready      (s_axi_wready),
        .s_axi_bresp       (s_axi_bresp),
        .s_axi_bvalid      (s_axi_bvalid),
        .s_axi_bready      (s_axi_bready),
        .s_axi_araddr      (s_axi_araddr),
        .s_axi_arvalid     (s_axi_arvalid),
        .s_axi_arready     (s_axi_arready),
        .s_axi_rdata       (s_axi_rdata),
        .s_axi_rresp       (s_axi_rresp),
        .s_axi_rvalid      (s_axi_rvalid),
        .s_axi_rready      (s_axi_rready),
        .dds_pinc          (dds_pinc),
        .dds_pinc_wr_pulse (dds_pinc_wr_pulse),
        .peak_index        (peak_index),
        .peak_value        (peak_value),
        .peak_valid        (peak_valid)
    );

    wire [31:0] dds_config_tdata;
    wire        dds_config_tvalid;
    // dds_compiler_0 is generated with Has_TREADY=false, so the config slave
    // port has no tready signal. Drive the driver's tready input always high;
    // the IP latches the config word in one cycle while tvalid is asserted.
    wire        dds_config_tready = 1'b1;

    dds_config_driver #(
        .PINC_WIDTH  (32),
        .DEFAULT_PINC(DEFAULT_PINC)
    ) u_dds_config_driver (
        .clk                 (clk),
        .rst_n               (rst_n),
        .pinc                (dds_pinc),
        .pinc_wr_pulse       (dds_pinc_wr_pulse),
        .m_axis_config_tdata (dds_config_tdata),
        .m_axis_config_tvalid(dds_config_tvalid),
        .m_axis_config_tready(dds_config_tready),
        .busy                ()
    );

    wire [DDS_AXIS_W-1:0] dds_tdata;
    wire                  dds_tvalid;

    dds_compiler_0 u_dds_compiler_0 (
        .aclk                 (clk),
        .aresetn              (rst_n),
        .s_axis_config_tdata  (dds_config_tdata),
        .s_axis_config_tvalid (dds_config_tvalid),
        // .s_axis_config_tready not present on this IP build (Has_TREADY=false)
        .m_axis_data_tdata    (dds_tdata),
        .m_axis_data_tvalid   (dds_tvalid)
    );

    // Common DDS Compiler packing for sine/cosine output is one 16-bit AXIS
    // lane per 12-bit sample. If your generated IP swaps sine and cosine,
    // swap these two assignments; the positive-frequency peak will otherwise
    // appear mirrored around DC.
    wire signed [IN_W-1:0] dds_re = {
        {(IN_W-DDS_SAMPLE_W){dds_tdata[DDS_SAMPLE_W-1]}},
        dds_tdata[DDS_SAMPLE_W-1:0]
    };
    wire signed [IN_W-1:0] dds_im = {
        {(IN_W-DDS_SAMPLE_W){dds_tdata[DDS_LANE_W+DDS_SAMPLE_W-1]}},
        dds_tdata[DDS_LANE_W +: DDS_SAMPLE_W]
    };

    wire fft_in_ready;
    reg [LOG2N-1:0] frame_count;
    localparam [LOG2N-1:0] FRAME_LAST_INDEX = N - 1;

    wire fft_in_valid = dds_tvalid;
    wire fft_in_last  = (frame_count == FRAME_LAST_INDEX);
    wire fft_accept   = fft_in_valid && fft_in_ready;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            frame_count <= {LOG2N{1'b0}};
        end else if (fft_accept) begin
            if (fft_in_last)
                frame_count <= {LOG2N{1'b0}};
            else
                frame_count <= frame_count + 1'b1;
        end
    end

    fft_freqwin_top_part4 #(
        .N                (N),
        .LOG2N            (LOG2N),
        .IN_W             (IN_W),
        .FFT_W            (FFT_W),
        .ABS_W            (ABS_W),
        .FFT_CONFIG_WIDTH (FFT_CONFIG_WIDTH),
        .FFT_CONFIG_TDATA (FFT_CONFIG_TDATA)
    ) u_fft_freqwin_top (
        .clk                  (clk),
        .rst_n                (rst_n),
        .s_axis_data_tdata_re (dds_re),
        .s_axis_data_tdata_im (dds_im),
        .s_axis_data_tvalid   (fft_in_valid),
        .s_axis_data_tlast    (fft_in_last),
        .s_axis_data_tready   (fft_in_ready),
        .peak_index_o         (peak_index),
        .peak_value_o         (peak_value),
        .peak_valid_o         (peak_valid),
        .fft_abs_sq           (),
        .fft_xk_index         (),
        .fft_out_valid        (),
        .fft_out_last         ()
    );

endmodule
