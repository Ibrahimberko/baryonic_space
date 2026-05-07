// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon May  4 23:06:55 2026
// Host        : DESKTOP-PNADBHN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               p:/part4/vivado_part4_zynq/fft_pl_ps_part4_zynq.gen/sources_1/ip/dds_compiler_0/dds_compiler_0_stub.v
// Design      : dds_compiler_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_26,{}" *) (* core_generation_info = "dds_compiler_0,dds_compiler_v6_0_26,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dds_compiler,x_ipVersion=6.0,x_ipCoreRevision=26,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=zynq,C_MODE_OF_OPERATION=0,C_MODULUS=9,C_ACCUMULATOR_WIDTH=32,C_CHANNELS=1,C_HAS_PHASE_OUT=1,C_HAS_PHASEGEN=1,C_HAS_SINCOS=1,C_LATENCY=7,C_MEM_TYPE=1,C_NEGATIVE_COSINE=0,C_NEGATIVE_SINE=0,C_NOISE_SHAPING=0,C_OUTPUTS_REQUIRED=2,C_OUTPUT_FORM=0,C_OUTPUT_TYPE=0,C_OUTPUT_WIDTH=12,C_PHASE_ANGLE_WIDTH=12,C_PHASE_INCREMENT=1,C_PHASE_INCREMENT_VALUE=1101000110110111_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0,C_RESYNC=0,C_PHASE_OFFSET=0,C_PHASE_OFFSET_VALUE=0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0,C_OPTIMISE_GOAL=0,C_USE_DSP48=0,C_POR_MODE=0,C_AMPLITUDE=0,C_HAS_ACLKEN=0,C_HAS_ARESETN=1,C_HAS_TLAST=0,C_HAS_TREADY=0,C_HAS_S_PHASE=0,C_S_PHASE_TDATA_WIDTH=1,C_S_PHASE_HAS_TUSER=0,C_S_PHASE_TUSER_WIDTH=1,C_HAS_S_CONFIG=1,C_S_CONFIG_SYNC_MODE=0,C_S_CONFIG_TDATA_WIDTH=32,C_HAS_M_DATA=1,C_M_DATA_TDATA_WIDTH=32,C_M_DATA_HAS_TUSER=0,C_M_DATA_TUSER_WIDTH=1,C_HAS_M_PHASE=1,C_M_PHASE_TDATA_WIDTH=32,C_M_PHASE_HAS_TUSER=0,C_M_PHASE_TUSER_WIDTH=1,C_DEBUG_INTERFACE=0,C_CHAN_WIDTH=1}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "dds_compiler_v6_0_26,Vivado 2024.2" *) 
module dds_compiler_0(aclk, aresetn, s_axis_config_tvalid, 
  s_axis_config_tdata, m_axis_data_tvalid, m_axis_data_tdata, m_axis_phase_tvalid, 
  m_axis_phase_tdata)
/* synthesis syn_black_box black_box_pad_pin="aresetn,s_axis_config_tvalid,s_axis_config_tdata[31:0],m_axis_data_tvalid,m_axis_data_tdata[31:0],m_axis_phase_tvalid,m_axis_phase_tdata[31:0]" */
/* synthesis syn_force_seq_prim="aclk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_mode = "slave aclk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* x_interface_mode = "slave aresetn_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TVALID" *) (* x_interface_mode = "slave S_AXIS_CONFIG" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_CONFIG, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_config_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TDATA" *) input [31:0]s_axis_config_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_mode = "master M_AXIS_DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [31:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_mode = "master M_AXIS_PHASE" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [31:0]m_axis_phase_tdata;
endmodule
