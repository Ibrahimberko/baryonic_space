// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue May  5 00:55:08 2026
// Host        : DESKTOP-PNADBHN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               x:/part4/vivado_part4_zynq/fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ip/system_fft_pl_ps_0_0/system_fft_pl_ps_0_0_sim_netlist.v
// Design      : system_fft_pl_ps_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_fft_pl_ps_0_0,fft_pl_ps_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fft_pl_ps_top,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module system_fft_pl_ps_0_0
   (clk,
    rst_n,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    peak_index_dbg,
    peak_valid_dbg,
    dds_pinc_dbg);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET rst_n, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, DATA_WIDTH 32, ADDR_WIDTH 4, FREQ_HZ 200000000, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  output [7:0]peak_index_dbg;
  output peak_valid_dbg;
  output [31:0]dds_pinc_dbg;

  wire \<const0> ;
  wire clk;
  wire [31:0]dds_pinc_dbg;
  wire [7:0]peak_index_dbg;
  wire peak_valid_dbg;
  wire rst_n;
  wire [3:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ABS_W = "25" *) 
  (* DDS_AXIS_W = "32" *) 
  (* DDS_LANE_W = "16" *) 
  (* DDS_SAMPLE_W = "12" *) 
  (* DEFAULT_PINC = "214748365" *) 
  (* FFT_CONFIG_TDATA = "16'b0000000101010101" *) 
  (* FFT_CONFIG_WIDTH = "16" *) 
  (* FFT_W = "12" *) 
  (* FRAME_LAST_INDEX = "8'b11111111" *) 
  (* IN_W = "16" *) 
  (* LOG2N = "8" *) 
  (* N = "256" *) 
  system_fft_pl_ps_0_0_fft_pl_ps_top inst
       (.clk(clk),
        .dds_pinc_dbg(dds_pinc_dbg),
        .peak_index_dbg(peak_index_dbg),
        .peak_valid_dbg(peak_valid_dbg),
        .rst_n(rst_n),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_26,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "dds_compiler_0" *) 
(* X_CORE_INFO = "dds_compiler_v6_0_26,Vivado 2024.2" *) 
module system_fft_pl_ps_0_0_dds_compiler_0
   (aclk,
    aresetn,
    s_axis_config_tvalid,
    s_axis_config_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_CONFIG" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CONFIG, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_config_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TDATA" *) input [31:0]s_axis_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [31:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_PHASE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [31:0]m_axis_phase_tdata;


endmodule

(* ORIG_REF_NAME = "dds_config_driver" *) 
module system_fft_pl_ps_0_0_dds_config_driver
   (Q,
    s_axis_config_tvalid,
    E,
    dds_pinc_dbg,
    clk,
    config_pending_reg_0);
  output [31:0]Q;
  output s_axis_config_tvalid;
  input [0:0]E;
  input [31:0]dds_pinc_dbg;
  input clk;
  input config_pending_reg_0;

  wire [0:0]E;
  wire [31:0]Q;
  wire clk;
  wire config_pending_i_1_n_0;
  wire config_pending_reg_0;
  wire config_pending_reg_n_0;
  wire [31:0]dds_pinc_dbg;
  wire m_axis_config_tvalid_i_1_n_0;
  wire s_axis_config_tvalid;

  LUT3 #(
    .INIT(8'hB8)) 
    config_pending_i_1
       (.I0(s_axis_config_tvalid),
        .I1(config_pending_reg_n_0),
        .I2(E),
        .O(config_pending_i_1_n_0));
  FDPE config_pending_reg
       (.C(clk),
        .CE(1'b1),
        .D(config_pending_i_1_n_0),
        .PRE(config_pending_reg_0),
        .Q(config_pending_reg_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_config_tvalid_i_1
       (.I0(config_pending_reg_n_0),
        .I1(s_axis_config_tvalid),
        .O(m_axis_config_tvalid_i_1_n_0));
  FDCE m_axis_config_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(config_pending_reg_0),
        .D(m_axis_config_tvalid_i_1_n_0),
        .Q(s_axis_config_tvalid));
  FDPE \pinc_latched_reg[0] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[0]),
        .PRE(config_pending_reg_0),
        .Q(Q[0]));
  FDPE \pinc_latched_reg[10] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[10]),
        .PRE(config_pending_reg_0),
        .Q(Q[10]));
  FDPE \pinc_latched_reg[11] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[11]),
        .PRE(config_pending_reg_0),
        .Q(Q[11]));
  FDCE \pinc_latched_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[12]),
        .Q(Q[12]));
  FDCE \pinc_latched_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[13]),
        .Q(Q[13]));
  FDPE \pinc_latched_reg[14] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[14]),
        .PRE(config_pending_reg_0),
        .Q(Q[14]));
  FDPE \pinc_latched_reg[15] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[15]),
        .PRE(config_pending_reg_0),
        .Q(Q[15]));
  FDCE \pinc_latched_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[16]),
        .Q(Q[16]));
  FDCE \pinc_latched_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[17]),
        .Q(Q[17]));
  FDPE \pinc_latched_reg[18] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[18]),
        .PRE(config_pending_reg_0),
        .Q(Q[18]));
  FDPE \pinc_latched_reg[19] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[19]),
        .PRE(config_pending_reg_0),
        .Q(Q[19]));
  FDCE \pinc_latched_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[1]),
        .Q(Q[1]));
  FDCE \pinc_latched_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[20]),
        .Q(Q[20]));
  FDCE \pinc_latched_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[21]),
        .Q(Q[21]));
  FDPE \pinc_latched_reg[22] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[22]),
        .PRE(config_pending_reg_0),
        .Q(Q[22]));
  FDPE \pinc_latched_reg[23] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[23]),
        .PRE(config_pending_reg_0),
        .Q(Q[23]));
  FDCE \pinc_latched_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[24]),
        .Q(Q[24]));
  FDCE \pinc_latched_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[25]),
        .Q(Q[25]));
  FDPE \pinc_latched_reg[26] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[26]),
        .PRE(config_pending_reg_0),
        .Q(Q[26]));
  FDPE \pinc_latched_reg[27] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[27]),
        .PRE(config_pending_reg_0),
        .Q(Q[27]));
  FDCE \pinc_latched_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[28]),
        .Q(Q[28]));
  FDCE \pinc_latched_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[29]),
        .Q(Q[29]));
  FDPE \pinc_latched_reg[2] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[2]),
        .PRE(config_pending_reg_0),
        .Q(Q[2]));
  FDCE \pinc_latched_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[30]),
        .Q(Q[30]));
  FDCE \pinc_latched_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[31]),
        .Q(Q[31]));
  FDPE \pinc_latched_reg[3] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[3]),
        .PRE(config_pending_reg_0),
        .Q(Q[3]));
  FDCE \pinc_latched_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[4]),
        .Q(Q[4]));
  FDCE \pinc_latched_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[5]),
        .Q(Q[5]));
  FDPE \pinc_latched_reg[6] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[6]),
        .PRE(config_pending_reg_0),
        .Q(Q[6]));
  FDPE \pinc_latched_reg[7] 
       (.C(clk),
        .CE(E),
        .D(dds_pinc_dbg[7]),
        .PRE(config_pending_reg_0),
        .Q(Q[7]));
  FDCE \pinc_latched_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[8]),
        .Q(Q[8]));
  FDCE \pinc_latched_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(config_pending_reg_0),
        .D(dds_pinc_dbg[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "fft_freqwin_top_part4" *) 
module system_fft_pl_ps_0_0_fft_freqwin_top_part4
   (rst_n_0,
    peak_valid_dbg,
    \frame_count_reg[4] ,
    E,
    peak_index_dbg,
    \peak_value_reg[24] ,
    clk,
    rst_n,
    m_axis_data_tdata,
    m_axis_data_tvalid,
    Q,
    \abs_sq_value_reg[3]_0 );
  output rst_n_0;
  output peak_valid_dbg;
  output \frame_count_reg[4] ;
  output [0:0]E;
  output [7:0]peak_index_dbg;
  output [24:0]\peak_value_reg[24] ;
  input clk;
  input rst_n;
  input [23:0]m_axis_data_tdata;
  input m_axis_data_tvalid;
  input [7:0]Q;
  input \abs_sq_value_reg[3]_0 ;

  wire [0:0]E;
  wire [7:0]Q;
  wire [11:0]abs_im_d0;
  wire abs_imag_sq_d10_n_100;
  wire abs_imag_sq_d10_n_101;
  wire abs_imag_sq_d10_n_102;
  wire abs_imag_sq_d10_n_103;
  wire abs_imag_sq_d10_n_104;
  wire abs_imag_sq_d10_n_105;
  wire abs_imag_sq_d10_n_82;
  wire abs_imag_sq_d10_n_83;
  wire abs_imag_sq_d10_n_84;
  wire abs_imag_sq_d10_n_85;
  wire abs_imag_sq_d10_n_86;
  wire abs_imag_sq_d10_n_87;
  wire abs_imag_sq_d10_n_88;
  wire abs_imag_sq_d10_n_89;
  wire abs_imag_sq_d10_n_90;
  wire abs_imag_sq_d10_n_91;
  wire abs_imag_sq_d10_n_92;
  wire abs_imag_sq_d10_n_93;
  wire abs_imag_sq_d10_n_94;
  wire abs_imag_sq_d10_n_95;
  wire abs_imag_sq_d10_n_96;
  wire abs_imag_sq_d10_n_97;
  wire abs_imag_sq_d10_n_98;
  wire abs_imag_sq_d10_n_99;
  wire [7:0]abs_index_d0;
  wire [7:0]abs_index_d1;
  wire \abs_index_d2_reg_n_0_[0] ;
  wire \abs_index_d2_reg_n_0_[1] ;
  wire \abs_index_d2_reg_n_0_[2] ;
  wire \abs_index_d2_reg_n_0_[3] ;
  wire \abs_index_d2_reg_n_0_[4] ;
  wire \abs_index_d2_reg_n_0_[5] ;
  wire \abs_index_d2_reg_n_0_[6] ;
  wire \abs_index_d2_reg_n_0_[7] ;
  wire abs_last_d0;
  wire abs_last_d1;
  wire abs_last_d2_reg_n_0;
  wire [11:0]abs_re_d0;
  wire [23:0]abs_real_sq_d1;
  wire abs_real_sq_d10_n_100;
  wire abs_real_sq_d10_n_101;
  wire abs_real_sq_d10_n_102;
  wire abs_real_sq_d10_n_103;
  wire abs_real_sq_d10_n_104;
  wire abs_real_sq_d10_n_105;
  wire abs_real_sq_d10_n_82;
  wire abs_real_sq_d10_n_83;
  wire abs_real_sq_d10_n_84;
  wire abs_real_sq_d10_n_85;
  wire abs_real_sq_d10_n_86;
  wire abs_real_sq_d10_n_87;
  wire abs_real_sq_d10_n_88;
  wire abs_real_sq_d10_n_89;
  wire abs_real_sq_d10_n_90;
  wire abs_real_sq_d10_n_91;
  wire abs_real_sq_d10_n_92;
  wire abs_real_sq_d10_n_93;
  wire abs_real_sq_d10_n_94;
  wire abs_real_sq_d10_n_95;
  wire abs_real_sq_d10_n_96;
  wire abs_real_sq_d10_n_97;
  wire abs_real_sq_d10_n_98;
  wire abs_real_sq_d10_n_99;
  wire [24:0]abs_sq_value;
  wire \abs_sq_value[11]_i_6_n_0 ;
  wire \abs_sq_value[11]_i_7_n_0 ;
  wire \abs_sq_value[11]_i_8_n_0 ;
  wire \abs_sq_value[11]_i_9_n_0 ;
  wire \abs_sq_value[15]_i_6_n_0 ;
  wire \abs_sq_value[15]_i_7_n_0 ;
  wire \abs_sq_value[15]_i_8_n_0 ;
  wire \abs_sq_value[15]_i_9_n_0 ;
  wire \abs_sq_value[19]_i_6_n_0 ;
  wire \abs_sq_value[19]_i_7_n_0 ;
  wire \abs_sq_value[19]_i_8_n_0 ;
  wire \abs_sq_value[19]_i_9_n_0 ;
  wire \abs_sq_value[23]_i_6_n_0 ;
  wire \abs_sq_value[23]_i_7_n_0 ;
  wire \abs_sq_value[23]_i_8_n_0 ;
  wire \abs_sq_value[23]_i_9_n_0 ;
  wire \abs_sq_value[3]_i_6_n_0 ;
  wire \abs_sq_value[3]_i_7_n_0 ;
  wire \abs_sq_value[3]_i_8_n_0 ;
  wire \abs_sq_value[3]_i_9_n_0 ;
  wire \abs_sq_value[7]_i_6_n_0 ;
  wire \abs_sq_value[7]_i_7_n_0 ;
  wire \abs_sq_value[7]_i_8_n_0 ;
  wire \abs_sq_value[7]_i_9_n_0 ;
  wire \abs_sq_value_reg[11]_i_1_n_0 ;
  wire \abs_sq_value_reg[11]_i_1_n_1 ;
  wire \abs_sq_value_reg[11]_i_1_n_2 ;
  wire \abs_sq_value_reg[11]_i_1_n_3 ;
  wire \abs_sq_value_reg[11]_i_1_n_4 ;
  wire \abs_sq_value_reg[11]_i_1_n_5 ;
  wire \abs_sq_value_reg[11]_i_1_n_6 ;
  wire \abs_sq_value_reg[11]_i_1_n_7 ;
  wire \abs_sq_value_reg[15]_i_1_n_0 ;
  wire \abs_sq_value_reg[15]_i_1_n_1 ;
  wire \abs_sq_value_reg[15]_i_1_n_2 ;
  wire \abs_sq_value_reg[15]_i_1_n_3 ;
  wire \abs_sq_value_reg[15]_i_1_n_4 ;
  wire \abs_sq_value_reg[15]_i_1_n_5 ;
  wire \abs_sq_value_reg[15]_i_1_n_6 ;
  wire \abs_sq_value_reg[15]_i_1_n_7 ;
  wire \abs_sq_value_reg[19]_i_1_n_0 ;
  wire \abs_sq_value_reg[19]_i_1_n_1 ;
  wire \abs_sq_value_reg[19]_i_1_n_2 ;
  wire \abs_sq_value_reg[19]_i_1_n_3 ;
  wire \abs_sq_value_reg[19]_i_1_n_4 ;
  wire \abs_sq_value_reg[19]_i_1_n_5 ;
  wire \abs_sq_value_reg[19]_i_1_n_6 ;
  wire \abs_sq_value_reg[19]_i_1_n_7 ;
  wire \abs_sq_value_reg[23]_i_1_n_0 ;
  wire \abs_sq_value_reg[23]_i_1_n_1 ;
  wire \abs_sq_value_reg[23]_i_1_n_2 ;
  wire \abs_sq_value_reg[23]_i_1_n_3 ;
  wire \abs_sq_value_reg[23]_i_1_n_4 ;
  wire \abs_sq_value_reg[23]_i_1_n_5 ;
  wire \abs_sq_value_reg[23]_i_1_n_6 ;
  wire \abs_sq_value_reg[23]_i_1_n_7 ;
  wire \abs_sq_value_reg[24]_i_1_n_3 ;
  wire \abs_sq_value_reg[3]_0 ;
  wire \abs_sq_value_reg[3]_i_1_n_0 ;
  wire \abs_sq_value_reg[3]_i_1_n_1 ;
  wire \abs_sq_value_reg[3]_i_1_n_2 ;
  wire \abs_sq_value_reg[3]_i_1_n_3 ;
  wire \abs_sq_value_reg[3]_i_1_n_4 ;
  wire \abs_sq_value_reg[3]_i_1_n_5 ;
  wire \abs_sq_value_reg[3]_i_1_n_6 ;
  wire \abs_sq_value_reg[3]_i_1_n_7 ;
  wire \abs_sq_value_reg[7]_i_1_n_0 ;
  wire \abs_sq_value_reg[7]_i_1_n_1 ;
  wire \abs_sq_value_reg[7]_i_1_n_2 ;
  wire \abs_sq_value_reg[7]_i_1_n_3 ;
  wire \abs_sq_value_reg[7]_i_1_n_4 ;
  wire \abs_sq_value_reg[7]_i_1_n_5 ;
  wire \abs_sq_value_reg[7]_i_1_n_6 ;
  wire \abs_sq_value_reg[7]_i_1_n_7 ;
  wire abs_valid_d0;
  wire abs_valid_d1;
  wire abs_valid_d2_reg_n_0;
  wire clk;
  wire config_done;
  wire config_done_i_1_n_0;
  wire config_ready;
  wire config_valid;
  wire config_valid_i_1_n_0;
  wire fft_in_ready;
  wire fft_in_tlast;
  wire fft_in_tvalid;
  wire [27:0]fft_out_tdata;
  wire fft_out_tlast;
  wire [7:0]fft_out_tuser;
  wire fft_out_tvalid;
  wire \frame_count_reg[4] ;
  wire [23:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [7:0]peak_index_dbg;
  wire peak_valid_dbg;
  wire [24:0]\peak_value_reg[24] ;
  wire rst_n;
  wire rst_n_0;
  wire [11:0]xk_im_out;
  wire [7:0]xk_index_out;
  wire xk_last_out;
  wire [11:0]xk_re_out;
  wire xk_valid_out;
  wire NLW_abs_imag_sq_d10_CARRYCASCOUT_UNCONNECTED;
  wire NLW_abs_imag_sq_d10_MULTSIGNOUT_UNCONNECTED;
  wire NLW_abs_imag_sq_d10_OVERFLOW_UNCONNECTED;
  wire NLW_abs_imag_sq_d10_PATTERNBDETECT_UNCONNECTED;
  wire NLW_abs_imag_sq_d10_PATTERNDETECT_UNCONNECTED;
  wire NLW_abs_imag_sq_d10_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_abs_imag_sq_d10_ACOUT_UNCONNECTED;
  wire [17:0]NLW_abs_imag_sq_d10_BCOUT_UNCONNECTED;
  wire [3:0]NLW_abs_imag_sq_d10_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_abs_imag_sq_d10_P_UNCONNECTED;
  wire [47:0]NLW_abs_imag_sq_d10_PCOUT_UNCONNECTED;
  wire NLW_abs_real_sq_d10_CARRYCASCOUT_UNCONNECTED;
  wire NLW_abs_real_sq_d10_MULTSIGNOUT_UNCONNECTED;
  wire NLW_abs_real_sq_d10_OVERFLOW_UNCONNECTED;
  wire NLW_abs_real_sq_d10_PATTERNBDETECT_UNCONNECTED;
  wire NLW_abs_real_sq_d10_PATTERNDETECT_UNCONNECTED;
  wire NLW_abs_real_sq_d10_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_abs_real_sq_d10_ACOUT_UNCONNECTED;
  wire [17:0]NLW_abs_real_sq_d10_BCOUT_UNCONNECTED;
  wire [3:0]NLW_abs_real_sq_d10_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_abs_real_sq_d10_P_UNCONNECTED;
  wire [47:0]NLW_abs_real_sq_d10_PCOUT_UNCONNECTED;
  wire [3:1]\NLW_abs_sq_value_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_abs_sq_value_reg[24]_i_1_O_UNCONNECTED ;
  wire NLW_u_xfft_0_event_data_in_channel_halt_UNCONNECTED;
  wire NLW_u_xfft_0_event_data_out_channel_halt_UNCONNECTED;
  wire NLW_u_xfft_0_event_frame_started_UNCONNECTED;
  wire NLW_u_xfft_0_event_status_channel_halt_UNCONNECTED;
  wire NLW_u_xfft_0_event_tlast_missing_UNCONNECTED;
  wire NLW_u_xfft_0_event_tlast_unexpected_UNCONNECTED;
  wire [31:12]NLW_u_xfft_0_m_axis_data_tdata_UNCONNECTED;

  FDCE \abs_im_d0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[0]),
        .Q(abs_im_d0[0]));
  FDCE \abs_im_d0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[10]),
        .Q(abs_im_d0[10]));
  FDCE \abs_im_d0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[11]),
        .Q(abs_im_d0[11]));
  FDCE \abs_im_d0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[1]),
        .Q(abs_im_d0[1]));
  FDCE \abs_im_d0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[2]),
        .Q(abs_im_d0[2]));
  FDCE \abs_im_d0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[3]),
        .Q(abs_im_d0[3]));
  FDCE \abs_im_d0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[4]),
        .Q(abs_im_d0[4]));
  FDCE \abs_im_d0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[5]),
        .Q(abs_im_d0[5]));
  FDCE \abs_im_d0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[6]),
        .Q(abs_im_d0[6]));
  FDCE \abs_im_d0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[7]),
        .Q(abs_im_d0[7]));
  FDCE \abs_im_d0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[8]),
        .Q(abs_im_d0[8]));
  FDCE \abs_im_d0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_im_out[9]),
        .Q(abs_im_d0[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    abs_imag_sq_d10
       (.A({abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_abs_imag_sq_d10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0[11],abs_im_d0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_abs_imag_sq_d10_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_abs_imag_sq_d10_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_abs_imag_sq_d10_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_abs_imag_sq_d10_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_abs_imag_sq_d10_OVERFLOW_UNCONNECTED),
        .P({NLW_abs_imag_sq_d10_P_UNCONNECTED[47:24],abs_imag_sq_d10_n_82,abs_imag_sq_d10_n_83,abs_imag_sq_d10_n_84,abs_imag_sq_d10_n_85,abs_imag_sq_d10_n_86,abs_imag_sq_d10_n_87,abs_imag_sq_d10_n_88,abs_imag_sq_d10_n_89,abs_imag_sq_d10_n_90,abs_imag_sq_d10_n_91,abs_imag_sq_d10_n_92,abs_imag_sq_d10_n_93,abs_imag_sq_d10_n_94,abs_imag_sq_d10_n_95,abs_imag_sq_d10_n_96,abs_imag_sq_d10_n_97,abs_imag_sq_d10_n_98,abs_imag_sq_d10_n_99,abs_imag_sq_d10_n_100,abs_imag_sq_d10_n_101,abs_imag_sq_d10_n_102,abs_imag_sq_d10_n_103,abs_imag_sq_d10_n_104,abs_imag_sq_d10_n_105}),
        .PATTERNBDETECT(NLW_abs_imag_sq_d10_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_abs_imag_sq_d10_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_abs_imag_sq_d10_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_abs_imag_sq_d10_UNDERFLOW_UNCONNECTED));
  FDCE \abs_index_d0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_index_out[0]),
        .Q(abs_index_d0[0]));
  FDCE \abs_index_d0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_index_out[1]),
        .Q(abs_index_d0[1]));
  FDCE \abs_index_d0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_index_out[2]),
        .Q(abs_index_d0[2]));
  FDCE \abs_index_d0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_index_out[3]),
        .Q(abs_index_d0[3]));
  FDCE \abs_index_d0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_index_out[4]),
        .Q(abs_index_d0[4]));
  FDCE \abs_index_d0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_index_out[5]),
        .Q(abs_index_d0[5]));
  FDCE \abs_index_d0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_index_out[6]),
        .Q(abs_index_d0[6]));
  FDCE \abs_index_d0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_index_out[7]),
        .Q(abs_index_d0[7]));
  FDCE \abs_index_d1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d0[0]),
        .Q(abs_index_d1[0]));
  FDCE \abs_index_d1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d0[1]),
        .Q(abs_index_d1[1]));
  FDCE \abs_index_d1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d0[2]),
        .Q(abs_index_d1[2]));
  FDCE \abs_index_d1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d0[3]),
        .Q(abs_index_d1[3]));
  FDCE \abs_index_d1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d0[4]),
        .Q(abs_index_d1[4]));
  FDCE \abs_index_d1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d0[5]),
        .Q(abs_index_d1[5]));
  FDCE \abs_index_d1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d0[6]),
        .Q(abs_index_d1[6]));
  FDCE \abs_index_d1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d0[7]),
        .Q(abs_index_d1[7]));
  FDCE \abs_index_d2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d1[0]),
        .Q(\abs_index_d2_reg_n_0_[0] ));
  FDCE \abs_index_d2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d1[1]),
        .Q(\abs_index_d2_reg_n_0_[1] ));
  FDCE \abs_index_d2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d1[2]),
        .Q(\abs_index_d2_reg_n_0_[2] ));
  FDCE \abs_index_d2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d1[3]),
        .Q(\abs_index_d2_reg_n_0_[3] ));
  FDCE \abs_index_d2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d1[4]),
        .Q(\abs_index_d2_reg_n_0_[4] ));
  FDCE \abs_index_d2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d1[5]),
        .Q(\abs_index_d2_reg_n_0_[5] ));
  FDCE \abs_index_d2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d1[6]),
        .Q(\abs_index_d2_reg_n_0_[6] ));
  FDCE \abs_index_d2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_index_d1[7]),
        .Q(\abs_index_d2_reg_n_0_[7] ));
  FDCE abs_last_d0_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_last_out),
        .Q(abs_last_d0));
  FDCE abs_last_d1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_last_d0),
        .Q(abs_last_d1));
  FDCE abs_last_d2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_last_d1),
        .Q(abs_last_d2_reg_n_0));
  FDCE \abs_re_d0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[0]),
        .Q(abs_re_d0[0]));
  FDCE \abs_re_d0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[10]),
        .Q(abs_re_d0[10]));
  FDCE \abs_re_d0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[11]),
        .Q(abs_re_d0[11]));
  FDCE \abs_re_d0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[1]),
        .Q(abs_re_d0[1]));
  FDCE \abs_re_d0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[2]),
        .Q(abs_re_d0[2]));
  FDCE \abs_re_d0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[3]),
        .Q(abs_re_d0[3]));
  FDCE \abs_re_d0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[4]),
        .Q(abs_re_d0[4]));
  FDCE \abs_re_d0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[5]),
        .Q(abs_re_d0[5]));
  FDCE \abs_re_d0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[6]),
        .Q(abs_re_d0[6]));
  FDCE \abs_re_d0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[7]),
        .Q(abs_re_d0[7]));
  FDCE \abs_re_d0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[8]),
        .Q(abs_re_d0[8]));
  FDCE \abs_re_d0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_re_out[9]),
        .Q(abs_re_d0[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    abs_real_sq_d10
       (.A({abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_abs_real_sq_d10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0[11],abs_re_d0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_abs_real_sq_d10_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_abs_real_sq_d10_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_abs_real_sq_d10_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_abs_real_sq_d10_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_abs_real_sq_d10_OVERFLOW_UNCONNECTED),
        .P({NLW_abs_real_sq_d10_P_UNCONNECTED[47:24],abs_real_sq_d10_n_82,abs_real_sq_d10_n_83,abs_real_sq_d10_n_84,abs_real_sq_d10_n_85,abs_real_sq_d10_n_86,abs_real_sq_d10_n_87,abs_real_sq_d10_n_88,abs_real_sq_d10_n_89,abs_real_sq_d10_n_90,abs_real_sq_d10_n_91,abs_real_sq_d10_n_92,abs_real_sq_d10_n_93,abs_real_sq_d10_n_94,abs_real_sq_d10_n_95,abs_real_sq_d10_n_96,abs_real_sq_d10_n_97,abs_real_sq_d10_n_98,abs_real_sq_d10_n_99,abs_real_sq_d10_n_100,abs_real_sq_d10_n_101,abs_real_sq_d10_n_102,abs_real_sq_d10_n_103,abs_real_sq_d10_n_104,abs_real_sq_d10_n_105}),
        .PATTERNBDETECT(NLW_abs_real_sq_d10_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_abs_real_sq_d10_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_abs_real_sq_d10_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_abs_real_sq_d10_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[11]_i_2 
       (.I0(abs_real_sq_d10_n_94),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[11]_i_3 
       (.I0(abs_real_sq_d10_n_95),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[11]_i_4 
       (.I0(abs_real_sq_d10_n_96),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[11]_i_5 
       (.I0(abs_real_sq_d10_n_97),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[8]));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[11]_i_6 
       (.I0(abs_real_sq_d10_n_94),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_94),
        .O(\abs_sq_value[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[11]_i_7 
       (.I0(abs_real_sq_d10_n_95),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_95),
        .O(\abs_sq_value[11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[11]_i_8 
       (.I0(abs_real_sq_d10_n_96),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_96),
        .O(\abs_sq_value[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[11]_i_9 
       (.I0(abs_real_sq_d10_n_97),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_97),
        .O(\abs_sq_value[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[15]_i_2 
       (.I0(abs_real_sq_d10_n_90),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[15]_i_3 
       (.I0(abs_real_sq_d10_n_91),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[15]_i_4 
       (.I0(abs_real_sq_d10_n_92),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[15]_i_5 
       (.I0(abs_real_sq_d10_n_93),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[12]));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[15]_i_6 
       (.I0(abs_real_sq_d10_n_90),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_90),
        .O(\abs_sq_value[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[15]_i_7 
       (.I0(abs_real_sq_d10_n_91),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_91),
        .O(\abs_sq_value[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[15]_i_8 
       (.I0(abs_real_sq_d10_n_92),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_92),
        .O(\abs_sq_value[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[15]_i_9 
       (.I0(abs_real_sq_d10_n_93),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_93),
        .O(\abs_sq_value[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[19]_i_2 
       (.I0(abs_real_sq_d10_n_86),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[19]_i_3 
       (.I0(abs_real_sq_d10_n_87),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[19]_i_4 
       (.I0(abs_real_sq_d10_n_88),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[19]_i_5 
       (.I0(abs_real_sq_d10_n_89),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[16]));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[19]_i_6 
       (.I0(abs_real_sq_d10_n_86),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_86),
        .O(\abs_sq_value[19]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[19]_i_7 
       (.I0(abs_real_sq_d10_n_87),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_87),
        .O(\abs_sq_value[19]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[19]_i_8 
       (.I0(abs_real_sq_d10_n_88),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_88),
        .O(\abs_sq_value[19]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[19]_i_9 
       (.I0(abs_real_sq_d10_n_89),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_89),
        .O(\abs_sq_value[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[23]_i_2 
       (.I0(abs_real_sq_d10_n_82),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[23]_i_3 
       (.I0(abs_real_sq_d10_n_83),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[23]_i_4 
       (.I0(abs_real_sq_d10_n_84),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[23]_i_5 
       (.I0(abs_real_sq_d10_n_85),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[20]));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[23]_i_6 
       (.I0(abs_real_sq_d10_n_82),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_82),
        .O(\abs_sq_value[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[23]_i_7 
       (.I0(abs_real_sq_d10_n_83),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_83),
        .O(\abs_sq_value[23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[23]_i_8 
       (.I0(abs_real_sq_d10_n_84),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_84),
        .O(\abs_sq_value[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[23]_i_9 
       (.I0(abs_real_sq_d10_n_85),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_85),
        .O(\abs_sq_value[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[3]_i_2 
       (.I0(abs_real_sq_d10_n_102),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[3]_i_3 
       (.I0(abs_real_sq_d10_n_103),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[3]_i_4 
       (.I0(abs_real_sq_d10_n_104),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[3]_i_5 
       (.I0(abs_real_sq_d10_n_105),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[0]));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[3]_i_6 
       (.I0(abs_real_sq_d10_n_102),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_102),
        .O(\abs_sq_value[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[3]_i_7 
       (.I0(abs_real_sq_d10_n_103),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_103),
        .O(\abs_sq_value[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[3]_i_8 
       (.I0(abs_real_sq_d10_n_104),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_104),
        .O(\abs_sq_value[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[3]_i_9 
       (.I0(abs_real_sq_d10_n_105),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_105),
        .O(\abs_sq_value[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[7]_i_2 
       (.I0(abs_real_sq_d10_n_98),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[7]_i_3 
       (.I0(abs_real_sq_d10_n_99),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[7]_i_4 
       (.I0(abs_real_sq_d10_n_100),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \abs_sq_value[7]_i_5 
       (.I0(abs_real_sq_d10_n_101),
        .I1(\abs_sq_value_reg[3]_0 ),
        .O(abs_real_sq_d1[4]));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[7]_i_6 
       (.I0(abs_real_sq_d10_n_98),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_98),
        .O(\abs_sq_value[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[7]_i_7 
       (.I0(abs_real_sq_d10_n_99),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_99),
        .O(\abs_sq_value[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[7]_i_8 
       (.I0(abs_real_sq_d10_n_100),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_100),
        .O(\abs_sq_value[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \abs_sq_value[7]_i_9 
       (.I0(abs_real_sq_d10_n_101),
        .I1(\abs_sq_value_reg[3]_0 ),
        .I2(abs_imag_sq_d10_n_101),
        .O(\abs_sq_value[7]_i_9_n_0 ));
  FDCE \abs_sq_value_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[3]_i_1_n_7 ),
        .Q(abs_sq_value[0]));
  FDCE \abs_sq_value_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[11]_i_1_n_5 ),
        .Q(abs_sq_value[10]));
  FDCE \abs_sq_value_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[11]_i_1_n_4 ),
        .Q(abs_sq_value[11]));
  CARRY4 \abs_sq_value_reg[11]_i_1 
       (.CI(\abs_sq_value_reg[7]_i_1_n_0 ),
        .CO({\abs_sq_value_reg[11]_i_1_n_0 ,\abs_sq_value_reg[11]_i_1_n_1 ,\abs_sq_value_reg[11]_i_1_n_2 ,\abs_sq_value_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_real_sq_d1[11:8]),
        .O({\abs_sq_value_reg[11]_i_1_n_4 ,\abs_sq_value_reg[11]_i_1_n_5 ,\abs_sq_value_reg[11]_i_1_n_6 ,\abs_sq_value_reg[11]_i_1_n_7 }),
        .S({\abs_sq_value[11]_i_6_n_0 ,\abs_sq_value[11]_i_7_n_0 ,\abs_sq_value[11]_i_8_n_0 ,\abs_sq_value[11]_i_9_n_0 }));
  FDCE \abs_sq_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[15]_i_1_n_7 ),
        .Q(abs_sq_value[12]));
  FDCE \abs_sq_value_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[15]_i_1_n_6 ),
        .Q(abs_sq_value[13]));
  FDCE \abs_sq_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[15]_i_1_n_5 ),
        .Q(abs_sq_value[14]));
  FDCE \abs_sq_value_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[15]_i_1_n_4 ),
        .Q(abs_sq_value[15]));
  CARRY4 \abs_sq_value_reg[15]_i_1 
       (.CI(\abs_sq_value_reg[11]_i_1_n_0 ),
        .CO({\abs_sq_value_reg[15]_i_1_n_0 ,\abs_sq_value_reg[15]_i_1_n_1 ,\abs_sq_value_reg[15]_i_1_n_2 ,\abs_sq_value_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_real_sq_d1[15:12]),
        .O({\abs_sq_value_reg[15]_i_1_n_4 ,\abs_sq_value_reg[15]_i_1_n_5 ,\abs_sq_value_reg[15]_i_1_n_6 ,\abs_sq_value_reg[15]_i_1_n_7 }),
        .S({\abs_sq_value[15]_i_6_n_0 ,\abs_sq_value[15]_i_7_n_0 ,\abs_sq_value[15]_i_8_n_0 ,\abs_sq_value[15]_i_9_n_0 }));
  FDCE \abs_sq_value_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[19]_i_1_n_7 ),
        .Q(abs_sq_value[16]));
  FDCE \abs_sq_value_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[19]_i_1_n_6 ),
        .Q(abs_sq_value[17]));
  FDCE \abs_sq_value_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[19]_i_1_n_5 ),
        .Q(abs_sq_value[18]));
  FDCE \abs_sq_value_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[19]_i_1_n_4 ),
        .Q(abs_sq_value[19]));
  CARRY4 \abs_sq_value_reg[19]_i_1 
       (.CI(\abs_sq_value_reg[15]_i_1_n_0 ),
        .CO({\abs_sq_value_reg[19]_i_1_n_0 ,\abs_sq_value_reg[19]_i_1_n_1 ,\abs_sq_value_reg[19]_i_1_n_2 ,\abs_sq_value_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_real_sq_d1[19:16]),
        .O({\abs_sq_value_reg[19]_i_1_n_4 ,\abs_sq_value_reg[19]_i_1_n_5 ,\abs_sq_value_reg[19]_i_1_n_6 ,\abs_sq_value_reg[19]_i_1_n_7 }),
        .S({\abs_sq_value[19]_i_6_n_0 ,\abs_sq_value[19]_i_7_n_0 ,\abs_sq_value[19]_i_8_n_0 ,\abs_sq_value[19]_i_9_n_0 }));
  FDCE \abs_sq_value_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[3]_i_1_n_6 ),
        .Q(abs_sq_value[1]));
  FDCE \abs_sq_value_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[23]_i_1_n_7 ),
        .Q(abs_sq_value[20]));
  FDCE \abs_sq_value_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[23]_i_1_n_6 ),
        .Q(abs_sq_value[21]));
  FDCE \abs_sq_value_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[23]_i_1_n_5 ),
        .Q(abs_sq_value[22]));
  FDCE \abs_sq_value_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[23]_i_1_n_4 ),
        .Q(abs_sq_value[23]));
  CARRY4 \abs_sq_value_reg[23]_i_1 
       (.CI(\abs_sq_value_reg[19]_i_1_n_0 ),
        .CO({\abs_sq_value_reg[23]_i_1_n_0 ,\abs_sq_value_reg[23]_i_1_n_1 ,\abs_sq_value_reg[23]_i_1_n_2 ,\abs_sq_value_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_real_sq_d1[23:20]),
        .O({\abs_sq_value_reg[23]_i_1_n_4 ,\abs_sq_value_reg[23]_i_1_n_5 ,\abs_sq_value_reg[23]_i_1_n_6 ,\abs_sq_value_reg[23]_i_1_n_7 }),
        .S({\abs_sq_value[23]_i_6_n_0 ,\abs_sq_value[23]_i_7_n_0 ,\abs_sq_value[23]_i_8_n_0 ,\abs_sq_value[23]_i_9_n_0 }));
  FDCE \abs_sq_value_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[24]_i_1_n_3 ),
        .Q(abs_sq_value[24]));
  CARRY4 \abs_sq_value_reg[24]_i_1 
       (.CI(\abs_sq_value_reg[23]_i_1_n_0 ),
        .CO({\NLW_abs_sq_value_reg[24]_i_1_CO_UNCONNECTED [3:1],\abs_sq_value_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_abs_sq_value_reg[24]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE \abs_sq_value_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[3]_i_1_n_5 ),
        .Q(abs_sq_value[2]));
  FDCE \abs_sq_value_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[3]_i_1_n_4 ),
        .Q(abs_sq_value[3]));
  CARRY4 \abs_sq_value_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\abs_sq_value_reg[3]_i_1_n_0 ,\abs_sq_value_reg[3]_i_1_n_1 ,\abs_sq_value_reg[3]_i_1_n_2 ,\abs_sq_value_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_real_sq_d1[3:0]),
        .O({\abs_sq_value_reg[3]_i_1_n_4 ,\abs_sq_value_reg[3]_i_1_n_5 ,\abs_sq_value_reg[3]_i_1_n_6 ,\abs_sq_value_reg[3]_i_1_n_7 }),
        .S({\abs_sq_value[3]_i_6_n_0 ,\abs_sq_value[3]_i_7_n_0 ,\abs_sq_value[3]_i_8_n_0 ,\abs_sq_value[3]_i_9_n_0 }));
  FDCE \abs_sq_value_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[7]_i_1_n_7 ),
        .Q(abs_sq_value[4]));
  FDCE \abs_sq_value_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[7]_i_1_n_6 ),
        .Q(abs_sq_value[5]));
  FDCE \abs_sq_value_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[7]_i_1_n_5 ),
        .Q(abs_sq_value[6]));
  FDCE \abs_sq_value_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[7]_i_1_n_4 ),
        .Q(abs_sq_value[7]));
  CARRY4 \abs_sq_value_reg[7]_i_1 
       (.CI(\abs_sq_value_reg[3]_i_1_n_0 ),
        .CO({\abs_sq_value_reg[7]_i_1_n_0 ,\abs_sq_value_reg[7]_i_1_n_1 ,\abs_sq_value_reg[7]_i_1_n_2 ,\abs_sq_value_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(abs_real_sq_d1[7:4]),
        .O({\abs_sq_value_reg[7]_i_1_n_4 ,\abs_sq_value_reg[7]_i_1_n_5 ,\abs_sq_value_reg[7]_i_1_n_6 ,\abs_sq_value_reg[7]_i_1_n_7 }),
        .S({\abs_sq_value[7]_i_6_n_0 ,\abs_sq_value[7]_i_7_n_0 ,\abs_sq_value[7]_i_8_n_0 ,\abs_sq_value[7]_i_9_n_0 }));
  FDCE \abs_sq_value_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[11]_i_1_n_7 ),
        .Q(abs_sq_value[8]));
  FDCE \abs_sq_value_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\abs_sq_value_reg[11]_i_1_n_6 ),
        .Q(abs_sq_value[9]));
  FDCE abs_valid_d0_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(xk_valid_out),
        .Q(abs_valid_d0));
  FDCE abs_valid_d1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_valid_d0),
        .Q(abs_valid_d1));
  FDCE abs_valid_d2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(abs_valid_d1),
        .Q(abs_valid_d2_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    config_done_i_1
       (.I0(config_ready),
        .I1(config_valid),
        .I2(config_done),
        .O(config_done_i_1_n_0));
  FDCE config_done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(config_done_i_1_n_0),
        .Q(config_done));
  LUT2 #(
    .INIT(4'h4)) 
    config_valid_i_1
       (.I0(config_ready),
        .I1(config_valid),
        .O(config_valid_i_1_n_0));
  FDPE config_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(config_valid_i_1_n_0),
        .PRE(rst_n_0),
        .Q(config_valid));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \frame_count[7]_i_1 
       (.I0(config_done),
        .I1(fft_in_ready),
        .I2(m_axis_data_tvalid),
        .O(E));
  system_fft_pl_ps_0_0_peak_detector u_peak_detector
       (.Q(abs_sq_value),
        .SR(rst_n_0),
        .clk(clk),
        .\max_index_reg[7]_0 ({\abs_index_d2_reg_n_0_[7] ,\abs_index_d2_reg_n_0_[6] ,\abs_index_d2_reg_n_0_[5] ,\abs_index_d2_reg_n_0_[4] ,\abs_index_d2_reg_n_0_[3] ,\abs_index_d2_reg_n_0_[2] ,\abs_index_d2_reg_n_0_[1] ,\abs_index_d2_reg_n_0_[0] }),
        .peak_index_dbg(peak_index_dbg),
        .peak_valid_dbg(peak_valid_dbg),
        .\peak_value_reg[0]_0 (abs_valid_d2_reg_n_0),
        .\peak_value_reg[0]_1 (abs_last_d2_reg_n_0),
        .\peak_value_reg[24]_0 (\peak_value_reg[24] ),
        .rst_n(rst_n));
  system_fft_pl_ps_0_0_three_term_part4 u_three_term
       (.D(xk_im_out),
        .Q(xk_index_out),
        .SR(rst_n_0),
        .clk(clk),
        .m_axis_data_tdata({fft_out_tdata[27:16],fft_out_tdata[11:0]}),
        .m_axis_data_tlast(fft_out_tlast),
        .m_axis_data_tuser(fft_out_tuser),
        .m_axis_data_tvalid(fft_out_tvalid),
        .round_w_return1__2_0(xk_re_out),
        .rst_n(rst_n),
        .xk_last_out(xk_last_out),
        .xk_valid_out(xk_valid_out));
  (* CHECK_LICENSE_TYPE = "xfft_0,xfft_v9_1_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xfft_v9_1_13,Vivado 2024.2" *) 
  system_fft_pl_ps_0_0_xfft_0 u_xfft_0
       (.aclk(clk),
        .aresetn(rst_n),
        .event_data_in_channel_halt(NLW_u_xfft_0_event_data_in_channel_halt_UNCONNECTED),
        .event_data_out_channel_halt(NLW_u_xfft_0_event_data_out_channel_halt_UNCONNECTED),
        .event_frame_started(NLW_u_xfft_0_event_frame_started_UNCONNECTED),
        .event_status_channel_halt(NLW_u_xfft_0_event_status_channel_halt_UNCONNECTED),
        .event_tlast_missing(NLW_u_xfft_0_event_tlast_missing_UNCONNECTED),
        .event_tlast_unexpected(NLW_u_xfft_0_event_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata({NLW_u_xfft_0_m_axis_data_tdata_UNCONNECTED[31:28],fft_out_tdata}),
        .m_axis_data_tlast(fft_out_tlast),
        .m_axis_data_tready(1'b1),
        .m_axis_data_tuser(fft_out_tuser),
        .m_axis_data_tvalid(fft_out_tvalid),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .s_axis_config_tready(config_ready),
        .s_axis_config_tvalid(config_valid),
        .s_axis_data_tdata({m_axis_data_tdata[23],m_axis_data_tdata[23],m_axis_data_tdata[23],m_axis_data_tdata[23],m_axis_data_tdata[23:11],m_axis_data_tdata[11],m_axis_data_tdata[11],m_axis_data_tdata[11],m_axis_data_tdata[11:0]}),
        .s_axis_data_tlast(fft_in_tlast),
        .s_axis_data_tready(fft_in_ready),
        .s_axis_data_tvalid(fft_in_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    u_xfft_0_i_1
       (.I0(m_axis_data_tvalid),
        .I1(config_done),
        .O(fft_in_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    u_xfft_0_i_2
       (.I0(config_done),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(\frame_count_reg[4] ),
        .O(fft_in_tlast));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    u_xfft_0_i_3
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\frame_count_reg[4] ));
endmodule

(* ABS_W = "25" *) (* DDS_AXIS_W = "32" *) (* DDS_LANE_W = "16" *) 
(* DDS_SAMPLE_W = "12" *) (* DEFAULT_PINC = "214748365" *) (* FFT_CONFIG_TDATA = "16'b0000000101010101" *) 
(* FFT_CONFIG_WIDTH = "16" *) (* FFT_W = "12" *) (* FRAME_LAST_INDEX = "8'b11111111" *) 
(* IN_W = "16" *) (* LOG2N = "8" *) (* N = "256" *) 
(* ORIG_REF_NAME = "fft_pl_ps_top" *) 
module system_fft_pl_ps_0_0_fft_pl_ps_top
   (clk,
    rst_n,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    peak_index_dbg,
    peak_valid_dbg,
    dds_pinc_dbg);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET rst_n, FREQ_HZ 200000000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_PARAMETER = "PROTOCOL AXI4LITE, DATA_WIDTH 32, ADDR_WIDTH 4, FREQ_HZ 200000000, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1" *) input [3:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  output [7:0]peak_index_dbg;
  output peak_valid_dbg;
  output [31:0]dds_pinc_dbg;

  wire \<const0> ;
  wire \abs_sq_value_reg[23]_i_10_n_0 ;
  wire clk;
  wire [31:0]dds_config_tdata;
  wire dds_config_tvalid;
  wire [31:0]dds_pinc_dbg;
  wire dds_pinc_wr_pulse;
  wire [27:0]dds_tdata;
  wire dds_tvalid;
  wire fft_accept;
  wire \frame_count[1]_i_1_n_0 ;
  wire \frame_count[6]_i_2_n_0 ;
  wire [7:0]frame_count_reg;
  wire [7:0]p_0_in;
  wire [7:0]peak_index_dbg;
  wire peak_valid_dbg;
  wire [24:0]peak_value;
  wire rst_n;
  wire [3:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire u_fft_freqwin_top_n_0;
  wire u_fft_freqwin_top_n_2;
  wire NLW_u_dds_compiler_0_m_axis_phase_tvalid_UNCONNECTED;
  wire [31:12]NLW_u_dds_compiler_0_m_axis_data_tdata_UNCONNECTED;
  wire [31:0]NLW_u_dds_compiler_0_m_axis_phase_tdata_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDCE \abs_sq_value_reg[23]_i_10 
       (.C(clk),
        .CE(1'b1),
        .CLR(u_fft_freqwin_top_n_0),
        .D(1'b1),
        .Q(\abs_sq_value_reg[23]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \frame_count[0]_i_1 
       (.I0(frame_count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \frame_count[1]_i_1 
       (.I0(frame_count_reg[1]),
        .I1(frame_count_reg[0]),
        .O(\frame_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \frame_count[2]_i_1 
       (.I0(frame_count_reg[1]),
        .I1(frame_count_reg[0]),
        .I2(frame_count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \frame_count[3]_i_1 
       (.I0(frame_count_reg[2]),
        .I1(frame_count_reg[0]),
        .I2(frame_count_reg[1]),
        .I3(frame_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \frame_count[4]_i_1 
       (.I0(frame_count_reg[3]),
        .I1(frame_count_reg[1]),
        .I2(frame_count_reg[0]),
        .I3(frame_count_reg[2]),
        .I4(frame_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \frame_count[5]_i_1 
       (.I0(frame_count_reg[4]),
        .I1(frame_count_reg[2]),
        .I2(frame_count_reg[0]),
        .I3(frame_count_reg[1]),
        .I4(frame_count_reg[3]),
        .I5(frame_count_reg[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \frame_count[6]_i_1 
       (.I0(frame_count_reg[5]),
        .I1(frame_count_reg[3]),
        .I2(\frame_count[6]_i_2_n_0 ),
        .I3(frame_count_reg[2]),
        .I4(frame_count_reg[4]),
        .I5(frame_count_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \frame_count[6]_i_2 
       (.I0(frame_count_reg[0]),
        .I1(frame_count_reg[1]),
        .O(\frame_count[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \frame_count[7]_i_2 
       (.I0(frame_count_reg[6]),
        .I1(u_fft_freqwin_top_n_2),
        .I2(frame_count_reg[7]),
        .O(p_0_in[7]));
  FDCE \frame_count_reg[0] 
       (.C(clk),
        .CE(fft_accept),
        .CLR(u_fft_freqwin_top_n_0),
        .D(p_0_in[0]),
        .Q(frame_count_reg[0]));
  FDCE \frame_count_reg[1] 
       (.C(clk),
        .CE(fft_accept),
        .CLR(u_fft_freqwin_top_n_0),
        .D(\frame_count[1]_i_1_n_0 ),
        .Q(frame_count_reg[1]));
  FDCE \frame_count_reg[2] 
       (.C(clk),
        .CE(fft_accept),
        .CLR(u_fft_freqwin_top_n_0),
        .D(p_0_in[2]),
        .Q(frame_count_reg[2]));
  FDCE \frame_count_reg[3] 
       (.C(clk),
        .CE(fft_accept),
        .CLR(u_fft_freqwin_top_n_0),
        .D(p_0_in[3]),
        .Q(frame_count_reg[3]));
  FDCE \frame_count_reg[4] 
       (.C(clk),
        .CE(fft_accept),
        .CLR(u_fft_freqwin_top_n_0),
        .D(p_0_in[4]),
        .Q(frame_count_reg[4]));
  FDCE \frame_count_reg[5] 
       (.C(clk),
        .CE(fft_accept),
        .CLR(u_fft_freqwin_top_n_0),
        .D(p_0_in[5]),
        .Q(frame_count_reg[5]));
  FDCE \frame_count_reg[6] 
       (.C(clk),
        .CE(fft_accept),
        .CLR(u_fft_freqwin_top_n_0),
        .D(p_0_in[6]),
        .Q(frame_count_reg[6]));
  FDCE \frame_count_reg[7] 
       (.C(clk),
        .CE(fft_accept),
        .CLR(u_fft_freqwin_top_n_0),
        .D(p_0_in[7]),
        .Q(frame_count_reg[7]));
  (* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_26,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dds_compiler_v6_0_26,Vivado 2024.2" *) 
  system_fft_pl_ps_0_0_dds_compiler_0 u_dds_compiler_0
       (.aclk(clk),
        .aresetn(rst_n),
        .m_axis_data_tdata({NLW_u_dds_compiler_0_m_axis_data_tdata_UNCONNECTED[31:28],dds_tdata}),
        .m_axis_data_tvalid(dds_tvalid),
        .m_axis_phase_tdata(NLW_u_dds_compiler_0_m_axis_phase_tdata_UNCONNECTED[31:0]),
        .m_axis_phase_tvalid(NLW_u_dds_compiler_0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(dds_config_tdata),
        .s_axis_config_tvalid(dds_config_tvalid));
  system_fft_pl_ps_0_0_dds_config_driver u_dds_config_driver
       (.E(dds_pinc_wr_pulse),
        .Q(dds_config_tdata),
        .clk(clk),
        .config_pending_reg_0(u_fft_freqwin_top_n_0),
        .dds_pinc_dbg(dds_pinc_dbg),
        .s_axis_config_tvalid(dds_config_tvalid));
  system_fft_pl_ps_0_0_fft_freqwin_top_part4 u_fft_freqwin_top
       (.E(fft_accept),
        .Q(frame_count_reg),
        .\abs_sq_value_reg[3]_0 (\abs_sq_value_reg[23]_i_10_n_0 ),
        .clk(clk),
        .\frame_count_reg[4] (u_fft_freqwin_top_n_2),
        .m_axis_data_tdata({dds_tdata[27:16],dds_tdata[11:0]}),
        .m_axis_data_tvalid(dds_tvalid),
        .peak_index_dbg(peak_index_dbg),
        .peak_valid_dbg(peak_valid_dbg),
        .\peak_value_reg[24] (peak_value),
        .rst_n(rst_n),
        .rst_n_0(u_fft_freqwin_top_n_0));
  system_fft_pl_ps_0_0_part4_axi_lite_regs u_regs
       (.E(dds_pinc_wr_pulse),
        .SR(u_fft_freqwin_top_n_0),
        .clk(clk),
        .dds_pinc_dbg(dds_pinc_dbg),
        .peak_index_dbg(peak_index_dbg),
        .peak_valid_dbg(peak_valid_dbg),
        .rst_n(rst_n),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_reg_0(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_reg[24]_0 (peak_value),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_reg_0(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "part4_axi_lite_regs" *) 
module system_fft_pl_ps_0_0_part4_axi_lite_regs
   (s_axi_bvalid_reg_0,
    s_axi_rvalid_reg_0,
    E,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    dds_pinc_dbg,
    s_axi_rdata,
    SR,
    clk,
    s_axi_awvalid,
    rst_n,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    peak_valid_dbg,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_wstrb,
    peak_index_dbg,
    s_axi_araddr,
    \s_axi_rdata_reg[24]_0 );
  output s_axi_bvalid_reg_0;
  output s_axi_rvalid_reg_0;
  output [0:0]E;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output [31:0]dds_pinc_dbg;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input clk;
  input s_axi_awvalid;
  input rst_n;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input peak_valid_dbg;
  input [3:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [7:0]peak_index_dbg;
  input [3:0]s_axi_araddr;
  input [24:0]\s_axi_rdata_reg[24]_0 ;

  wire [0:0]E;
  wire [0:0]SR;
  wire accept_aw;
  wire accept_w;
  wire [3:0]awaddr_reg;
  wire awaddr_valid;
  wire awaddr_valid_i_1_n_0;
  wire clk;
  wire [8:8]data1;
  wire dds_pinc1;
  wire \dds_pinc[31]_i_2_n_0 ;
  wire [31:0]dds_pinc_dbg;
  wire dds_pinc_wr_pulse_i_1_n_0;
  wire p_0_in;
  wire [31:7]p_1_in;
  wire [7:0]peak_index_dbg;
  wire peak_valid_dbg;
  wire peak_valid_sticky_i_1_n_0;
  wire peak_valid_sticky_i_2_n_0;
  wire rst_n;
  wire [3:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_2_n_0;
  wire s_axi_bvalid_reg_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire \s_axi_rdata[8]_i_2_n_0 ;
  wire [31:0]s_axi_rdata_0;
  wire [24:0]\s_axi_rdata_reg[24]_0 ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_rvalid_reg_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire \wdata_reg_reg_n_0_[0] ;
  wire \wdata_reg_reg_n_0_[10] ;
  wire \wdata_reg_reg_n_0_[11] ;
  wire \wdata_reg_reg_n_0_[12] ;
  wire \wdata_reg_reg_n_0_[13] ;
  wire \wdata_reg_reg_n_0_[14] ;
  wire \wdata_reg_reg_n_0_[15] ;
  wire \wdata_reg_reg_n_0_[16] ;
  wire \wdata_reg_reg_n_0_[17] ;
  wire \wdata_reg_reg_n_0_[18] ;
  wire \wdata_reg_reg_n_0_[19] ;
  wire \wdata_reg_reg_n_0_[1] ;
  wire \wdata_reg_reg_n_0_[20] ;
  wire \wdata_reg_reg_n_0_[21] ;
  wire \wdata_reg_reg_n_0_[22] ;
  wire \wdata_reg_reg_n_0_[23] ;
  wire \wdata_reg_reg_n_0_[24] ;
  wire \wdata_reg_reg_n_0_[25] ;
  wire \wdata_reg_reg_n_0_[26] ;
  wire \wdata_reg_reg_n_0_[27] ;
  wire \wdata_reg_reg_n_0_[28] ;
  wire \wdata_reg_reg_n_0_[29] ;
  wire \wdata_reg_reg_n_0_[2] ;
  wire \wdata_reg_reg_n_0_[30] ;
  wire \wdata_reg_reg_n_0_[31] ;
  wire \wdata_reg_reg_n_0_[3] ;
  wire \wdata_reg_reg_n_0_[4] ;
  wire \wdata_reg_reg_n_0_[5] ;
  wire \wdata_reg_reg_n_0_[6] ;
  wire \wdata_reg_reg_n_0_[7] ;
  wire \wdata_reg_reg_n_0_[9] ;
  wire wdata_valid_i_1_n_0;
  wire wdata_valid_reg_n_0;
  wire \wstrb_reg_reg_n_0_[0] ;
  wire \wstrb_reg_reg_n_0_[2] ;
  wire \wstrb_reg_reg_n_0_[3] ;

  LUT3 #(
    .INIT(8'h04)) 
    \awaddr_reg[3]_i_1 
       (.I0(s_axi_bvalid_reg_0),
        .I1(s_axi_awvalid),
        .I2(awaddr_valid),
        .O(accept_aw));
  FDRE \awaddr_reg_reg[0] 
       (.C(clk),
        .CE(accept_aw),
        .D(s_axi_awaddr[0]),
        .Q(awaddr_reg[0]),
        .R(SR));
  FDRE \awaddr_reg_reg[1] 
       (.C(clk),
        .CE(accept_aw),
        .D(s_axi_awaddr[1]),
        .Q(awaddr_reg[1]),
        .R(SR));
  FDRE \awaddr_reg_reg[2] 
       (.C(clk),
        .CE(accept_aw),
        .D(s_axi_awaddr[2]),
        .Q(awaddr_reg[2]),
        .R(SR));
  FDRE \awaddr_reg_reg[3] 
       (.C(clk),
        .CE(accept_aw),
        .D(s_axi_awaddr[3]),
        .Q(awaddr_reg[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hCC0C0088)) 
    awaddr_valid_i_1
       (.I0(s_axi_awvalid),
        .I1(rst_n),
        .I2(wdata_valid_reg_n_0),
        .I3(s_axi_bvalid_reg_0),
        .I4(awaddr_valid),
        .O(awaddr_valid_i_1_n_0));
  FDRE awaddr_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(awaddr_valid_i_1_n_0),
        .Q(awaddr_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \dds_pinc[15]_i_1 
       (.I0(awaddr_reg[2]),
        .I1(awaddr_reg[0]),
        .I2(awaddr_reg[1]),
        .I3(awaddr_reg[3]),
        .I4(\dds_pinc[31]_i_2_n_0 ),
        .I5(dds_pinc1),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \dds_pinc[23]_i_1 
       (.I0(awaddr_reg[2]),
        .I1(awaddr_reg[0]),
        .I2(awaddr_reg[1]),
        .I3(awaddr_reg[3]),
        .I4(\dds_pinc[31]_i_2_n_0 ),
        .I5(\wstrb_reg_reg_n_0_[2] ),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \dds_pinc[31]_i_1 
       (.I0(awaddr_reg[2]),
        .I1(awaddr_reg[0]),
        .I2(awaddr_reg[1]),
        .I3(awaddr_reg[3]),
        .I4(\dds_pinc[31]_i_2_n_0 ),
        .I5(\wstrb_reg_reg_n_0_[3] ),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \dds_pinc[31]_i_2 
       (.I0(wdata_valid_reg_n_0),
        .I1(s_axi_bvalid_reg_0),
        .I2(awaddr_valid),
        .O(\dds_pinc[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \dds_pinc[7]_i_1 
       (.I0(awaddr_reg[2]),
        .I1(awaddr_reg[0]),
        .I2(awaddr_reg[1]),
        .I3(awaddr_reg[3]),
        .I4(\dds_pinc[31]_i_2_n_0 ),
        .I5(\wstrb_reg_reg_n_0_[0] ),
        .O(p_1_in[7]));
  FDSE \dds_pinc_reg[0] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(\wdata_reg_reg_n_0_[0] ),
        .Q(dds_pinc_dbg[0]),
        .S(SR));
  FDSE \dds_pinc_reg[10] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[10] ),
        .Q(dds_pinc_dbg[10]),
        .S(SR));
  FDSE \dds_pinc_reg[11] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[11] ),
        .Q(dds_pinc_dbg[11]),
        .S(SR));
  FDRE \dds_pinc_reg[12] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[12] ),
        .Q(dds_pinc_dbg[12]),
        .R(SR));
  FDRE \dds_pinc_reg[13] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[13] ),
        .Q(dds_pinc_dbg[13]),
        .R(SR));
  FDSE \dds_pinc_reg[14] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[14] ),
        .Q(dds_pinc_dbg[14]),
        .S(SR));
  FDSE \dds_pinc_reg[15] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[15] ),
        .Q(dds_pinc_dbg[15]),
        .S(SR));
  FDRE \dds_pinc_reg[16] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[16] ),
        .Q(dds_pinc_dbg[16]),
        .R(SR));
  FDRE \dds_pinc_reg[17] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[17] ),
        .Q(dds_pinc_dbg[17]),
        .R(SR));
  FDSE \dds_pinc_reg[18] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[18] ),
        .Q(dds_pinc_dbg[18]),
        .S(SR));
  FDSE \dds_pinc_reg[19] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[19] ),
        .Q(dds_pinc_dbg[19]),
        .S(SR));
  FDRE \dds_pinc_reg[1] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(\wdata_reg_reg_n_0_[1] ),
        .Q(dds_pinc_dbg[1]),
        .R(SR));
  FDRE \dds_pinc_reg[20] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[20] ),
        .Q(dds_pinc_dbg[20]),
        .R(SR));
  FDRE \dds_pinc_reg[21] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[21] ),
        .Q(dds_pinc_dbg[21]),
        .R(SR));
  FDSE \dds_pinc_reg[22] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[22] ),
        .Q(dds_pinc_dbg[22]),
        .S(SR));
  FDSE \dds_pinc_reg[23] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(\wdata_reg_reg_n_0_[23] ),
        .Q(dds_pinc_dbg[23]),
        .S(SR));
  FDRE \dds_pinc_reg[24] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[24] ),
        .Q(dds_pinc_dbg[24]),
        .R(SR));
  FDRE \dds_pinc_reg[25] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[25] ),
        .Q(dds_pinc_dbg[25]),
        .R(SR));
  FDSE \dds_pinc_reg[26] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[26] ),
        .Q(dds_pinc_dbg[26]),
        .S(SR));
  FDSE \dds_pinc_reg[27] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[27] ),
        .Q(dds_pinc_dbg[27]),
        .S(SR));
  FDRE \dds_pinc_reg[28] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[28] ),
        .Q(dds_pinc_dbg[28]),
        .R(SR));
  FDRE \dds_pinc_reg[29] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[29] ),
        .Q(dds_pinc_dbg[29]),
        .R(SR));
  FDSE \dds_pinc_reg[2] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(\wdata_reg_reg_n_0_[2] ),
        .Q(dds_pinc_dbg[2]),
        .S(SR));
  FDRE \dds_pinc_reg[30] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[30] ),
        .Q(dds_pinc_dbg[30]),
        .R(SR));
  FDRE \dds_pinc_reg[31] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(\wdata_reg_reg_n_0_[31] ),
        .Q(dds_pinc_dbg[31]),
        .R(SR));
  FDSE \dds_pinc_reg[3] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(\wdata_reg_reg_n_0_[3] ),
        .Q(dds_pinc_dbg[3]),
        .S(SR));
  FDRE \dds_pinc_reg[4] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(\wdata_reg_reg_n_0_[4] ),
        .Q(dds_pinc_dbg[4]),
        .R(SR));
  FDRE \dds_pinc_reg[5] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(\wdata_reg_reg_n_0_[5] ),
        .Q(dds_pinc_dbg[5]),
        .R(SR));
  FDSE \dds_pinc_reg[6] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(\wdata_reg_reg_n_0_[6] ),
        .Q(dds_pinc_dbg[6]),
        .S(SR));
  FDSE \dds_pinc_reg[7] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(\wdata_reg_reg_n_0_[7] ),
        .Q(dds_pinc_dbg[7]),
        .S(SR));
  FDRE \dds_pinc_reg[8] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(p_0_in),
        .Q(dds_pinc_dbg[8]),
        .R(SR));
  FDRE \dds_pinc_reg[9] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(\wdata_reg_reg_n_0_[9] ),
        .Q(dds_pinc_dbg[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    dds_pinc_wr_pulse_i_1
       (.I0(awaddr_reg[2]),
        .I1(awaddr_reg[0]),
        .I2(awaddr_reg[1]),
        .I3(awaddr_reg[3]),
        .I4(\dds_pinc[31]_i_2_n_0 ),
        .I5(rst_n),
        .O(dds_pinc_wr_pulse_i_1_n_0));
  FDRE dds_pinc_wr_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(dds_pinc_wr_pulse_i_1_n_0),
        .Q(E),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCFFF8AAA)) 
    peak_valid_sticky_i_1
       (.I0(peak_valid_dbg),
        .I1(peak_valid_sticky_i_2_n_0),
        .I2(p_0_in),
        .I3(awaddr_reg[2]),
        .I4(data1),
        .O(peak_valid_sticky_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    peak_valid_sticky_i_2
       (.I0(awaddr_reg[0]),
        .I1(awaddr_reg[1]),
        .I2(awaddr_reg[3]),
        .I3(awaddr_valid),
        .I4(s_axi_bvalid_reg_0),
        .I5(wdata_valid_reg_n_0),
        .O(peak_valid_sticky_i_2_n_0));
  FDRE peak_valid_sticky_reg
       (.C(clk),
        .CE(1'b1),
        .D(peak_valid_sticky_i_1_n_0),
        .Q(data1),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_INST_0
       (.I0(s_axi_rvalid_reg_0),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_awready_INST_0
       (.I0(awaddr_valid),
        .I1(s_axi_bvalid_reg_0),
        .O(s_axi_awready));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h5C50)) 
    s_axi_bvalid_i_2
       (.I0(s_axi_bready),
        .I1(awaddr_valid),
        .I2(s_axi_bvalid_reg_0),
        .I3(wdata_valid_reg_n_0),
        .O(s_axi_bvalid_i_2_n_0));
  FDRE s_axi_bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_2_n_0),
        .Q(s_axi_bvalid_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAA88A0AA0088A0)) 
    \s_axi_rdata[0]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(peak_index_dbg[0]),
        .I2(dds_pinc_dbg[0]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(\s_axi_rdata_reg[24]_0 [0]),
        .O(s_axi_rdata_0[0]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[10]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [10]),
        .I1(dds_pinc_dbg[10]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[10]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[11]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [11]),
        .I1(dds_pinc_dbg[11]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[11]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[12]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [12]),
        .I1(dds_pinc_dbg[12]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[12]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[13]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [13]),
        .I1(dds_pinc_dbg[13]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[13]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[14]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [14]),
        .I1(dds_pinc_dbg[14]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[14]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[15]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [15]),
        .I1(dds_pinc_dbg[15]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[15]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[16]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [16]),
        .I1(dds_pinc_dbg[16]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[16]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[17]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [17]),
        .I1(dds_pinc_dbg[17]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[17]));
  LUT6 #(
    .INIT(64'h1101100111001000)) 
    \s_axi_rdata[18]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[3]),
        .I4(\s_axi_rdata_reg[24]_0 [18]),
        .I5(dds_pinc_dbg[18]),
        .O(s_axi_rdata_0[18]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[19]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [19]),
        .I1(dds_pinc_dbg[19]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[19]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \s_axi_rdata[1]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(peak_index_dbg[1]),
        .I4(\s_axi_rdata_reg[24]_0 [1]),
        .I5(dds_pinc_dbg[1]),
        .O(s_axi_rdata_0[1]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[20]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [20]),
        .I1(dds_pinc_dbg[20]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[20]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[21]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [21]),
        .I1(dds_pinc_dbg[21]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[21]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[22]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [22]),
        .I1(dds_pinc_dbg[22]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[22]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[23]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [23]),
        .I1(dds_pinc_dbg[23]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[23]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[24]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [24]),
        .I1(dds_pinc_dbg[24]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \s_axi_rdata[25]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[2]),
        .I4(dds_pinc_dbg[25]),
        .O(s_axi_rdata_0[25]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \s_axi_rdata[26]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[2]),
        .I4(dds_pinc_dbg[26]),
        .O(s_axi_rdata_0[26]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \s_axi_rdata[27]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[2]),
        .I4(dds_pinc_dbg[27]),
        .O(s_axi_rdata_0[27]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \s_axi_rdata[28]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[2]),
        .I4(dds_pinc_dbg[28]),
        .O(s_axi_rdata_0[28]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \s_axi_rdata[29]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[2]),
        .I4(dds_pinc_dbg[29]),
        .O(s_axi_rdata_0[29]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \s_axi_rdata[2]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(peak_index_dbg[2]),
        .I4(\s_axi_rdata_reg[24]_0 [2]),
        .I5(dds_pinc_dbg[2]),
        .O(s_axi_rdata_0[2]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \s_axi_rdata[30]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[2]),
        .I4(dds_pinc_dbg[30]),
        .O(s_axi_rdata_0[30]));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid_reg_0),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \s_axi_rdata[31]_i_2 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[2]),
        .I4(dds_pinc_dbg[31]),
        .O(s_axi_rdata_0[31]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \s_axi_rdata[3]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(peak_index_dbg[3]),
        .I4(\s_axi_rdata_reg[24]_0 [3]),
        .I5(dds_pinc_dbg[3]),
        .O(s_axi_rdata_0[3]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \s_axi_rdata[4]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(peak_index_dbg[4]),
        .I4(\s_axi_rdata_reg[24]_0 [4]),
        .I5(dds_pinc_dbg[4]),
        .O(s_axi_rdata_0[4]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \s_axi_rdata[5]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(peak_index_dbg[5]),
        .I4(\s_axi_rdata_reg[24]_0 [5]),
        .I5(dds_pinc_dbg[5]),
        .O(s_axi_rdata_0[5]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \s_axi_rdata[6]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(peak_index_dbg[6]),
        .I4(\s_axi_rdata_reg[24]_0 [6]),
        .I5(dds_pinc_dbg[6]),
        .O(s_axi_rdata_0[6]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \s_axi_rdata[7]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(peak_index_dbg[7]),
        .I4(\s_axi_rdata_reg[24]_0 [7]),
        .I5(dds_pinc_dbg[7]),
        .O(s_axi_rdata_0[7]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \s_axi_rdata[8]_i_1 
       (.I0(\s_axi_rdata[8]_i_2_n_0 ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(data1),
        .I4(\s_axi_rdata_reg[24]_0 [8]),
        .I5(dds_pinc_dbg[8]),
        .O(s_axi_rdata_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_axi_rdata[8]_i_2 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .O(\s_axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[9]_i_1 
       (.I0(\s_axi_rdata_reg[24]_0 [9]),
        .I1(dds_pinc_dbg[9]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_araddr[3]),
        .O(s_axi_rdata_0[9]));
  FDRE \s_axi_rdata_reg[0] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE \s_axi_rdata_reg[10] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE \s_axi_rdata_reg[11] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE \s_axi_rdata_reg[12] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE \s_axi_rdata_reg[13] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE \s_axi_rdata_reg[14] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE \s_axi_rdata_reg[15] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE \s_axi_rdata_reg[16] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE \s_axi_rdata_reg[17] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE \s_axi_rdata_reg[18] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE \s_axi_rdata_reg[19] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  FDRE \s_axi_rdata_reg[1] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE \s_axi_rdata_reg[20] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  FDRE \s_axi_rdata_reg[21] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  FDRE \s_axi_rdata_reg[22] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  FDRE \s_axi_rdata_reg[23] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  FDRE \s_axi_rdata_reg[24] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  FDRE \s_axi_rdata_reg[25] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[25]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  FDRE \s_axi_rdata_reg[26] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[26]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  FDRE \s_axi_rdata_reg[27] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[27]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  FDRE \s_axi_rdata_reg[28] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[28]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  FDRE \s_axi_rdata_reg[29] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[29]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  FDRE \s_axi_rdata_reg[2] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE \s_axi_rdata_reg[30] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[30]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  FDRE \s_axi_rdata_reg[31] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[31]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  FDRE \s_axi_rdata_reg[3] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE \s_axi_rdata_reg[4] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE \s_axi_rdata_reg[5] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE \s_axi_rdata_reg[6] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE \s_axi_rdata_reg[7] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE \s_axi_rdata_reg[8] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE \s_axi_rdata_reg[9] 
       (.C(clk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(s_axi_rdata_0[9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid_reg_0),
        .O(s_axi_rvalid_i_1_n_0));
  FDRE s_axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_wready_INST_0
       (.I0(wdata_valid_reg_n_0),
        .I1(s_axi_bvalid_reg_0),
        .O(s_axi_wready));
  LUT3 #(
    .INIT(8'h10)) 
    \wdata_reg[31]_i_1 
       (.I0(s_axi_bvalid_reg_0),
        .I1(wdata_valid_reg_n_0),
        .I2(s_axi_wvalid),
        .O(accept_w));
  FDRE \wdata_reg_reg[0] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[0]),
        .Q(\wdata_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE \wdata_reg_reg[10] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[10]),
        .Q(\wdata_reg_reg_n_0_[10] ),
        .R(SR));
  FDRE \wdata_reg_reg[11] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[11]),
        .Q(\wdata_reg_reg_n_0_[11] ),
        .R(SR));
  FDRE \wdata_reg_reg[12] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[12]),
        .Q(\wdata_reg_reg_n_0_[12] ),
        .R(SR));
  FDRE \wdata_reg_reg[13] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[13]),
        .Q(\wdata_reg_reg_n_0_[13] ),
        .R(SR));
  FDRE \wdata_reg_reg[14] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[14]),
        .Q(\wdata_reg_reg_n_0_[14] ),
        .R(SR));
  FDRE \wdata_reg_reg[15] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[15]),
        .Q(\wdata_reg_reg_n_0_[15] ),
        .R(SR));
  FDRE \wdata_reg_reg[16] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[16]),
        .Q(\wdata_reg_reg_n_0_[16] ),
        .R(SR));
  FDRE \wdata_reg_reg[17] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[17]),
        .Q(\wdata_reg_reg_n_0_[17] ),
        .R(SR));
  FDRE \wdata_reg_reg[18] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[18]),
        .Q(\wdata_reg_reg_n_0_[18] ),
        .R(SR));
  FDRE \wdata_reg_reg[19] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[19]),
        .Q(\wdata_reg_reg_n_0_[19] ),
        .R(SR));
  FDRE \wdata_reg_reg[1] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[1]),
        .Q(\wdata_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE \wdata_reg_reg[20] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[20]),
        .Q(\wdata_reg_reg_n_0_[20] ),
        .R(SR));
  FDRE \wdata_reg_reg[21] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[21]),
        .Q(\wdata_reg_reg_n_0_[21] ),
        .R(SR));
  FDRE \wdata_reg_reg[22] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[22]),
        .Q(\wdata_reg_reg_n_0_[22] ),
        .R(SR));
  FDRE \wdata_reg_reg[23] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[23]),
        .Q(\wdata_reg_reg_n_0_[23] ),
        .R(SR));
  FDRE \wdata_reg_reg[24] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[24]),
        .Q(\wdata_reg_reg_n_0_[24] ),
        .R(SR));
  FDRE \wdata_reg_reg[25] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[25]),
        .Q(\wdata_reg_reg_n_0_[25] ),
        .R(SR));
  FDRE \wdata_reg_reg[26] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[26]),
        .Q(\wdata_reg_reg_n_0_[26] ),
        .R(SR));
  FDRE \wdata_reg_reg[27] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[27]),
        .Q(\wdata_reg_reg_n_0_[27] ),
        .R(SR));
  FDRE \wdata_reg_reg[28] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[28]),
        .Q(\wdata_reg_reg_n_0_[28] ),
        .R(SR));
  FDRE \wdata_reg_reg[29] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[29]),
        .Q(\wdata_reg_reg_n_0_[29] ),
        .R(SR));
  FDRE \wdata_reg_reg[2] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[2]),
        .Q(\wdata_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE \wdata_reg_reg[30] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[30]),
        .Q(\wdata_reg_reg_n_0_[30] ),
        .R(SR));
  FDRE \wdata_reg_reg[31] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[31]),
        .Q(\wdata_reg_reg_n_0_[31] ),
        .R(SR));
  FDRE \wdata_reg_reg[3] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[3]),
        .Q(\wdata_reg_reg_n_0_[3] ),
        .R(SR));
  FDRE \wdata_reg_reg[4] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[4]),
        .Q(\wdata_reg_reg_n_0_[4] ),
        .R(SR));
  FDRE \wdata_reg_reg[5] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[5]),
        .Q(\wdata_reg_reg_n_0_[5] ),
        .R(SR));
  FDRE \wdata_reg_reg[6] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[6]),
        .Q(\wdata_reg_reg_n_0_[6] ),
        .R(SR));
  FDRE \wdata_reg_reg[7] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[7]),
        .Q(\wdata_reg_reg_n_0_[7] ),
        .R(SR));
  FDRE \wdata_reg_reg[8] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[8]),
        .Q(p_0_in),
        .R(SR));
  FDRE \wdata_reg_reg[9] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wdata[9]),
        .Q(\wdata_reg_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hC008C0C8)) 
    wdata_valid_i_1
       (.I0(s_axi_wvalid),
        .I1(rst_n),
        .I2(wdata_valid_reg_n_0),
        .I3(s_axi_bvalid_reg_0),
        .I4(awaddr_valid),
        .O(wdata_valid_i_1_n_0));
  FDRE wdata_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(wdata_valid_i_1_n_0),
        .Q(wdata_valid_reg_n_0),
        .R(1'b0));
  FDRE \wstrb_reg_reg[0] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wstrb[0]),
        .Q(\wstrb_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE \wstrb_reg_reg[1] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wstrb[1]),
        .Q(dds_pinc1),
        .R(SR));
  FDRE \wstrb_reg_reg[2] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wstrb[2]),
        .Q(\wstrb_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE \wstrb_reg_reg[3] 
       (.C(clk),
        .CE(accept_w),
        .D(s_axi_wstrb[3]),
        .Q(\wstrb_reg_reg_n_0_[3] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "peak_detector" *) 
module system_fft_pl_ps_0_0_peak_detector
   (peak_valid_dbg,
    peak_index_dbg,
    \peak_value_reg[24]_0 ,
    clk,
    \peak_value_reg[0]_0 ,
    \peak_value_reg[0]_1 ,
    Q,
    rst_n,
    \max_index_reg[7]_0 ,
    SR);
  output peak_valid_dbg;
  output [7:0]peak_index_dbg;
  output [24:0]\peak_value_reg[24]_0 ;
  input clk;
  input \peak_value_reg[0]_0 ;
  input \peak_value_reg[0]_1 ;
  input [24:0]Q;
  input rst_n;
  input [7:0]\max_index_reg[7]_0 ;
  input [0:0]SR;

  wire [24:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [7:0]max_index;
  wire max_index1_carry__0_i_1_n_0;
  wire max_index1_carry__0_i_2_n_0;
  wire max_index1_carry__0_i_3_n_0;
  wire max_index1_carry__0_i_4_n_0;
  wire max_index1_carry__0_i_5_n_0;
  wire max_index1_carry__0_i_6_n_0;
  wire max_index1_carry__0_i_7_n_0;
  wire max_index1_carry__0_i_8_n_0;
  wire max_index1_carry__0_n_0;
  wire max_index1_carry__0_n_1;
  wire max_index1_carry__0_n_2;
  wire max_index1_carry__0_n_3;
  wire max_index1_carry__1_i_1_n_0;
  wire max_index1_carry__1_i_2_n_0;
  wire max_index1_carry__1_i_3_n_0;
  wire max_index1_carry__1_i_4_n_0;
  wire max_index1_carry__1_i_5_n_0;
  wire max_index1_carry__1_i_6_n_0;
  wire max_index1_carry__1_i_7_n_0;
  wire max_index1_carry__1_i_8_n_0;
  wire max_index1_carry__1_n_0;
  wire max_index1_carry__1_n_1;
  wire max_index1_carry__1_n_2;
  wire max_index1_carry__1_n_3;
  wire max_index1_carry__2_i_1_n_0;
  wire max_index1_carry__2_i_2_n_0;
  wire max_index1_carry__2_n_3;
  wire max_index1_carry_i_1_n_0;
  wire max_index1_carry_i_2_n_0;
  wire max_index1_carry_i_3_n_0;
  wire max_index1_carry_i_4_n_0;
  wire max_index1_carry_i_5_n_0;
  wire max_index1_carry_i_6_n_0;
  wire max_index1_carry_i_7_n_0;
  wire max_index1_carry_i_8_n_0;
  wire max_index1_carry_n_0;
  wire max_index1_carry_n_1;
  wire max_index1_carry_n_2;
  wire max_index1_carry_n_3;
  wire max_index_0;
  wire [7:0]\max_index_reg[7]_0 ;
  wire [24:0]max_value;
  wire \max_value[24]_i_2_n_0 ;
  wire [7:0]p_0_in;
  wire \peak_index[7]_i_1_n_0 ;
  wire [7:0]peak_index_dbg;
  wire peak_valid_dbg;
  wire peak_valid_i_1_n_0;
  wire \peak_value[0]_i_1_n_0 ;
  wire \peak_value[10]_i_1_n_0 ;
  wire \peak_value[11]_i_1_n_0 ;
  wire \peak_value[12]_i_1_n_0 ;
  wire \peak_value[13]_i_1_n_0 ;
  wire \peak_value[14]_i_1_n_0 ;
  wire \peak_value[15]_i_1_n_0 ;
  wire \peak_value[16]_i_1_n_0 ;
  wire \peak_value[17]_i_1_n_0 ;
  wire \peak_value[18]_i_1_n_0 ;
  wire \peak_value[19]_i_1_n_0 ;
  wire \peak_value[1]_i_1_n_0 ;
  wire \peak_value[20]_i_1_n_0 ;
  wire \peak_value[21]_i_1_n_0 ;
  wire \peak_value[22]_i_1_n_0 ;
  wire \peak_value[23]_i_1_n_0 ;
  wire \peak_value[24]_i_1_n_0 ;
  wire \peak_value[2]_i_1_n_0 ;
  wire \peak_value[3]_i_1_n_0 ;
  wire \peak_value[4]_i_1_n_0 ;
  wire \peak_value[5]_i_1_n_0 ;
  wire \peak_value[6]_i_1_n_0 ;
  wire \peak_value[7]_i_1_n_0 ;
  wire \peak_value[8]_i_1_n_0 ;
  wire \peak_value[9]_i_1_n_0 ;
  wire \peak_value_reg[0]_0 ;
  wire \peak_value_reg[0]_1 ;
  wire [24:0]\peak_value_reg[24]_0 ;
  wire rst_n;
  wire [3:0]NLW_max_index1_carry_O_UNCONNECTED;
  wire [3:0]NLW_max_index1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_max_index1_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_max_index1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_max_index1_carry__2_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 max_index1_carry
       (.CI(1'b0),
        .CO({max_index1_carry_n_0,max_index1_carry_n_1,max_index1_carry_n_2,max_index1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({max_index1_carry_i_1_n_0,max_index1_carry_i_2_n_0,max_index1_carry_i_3_n_0,max_index1_carry_i_4_n_0}),
        .O(NLW_max_index1_carry_O_UNCONNECTED[3:0]),
        .S({max_index1_carry_i_5_n_0,max_index1_carry_i_6_n_0,max_index1_carry_i_7_n_0,max_index1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 max_index1_carry__0
       (.CI(max_index1_carry_n_0),
        .CO({max_index1_carry__0_n_0,max_index1_carry__0_n_1,max_index1_carry__0_n_2,max_index1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({max_index1_carry__0_i_1_n_0,max_index1_carry__0_i_2_n_0,max_index1_carry__0_i_3_n_0,max_index1_carry__0_i_4_n_0}),
        .O(NLW_max_index1_carry__0_O_UNCONNECTED[3:0]),
        .S({max_index1_carry__0_i_5_n_0,max_index1_carry__0_i_6_n_0,max_index1_carry__0_i_7_n_0,max_index1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry__0_i_1
       (.I0(Q[15]),
        .I1(max_value[15]),
        .I2(Q[14]),
        .I3(max_value[14]),
        .O(max_index1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry__0_i_2
       (.I0(Q[13]),
        .I1(max_value[13]),
        .I2(Q[12]),
        .I3(max_value[12]),
        .O(max_index1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry__0_i_3
       (.I0(Q[11]),
        .I1(max_value[11]),
        .I2(Q[10]),
        .I3(max_value[10]),
        .O(max_index1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry__0_i_4
       (.I0(Q[9]),
        .I1(max_value[9]),
        .I2(Q[8]),
        .I3(max_value[8]),
        .O(max_index1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry__0_i_5
       (.I0(max_value[15]),
        .I1(Q[15]),
        .I2(max_value[14]),
        .I3(Q[14]),
        .O(max_index1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry__0_i_6
       (.I0(max_value[13]),
        .I1(Q[13]),
        .I2(max_value[12]),
        .I3(Q[12]),
        .O(max_index1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry__0_i_7
       (.I0(max_value[11]),
        .I1(Q[11]),
        .I2(max_value[10]),
        .I3(Q[10]),
        .O(max_index1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry__0_i_8
       (.I0(max_value[9]),
        .I1(Q[9]),
        .I2(max_value[8]),
        .I3(Q[8]),
        .O(max_index1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 max_index1_carry__1
       (.CI(max_index1_carry__0_n_0),
        .CO({max_index1_carry__1_n_0,max_index1_carry__1_n_1,max_index1_carry__1_n_2,max_index1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({max_index1_carry__1_i_1_n_0,max_index1_carry__1_i_2_n_0,max_index1_carry__1_i_3_n_0,max_index1_carry__1_i_4_n_0}),
        .O(NLW_max_index1_carry__1_O_UNCONNECTED[3:0]),
        .S({max_index1_carry__1_i_5_n_0,max_index1_carry__1_i_6_n_0,max_index1_carry__1_i_7_n_0,max_index1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry__1_i_1
       (.I0(Q[23]),
        .I1(max_value[23]),
        .I2(Q[22]),
        .I3(max_value[22]),
        .O(max_index1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry__1_i_2
       (.I0(Q[21]),
        .I1(max_value[21]),
        .I2(Q[20]),
        .I3(max_value[20]),
        .O(max_index1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry__1_i_3
       (.I0(Q[19]),
        .I1(max_value[19]),
        .I2(Q[18]),
        .I3(max_value[18]),
        .O(max_index1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry__1_i_4
       (.I0(Q[17]),
        .I1(max_value[17]),
        .I2(Q[16]),
        .I3(max_value[16]),
        .O(max_index1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry__1_i_5
       (.I0(max_value[23]),
        .I1(Q[23]),
        .I2(max_value[22]),
        .I3(Q[22]),
        .O(max_index1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry__1_i_6
       (.I0(max_value[21]),
        .I1(Q[21]),
        .I2(max_value[20]),
        .I3(Q[20]),
        .O(max_index1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry__1_i_7
       (.I0(max_value[19]),
        .I1(Q[19]),
        .I2(max_value[18]),
        .I3(Q[18]),
        .O(max_index1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry__1_i_8
       (.I0(max_value[17]),
        .I1(Q[17]),
        .I2(max_value[16]),
        .I3(Q[16]),
        .O(max_index1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 max_index1_carry__2
       (.CI(max_index1_carry__1_n_0),
        .CO({NLW_max_index1_carry__2_CO_UNCONNECTED[3:1],max_index1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,max_index1_carry__2_i_1_n_0}),
        .O(NLW_max_index1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,max_index1_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    max_index1_carry__2_i_1
       (.I0(Q[24]),
        .I1(max_value[24]),
        .O(max_index1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    max_index1_carry__2_i_2
       (.I0(max_value[24]),
        .I1(Q[24]),
        .O(max_index1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry_i_1
       (.I0(Q[7]),
        .I1(max_value[7]),
        .I2(Q[6]),
        .I3(max_value[6]),
        .O(max_index1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry_i_2
       (.I0(Q[5]),
        .I1(max_value[5]),
        .I2(Q[4]),
        .I3(max_value[4]),
        .O(max_index1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry_i_3
       (.I0(Q[3]),
        .I1(max_value[3]),
        .I2(Q[2]),
        .I3(max_value[2]),
        .O(max_index1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    max_index1_carry_i_4
       (.I0(Q[1]),
        .I1(max_value[1]),
        .I2(Q[0]),
        .I3(max_value[0]),
        .O(max_index1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry_i_5
       (.I0(max_value[7]),
        .I1(Q[7]),
        .I2(max_value[6]),
        .I3(Q[6]),
        .O(max_index1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry_i_6
       (.I0(max_value[5]),
        .I1(Q[5]),
        .I2(max_value[4]),
        .I3(Q[4]),
        .O(max_index1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry_i_7
       (.I0(max_value[3]),
        .I1(Q[3]),
        .I2(max_value[2]),
        .I3(Q[2]),
        .O(max_index1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    max_index1_carry_i_8
       (.I0(max_value[1]),
        .I1(Q[1]),
        .I2(max_value[0]),
        .I3(Q[0]),
        .O(max_index1_carry_i_8_n_0));
  FDRE \max_index_reg[0] 
       (.C(clk),
        .CE(max_index_0),
        .D(\max_index_reg[7]_0 [0]),
        .Q(max_index[0]),
        .R(SR));
  FDRE \max_index_reg[1] 
       (.C(clk),
        .CE(max_index_0),
        .D(\max_index_reg[7]_0 [1]),
        .Q(max_index[1]),
        .R(SR));
  FDRE \max_index_reg[2] 
       (.C(clk),
        .CE(max_index_0),
        .D(\max_index_reg[7]_0 [2]),
        .Q(max_index[2]),
        .R(SR));
  FDRE \max_index_reg[3] 
       (.C(clk),
        .CE(max_index_0),
        .D(\max_index_reg[7]_0 [3]),
        .Q(max_index[3]),
        .R(SR));
  FDRE \max_index_reg[4] 
       (.C(clk),
        .CE(max_index_0),
        .D(\max_index_reg[7]_0 [4]),
        .Q(max_index[4]),
        .R(SR));
  FDRE \max_index_reg[5] 
       (.C(clk),
        .CE(max_index_0),
        .D(\max_index_reg[7]_0 [5]),
        .Q(max_index[5]),
        .R(SR));
  FDRE \max_index_reg[6] 
       (.C(clk),
        .CE(max_index_0),
        .D(\max_index_reg[7]_0 [6]),
        .Q(max_index[6]),
        .R(SR));
  FDRE \max_index_reg[7] 
       (.C(clk),
        .CE(max_index_0),
        .D(\max_index_reg[7]_0 [7]),
        .Q(max_index[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'hAAAE0000)) 
    \max_value[24]_i_1 
       (.I0(max_index1_carry__2_n_3),
        .I1(\max_value[24]_i_2_n_0 ),
        .I2(\max_index_reg[7]_0 [1]),
        .I3(\max_index_reg[7]_0 [0]),
        .I4(\peak_value_reg[0]_0 ),
        .O(max_index_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \max_value[24]_i_2 
       (.I0(\max_index_reg[7]_0 [4]),
        .I1(\max_index_reg[7]_0 [5]),
        .I2(\max_index_reg[7]_0 [2]),
        .I3(\max_index_reg[7]_0 [3]),
        .I4(\max_index_reg[7]_0 [7]),
        .I5(\max_index_reg[7]_0 [6]),
        .O(\max_value[24]_i_2_n_0 ));
  FDRE \max_value_reg[0] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[0]),
        .Q(max_value[0]),
        .R(SR));
  FDRE \max_value_reg[10] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[10]),
        .Q(max_value[10]),
        .R(SR));
  FDRE \max_value_reg[11] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[11]),
        .Q(max_value[11]),
        .R(SR));
  FDRE \max_value_reg[12] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[12]),
        .Q(max_value[12]),
        .R(SR));
  FDRE \max_value_reg[13] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[13]),
        .Q(max_value[13]),
        .R(SR));
  FDRE \max_value_reg[14] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[14]),
        .Q(max_value[14]),
        .R(SR));
  FDRE \max_value_reg[15] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[15]),
        .Q(max_value[15]),
        .R(SR));
  FDRE \max_value_reg[16] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[16]),
        .Q(max_value[16]),
        .R(SR));
  FDRE \max_value_reg[17] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[17]),
        .Q(max_value[17]),
        .R(SR));
  FDRE \max_value_reg[18] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[18]),
        .Q(max_value[18]),
        .R(SR));
  FDRE \max_value_reg[19] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[19]),
        .Q(max_value[19]),
        .R(SR));
  FDRE \max_value_reg[1] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[1]),
        .Q(max_value[1]),
        .R(SR));
  FDRE \max_value_reg[20] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[20]),
        .Q(max_value[20]),
        .R(SR));
  FDRE \max_value_reg[21] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[21]),
        .Q(max_value[21]),
        .R(SR));
  FDRE \max_value_reg[22] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[22]),
        .Q(max_value[22]),
        .R(SR));
  FDRE \max_value_reg[23] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[23]),
        .Q(max_value[23]),
        .R(SR));
  FDRE \max_value_reg[24] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[24]),
        .Q(max_value[24]),
        .R(SR));
  FDRE \max_value_reg[2] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[2]),
        .Q(max_value[2]),
        .R(SR));
  FDRE \max_value_reg[3] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[3]),
        .Q(max_value[3]),
        .R(SR));
  FDRE \max_value_reg[4] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[4]),
        .Q(max_value[4]),
        .R(SR));
  FDRE \max_value_reg[5] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[5]),
        .Q(max_value[5]),
        .R(SR));
  FDRE \max_value_reg[6] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[6]),
        .Q(max_value[6]),
        .R(SR));
  FDRE \max_value_reg[7] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[7]),
        .Q(max_value[7]),
        .R(SR));
  FDRE \max_value_reg[8] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[8]),
        .Q(max_value[8]),
        .R(SR));
  FDRE \max_value_reg[9] 
       (.C(clk),
        .CE(max_index_0),
        .D(Q[9]),
        .Q(max_value[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_index[0]_i_1 
       (.I0(\max_index_reg[7]_0 [0]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_index[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_index[1]_i_1 
       (.I0(\max_index_reg[7]_0 [1]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_index[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_index[2]_i_1 
       (.I0(\max_index_reg[7]_0 [2]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_index[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_index[3]_i_1 
       (.I0(\max_index_reg[7]_0 [3]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_index[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_index[4]_i_1 
       (.I0(\max_index_reg[7]_0 [4]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_index[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_index[5]_i_1 
       (.I0(\max_index_reg[7]_0 [5]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_index[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_index[6]_i_1 
       (.I0(\max_index_reg[7]_0 [6]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_index[6]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \peak_index[7]_i_1 
       (.I0(\peak_value_reg[0]_0 ),
        .I1(\peak_value_reg[0]_1 ),
        .O(\peak_index[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_index[7]_i_2 
       (.I0(\max_index_reg[7]_0 [7]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_index[7]),
        .O(p_0_in[7]));
  FDRE \peak_index_reg[0] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(peak_index_dbg[0]),
        .R(SR));
  FDRE \peak_index_reg[1] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(peak_index_dbg[1]),
        .R(SR));
  FDRE \peak_index_reg[2] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(peak_index_dbg[2]),
        .R(SR));
  FDRE \peak_index_reg[3] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(peak_index_dbg[3]),
        .R(SR));
  FDRE \peak_index_reg[4] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(peak_index_dbg[4]),
        .R(SR));
  FDRE \peak_index_reg[5] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(peak_index_dbg[5]),
        .R(SR));
  FDRE \peak_index_reg[6] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(peak_index_dbg[6]),
        .R(SR));
  FDRE \peak_index_reg[7] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(peak_index_dbg[7]),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    peak_valid_i_1
       (.I0(\peak_value_reg[0]_0 ),
        .I1(\peak_value_reg[0]_1 ),
        .I2(rst_n),
        .O(peak_valid_i_1_n_0));
  FDRE peak_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(peak_valid_i_1_n_0),
        .Q(peak_valid_dbg),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[0]_i_1 
       (.I0(Q[0]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[0]),
        .O(\peak_value[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[10]_i_1 
       (.I0(Q[10]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[10]),
        .O(\peak_value[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[11]_i_1 
       (.I0(Q[11]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[11]),
        .O(\peak_value[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[12]_i_1 
       (.I0(Q[12]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[12]),
        .O(\peak_value[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[13]_i_1 
       (.I0(Q[13]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[13]),
        .O(\peak_value[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[14]_i_1 
       (.I0(Q[14]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[14]),
        .O(\peak_value[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[15]_i_1 
       (.I0(Q[15]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[15]),
        .O(\peak_value[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[16]_i_1 
       (.I0(Q[16]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[16]),
        .O(\peak_value[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[17]_i_1 
       (.I0(Q[17]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[17]),
        .O(\peak_value[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[18]_i_1 
       (.I0(Q[18]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[18]),
        .O(\peak_value[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[19]_i_1 
       (.I0(Q[19]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[19]),
        .O(\peak_value[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[1]_i_1 
       (.I0(Q[1]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[1]),
        .O(\peak_value[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[20]_i_1 
       (.I0(Q[20]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[20]),
        .O(\peak_value[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[21]_i_1 
       (.I0(Q[21]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[21]),
        .O(\peak_value[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[22]_i_1 
       (.I0(Q[22]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[22]),
        .O(\peak_value[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[23]_i_1 
       (.I0(Q[23]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[23]),
        .O(\peak_value[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[24]_i_1 
       (.I0(Q[24]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[24]),
        .O(\peak_value[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[2]_i_1 
       (.I0(Q[2]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[2]),
        .O(\peak_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[3]_i_1 
       (.I0(Q[3]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[3]),
        .O(\peak_value[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[4]_i_1 
       (.I0(Q[4]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[4]),
        .O(\peak_value[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[5]_i_1 
       (.I0(Q[5]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[5]),
        .O(\peak_value[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[6]_i_1 
       (.I0(Q[6]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[6]),
        .O(\peak_value[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[7]_i_1 
       (.I0(Q[7]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[7]),
        .O(\peak_value[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[8]_i_1 
       (.I0(Q[8]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[8]),
        .O(\peak_value[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \peak_value[9]_i_1 
       (.I0(Q[9]),
        .I1(max_index1_carry__2_n_3),
        .I2(max_value[9]),
        .O(\peak_value[9]_i_1_n_0 ));
  FDRE \peak_value_reg[0] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[0]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [0]),
        .R(SR));
  FDRE \peak_value_reg[10] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[10]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [10]),
        .R(SR));
  FDRE \peak_value_reg[11] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[11]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [11]),
        .R(SR));
  FDRE \peak_value_reg[12] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[12]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [12]),
        .R(SR));
  FDRE \peak_value_reg[13] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[13]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [13]),
        .R(SR));
  FDRE \peak_value_reg[14] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[14]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [14]),
        .R(SR));
  FDRE \peak_value_reg[15] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[15]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [15]),
        .R(SR));
  FDRE \peak_value_reg[16] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[16]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [16]),
        .R(SR));
  FDRE \peak_value_reg[17] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[17]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [17]),
        .R(SR));
  FDRE \peak_value_reg[18] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[18]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [18]),
        .R(SR));
  FDRE \peak_value_reg[19] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[19]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [19]),
        .R(SR));
  FDRE \peak_value_reg[1] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[1]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [1]),
        .R(SR));
  FDRE \peak_value_reg[20] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[20]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [20]),
        .R(SR));
  FDRE \peak_value_reg[21] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[21]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [21]),
        .R(SR));
  FDRE \peak_value_reg[22] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[22]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [22]),
        .R(SR));
  FDRE \peak_value_reg[23] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[23]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [23]),
        .R(SR));
  FDRE \peak_value_reg[24] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[24]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [24]),
        .R(SR));
  FDRE \peak_value_reg[2] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[2]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [2]),
        .R(SR));
  FDRE \peak_value_reg[3] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[3]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [3]),
        .R(SR));
  FDRE \peak_value_reg[4] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[4]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [4]),
        .R(SR));
  FDRE \peak_value_reg[5] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[5]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [5]),
        .R(SR));
  FDRE \peak_value_reg[6] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[6]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [6]),
        .R(SR));
  FDRE \peak_value_reg[7] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[7]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [7]),
        .R(SR));
  FDRE \peak_value_reg[8] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[8]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [8]),
        .R(SR));
  FDRE \peak_value_reg[9] 
       (.C(clk),
        .CE(\peak_index[7]_i_1_n_0 ),
        .D(\peak_value[9]_i_1_n_0 ),
        .Q(\peak_value_reg[24]_0 [9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "three_term_part4" *) 
module system_fft_pl_ps_0_0_three_term_part4
   (SR,
    D,
    round_w_return1__2_0,
    xk_valid_out,
    xk_last_out,
    Q,
    clk,
    rst_n,
    m_axis_data_tvalid,
    m_axis_data_tuser,
    m_axis_data_tlast,
    m_axis_data_tdata);
  output [0:0]SR;
  output [11:0]D;
  output [11:0]round_w_return1__2_0;
  output xk_valid_out;
  output xk_last_out;
  output [7:0]Q;
  input clk;
  input rst_n;
  input m_axis_data_tvalid;
  input [7:0]m_axis_data_tuser;
  input m_axis_data_tlast;
  input [23:0]m_axis_data_tdata;

  wire [11:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire clk;
  wire last_s1;
  wire last_s10;
  wire last_s1_i_2_n_0;
  wire last_s2;
  wire m;
  wire \m[0]_i_2_n_0 ;
  wire \m[1]_i_1_n_0 ;
  wire \m[2]_i_1_n_0 ;
  wire \m[3]_i_1_n_0 ;
  wire \m[4]_i_1_n_0 ;
  wire \m[5]_i_1_n_0 ;
  wire \m[6]_i_1_n_0 ;
  wire \m[7]_i_1_n_0 ;
  wire [23:0]m_axis_data_tdata;
  wire m_axis_data_tlast;
  wire [7:0]m_axis_data_tuser;
  wire m_axis_data_tvalid;
  wire [7:0]m_minus_1;
  wire [7:1]m_plus_1;
  wire \m_reg_n_0_[0] ;
  wire \m_reg_n_0_[1] ;
  wire \m_reg_n_0_[2] ;
  wire \m_reg_n_0_[3] ;
  wire \m_reg_n_0_[4] ;
  wire \m_reg_n_0_[5] ;
  wire \m_reg_n_0_[6] ;
  wire \m_reg_n_0_[7] ;
  wire [7:0]m_s1;
  wire [7:0]m_s2;
  wire round_w_return1__0_i_15_n_0;
  wire round_w_return1__0_n_100;
  wire round_w_return1__0_n_101;
  wire round_w_return1__0_n_102;
  wire round_w_return1__0_n_103;
  wire round_w_return1__0_n_104;
  wire round_w_return1__0_n_105;
  wire round_w_return1__0_n_91;
  wire round_w_return1__0_n_92;
  wire round_w_return1__0_n_93;
  wire round_w_return1__0_n_94;
  wire round_w_return1__0_n_95;
  wire round_w_return1__0_n_96;
  wire round_w_return1__0_n_97;
  wire round_w_return1__0_n_98;
  wire round_w_return1__0_n_99;
  wire round_w_return1__1_n_106;
  wire round_w_return1__1_n_107;
  wire round_w_return1__1_n_108;
  wire round_w_return1__1_n_109;
  wire round_w_return1__1_n_110;
  wire round_w_return1__1_n_111;
  wire round_w_return1__1_n_112;
  wire round_w_return1__1_n_113;
  wire round_w_return1__1_n_114;
  wire round_w_return1__1_n_115;
  wire round_w_return1__1_n_116;
  wire round_w_return1__1_n_117;
  wire round_w_return1__1_n_118;
  wire round_w_return1__1_n_119;
  wire round_w_return1__1_n_120;
  wire round_w_return1__1_n_121;
  wire round_w_return1__1_n_122;
  wire round_w_return1__1_n_123;
  wire round_w_return1__1_n_124;
  wire round_w_return1__1_n_125;
  wire round_w_return1__1_n_126;
  wire round_w_return1__1_n_127;
  wire round_w_return1__1_n_128;
  wire round_w_return1__1_n_129;
  wire round_w_return1__1_n_130;
  wire round_w_return1__1_n_131;
  wire round_w_return1__1_n_132;
  wire round_w_return1__1_n_133;
  wire round_w_return1__1_n_134;
  wire round_w_return1__1_n_135;
  wire round_w_return1__1_n_136;
  wire round_w_return1__1_n_137;
  wire round_w_return1__1_n_138;
  wire round_w_return1__1_n_139;
  wire round_w_return1__1_n_140;
  wire round_w_return1__1_n_141;
  wire round_w_return1__1_n_142;
  wire round_w_return1__1_n_143;
  wire round_w_return1__1_n_144;
  wire round_w_return1__1_n_145;
  wire round_w_return1__1_n_146;
  wire round_w_return1__1_n_147;
  wire round_w_return1__1_n_148;
  wire round_w_return1__1_n_149;
  wire round_w_return1__1_n_150;
  wire round_w_return1__1_n_151;
  wire round_w_return1__1_n_152;
  wire round_w_return1__1_n_153;
  wire [11:0]round_w_return1__2_0;
  wire round_w_return1__2_n_100;
  wire round_w_return1__2_n_101;
  wire round_w_return1__2_n_102;
  wire round_w_return1__2_n_103;
  wire round_w_return1__2_n_104;
  wire round_w_return1__2_n_105;
  wire round_w_return1__2_n_91;
  wire round_w_return1__2_n_92;
  wire round_w_return1__2_n_93;
  wire round_w_return1__2_n_94;
  wire round_w_return1__2_n_95;
  wire round_w_return1__2_n_96;
  wire round_w_return1__2_n_97;
  wire round_w_return1__2_n_98;
  wire round_w_return1__2_n_99;
  wire round_w_return1_n_106;
  wire round_w_return1_n_107;
  wire round_w_return1_n_108;
  wire round_w_return1_n_109;
  wire round_w_return1_n_110;
  wire round_w_return1_n_111;
  wire round_w_return1_n_112;
  wire round_w_return1_n_113;
  wire round_w_return1_n_114;
  wire round_w_return1_n_115;
  wire round_w_return1_n_116;
  wire round_w_return1_n_117;
  wire round_w_return1_n_118;
  wire round_w_return1_n_119;
  wire round_w_return1_n_120;
  wire round_w_return1_n_121;
  wire round_w_return1_n_122;
  wire round_w_return1_n_123;
  wire round_w_return1_n_124;
  wire round_w_return1_n_125;
  wire round_w_return1_n_126;
  wire round_w_return1_n_127;
  wire round_w_return1_n_128;
  wire round_w_return1_n_129;
  wire round_w_return1_n_130;
  wire round_w_return1_n_131;
  wire round_w_return1_n_132;
  wire round_w_return1_n_133;
  wire round_w_return1_n_134;
  wire round_w_return1_n_135;
  wire round_w_return1_n_136;
  wire round_w_return1_n_137;
  wire round_w_return1_n_138;
  wire round_w_return1_n_139;
  wire round_w_return1_n_140;
  wire round_w_return1_n_141;
  wire round_w_return1_n_142;
  wire round_w_return1_n_143;
  wire round_w_return1_n_144;
  wire round_w_return1_n_145;
  wire round_w_return1_n_146;
  wire round_w_return1_n_147;
  wire round_w_return1_n_148;
  wire round_w_return1_n_149;
  wire round_w_return1_n_150;
  wire round_w_return1_n_151;
  wire round_w_return1_n_152;
  wire round_w_return1_n_153;
  wire rst_n;
  wire vld_s1;
  wire vld_s2;
  wire [11:0]xim_m0;
  wire xim_mem_reg_r1_0_63_0_2_n_0;
  wire xim_mem_reg_r1_0_63_0_2_n_1;
  wire xim_mem_reg_r1_0_63_0_2_n_2;
  wire xim_mem_reg_r1_0_63_3_5_n_0;
  wire xim_mem_reg_r1_0_63_3_5_n_1;
  wire xim_mem_reg_r1_0_63_3_5_n_2;
  wire xim_mem_reg_r1_0_63_6_8_n_0;
  wire xim_mem_reg_r1_0_63_6_8_n_1;
  wire xim_mem_reg_r1_0_63_6_8_n_2;
  wire xim_mem_reg_r1_0_63_9_11_n_0;
  wire xim_mem_reg_r1_0_63_9_11_n_1;
  wire xim_mem_reg_r1_0_63_9_11_n_2;
  wire xim_mem_reg_r1_128_191_0_2_n_0;
  wire xim_mem_reg_r1_128_191_0_2_n_1;
  wire xim_mem_reg_r1_128_191_0_2_n_2;
  wire xim_mem_reg_r1_128_191_3_5_n_0;
  wire xim_mem_reg_r1_128_191_3_5_n_1;
  wire xim_mem_reg_r1_128_191_3_5_n_2;
  wire xim_mem_reg_r1_128_191_6_8_n_0;
  wire xim_mem_reg_r1_128_191_6_8_n_1;
  wire xim_mem_reg_r1_128_191_6_8_n_2;
  wire xim_mem_reg_r1_128_191_9_11_n_0;
  wire xim_mem_reg_r1_128_191_9_11_n_1;
  wire xim_mem_reg_r1_128_191_9_11_n_2;
  wire xim_mem_reg_r1_192_255_0_2_n_0;
  wire xim_mem_reg_r1_192_255_0_2_n_1;
  wire xim_mem_reg_r1_192_255_0_2_n_2;
  wire xim_mem_reg_r1_192_255_3_5_n_0;
  wire xim_mem_reg_r1_192_255_3_5_n_1;
  wire xim_mem_reg_r1_192_255_3_5_n_2;
  wire xim_mem_reg_r1_192_255_6_8_n_0;
  wire xim_mem_reg_r1_192_255_6_8_n_1;
  wire xim_mem_reg_r1_192_255_6_8_n_2;
  wire xim_mem_reg_r1_192_255_9_11_n_0;
  wire xim_mem_reg_r1_192_255_9_11_n_1;
  wire xim_mem_reg_r1_192_255_9_11_n_2;
  wire xim_mem_reg_r1_64_127_0_2_n_0;
  wire xim_mem_reg_r1_64_127_0_2_n_1;
  wire xim_mem_reg_r1_64_127_0_2_n_2;
  wire xim_mem_reg_r1_64_127_3_5_n_0;
  wire xim_mem_reg_r1_64_127_3_5_n_1;
  wire xim_mem_reg_r1_64_127_3_5_n_2;
  wire xim_mem_reg_r1_64_127_6_8_n_0;
  wire xim_mem_reg_r1_64_127_6_8_n_1;
  wire xim_mem_reg_r1_64_127_6_8_n_2;
  wire xim_mem_reg_r1_64_127_9_11_n_0;
  wire xim_mem_reg_r1_64_127_9_11_n_1;
  wire xim_mem_reg_r1_64_127_9_11_n_2;
  wire xim_mem_reg_r2_0_63_0_2_n_0;
  wire xim_mem_reg_r2_0_63_0_2_n_1;
  wire xim_mem_reg_r2_0_63_0_2_n_2;
  wire xim_mem_reg_r2_0_63_3_5_n_0;
  wire xim_mem_reg_r2_0_63_3_5_n_1;
  wire xim_mem_reg_r2_0_63_3_5_n_2;
  wire xim_mem_reg_r2_0_63_6_8_n_0;
  wire xim_mem_reg_r2_0_63_6_8_n_1;
  wire xim_mem_reg_r2_0_63_6_8_n_2;
  wire xim_mem_reg_r2_0_63_9_11_n_0;
  wire xim_mem_reg_r2_0_63_9_11_n_1;
  wire xim_mem_reg_r2_0_63_9_11_n_2;
  wire xim_mem_reg_r2_128_191_0_2_n_0;
  wire xim_mem_reg_r2_128_191_0_2_n_1;
  wire xim_mem_reg_r2_128_191_0_2_n_2;
  wire xim_mem_reg_r2_128_191_3_5_n_0;
  wire xim_mem_reg_r2_128_191_3_5_n_1;
  wire xim_mem_reg_r2_128_191_3_5_n_2;
  wire xim_mem_reg_r2_128_191_6_8_n_0;
  wire xim_mem_reg_r2_128_191_6_8_n_1;
  wire xim_mem_reg_r2_128_191_6_8_n_2;
  wire xim_mem_reg_r2_128_191_9_11_n_0;
  wire xim_mem_reg_r2_128_191_9_11_n_1;
  wire xim_mem_reg_r2_128_191_9_11_n_2;
  wire xim_mem_reg_r2_192_255_0_2_n_0;
  wire xim_mem_reg_r2_192_255_0_2_n_1;
  wire xim_mem_reg_r2_192_255_0_2_n_2;
  wire xim_mem_reg_r2_192_255_3_5_n_0;
  wire xim_mem_reg_r2_192_255_3_5_n_1;
  wire xim_mem_reg_r2_192_255_3_5_n_2;
  wire xim_mem_reg_r2_192_255_6_8_n_0;
  wire xim_mem_reg_r2_192_255_6_8_n_1;
  wire xim_mem_reg_r2_192_255_6_8_n_2;
  wire xim_mem_reg_r2_192_255_9_11_n_0;
  wire xim_mem_reg_r2_192_255_9_11_n_1;
  wire xim_mem_reg_r2_192_255_9_11_n_2;
  wire xim_mem_reg_r2_64_127_0_2_n_0;
  wire xim_mem_reg_r2_64_127_0_2_n_1;
  wire xim_mem_reg_r2_64_127_0_2_n_2;
  wire xim_mem_reg_r2_64_127_3_5_n_0;
  wire xim_mem_reg_r2_64_127_3_5_n_1;
  wire xim_mem_reg_r2_64_127_3_5_n_2;
  wire xim_mem_reg_r2_64_127_6_8_n_0;
  wire xim_mem_reg_r2_64_127_6_8_n_1;
  wire xim_mem_reg_r2_64_127_6_8_n_2;
  wire xim_mem_reg_r2_64_127_9_11_n_0;
  wire xim_mem_reg_r2_64_127_9_11_n_1;
  wire xim_mem_reg_r2_64_127_9_11_n_2;
  wire xim_mem_reg_r3_0_63_0_2_n_0;
  wire xim_mem_reg_r3_0_63_0_2_n_1;
  wire xim_mem_reg_r3_0_63_0_2_n_2;
  wire xim_mem_reg_r3_0_63_3_5_n_0;
  wire xim_mem_reg_r3_0_63_3_5_n_1;
  wire xim_mem_reg_r3_0_63_3_5_n_2;
  wire xim_mem_reg_r3_0_63_6_8_n_0;
  wire xim_mem_reg_r3_0_63_6_8_n_1;
  wire xim_mem_reg_r3_0_63_6_8_n_2;
  wire xim_mem_reg_r3_0_63_9_11_n_0;
  wire xim_mem_reg_r3_0_63_9_11_n_1;
  wire xim_mem_reg_r3_0_63_9_11_n_2;
  wire xim_mem_reg_r3_128_191_0_2_n_0;
  wire xim_mem_reg_r3_128_191_0_2_n_1;
  wire xim_mem_reg_r3_128_191_0_2_n_2;
  wire xim_mem_reg_r3_128_191_3_5_n_0;
  wire xim_mem_reg_r3_128_191_3_5_n_1;
  wire xim_mem_reg_r3_128_191_3_5_n_2;
  wire xim_mem_reg_r3_128_191_6_8_n_0;
  wire xim_mem_reg_r3_128_191_6_8_n_1;
  wire xim_mem_reg_r3_128_191_6_8_n_2;
  wire xim_mem_reg_r3_128_191_9_11_n_0;
  wire xim_mem_reg_r3_128_191_9_11_n_1;
  wire xim_mem_reg_r3_128_191_9_11_n_2;
  wire xim_mem_reg_r3_192_255_0_2_n_0;
  wire xim_mem_reg_r3_192_255_0_2_n_1;
  wire xim_mem_reg_r3_192_255_0_2_n_2;
  wire xim_mem_reg_r3_192_255_3_5_n_0;
  wire xim_mem_reg_r3_192_255_3_5_n_1;
  wire xim_mem_reg_r3_192_255_3_5_n_2;
  wire xim_mem_reg_r3_192_255_6_8_n_0;
  wire xim_mem_reg_r3_192_255_6_8_n_1;
  wire xim_mem_reg_r3_192_255_6_8_n_2;
  wire xim_mem_reg_r3_192_255_9_11_n_0;
  wire xim_mem_reg_r3_192_255_9_11_n_1;
  wire xim_mem_reg_r3_192_255_9_11_n_2;
  wire xim_mem_reg_r3_64_127_0_2_n_0;
  wire xim_mem_reg_r3_64_127_0_2_n_1;
  wire xim_mem_reg_r3_64_127_0_2_n_2;
  wire xim_mem_reg_r3_64_127_3_5_n_0;
  wire xim_mem_reg_r3_64_127_3_5_n_1;
  wire xim_mem_reg_r3_64_127_3_5_n_2;
  wire xim_mem_reg_r3_64_127_6_8_n_0;
  wire xim_mem_reg_r3_64_127_6_8_n_1;
  wire xim_mem_reg_r3_64_127_6_8_n_2;
  wire xim_mem_reg_r3_64_127_9_11_n_0;
  wire xim_mem_reg_r3_64_127_9_11_n_1;
  wire xim_mem_reg_r3_64_127_9_11_n_2;
  wire [11:0]xim_mm1;
  wire [11:0]xim_mm10;
  wire [11:0]xim_mp10;
  wire xk_last_out;
  wire xk_valid_out;
  wire [11:0]xre_m0;
  wire xre_mem_reg_r1_0_63_0_2_i_1_n_0;
  wire xre_mem_reg_r1_0_63_0_2_i_7_n_0;
  wire xre_mem_reg_r1_0_63_0_2_n_0;
  wire xre_mem_reg_r1_0_63_0_2_n_1;
  wire xre_mem_reg_r1_0_63_0_2_n_2;
  wire xre_mem_reg_r1_0_63_3_5_n_0;
  wire xre_mem_reg_r1_0_63_3_5_n_1;
  wire xre_mem_reg_r1_0_63_3_5_n_2;
  wire xre_mem_reg_r1_0_63_6_8_n_0;
  wire xre_mem_reg_r1_0_63_6_8_n_1;
  wire xre_mem_reg_r1_0_63_6_8_n_2;
  wire xre_mem_reg_r1_0_63_9_11_n_0;
  wire xre_mem_reg_r1_0_63_9_11_n_1;
  wire xre_mem_reg_r1_0_63_9_11_n_2;
  wire xre_mem_reg_r1_128_191_0_2_i_1_n_0;
  wire xre_mem_reg_r1_128_191_0_2_n_0;
  wire xre_mem_reg_r1_128_191_0_2_n_1;
  wire xre_mem_reg_r1_128_191_0_2_n_2;
  wire xre_mem_reg_r1_128_191_3_5_n_0;
  wire xre_mem_reg_r1_128_191_3_5_n_1;
  wire xre_mem_reg_r1_128_191_3_5_n_2;
  wire xre_mem_reg_r1_128_191_6_8_n_0;
  wire xre_mem_reg_r1_128_191_6_8_n_1;
  wire xre_mem_reg_r1_128_191_6_8_n_2;
  wire xre_mem_reg_r1_128_191_9_11_n_0;
  wire xre_mem_reg_r1_128_191_9_11_n_1;
  wire xre_mem_reg_r1_128_191_9_11_n_2;
  wire xre_mem_reg_r1_192_255_0_2_i_1_n_0;
  wire xre_mem_reg_r1_192_255_0_2_n_0;
  wire xre_mem_reg_r1_192_255_0_2_n_1;
  wire xre_mem_reg_r1_192_255_0_2_n_2;
  wire xre_mem_reg_r1_192_255_3_5_n_0;
  wire xre_mem_reg_r1_192_255_3_5_n_1;
  wire xre_mem_reg_r1_192_255_3_5_n_2;
  wire xre_mem_reg_r1_192_255_6_8_n_0;
  wire xre_mem_reg_r1_192_255_6_8_n_1;
  wire xre_mem_reg_r1_192_255_6_8_n_2;
  wire xre_mem_reg_r1_192_255_9_11_n_0;
  wire xre_mem_reg_r1_192_255_9_11_n_1;
  wire xre_mem_reg_r1_192_255_9_11_n_2;
  wire xre_mem_reg_r1_64_127_0_2_i_1_n_0;
  wire xre_mem_reg_r1_64_127_0_2_n_0;
  wire xre_mem_reg_r1_64_127_0_2_n_1;
  wire xre_mem_reg_r1_64_127_0_2_n_2;
  wire xre_mem_reg_r1_64_127_3_5_n_0;
  wire xre_mem_reg_r1_64_127_3_5_n_1;
  wire xre_mem_reg_r1_64_127_3_5_n_2;
  wire xre_mem_reg_r1_64_127_6_8_n_0;
  wire xre_mem_reg_r1_64_127_6_8_n_1;
  wire xre_mem_reg_r1_64_127_6_8_n_2;
  wire xre_mem_reg_r1_64_127_9_11_n_0;
  wire xre_mem_reg_r1_64_127_9_11_n_1;
  wire xre_mem_reg_r1_64_127_9_11_n_2;
  wire xre_mem_reg_r2_0_63_0_2_n_0;
  wire xre_mem_reg_r2_0_63_0_2_n_1;
  wire xre_mem_reg_r2_0_63_0_2_n_2;
  wire xre_mem_reg_r2_0_63_3_5_n_0;
  wire xre_mem_reg_r2_0_63_3_5_n_1;
  wire xre_mem_reg_r2_0_63_3_5_n_2;
  wire xre_mem_reg_r2_0_63_6_8_n_0;
  wire xre_mem_reg_r2_0_63_6_8_n_1;
  wire xre_mem_reg_r2_0_63_6_8_n_2;
  wire xre_mem_reg_r2_0_63_9_11_n_0;
  wire xre_mem_reg_r2_0_63_9_11_n_1;
  wire xre_mem_reg_r2_0_63_9_11_n_2;
  wire xre_mem_reg_r2_128_191_0_2_n_0;
  wire xre_mem_reg_r2_128_191_0_2_n_1;
  wire xre_mem_reg_r2_128_191_0_2_n_2;
  wire xre_mem_reg_r2_128_191_3_5_n_0;
  wire xre_mem_reg_r2_128_191_3_5_n_1;
  wire xre_mem_reg_r2_128_191_3_5_n_2;
  wire xre_mem_reg_r2_128_191_6_8_n_0;
  wire xre_mem_reg_r2_128_191_6_8_n_1;
  wire xre_mem_reg_r2_128_191_6_8_n_2;
  wire xre_mem_reg_r2_128_191_9_11_n_0;
  wire xre_mem_reg_r2_128_191_9_11_n_1;
  wire xre_mem_reg_r2_128_191_9_11_n_2;
  wire xre_mem_reg_r2_192_255_0_2_n_0;
  wire xre_mem_reg_r2_192_255_0_2_n_1;
  wire xre_mem_reg_r2_192_255_0_2_n_2;
  wire xre_mem_reg_r2_192_255_3_5_n_0;
  wire xre_mem_reg_r2_192_255_3_5_n_1;
  wire xre_mem_reg_r2_192_255_3_5_n_2;
  wire xre_mem_reg_r2_192_255_6_8_n_0;
  wire xre_mem_reg_r2_192_255_6_8_n_1;
  wire xre_mem_reg_r2_192_255_6_8_n_2;
  wire xre_mem_reg_r2_192_255_9_11_n_0;
  wire xre_mem_reg_r2_192_255_9_11_n_1;
  wire xre_mem_reg_r2_192_255_9_11_n_2;
  wire xre_mem_reg_r2_64_127_0_2_n_0;
  wire xre_mem_reg_r2_64_127_0_2_n_1;
  wire xre_mem_reg_r2_64_127_0_2_n_2;
  wire xre_mem_reg_r2_64_127_3_5_n_0;
  wire xre_mem_reg_r2_64_127_3_5_n_1;
  wire xre_mem_reg_r2_64_127_3_5_n_2;
  wire xre_mem_reg_r2_64_127_6_8_n_0;
  wire xre_mem_reg_r2_64_127_6_8_n_1;
  wire xre_mem_reg_r2_64_127_6_8_n_2;
  wire xre_mem_reg_r2_64_127_9_11_n_0;
  wire xre_mem_reg_r2_64_127_9_11_n_1;
  wire xre_mem_reg_r2_64_127_9_11_n_2;
  wire xre_mem_reg_r3_0_63_0_2_n_0;
  wire xre_mem_reg_r3_0_63_0_2_n_1;
  wire xre_mem_reg_r3_0_63_0_2_n_2;
  wire xre_mem_reg_r3_0_63_3_5_n_0;
  wire xre_mem_reg_r3_0_63_3_5_n_1;
  wire xre_mem_reg_r3_0_63_3_5_n_2;
  wire xre_mem_reg_r3_0_63_6_8_n_0;
  wire xre_mem_reg_r3_0_63_6_8_n_1;
  wire xre_mem_reg_r3_0_63_6_8_n_2;
  wire xre_mem_reg_r3_0_63_9_11_n_0;
  wire xre_mem_reg_r3_0_63_9_11_n_1;
  wire xre_mem_reg_r3_0_63_9_11_n_2;
  wire xre_mem_reg_r3_128_191_0_2_n_0;
  wire xre_mem_reg_r3_128_191_0_2_n_1;
  wire xre_mem_reg_r3_128_191_0_2_n_2;
  wire xre_mem_reg_r3_128_191_3_5_n_0;
  wire xre_mem_reg_r3_128_191_3_5_n_1;
  wire xre_mem_reg_r3_128_191_3_5_n_2;
  wire xre_mem_reg_r3_128_191_6_8_n_0;
  wire xre_mem_reg_r3_128_191_6_8_n_1;
  wire xre_mem_reg_r3_128_191_6_8_n_2;
  wire xre_mem_reg_r3_128_191_9_11_n_0;
  wire xre_mem_reg_r3_128_191_9_11_n_1;
  wire xre_mem_reg_r3_128_191_9_11_n_2;
  wire xre_mem_reg_r3_192_255_0_2_n_0;
  wire xre_mem_reg_r3_192_255_0_2_n_1;
  wire xre_mem_reg_r3_192_255_0_2_n_2;
  wire xre_mem_reg_r3_192_255_3_5_n_0;
  wire xre_mem_reg_r3_192_255_3_5_n_1;
  wire xre_mem_reg_r3_192_255_3_5_n_2;
  wire xre_mem_reg_r3_192_255_6_8_n_0;
  wire xre_mem_reg_r3_192_255_6_8_n_1;
  wire xre_mem_reg_r3_192_255_6_8_n_2;
  wire xre_mem_reg_r3_192_255_9_11_n_0;
  wire xre_mem_reg_r3_192_255_9_11_n_1;
  wire xre_mem_reg_r3_192_255_9_11_n_2;
  wire xre_mem_reg_r3_64_127_0_2_n_0;
  wire xre_mem_reg_r3_64_127_0_2_n_1;
  wire xre_mem_reg_r3_64_127_0_2_n_2;
  wire xre_mem_reg_r3_64_127_3_5_n_0;
  wire xre_mem_reg_r3_64_127_3_5_n_1;
  wire xre_mem_reg_r3_64_127_3_5_n_2;
  wire xre_mem_reg_r3_64_127_6_8_n_0;
  wire xre_mem_reg_r3_64_127_6_8_n_1;
  wire xre_mem_reg_r3_64_127_6_8_n_2;
  wire xre_mem_reg_r3_64_127_9_11_n_0;
  wire xre_mem_reg_r3_64_127_9_11_n_1;
  wire xre_mem_reg_r3_64_127_9_11_n_2;
  wire [11:0]xre_mm1;
  wire [11:0]xre_mm10;
  wire \xre_mm1[11]_i_4_n_0 ;
  wire [11:0]xre_mp10;
  wire NLW_round_w_return1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_round_w_return1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_round_w_return1_OVERFLOW_UNCONNECTED;
  wire NLW_round_w_return1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_round_w_return1_PATTERNDETECT_UNCONNECTED;
  wire NLW_round_w_return1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_round_w_return1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_round_w_return1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_round_w_return1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_round_w_return1_P_UNCONNECTED;
  wire NLW_round_w_return1__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_round_w_return1__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_round_w_return1__0_OVERFLOW_UNCONNECTED;
  wire NLW_round_w_return1__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_round_w_return1__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_round_w_return1__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_round_w_return1__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_round_w_return1__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_round_w_return1__0_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_round_w_return1__0_P_UNCONNECTED;
  wire [47:0]NLW_round_w_return1__0_PCOUT_UNCONNECTED;
  wire NLW_round_w_return1__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_round_w_return1__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_round_w_return1__1_OVERFLOW_UNCONNECTED;
  wire NLW_round_w_return1__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_round_w_return1__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_round_w_return1__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_round_w_return1__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_round_w_return1__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_round_w_return1__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_round_w_return1__1_P_UNCONNECTED;
  wire NLW_round_w_return1__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_round_w_return1__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_round_w_return1__2_OVERFLOW_UNCONNECTED;
  wire NLW_round_w_return1__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_round_w_return1__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_round_w_return1__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_round_w_return1__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_round_w_return1__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_round_w_return1__2_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_round_w_return1__2_P_UNCONNECTED;
  wire [47:0]NLW_round_w_return1__2_PCOUT_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_xim_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_xre_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED;

  LUT5 #(
    .INIT(32'hAAAABFA0)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(m_axis_data_tlast),
        .I2(m_axis_data_tvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(last_s10),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF5FFF00E000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(m_axis_data_tlast),
        .I2(m_axis_data_tvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(last_s10),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8CC88CC)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(m_axis_data_tlast),
        .I3(m_axis_data_tvalid),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(last_s10),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_CAPTURE:001,S_SWEEP:010,S_DONE:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "S_CAPTURE:001,S_SWEEP:010,S_DONE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "S_CAPTURE:001,S_SWEEP:010,S_DONE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    last_s1_i_1
       (.I0(\m_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\m_reg_n_0_[6] ),
        .I3(last_s1_i_2_n_0),
        .O(last_s10));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    last_s1_i_2
       (.I0(\m_reg_n_0_[4] ),
        .I1(\m_reg_n_0_[2] ),
        .I2(\m_reg_n_0_[0] ),
        .I3(\m_reg_n_0_[1] ),
        .I4(\m_reg_n_0_[3] ),
        .I5(\m_reg_n_0_[5] ),
        .O(last_s1_i_2_n_0));
  FDRE last_s1_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_s10),
        .Q(last_s1),
        .R(SR));
  FDRE last_s2_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_s1),
        .Q(last_s2),
        .R(SR));
  LUT4 #(
    .INIT(16'hFF80)) 
    \m[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(m_axis_data_tvalid),
        .I2(m_axis_data_tlast),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(m));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\m_reg_n_0_[0] ),
        .O(\m[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \m[1]_i_1 
       (.I0(\m_reg_n_0_[1] ),
        .I1(\m_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\m[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \m[2]_i_1 
       (.I0(\m_reg_n_0_[2] ),
        .I1(\m_reg_n_0_[0] ),
        .I2(\m_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\m[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \m[3]_i_1 
       (.I0(\m_reg_n_0_[3] ),
        .I1(\m_reg_n_0_[1] ),
        .I2(\m_reg_n_0_[0] ),
        .I3(\m_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\m[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \m[4]_i_1 
       (.I0(\m_reg_n_0_[4] ),
        .I1(\m_reg_n_0_[2] ),
        .I2(\m_reg_n_0_[0] ),
        .I3(\m_reg_n_0_[1] ),
        .I4(\m_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\m[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[5]_i_1 
       (.I0(m_plus_1[5]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\m[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[6]_i_1 
       (.I0(m_plus_1[6]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\m[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[7]_i_1 
       (.I0(m_plus_1[7]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\m[7]_i_1_n_0 ));
  FDRE \m_reg[0] 
       (.C(clk),
        .CE(m),
        .D(\m[0]_i_2_n_0 ),
        .Q(\m_reg_n_0_[0] ),
        .R(SR));
  FDRE \m_reg[1] 
       (.C(clk),
        .CE(m),
        .D(\m[1]_i_1_n_0 ),
        .Q(\m_reg_n_0_[1] ),
        .R(SR));
  FDRE \m_reg[2] 
       (.C(clk),
        .CE(m),
        .D(\m[2]_i_1_n_0 ),
        .Q(\m_reg_n_0_[2] ),
        .R(SR));
  FDRE \m_reg[3] 
       (.C(clk),
        .CE(m),
        .D(\m[3]_i_1_n_0 ),
        .Q(\m_reg_n_0_[3] ),
        .R(SR));
  FDRE \m_reg[4] 
       (.C(clk),
        .CE(m),
        .D(\m[4]_i_1_n_0 ),
        .Q(\m_reg_n_0_[4] ),
        .R(SR));
  FDRE \m_reg[5] 
       (.C(clk),
        .CE(m),
        .D(\m[5]_i_1_n_0 ),
        .Q(\m_reg_n_0_[5] ),
        .R(SR));
  FDRE \m_reg[6] 
       (.C(clk),
        .CE(m),
        .D(\m[6]_i_1_n_0 ),
        .Q(\m_reg_n_0_[6] ),
        .R(SR));
  FDRE \m_reg[7] 
       (.C(clk),
        .CE(m),
        .D(\m[7]_i_1_n_0 ),
        .Q(\m_reg_n_0_[7] ),
        .R(SR));
  FDRE \m_s1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_reg_n_0_[0] ),
        .Q(m_s1[0]),
        .R(SR));
  FDRE \m_s1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_reg_n_0_[1] ),
        .Q(m_s1[1]),
        .R(SR));
  FDRE \m_s1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_reg_n_0_[2] ),
        .Q(m_s1[2]),
        .R(SR));
  FDRE \m_s1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_reg_n_0_[3] ),
        .Q(m_s1[3]),
        .R(SR));
  FDRE \m_s1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_reg_n_0_[4] ),
        .Q(m_s1[4]),
        .R(SR));
  FDRE \m_s1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_reg_n_0_[5] ),
        .Q(m_s1[5]),
        .R(SR));
  FDRE \m_s1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_reg_n_0_[6] ),
        .Q(m_s1[6]),
        .R(SR));
  FDRE \m_s1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_reg_n_0_[7] ),
        .Q(m_s1[7]),
        .R(SR));
  FDRE \m_s2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s1[0]),
        .Q(m_s2[0]),
        .R(SR));
  FDRE \m_s2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s1[1]),
        .Q(m_s2[1]),
        .R(SR));
  FDRE \m_s2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s1[2]),
        .Q(m_s2[2]),
        .R(SR));
  FDRE \m_s2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s1[3]),
        .Q(m_s2[3]),
        .R(SR));
  FDRE \m_s2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s1[4]),
        .Q(m_s2[4]),
        .R(SR));
  FDRE \m_s2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s1[5]),
        .Q(m_s2[5]),
        .R(SR));
  FDRE \m_s2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s1[6]),
        .Q(m_s2[6]),
        .R(SR));
  FDRE \m_s2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s1[7]),
        .Q(m_s2[7]),
        .R(SR));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    round_w_return1
       (.A({xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0[11],xim_m0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_round_w_return1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_round_w_return1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_round_w_return1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_round_w_return1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_round_w_return1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_round_w_return1_OVERFLOW_UNCONNECTED),
        .P(NLW_round_w_return1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_round_w_return1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_round_w_return1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({round_w_return1_n_106,round_w_return1_n_107,round_w_return1_n_108,round_w_return1_n_109,round_w_return1_n_110,round_w_return1_n_111,round_w_return1_n_112,round_w_return1_n_113,round_w_return1_n_114,round_w_return1_n_115,round_w_return1_n_116,round_w_return1_n_117,round_w_return1_n_118,round_w_return1_n_119,round_w_return1_n_120,round_w_return1_n_121,round_w_return1_n_122,round_w_return1_n_123,round_w_return1_n_124,round_w_return1_n_125,round_w_return1_n_126,round_w_return1_n_127,round_w_return1_n_128,round_w_return1_n_129,round_w_return1_n_130,round_w_return1_n_131,round_w_return1_n_132,round_w_return1_n_133,round_w_return1_n_134,round_w_return1_n_135,round_w_return1_n_136,round_w_return1_n_137,round_w_return1_n_138,round_w_return1_n_139,round_w_return1_n_140,round_w_return1_n_141,round_w_return1_n_142,round_w_return1_n_143,round_w_return1_n_144,round_w_return1_n_145,round_w_return1_n_146,round_w_return1_n_147,round_w_return1_n_148,round_w_return1_n_149,round_w_return1_n_150,round_w_return1_n_151,round_w_return1_n_152,round_w_return1_n_153}),
        .RSTA(SR),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(SR),
        .UNDERFLOW(NLW_round_w_return1_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("TRUE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    round_w_return1__0
       (.A({xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10[11],xim_mp10}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_round_w_return1__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b1,1'b1}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_round_w_return1__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_round_w_return1__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_round_w_return1__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({xim_mm1[11],xim_mm1[11],xim_mm1[11],xim_mm1[11],xim_mm1[11],xim_mm1[11],xim_mm1[11],xim_mm1[11],xim_mm1[11],xim_mm1[11],xim_mm1[11],xim_mm1[11],xim_mm1[11],xim_mm1}),
        .INMODE({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_round_w_return1__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_round_w_return1__0_OVERFLOW_UNCONNECTED),
        .P({NLW_round_w_return1__0_P_UNCONNECTED[47:27],D,round_w_return1__0_n_91,round_w_return1__0_n_92,round_w_return1__0_n_93,round_w_return1__0_n_94,round_w_return1__0_n_95,round_w_return1__0_n_96,round_w_return1__0_n_97,round_w_return1__0_n_98,round_w_return1__0_n_99,round_w_return1__0_n_100,round_w_return1__0_n_101,round_w_return1__0_n_102,round_w_return1__0_n_103,round_w_return1__0_n_104,round_w_return1__0_n_105}),
        .PATTERNBDETECT(NLW_round_w_return1__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_round_w_return1__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({round_w_return1_n_106,round_w_return1_n_107,round_w_return1_n_108,round_w_return1_n_109,round_w_return1_n_110,round_w_return1_n_111,round_w_return1_n_112,round_w_return1_n_113,round_w_return1_n_114,round_w_return1_n_115,round_w_return1_n_116,round_w_return1_n_117,round_w_return1_n_118,round_w_return1_n_119,round_w_return1_n_120,round_w_return1_n_121,round_w_return1_n_122,round_w_return1_n_123,round_w_return1_n_124,round_w_return1_n_125,round_w_return1_n_126,round_w_return1_n_127,round_w_return1_n_128,round_w_return1_n_129,round_w_return1_n_130,round_w_return1_n_131,round_w_return1_n_132,round_w_return1_n_133,round_w_return1_n_134,round_w_return1_n_135,round_w_return1_n_136,round_w_return1_n_137,round_w_return1_n_138,round_w_return1_n_139,round_w_return1_n_140,round_w_return1_n_141,round_w_return1_n_142,round_w_return1_n_143,round_w_return1_n_144,round_w_return1_n_145,round_w_return1_n_146,round_w_return1_n_147,round_w_return1_n_148,round_w_return1_n_149,round_w_return1_n_150,round_w_return1_n_151,round_w_return1_n_152,round_w_return1_n_153}),
        .PCOUT(NLW_round_w_return1__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(SR),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(SR),
        .RSTP(SR),
        .UNDERFLOW(NLW_round_w_return1__0_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_1
       (.I0(xim_mem_reg_r1_192_255_9_11_n_2),
        .I1(xim_mem_reg_r1_128_191_9_11_n_2),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_9_11_n_2),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_9_11_n_2),
        .O(xim_mp10[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_10
       (.I0(xim_mem_reg_r1_192_255_0_2_n_2),
        .I1(xim_mem_reg_r1_128_191_0_2_n_2),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_0_2_n_2),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_0_2_n_2),
        .O(xim_mp10[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_11
       (.I0(xim_mem_reg_r1_192_255_0_2_n_1),
        .I1(xim_mem_reg_r1_128_191_0_2_n_1),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_0_2_n_1),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_0_2_n_1),
        .O(xim_mp10[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_12
       (.I0(xim_mem_reg_r1_192_255_0_2_n_0),
        .I1(xim_mem_reg_r1_128_191_0_2_n_0),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_0_2_n_0),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_0_2_n_0),
        .O(xim_mp10[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    round_w_return1__0_i_13
       (.I0(\m_reg_n_0_[6] ),
        .I1(last_s1_i_2_n_0),
        .I2(\m_reg_n_0_[7] ),
        .O(m_plus_1[7]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    round_w_return1__0_i_14
       (.I0(\m_reg_n_0_[5] ),
        .I1(\m_reg_n_0_[3] ),
        .I2(round_w_return1__0_i_15_n_0),
        .I3(\m_reg_n_0_[2] ),
        .I4(\m_reg_n_0_[4] ),
        .I5(\m_reg_n_0_[6] ),
        .O(m_plus_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    round_w_return1__0_i_15
       (.I0(\m_reg_n_0_[0] ),
        .I1(\m_reg_n_0_[1] ),
        .O(round_w_return1__0_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_2
       (.I0(xim_mem_reg_r1_192_255_9_11_n_1),
        .I1(xim_mem_reg_r1_128_191_9_11_n_1),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_9_11_n_1),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_9_11_n_1),
        .O(xim_mp10[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_3
       (.I0(xim_mem_reg_r1_192_255_9_11_n_0),
        .I1(xim_mem_reg_r1_128_191_9_11_n_0),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_9_11_n_0),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_9_11_n_0),
        .O(xim_mp10[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_4
       (.I0(xim_mem_reg_r1_192_255_6_8_n_2),
        .I1(xim_mem_reg_r1_128_191_6_8_n_2),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_6_8_n_2),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_6_8_n_2),
        .O(xim_mp10[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_5
       (.I0(xim_mem_reg_r1_192_255_6_8_n_1),
        .I1(xim_mem_reg_r1_128_191_6_8_n_1),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_6_8_n_1),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_6_8_n_1),
        .O(xim_mp10[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_6
       (.I0(xim_mem_reg_r1_192_255_6_8_n_0),
        .I1(xim_mem_reg_r1_128_191_6_8_n_0),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_6_8_n_0),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_6_8_n_0),
        .O(xim_mp10[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_7
       (.I0(xim_mem_reg_r1_192_255_3_5_n_2),
        .I1(xim_mem_reg_r1_128_191_3_5_n_2),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_3_5_n_2),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_3_5_n_2),
        .O(xim_mp10[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_8
       (.I0(xim_mem_reg_r1_192_255_3_5_n_1),
        .I1(xim_mem_reg_r1_128_191_3_5_n_1),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_3_5_n_1),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_3_5_n_1),
        .O(xim_mp10[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__0_i_9
       (.I0(xim_mem_reg_r1_192_255_3_5_n_0),
        .I1(xim_mem_reg_r1_128_191_3_5_n_0),
        .I2(m_plus_1[7]),
        .I3(xim_mem_reg_r1_64_127_3_5_n_0),
        .I4(m_plus_1[6]),
        .I5(xim_mem_reg_r1_0_63_3_5_n_0),
        .O(xim_mp10[3]));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    round_w_return1__1
       (.A({xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0[11],xre_m0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_round_w_return1__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_round_w_return1__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_round_w_return1__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_round_w_return1__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_round_w_return1__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_round_w_return1__1_OVERFLOW_UNCONNECTED),
        .P(NLW_round_w_return1__1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_round_w_return1__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_round_w_return1__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({round_w_return1__1_n_106,round_w_return1__1_n_107,round_w_return1__1_n_108,round_w_return1__1_n_109,round_w_return1__1_n_110,round_w_return1__1_n_111,round_w_return1__1_n_112,round_w_return1__1_n_113,round_w_return1__1_n_114,round_w_return1__1_n_115,round_w_return1__1_n_116,round_w_return1__1_n_117,round_w_return1__1_n_118,round_w_return1__1_n_119,round_w_return1__1_n_120,round_w_return1__1_n_121,round_w_return1__1_n_122,round_w_return1__1_n_123,round_w_return1__1_n_124,round_w_return1__1_n_125,round_w_return1__1_n_126,round_w_return1__1_n_127,round_w_return1__1_n_128,round_w_return1__1_n_129,round_w_return1__1_n_130,round_w_return1__1_n_131,round_w_return1__1_n_132,round_w_return1__1_n_133,round_w_return1__1_n_134,round_w_return1__1_n_135,round_w_return1__1_n_136,round_w_return1__1_n_137,round_w_return1__1_n_138,round_w_return1__1_n_139,round_w_return1__1_n_140,round_w_return1__1_n_141,round_w_return1__1_n_142,round_w_return1__1_n_143,round_w_return1__1_n_144,round_w_return1__1_n_145,round_w_return1__1_n_146,round_w_return1__1_n_147,round_w_return1__1_n_148,round_w_return1__1_n_149,round_w_return1__1_n_150,round_w_return1__1_n_151,round_w_return1__1_n_152,round_w_return1__1_n_153}),
        .RSTA(SR),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(SR),
        .UNDERFLOW(NLW_round_w_return1__1_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_1
       (.I0(xre_mem_reg_r3_192_255_9_11_n_2),
        .I1(xre_mem_reg_r3_128_191_9_11_n_2),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_9_11_n_2),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_9_11_n_2),
        .O(xre_m0[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_10
       (.I0(xre_mem_reg_r3_192_255_0_2_n_2),
        .I1(xre_mem_reg_r3_128_191_0_2_n_2),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_0_2_n_2),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_0_2_n_2),
        .O(xre_m0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_11
       (.I0(xre_mem_reg_r3_192_255_0_2_n_1),
        .I1(xre_mem_reg_r3_128_191_0_2_n_1),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_0_2_n_1),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_0_2_n_1),
        .O(xre_m0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_12
       (.I0(xre_mem_reg_r3_192_255_0_2_n_0),
        .I1(xre_mem_reg_r3_128_191_0_2_n_0),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_0_2_n_0),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_0_2_n_0),
        .O(xre_m0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_2
       (.I0(xre_mem_reg_r3_192_255_9_11_n_1),
        .I1(xre_mem_reg_r3_128_191_9_11_n_1),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_9_11_n_1),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_9_11_n_1),
        .O(xre_m0[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_3
       (.I0(xre_mem_reg_r3_192_255_9_11_n_0),
        .I1(xre_mem_reg_r3_128_191_9_11_n_0),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_9_11_n_0),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_9_11_n_0),
        .O(xre_m0[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_4
       (.I0(xre_mem_reg_r3_192_255_6_8_n_2),
        .I1(xre_mem_reg_r3_128_191_6_8_n_2),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_6_8_n_2),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_6_8_n_2),
        .O(xre_m0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_5
       (.I0(xre_mem_reg_r3_192_255_6_8_n_1),
        .I1(xre_mem_reg_r3_128_191_6_8_n_1),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_6_8_n_1),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_6_8_n_1),
        .O(xre_m0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_6
       (.I0(xre_mem_reg_r3_192_255_6_8_n_0),
        .I1(xre_mem_reg_r3_128_191_6_8_n_0),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_6_8_n_0),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_6_8_n_0),
        .O(xre_m0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_7
       (.I0(xre_mem_reg_r3_192_255_3_5_n_2),
        .I1(xre_mem_reg_r3_128_191_3_5_n_2),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_3_5_n_2),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_3_5_n_2),
        .O(xre_m0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_8
       (.I0(xre_mem_reg_r3_192_255_3_5_n_1),
        .I1(xre_mem_reg_r3_128_191_3_5_n_1),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_3_5_n_1),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_3_5_n_1),
        .O(xre_m0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__1_i_9
       (.I0(xre_mem_reg_r3_192_255_3_5_n_0),
        .I1(xre_mem_reg_r3_128_191_3_5_n_0),
        .I2(\m_reg_n_0_[7] ),
        .I3(xre_mem_reg_r3_64_127_3_5_n_0),
        .I4(\m_reg_n_0_[6] ),
        .I5(xre_mem_reg_r3_0_63_3_5_n_0),
        .O(xre_m0[3]));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(0),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("TRUE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    round_w_return1__2
       (.A({xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10[11],xre_mp10}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_round_w_return1__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b1,1'b1}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_round_w_return1__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_round_w_return1__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_round_w_return1__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk),
        .D({xre_mm1[11],xre_mm1[11],xre_mm1[11],xre_mm1[11],xre_mm1[11],xre_mm1[11],xre_mm1[11],xre_mm1[11],xre_mm1[11],xre_mm1[11],xre_mm1[11],xre_mm1[11],xre_mm1[11],xre_mm1}),
        .INMODE({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_round_w_return1__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_round_w_return1__2_OVERFLOW_UNCONNECTED),
        .P({NLW_round_w_return1__2_P_UNCONNECTED[47:27],round_w_return1__2_0,round_w_return1__2_n_91,round_w_return1__2_n_92,round_w_return1__2_n_93,round_w_return1__2_n_94,round_w_return1__2_n_95,round_w_return1__2_n_96,round_w_return1__2_n_97,round_w_return1__2_n_98,round_w_return1__2_n_99,round_w_return1__2_n_100,round_w_return1__2_n_101,round_w_return1__2_n_102,round_w_return1__2_n_103,round_w_return1__2_n_104,round_w_return1__2_n_105}),
        .PATTERNBDETECT(NLW_round_w_return1__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_round_w_return1__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({round_w_return1__1_n_106,round_w_return1__1_n_107,round_w_return1__1_n_108,round_w_return1__1_n_109,round_w_return1__1_n_110,round_w_return1__1_n_111,round_w_return1__1_n_112,round_w_return1__1_n_113,round_w_return1__1_n_114,round_w_return1__1_n_115,round_w_return1__1_n_116,round_w_return1__1_n_117,round_w_return1__1_n_118,round_w_return1__1_n_119,round_w_return1__1_n_120,round_w_return1__1_n_121,round_w_return1__1_n_122,round_w_return1__1_n_123,round_w_return1__1_n_124,round_w_return1__1_n_125,round_w_return1__1_n_126,round_w_return1__1_n_127,round_w_return1__1_n_128,round_w_return1__1_n_129,round_w_return1__1_n_130,round_w_return1__1_n_131,round_w_return1__1_n_132,round_w_return1__1_n_133,round_w_return1__1_n_134,round_w_return1__1_n_135,round_w_return1__1_n_136,round_w_return1__1_n_137,round_w_return1__1_n_138,round_w_return1__1_n_139,round_w_return1__1_n_140,round_w_return1__1_n_141,round_w_return1__1_n_142,round_w_return1__1_n_143,round_w_return1__1_n_144,round_w_return1__1_n_145,round_w_return1__1_n_146,round_w_return1__1_n_147,round_w_return1__1_n_148,round_w_return1__1_n_149,round_w_return1__1_n_150,round_w_return1__1_n_151,round_w_return1__1_n_152,round_w_return1__1_n_153}),
        .PCOUT(NLW_round_w_return1__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(SR),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(SR),
        .RSTP(SR),
        .UNDERFLOW(NLW_round_w_return1__2_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_1
       (.I0(xre_mem_reg_r1_192_255_9_11_n_2),
        .I1(xre_mem_reg_r1_128_191_9_11_n_2),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_9_11_n_2),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_9_11_n_2),
        .O(xre_mp10[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_10
       (.I0(xre_mem_reg_r1_192_255_0_2_n_2),
        .I1(xre_mem_reg_r1_128_191_0_2_n_2),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_0_2_n_2),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_0_2_n_2),
        .O(xre_mp10[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_11
       (.I0(xre_mem_reg_r1_192_255_0_2_n_1),
        .I1(xre_mem_reg_r1_128_191_0_2_n_1),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_0_2_n_1),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_0_2_n_1),
        .O(xre_mp10[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_12
       (.I0(xre_mem_reg_r1_192_255_0_2_n_0),
        .I1(xre_mem_reg_r1_128_191_0_2_n_0),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_0_2_n_0),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_0_2_n_0),
        .O(xre_mp10[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_2
       (.I0(xre_mem_reg_r1_192_255_9_11_n_1),
        .I1(xre_mem_reg_r1_128_191_9_11_n_1),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_9_11_n_1),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_9_11_n_1),
        .O(xre_mp10[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_3
       (.I0(xre_mem_reg_r1_192_255_9_11_n_0),
        .I1(xre_mem_reg_r1_128_191_9_11_n_0),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_9_11_n_0),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_9_11_n_0),
        .O(xre_mp10[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_4
       (.I0(xre_mem_reg_r1_192_255_6_8_n_2),
        .I1(xre_mem_reg_r1_128_191_6_8_n_2),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_6_8_n_2),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_6_8_n_2),
        .O(xre_mp10[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_5
       (.I0(xre_mem_reg_r1_192_255_6_8_n_1),
        .I1(xre_mem_reg_r1_128_191_6_8_n_1),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_6_8_n_1),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_6_8_n_1),
        .O(xre_mp10[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_6
       (.I0(xre_mem_reg_r1_192_255_6_8_n_0),
        .I1(xre_mem_reg_r1_128_191_6_8_n_0),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_6_8_n_0),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_6_8_n_0),
        .O(xre_mp10[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_7
       (.I0(xre_mem_reg_r1_192_255_3_5_n_2),
        .I1(xre_mem_reg_r1_128_191_3_5_n_2),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_3_5_n_2),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_3_5_n_2),
        .O(xre_mp10[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_8
       (.I0(xre_mem_reg_r1_192_255_3_5_n_1),
        .I1(xre_mem_reg_r1_128_191_3_5_n_1),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_3_5_n_1),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_3_5_n_1),
        .O(xre_mp10[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1__2_i_9
       (.I0(xre_mem_reg_r1_192_255_3_5_n_0),
        .I1(xre_mem_reg_r1_128_191_3_5_n_0),
        .I2(m_plus_1[7]),
        .I3(xre_mem_reg_r1_64_127_3_5_n_0),
        .I4(m_plus_1[6]),
        .I5(xre_mem_reg_r1_0_63_3_5_n_0),
        .O(xre_mp10[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_1
       (.I0(xim_mem_reg_r3_192_255_9_11_n_2),
        .I1(xim_mem_reg_r3_128_191_9_11_n_2),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_9_11_n_2),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_9_11_n_2),
        .O(xim_m0[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_10
       (.I0(xim_mem_reg_r3_192_255_0_2_n_2),
        .I1(xim_mem_reg_r3_128_191_0_2_n_2),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_0_2_n_2),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_0_2_n_2),
        .O(xim_m0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_11
       (.I0(xim_mem_reg_r3_192_255_0_2_n_1),
        .I1(xim_mem_reg_r3_128_191_0_2_n_1),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_0_2_n_1),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_0_2_n_1),
        .O(xim_m0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_12
       (.I0(xim_mem_reg_r3_192_255_0_2_n_0),
        .I1(xim_mem_reg_r3_128_191_0_2_n_0),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_0_2_n_0),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_0_2_n_0),
        .O(xim_m0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_2
       (.I0(xim_mem_reg_r3_192_255_9_11_n_1),
        .I1(xim_mem_reg_r3_128_191_9_11_n_1),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_9_11_n_1),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_9_11_n_1),
        .O(xim_m0[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_3
       (.I0(xim_mem_reg_r3_192_255_9_11_n_0),
        .I1(xim_mem_reg_r3_128_191_9_11_n_0),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_9_11_n_0),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_9_11_n_0),
        .O(xim_m0[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_4
       (.I0(xim_mem_reg_r3_192_255_6_8_n_2),
        .I1(xim_mem_reg_r3_128_191_6_8_n_2),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_6_8_n_2),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_6_8_n_2),
        .O(xim_m0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_5
       (.I0(xim_mem_reg_r3_192_255_6_8_n_1),
        .I1(xim_mem_reg_r3_128_191_6_8_n_1),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_6_8_n_1),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_6_8_n_1),
        .O(xim_m0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_6
       (.I0(xim_mem_reg_r3_192_255_6_8_n_0),
        .I1(xim_mem_reg_r3_128_191_6_8_n_0),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_6_8_n_0),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_6_8_n_0),
        .O(xim_m0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_7
       (.I0(xim_mem_reg_r3_192_255_3_5_n_2),
        .I1(xim_mem_reg_r3_128_191_3_5_n_2),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_3_5_n_2),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_3_5_n_2),
        .O(xim_m0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_8
       (.I0(xim_mem_reg_r3_192_255_3_5_n_1),
        .I1(xim_mem_reg_r3_128_191_3_5_n_1),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_3_5_n_1),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_3_5_n_1),
        .O(xim_m0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    round_w_return1_i_9
       (.I0(xim_mem_reg_r3_192_255_3_5_n_0),
        .I1(xim_mem_reg_r3_128_191_3_5_n_0),
        .I2(\m_reg_n_0_[7] ),
        .I3(xim_mem_reg_r3_64_127_3_5_n_0),
        .I4(\m_reg_n_0_[6] ),
        .I5(xim_mem_reg_r3_0_63_3_5_n_0),
        .O(xim_m0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_bvalid_i_1
       (.I0(rst_n),
        .O(SR));
  FDRE vld_s1_reg
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(vld_s1),
        .R(SR));
  FDRE vld_s2_reg
       (.C(clk),
        .CE(1'b1),
        .D(vld_s1),
        .Q(vld_s2),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r1_0_63_0_2
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_0_63_0_2_n_0),
        .DOB(xim_mem_reg_r1_0_63_0_2_n_1),
        .DOC(xim_mem_reg_r1_0_63_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    xim_mem_reg_r1_0_63_0_2_i_1
       (.I0(\m_reg_n_0_[0] ),
        .O(m_minus_1[0]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r1_0_63_3_5
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_0_63_3_5_n_0),
        .DOB(xim_mem_reg_r1_0_63_3_5_n_1),
        .DOC(xim_mem_reg_r1_0_63_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r1_0_63_6_8
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_0_63_6_8_n_0),
        .DOB(xim_mem_reg_r1_0_63_6_8_n_1),
        .DOC(xim_mem_reg_r1_0_63_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r1_0_63_9_11
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_0_63_9_11_n_0),
        .DOB(xim_mem_reg_r1_0_63_9_11_n_1),
        .DOC(xim_mem_reg_r1_0_63_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r1_128_191_0_2
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_128_191_0_2_n_0),
        .DOB(xim_mem_reg_r1_128_191_0_2_n_1),
        .DOC(xim_mem_reg_r1_128_191_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r1_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r1_128_191_3_5
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_128_191_3_5_n_0),
        .DOB(xim_mem_reg_r1_128_191_3_5_n_1),
        .DOC(xim_mem_reg_r1_128_191_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r1_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r1_128_191_6_8
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_128_191_6_8_n_0),
        .DOB(xim_mem_reg_r1_128_191_6_8_n_1),
        .DOC(xim_mem_reg_r1_128_191_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r1_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r1_128_191_9_11
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_128_191_9_11_n_0),
        .DOB(xim_mem_reg_r1_128_191_9_11_n_1),
        .DOC(xim_mem_reg_r1_128_191_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r1_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r1_192_255_0_2
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_192_255_0_2_n_0),
        .DOB(xim_mem_reg_r1_192_255_0_2_n_1),
        .DOC(xim_mem_reg_r1_192_255_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r1_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r1_192_255_3_5
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_192_255_3_5_n_0),
        .DOB(xim_mem_reg_r1_192_255_3_5_n_1),
        .DOC(xim_mem_reg_r1_192_255_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r1_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r1_192_255_6_8
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_192_255_6_8_n_0),
        .DOB(xim_mem_reg_r1_192_255_6_8_n_1),
        .DOC(xim_mem_reg_r1_192_255_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r1_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r1_192_255_9_11
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_192_255_9_11_n_0),
        .DOB(xim_mem_reg_r1_192_255_9_11_n_1),
        .DOC(xim_mem_reg_r1_192_255_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r1_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r1_64_127_0_2
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_64_127_0_2_n_0),
        .DOB(xim_mem_reg_r1_64_127_0_2_n_1),
        .DOC(xim_mem_reg_r1_64_127_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r1_64_127_3_5
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_64_127_3_5_n_0),
        .DOB(xim_mem_reg_r1_64_127_3_5_n_1),
        .DOC(xim_mem_reg_r1_64_127_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r1_64_127_6_8
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_64_127_6_8_n_0),
        .DOB(xim_mem_reg_r1_64_127_6_8_n_1),
        .DOC(xim_mem_reg_r1_64_127_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r1_64_127_9_11
       (.ADDRA({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRB({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRC({m_plus_1[5:1],m_minus_1[0]}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r1_64_127_9_11_n_0),
        .DOB(xim_mem_reg_r1_64_127_9_11_n_1),
        .DOC(xim_mem_reg_r1_64_127_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r2_0_63_0_2
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_0_63_0_2_n_0),
        .DOB(xim_mem_reg_r2_0_63_0_2_n_1),
        .DOC(xim_mem_reg_r2_0_63_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r2_0_63_3_5
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_0_63_3_5_n_0),
        .DOB(xim_mem_reg_r2_0_63_3_5_n_1),
        .DOC(xim_mem_reg_r2_0_63_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r2_0_63_6_8
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_0_63_6_8_n_0),
        .DOB(xim_mem_reg_r2_0_63_6_8_n_1),
        .DOC(xim_mem_reg_r2_0_63_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r2_0_63_9_11
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_0_63_9_11_n_0),
        .DOB(xim_mem_reg_r2_0_63_9_11_n_1),
        .DOC(xim_mem_reg_r2_0_63_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r2_128_191_0_2
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_128_191_0_2_n_0),
        .DOB(xim_mem_reg_r2_128_191_0_2_n_1),
        .DOC(xim_mem_reg_r2_128_191_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r2_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r2_128_191_3_5
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_128_191_3_5_n_0),
        .DOB(xim_mem_reg_r2_128_191_3_5_n_1),
        .DOC(xim_mem_reg_r2_128_191_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r2_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r2_128_191_6_8
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_128_191_6_8_n_0),
        .DOB(xim_mem_reg_r2_128_191_6_8_n_1),
        .DOC(xim_mem_reg_r2_128_191_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r2_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r2_128_191_9_11
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_128_191_9_11_n_0),
        .DOB(xim_mem_reg_r2_128_191_9_11_n_1),
        .DOC(xim_mem_reg_r2_128_191_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r2_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r2_192_255_0_2
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_192_255_0_2_n_0),
        .DOB(xim_mem_reg_r2_192_255_0_2_n_1),
        .DOC(xim_mem_reg_r2_192_255_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r2_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r2_192_255_3_5
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_192_255_3_5_n_0),
        .DOB(xim_mem_reg_r2_192_255_3_5_n_1),
        .DOC(xim_mem_reg_r2_192_255_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r2_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r2_192_255_6_8
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_192_255_6_8_n_0),
        .DOB(xim_mem_reg_r2_192_255_6_8_n_1),
        .DOC(xim_mem_reg_r2_192_255_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r2_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r2_192_255_9_11
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_192_255_9_11_n_0),
        .DOB(xim_mem_reg_r2_192_255_9_11_n_1),
        .DOC(xim_mem_reg_r2_192_255_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r2_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r2_64_127_0_2
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_64_127_0_2_n_0),
        .DOB(xim_mem_reg_r2_64_127_0_2_n_1),
        .DOC(xim_mem_reg_r2_64_127_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r2_64_127_3_5
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_64_127_3_5_n_0),
        .DOB(xim_mem_reg_r2_64_127_3_5_n_1),
        .DOC(xim_mem_reg_r2_64_127_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r2_64_127_6_8
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_64_127_6_8_n_0),
        .DOB(xim_mem_reg_r2_64_127_6_8_n_1),
        .DOC(xim_mem_reg_r2_64_127_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r2_64_127_9_11
       (.ADDRA(m_minus_1[5:0]),
        .ADDRB(m_minus_1[5:0]),
        .ADDRC(m_minus_1[5:0]),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r2_64_127_9_11_n_0),
        .DOB(xim_mem_reg_r2_64_127_9_11_n_1),
        .DOC(xim_mem_reg_r2_64_127_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r3_0_63_0_2
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_0_63_0_2_n_0),
        .DOB(xim_mem_reg_r3_0_63_0_2_n_1),
        .DOC(xim_mem_reg_r3_0_63_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r3_0_63_3_5
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_0_63_3_5_n_0),
        .DOB(xim_mem_reg_r3_0_63_3_5_n_1),
        .DOC(xim_mem_reg_r3_0_63_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r3_0_63_6_8
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_0_63_6_8_n_0),
        .DOB(xim_mem_reg_r3_0_63_6_8_n_1),
        .DOC(xim_mem_reg_r3_0_63_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r3_0_63_9_11
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_0_63_9_11_n_0),
        .DOB(xim_mem_reg_r3_0_63_9_11_n_1),
        .DOC(xim_mem_reg_r3_0_63_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r3_128_191_0_2
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_128_191_0_2_n_0),
        .DOB(xim_mem_reg_r3_128_191_0_2_n_1),
        .DOC(xim_mem_reg_r3_128_191_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r3_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r3_128_191_3_5
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_128_191_3_5_n_0),
        .DOB(xim_mem_reg_r3_128_191_3_5_n_1),
        .DOC(xim_mem_reg_r3_128_191_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r3_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r3_128_191_6_8
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_128_191_6_8_n_0),
        .DOB(xim_mem_reg_r3_128_191_6_8_n_1),
        .DOC(xim_mem_reg_r3_128_191_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r3_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r3_128_191_9_11
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_128_191_9_11_n_0),
        .DOB(xim_mem_reg_r3_128_191_9_11_n_1),
        .DOC(xim_mem_reg_r3_128_191_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r3_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r3_192_255_0_2
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_192_255_0_2_n_0),
        .DOB(xim_mem_reg_r3_192_255_0_2_n_1),
        .DOC(xim_mem_reg_r3_192_255_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r3_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r3_192_255_3_5
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_192_255_3_5_n_0),
        .DOB(xim_mem_reg_r3_192_255_3_5_n_1),
        .DOC(xim_mem_reg_r3_192_255_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r3_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r3_192_255_6_8
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_192_255_6_8_n_0),
        .DOB(xim_mem_reg_r3_192_255_6_8_n_1),
        .DOC(xim_mem_reg_r3_192_255_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r3_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r3_192_255_9_11
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_192_255_9_11_n_0),
        .DOB(xim_mem_reg_r3_192_255_9_11_n_1),
        .DOC(xim_mem_reg_r3_192_255_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r3_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xim_mem_reg_r3_64_127_0_2
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[12]),
        .DIB(m_axis_data_tdata[13]),
        .DIC(m_axis_data_tdata[14]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_64_127_0_2_n_0),
        .DOB(xim_mem_reg_r3_64_127_0_2_n_1),
        .DOC(xim_mem_reg_r3_64_127_0_2_n_2),
        .DOD(NLW_xim_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xim_mem_reg_r3_64_127_3_5
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[15]),
        .DIB(m_axis_data_tdata[16]),
        .DIC(m_axis_data_tdata[17]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_64_127_3_5_n_0),
        .DOB(xim_mem_reg_r3_64_127_3_5_n_1),
        .DOC(xim_mem_reg_r3_64_127_3_5_n_2),
        .DOD(NLW_xim_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xim_mem_reg_r3_64_127_6_8
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[18]),
        .DIB(m_axis_data_tdata[19]),
        .DIC(m_axis_data_tdata[20]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_64_127_6_8_n_0),
        .DOB(xim_mem_reg_r3_64_127_6_8_n_1),
        .DOC(xim_mem_reg_r3_64_127_6_8_n_2),
        .DOD(NLW_xim_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xim_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xim_mem_reg_r3_64_127_9_11
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[21]),
        .DIB(m_axis_data_tdata[22]),
        .DIC(m_axis_data_tdata[23]),
        .DID(1'b0),
        .DOA(xim_mem_reg_r3_64_127_9_11_n_0),
        .DOB(xim_mem_reg_r3_64_127_9_11_n_1),
        .DOC(xim_mem_reg_r3_64_127_9_11_n_2),
        .DOD(NLW_xim_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[0]_i_1 
       (.I0(xim_mem_reg_r2_192_255_0_2_n_0),
        .I1(xim_mem_reg_r2_128_191_0_2_n_0),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_0_2_n_0),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_0_2_n_0),
        .O(xim_mm10[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[10]_i_1 
       (.I0(xim_mem_reg_r2_192_255_9_11_n_1),
        .I1(xim_mem_reg_r2_128_191_9_11_n_1),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_9_11_n_1),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_9_11_n_1),
        .O(xim_mm10[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[11]_i_1 
       (.I0(xim_mem_reg_r2_192_255_9_11_n_2),
        .I1(xim_mem_reg_r2_128_191_9_11_n_2),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_9_11_n_2),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_9_11_n_2),
        .O(xim_mm10[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[1]_i_1 
       (.I0(xim_mem_reg_r2_192_255_0_2_n_1),
        .I1(xim_mem_reg_r2_128_191_0_2_n_1),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_0_2_n_1),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_0_2_n_1),
        .O(xim_mm10[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[2]_i_1 
       (.I0(xim_mem_reg_r2_192_255_0_2_n_2),
        .I1(xim_mem_reg_r2_128_191_0_2_n_2),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_0_2_n_2),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_0_2_n_2),
        .O(xim_mm10[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[3]_i_1 
       (.I0(xim_mem_reg_r2_192_255_3_5_n_0),
        .I1(xim_mem_reg_r2_128_191_3_5_n_0),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_3_5_n_0),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_3_5_n_0),
        .O(xim_mm10[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[4]_i_1 
       (.I0(xim_mem_reg_r2_192_255_3_5_n_1),
        .I1(xim_mem_reg_r2_128_191_3_5_n_1),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_3_5_n_1),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_3_5_n_1),
        .O(xim_mm10[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[5]_i_1 
       (.I0(xim_mem_reg_r2_192_255_3_5_n_2),
        .I1(xim_mem_reg_r2_128_191_3_5_n_2),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_3_5_n_2),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_3_5_n_2),
        .O(xim_mm10[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[6]_i_1 
       (.I0(xim_mem_reg_r2_192_255_6_8_n_0),
        .I1(xim_mem_reg_r2_128_191_6_8_n_0),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_6_8_n_0),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_6_8_n_0),
        .O(xim_mm10[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[7]_i_1 
       (.I0(xim_mem_reg_r2_192_255_6_8_n_1),
        .I1(xim_mem_reg_r2_128_191_6_8_n_1),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_6_8_n_1),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_6_8_n_1),
        .O(xim_mm10[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[8]_i_1 
       (.I0(xim_mem_reg_r2_192_255_6_8_n_2),
        .I1(xim_mem_reg_r2_128_191_6_8_n_2),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_6_8_n_2),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_6_8_n_2),
        .O(xim_mm10[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xim_mm1[9]_i_1 
       (.I0(xim_mem_reg_r2_192_255_9_11_n_0),
        .I1(xim_mem_reg_r2_128_191_9_11_n_0),
        .I2(m_minus_1[7]),
        .I3(xim_mem_reg_r2_64_127_9_11_n_0),
        .I4(m_minus_1[6]),
        .I5(xim_mem_reg_r2_0_63_9_11_n_0),
        .O(xim_mm10[9]));
  FDRE \xim_mm1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[0]),
        .Q(xim_mm1[0]),
        .R(SR));
  FDRE \xim_mm1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[10]),
        .Q(xim_mm1[10]),
        .R(SR));
  FDRE \xim_mm1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[11]),
        .Q(xim_mm1[11]),
        .R(SR));
  FDRE \xim_mm1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[1]),
        .Q(xim_mm1[1]),
        .R(SR));
  FDRE \xim_mm1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[2]),
        .Q(xim_mm1[2]),
        .R(SR));
  FDRE \xim_mm1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[3]),
        .Q(xim_mm1[3]),
        .R(SR));
  FDRE \xim_mm1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[4]),
        .Q(xim_mm1[4]),
        .R(SR));
  FDRE \xim_mm1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[5]),
        .Q(xim_mm1[5]),
        .R(SR));
  FDRE \xim_mm1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[6]),
        .Q(xim_mm1[6]),
        .R(SR));
  FDRE \xim_mm1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[7]),
        .Q(xim_mm1[7]),
        .R(SR));
  FDRE \xim_mm1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[8]),
        .Q(xim_mm1[8]),
        .R(SR));
  FDRE \xim_mm1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(xim_mm10[9]),
        .Q(xim_mm1[9]),
        .R(SR));
  FDRE \xk_index_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s2[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \xk_index_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s2[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \xk_index_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s2[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \xk_index_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s2[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \xk_index_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s2[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \xk_index_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s2[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \xk_index_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s2[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \xk_index_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(m_s2[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE xk_last_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_s2),
        .Q(xk_last_out),
        .R(SR));
  FDRE xk_valid_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(vld_s2),
        .Q(xk_valid_out),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r1_0_63_0_2
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_0_63_0_2_n_0),
        .DOB(xre_mem_reg_r1_0_63_0_2_n_1),
        .DOC(xre_mem_reg_r1_0_63_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    xre_mem_reg_r1_0_63_0_2_i_1
       (.I0(m_axis_data_tvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(m_axis_data_tuser[6]),
        .I3(m_axis_data_tuser[7]),
        .O(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    xre_mem_reg_r1_0_63_0_2_i_2
       (.I0(\m_reg_n_0_[4] ),
        .I1(\m_reg_n_0_[2] ),
        .I2(\m_reg_n_0_[0] ),
        .I3(\m_reg_n_0_[1] ),
        .I4(\m_reg_n_0_[3] ),
        .I5(\m_reg_n_0_[5] ),
        .O(m_plus_1[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    xre_mem_reg_r1_0_63_0_2_i_3
       (.I0(\m_reg_n_0_[3] ),
        .I1(\m_reg_n_0_[1] ),
        .I2(\m_reg_n_0_[0] ),
        .I3(\m_reg_n_0_[2] ),
        .I4(\m_reg_n_0_[4] ),
        .O(m_plus_1[4]));
  LUT4 #(
    .INIT(16'h7F80)) 
    xre_mem_reg_r1_0_63_0_2_i_4
       (.I0(\m_reg_n_0_[2] ),
        .I1(\m_reg_n_0_[0] ),
        .I2(\m_reg_n_0_[1] ),
        .I3(\m_reg_n_0_[3] ),
        .O(m_plus_1[3]));
  LUT3 #(
    .INIT(8'h78)) 
    xre_mem_reg_r1_0_63_0_2_i_5
       (.I0(\m_reg_n_0_[1] ),
        .I1(\m_reg_n_0_[0] ),
        .I2(\m_reg_n_0_[2] ),
        .O(m_plus_1[2]));
  LUT2 #(
    .INIT(4'h6)) 
    xre_mem_reg_r1_0_63_0_2_i_6
       (.I0(\m_reg_n_0_[0] ),
        .I1(\m_reg_n_0_[1] ),
        .O(m_plus_1[1]));
  LUT1 #(
    .INIT(2'h1)) 
    xre_mem_reg_r1_0_63_0_2_i_7
       (.I0(\m_reg_n_0_[0] ),
        .O(xre_mem_reg_r1_0_63_0_2_i_7_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r1_0_63_3_5
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_0_63_3_5_n_0),
        .DOB(xre_mem_reg_r1_0_63_3_5_n_1),
        .DOC(xre_mem_reg_r1_0_63_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r1_0_63_6_8
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_0_63_6_8_n_0),
        .DOB(xre_mem_reg_r1_0_63_6_8_n_1),
        .DOC(xre_mem_reg_r1_0_63_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r1_0_63_9_11
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_0_63_9_11_n_0),
        .DOB(xre_mem_reg_r1_0_63_9_11_n_1),
        .DOC(xre_mem_reg_r1_0_63_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r1_128_191_0_2
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_128_191_0_2_n_0),
        .DOB(xre_mem_reg_r1_128_191_0_2_n_1),
        .DOC(xre_mem_reg_r1_128_191_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r1_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    xre_mem_reg_r1_128_191_0_2_i_1
       (.I0(m_axis_data_tuser[6]),
        .I1(m_axis_data_tuser[7]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(m_axis_data_tvalid),
        .O(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r1_128_191_3_5
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_128_191_3_5_n_0),
        .DOB(xre_mem_reg_r1_128_191_3_5_n_1),
        .DOC(xre_mem_reg_r1_128_191_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r1_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r1_128_191_6_8
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_128_191_6_8_n_0),
        .DOB(xre_mem_reg_r1_128_191_6_8_n_1),
        .DOC(xre_mem_reg_r1_128_191_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r1_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r1_128_191_9_11
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_128_191_9_11_n_0),
        .DOB(xre_mem_reg_r1_128_191_9_11_n_1),
        .DOC(xre_mem_reg_r1_128_191_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r1_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r1_192_255_0_2
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_192_255_0_2_n_0),
        .DOB(xre_mem_reg_r1_192_255_0_2_n_1),
        .DOC(xre_mem_reg_r1_192_255_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r1_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    xre_mem_reg_r1_192_255_0_2_i_1
       (.I0(m_axis_data_tvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(m_axis_data_tuser[6]),
        .I3(m_axis_data_tuser[7]),
        .O(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r1_192_255_3_5
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_192_255_3_5_n_0),
        .DOB(xre_mem_reg_r1_192_255_3_5_n_1),
        .DOC(xre_mem_reg_r1_192_255_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r1_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r1_192_255_6_8
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_192_255_6_8_n_0),
        .DOB(xre_mem_reg_r1_192_255_6_8_n_1),
        .DOC(xre_mem_reg_r1_192_255_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r1_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r1_192_255_9_11
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_192_255_9_11_n_0),
        .DOB(xre_mem_reg_r1_192_255_9_11_n_1),
        .DOC(xre_mem_reg_r1_192_255_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r1_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r1_64_127_0_2
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_64_127_0_2_n_0),
        .DOB(xre_mem_reg_r1_64_127_0_2_n_1),
        .DOC(xre_mem_reg_r1_64_127_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    xre_mem_reg_r1_64_127_0_2_i_1
       (.I0(m_axis_data_tuser[7]),
        .I1(m_axis_data_tuser[6]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(m_axis_data_tvalid),
        .O(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r1_64_127_3_5
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_64_127_3_5_n_0),
        .DOB(xre_mem_reg_r1_64_127_3_5_n_1),
        .DOC(xre_mem_reg_r1_64_127_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r1_64_127_6_8
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_64_127_6_8_n_0),
        .DOB(xre_mem_reg_r1_64_127_6_8_n_1),
        .DOC(xre_mem_reg_r1_64_127_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r1_64_127_9_11
       (.ADDRA({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_plus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r1_64_127_9_11_n_0),
        .DOB(xre_mem_reg_r1_64_127_9_11_n_1),
        .DOC(xre_mem_reg_r1_64_127_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r2_0_63_0_2
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_0_63_0_2_n_0),
        .DOB(xre_mem_reg_r2_0_63_0_2_n_1),
        .DOC(xre_mem_reg_r2_0_63_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    xre_mem_reg_r2_0_63_0_2_i_1
       (.I0(\m_reg_n_0_[5] ),
        .I1(\m_reg_n_0_[3] ),
        .I2(\m_reg_n_0_[1] ),
        .I3(\m_reg_n_0_[0] ),
        .I4(\m_reg_n_0_[2] ),
        .I5(\m_reg_n_0_[4] ),
        .O(m_minus_1[5]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    xre_mem_reg_r2_0_63_0_2_i_2
       (.I0(\m_reg_n_0_[4] ),
        .I1(\m_reg_n_0_[2] ),
        .I2(\m_reg_n_0_[0] ),
        .I3(\m_reg_n_0_[1] ),
        .I4(\m_reg_n_0_[3] ),
        .O(m_minus_1[4]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    xre_mem_reg_r2_0_63_0_2_i_3
       (.I0(\m_reg_n_0_[3] ),
        .I1(\m_reg_n_0_[1] ),
        .I2(\m_reg_n_0_[0] ),
        .I3(\m_reg_n_0_[2] ),
        .O(m_minus_1[3]));
  LUT3 #(
    .INIT(8'hA9)) 
    xre_mem_reg_r2_0_63_0_2_i_4
       (.I0(\m_reg_n_0_[2] ),
        .I1(\m_reg_n_0_[0] ),
        .I2(\m_reg_n_0_[1] ),
        .O(m_minus_1[2]));
  LUT2 #(
    .INIT(4'h9)) 
    xre_mem_reg_r2_0_63_0_2_i_5
       (.I0(\m_reg_n_0_[1] ),
        .I1(\m_reg_n_0_[0] ),
        .O(m_minus_1[1]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r2_0_63_3_5
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_0_63_3_5_n_0),
        .DOB(xre_mem_reg_r2_0_63_3_5_n_1),
        .DOC(xre_mem_reg_r2_0_63_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r2_0_63_6_8
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_0_63_6_8_n_0),
        .DOB(xre_mem_reg_r2_0_63_6_8_n_1),
        .DOC(xre_mem_reg_r2_0_63_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r2_0_63_9_11
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_0_63_9_11_n_0),
        .DOB(xre_mem_reg_r2_0_63_9_11_n_1),
        .DOC(xre_mem_reg_r2_0_63_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r2_128_191_0_2
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_128_191_0_2_n_0),
        .DOB(xre_mem_reg_r2_128_191_0_2_n_1),
        .DOC(xre_mem_reg_r2_128_191_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r2_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r2_128_191_3_5
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_128_191_3_5_n_0),
        .DOB(xre_mem_reg_r2_128_191_3_5_n_1),
        .DOC(xre_mem_reg_r2_128_191_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r2_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r2_128_191_6_8
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_128_191_6_8_n_0),
        .DOB(xre_mem_reg_r2_128_191_6_8_n_1),
        .DOC(xre_mem_reg_r2_128_191_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r2_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r2_128_191_9_11
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_128_191_9_11_n_0),
        .DOB(xre_mem_reg_r2_128_191_9_11_n_1),
        .DOC(xre_mem_reg_r2_128_191_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r2_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r2_192_255_0_2
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_192_255_0_2_n_0),
        .DOB(xre_mem_reg_r2_192_255_0_2_n_1),
        .DOC(xre_mem_reg_r2_192_255_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r2_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r2_192_255_3_5
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_192_255_3_5_n_0),
        .DOB(xre_mem_reg_r2_192_255_3_5_n_1),
        .DOC(xre_mem_reg_r2_192_255_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r2_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r2_192_255_6_8
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_192_255_6_8_n_0),
        .DOB(xre_mem_reg_r2_192_255_6_8_n_1),
        .DOC(xre_mem_reg_r2_192_255_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r2_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r2_192_255_9_11
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_192_255_9_11_n_0),
        .DOB(xre_mem_reg_r2_192_255_9_11_n_1),
        .DOC(xre_mem_reg_r2_192_255_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r2_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r2_64_127_0_2
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_64_127_0_2_n_0),
        .DOB(xre_mem_reg_r2_64_127_0_2_n_1),
        .DOC(xre_mem_reg_r2_64_127_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r2_64_127_3_5
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_64_127_3_5_n_0),
        .DOB(xre_mem_reg_r2_64_127_3_5_n_1),
        .DOC(xre_mem_reg_r2_64_127_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r2_64_127_6_8
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_64_127_6_8_n_0),
        .DOB(xre_mem_reg_r2_64_127_6_8_n_1),
        .DOC(xre_mem_reg_r2_64_127_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r2_64_127_9_11
       (.ADDRA({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRB({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRC({m_minus_1[5:1],xre_mem_reg_r1_0_63_0_2_i_7_n_0}),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r2_64_127_9_11_n_0),
        .DOB(xre_mem_reg_r2_64_127_9_11_n_1),
        .DOC(xre_mem_reg_r2_64_127_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r3_0_63_0_2
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_0_63_0_2_n_0),
        .DOB(xre_mem_reg_r3_0_63_0_2_n_1),
        .DOC(xre_mem_reg_r3_0_63_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r3_0_63_3_5
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_0_63_3_5_n_0),
        .DOB(xre_mem_reg_r3_0_63_3_5_n_1),
        .DOC(xre_mem_reg_r3_0_63_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r3_0_63_6_8
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_0_63_6_8_n_0),
        .DOB(xre_mem_reg_r3_0_63_6_8_n_1),
        .DOC(xre_mem_reg_r3_0_63_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r3_0_63_9_11
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_0_63_9_11_n_0),
        .DOB(xre_mem_reg_r3_0_63_9_11_n_1),
        .DOC(xre_mem_reg_r3_0_63_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r3_128_191_0_2
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_128_191_0_2_n_0),
        .DOB(xre_mem_reg_r3_128_191_0_2_n_1),
        .DOC(xre_mem_reg_r3_128_191_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r3_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r3_128_191_3_5
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_128_191_3_5_n_0),
        .DOB(xre_mem_reg_r3_128_191_3_5_n_1),
        .DOC(xre_mem_reg_r3_128_191_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r3_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r3_128_191_6_8
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_128_191_6_8_n_0),
        .DOB(xre_mem_reg_r3_128_191_6_8_n_1),
        .DOC(xre_mem_reg_r3_128_191_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r3_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r3_128_191_9_11
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_128_191_9_11_n_0),
        .DOB(xre_mem_reg_r3_128_191_9_11_n_1),
        .DOC(xre_mem_reg_r3_128_191_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r3_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r3_192_255_0_2
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_192_255_0_2_n_0),
        .DOB(xre_mem_reg_r3_192_255_0_2_n_1),
        .DOC(xre_mem_reg_r3_192_255_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r3_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r3_192_255_3_5
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_192_255_3_5_n_0),
        .DOB(xre_mem_reg_r3_192_255_3_5_n_1),
        .DOC(xre_mem_reg_r3_192_255_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r3_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r3_192_255_6_8
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_192_255_6_8_n_0),
        .DOB(xre_mem_reg_r3_192_255_6_8_n_1),
        .DOC(xre_mem_reg_r3_192_255_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r3_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r3_192_255_9_11
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_192_255_9_11_n_0),
        .DOB(xre_mem_reg_r3_192_255_9_11_n_1),
        .DOC(xre_mem_reg_r3_192_255_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r3_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M xre_mem_reg_r3_64_127_0_2
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[0]),
        .DIB(m_axis_data_tdata[1]),
        .DIC(m_axis_data_tdata[2]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_64_127_0_2_n_0),
        .DOB(xre_mem_reg_r3_64_127_0_2_n_1),
        .DOC(xre_mem_reg_r3_64_127_0_2_n_2),
        .DOD(NLW_xre_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M xre_mem_reg_r3_64_127_3_5
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[3]),
        .DIB(m_axis_data_tdata[4]),
        .DIC(m_axis_data_tdata[5]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_64_127_3_5_n_0),
        .DOB(xre_mem_reg_r3_64_127_3_5_n_1),
        .DOC(xre_mem_reg_r3_64_127_3_5_n_2),
        .DOD(NLW_xre_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M xre_mem_reg_r3_64_127_6_8
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[6]),
        .DIB(m_axis_data_tdata[7]),
        .DIC(m_axis_data_tdata[8]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_64_127_6_8_n_0),
        .DOB(xre_mem_reg_r3_64_127_6_8_n_1),
        .DOC(xre_mem_reg_r3_64_127_6_8_n_2),
        .DOD(NLW_xre_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "fft_pl_ps_top/u_fft_freqwin_top/u_three_term/xre_mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M xre_mem_reg_r3_64_127_9_11
       (.ADDRA({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRB({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRC({\m_reg_n_0_[5] ,\m_reg_n_0_[4] ,\m_reg_n_0_[3] ,\m_reg_n_0_[2] ,\m_reg_n_0_[1] ,\m_reg_n_0_[0] }),
        .ADDRD(m_axis_data_tuser[5:0]),
        .DIA(m_axis_data_tdata[9]),
        .DIB(m_axis_data_tdata[10]),
        .DIC(m_axis_data_tdata[11]),
        .DID(1'b0),
        .DOA(xre_mem_reg_r3_64_127_9_11_n_0),
        .DOB(xre_mem_reg_r3_64_127_9_11_n_1),
        .DOC(xre_mem_reg_r3_64_127_9_11_n_2),
        .DOD(NLW_xre_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(xre_mem_reg_r1_64_127_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[0]_i_1 
       (.I0(xre_mem_reg_r2_192_255_0_2_n_0),
        .I1(xre_mem_reg_r2_128_191_0_2_n_0),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_0_2_n_0),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_0_2_n_0),
        .O(xre_mm10[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[10]_i_1 
       (.I0(xre_mem_reg_r2_192_255_9_11_n_1),
        .I1(xre_mem_reg_r2_128_191_9_11_n_1),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_9_11_n_1),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_9_11_n_1),
        .O(xre_mm10[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[11]_i_1 
       (.I0(xre_mem_reg_r2_192_255_9_11_n_2),
        .I1(xre_mem_reg_r2_128_191_9_11_n_2),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_9_11_n_2),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_9_11_n_2),
        .O(xre_mm10[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \xre_mm1[11]_i_2 
       (.I0(\m_reg_n_0_[6] ),
        .I1(\xre_mm1[11]_i_4_n_0 ),
        .I2(\m_reg_n_0_[7] ),
        .O(m_minus_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \xre_mm1[11]_i_3 
       (.I0(\m_reg_n_0_[6] ),
        .I1(\xre_mm1[11]_i_4_n_0 ),
        .O(m_minus_1[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \xre_mm1[11]_i_4 
       (.I0(\m_reg_n_0_[4] ),
        .I1(\m_reg_n_0_[2] ),
        .I2(\m_reg_n_0_[0] ),
        .I3(\m_reg_n_0_[1] ),
        .I4(\m_reg_n_0_[3] ),
        .I5(\m_reg_n_0_[5] ),
        .O(\xre_mm1[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[1]_i_1 
       (.I0(xre_mem_reg_r2_192_255_0_2_n_1),
        .I1(xre_mem_reg_r2_128_191_0_2_n_1),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_0_2_n_1),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_0_2_n_1),
        .O(xre_mm10[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[2]_i_1 
       (.I0(xre_mem_reg_r2_192_255_0_2_n_2),
        .I1(xre_mem_reg_r2_128_191_0_2_n_2),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_0_2_n_2),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_0_2_n_2),
        .O(xre_mm10[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[3]_i_1 
       (.I0(xre_mem_reg_r2_192_255_3_5_n_0),
        .I1(xre_mem_reg_r2_128_191_3_5_n_0),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_3_5_n_0),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_3_5_n_0),
        .O(xre_mm10[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[4]_i_1 
       (.I0(xre_mem_reg_r2_192_255_3_5_n_1),
        .I1(xre_mem_reg_r2_128_191_3_5_n_1),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_3_5_n_1),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_3_5_n_1),
        .O(xre_mm10[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[5]_i_1 
       (.I0(xre_mem_reg_r2_192_255_3_5_n_2),
        .I1(xre_mem_reg_r2_128_191_3_5_n_2),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_3_5_n_2),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_3_5_n_2),
        .O(xre_mm10[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[6]_i_1 
       (.I0(xre_mem_reg_r2_192_255_6_8_n_0),
        .I1(xre_mem_reg_r2_128_191_6_8_n_0),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_6_8_n_0),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_6_8_n_0),
        .O(xre_mm10[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[7]_i_1 
       (.I0(xre_mem_reg_r2_192_255_6_8_n_1),
        .I1(xre_mem_reg_r2_128_191_6_8_n_1),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_6_8_n_1),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_6_8_n_1),
        .O(xre_mm10[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[8]_i_1 
       (.I0(xre_mem_reg_r2_192_255_6_8_n_2),
        .I1(xre_mem_reg_r2_128_191_6_8_n_2),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_6_8_n_2),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_6_8_n_2),
        .O(xre_mm10[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \xre_mm1[9]_i_1 
       (.I0(xre_mem_reg_r2_192_255_9_11_n_0),
        .I1(xre_mem_reg_r2_128_191_9_11_n_0),
        .I2(m_minus_1[7]),
        .I3(xre_mem_reg_r2_64_127_9_11_n_0),
        .I4(m_minus_1[6]),
        .I5(xre_mem_reg_r2_0_63_9_11_n_0),
        .O(xre_mm10[9]));
  FDRE \xre_mm1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[0]),
        .Q(xre_mm1[0]),
        .R(SR));
  FDRE \xre_mm1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[10]),
        .Q(xre_mm1[10]),
        .R(SR));
  FDRE \xre_mm1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[11]),
        .Q(xre_mm1[11]),
        .R(SR));
  FDRE \xre_mm1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[1]),
        .Q(xre_mm1[1]),
        .R(SR));
  FDRE \xre_mm1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[2]),
        .Q(xre_mm1[2]),
        .R(SR));
  FDRE \xre_mm1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[3]),
        .Q(xre_mm1[3]),
        .R(SR));
  FDRE \xre_mm1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[4]),
        .Q(xre_mm1[4]),
        .R(SR));
  FDRE \xre_mm1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[5]),
        .Q(xre_mm1[5]),
        .R(SR));
  FDRE \xre_mm1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[6]),
        .Q(xre_mm1[6]),
        .R(SR));
  FDRE \xre_mm1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[7]),
        .Q(xre_mm1[7]),
        .R(SR));
  FDRE \xre_mm1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[8]),
        .Q(xre_mm1[8]),
        .R(SR));
  FDRE \xre_mm1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(xre_mm10[9]),
        .Q(xre_mm1[9]),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "xfft_0,xfft_v9_1_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "xfft_0" *) 
(* X_CORE_INFO = "xfft_v9_1_13,Vivado 2024.2" *) 
module system_fft_pl_ps_0_0_xfft_0
   (aclk,
    aresetn,
    s_axis_config_tdata,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_data_tdata,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tlast,
    m_axis_data_tdata,
    m_axis_data_tuser,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tlast,
    event_frame_started,
    event_tlast_unexpected,
    event_tlast_missing,
    event_status_channel_halt,
    event_data_in_channel_halt,
    event_data_out_channel_halt);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:M_AXIS_STATUS:S_AXIS_DATA, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TDATA" *) (* X_INTERFACE_MODE = "slave S_AXIS_CONFIG" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CONFIG, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [15:0]s_axis_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TVALID" *) input s_axis_config_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TREADY" *) output s_axis_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TLAST" *) input s_axis_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TUSER" *) output [7:0]m_axis_data_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TREADY" *) input m_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TLAST" *) output m_axis_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 event_frame_started_intf INTERRUPT" *) (* X_INTERFACE_MODE = "master event_frame_started_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME event_frame_started_intf, SENSITIVITY EDGE_RISING, PortWidth 1" *) output event_frame_started;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 event_tlast_unexpected_intf INTERRUPT" *) (* X_INTERFACE_MODE = "master event_tlast_unexpected_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME event_tlast_unexpected_intf, SENSITIVITY EDGE_RISING, PortWidth 1" *) output event_tlast_unexpected;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 event_tlast_missing_intf INTERRUPT" *) (* X_INTERFACE_MODE = "master event_tlast_missing_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME event_tlast_missing_intf, SENSITIVITY EDGE_RISING, PortWidth 1" *) output event_tlast_missing;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 event_status_channel_halt_intf INTERRUPT" *) (* X_INTERFACE_MODE = "master event_status_channel_halt_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME event_status_channel_halt_intf, SENSITIVITY EDGE_RISING, PortWidth 1" *) output event_status_channel_halt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 event_data_in_channel_halt_intf INTERRUPT" *) (* X_INTERFACE_MODE = "master event_data_in_channel_halt_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME event_data_in_channel_halt_intf, SENSITIVITY EDGE_RISING, PortWidth 1" *) output event_data_in_channel_halt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 event_data_out_channel_halt_intf INTERRUPT" *) (* X_INTERFACE_MODE = "master event_data_out_channel_halt_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME event_data_out_channel_halt_intf, SENSITIVITY EDGE_RISING, PortWidth 1" *) output event_data_out_channel_halt;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
