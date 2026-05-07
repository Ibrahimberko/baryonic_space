vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_19
vlib modelsim_lib/msim/processing_system7_vip_v1_0_21
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/xlconcat_v2_1_6
vlib modelsim_lib/msim/generic_baseblocks_v2_1_2
vlib modelsim_lib/msim/fifo_generator_v13_2_11
vlib modelsim_lib/msim/axi_data_fifo_v2_1_32
vlib modelsim_lib/msim/axi_register_slice_v2_1_33
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_33

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 modelsim_lib/msim/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 modelsim_lib/msim/processing_system7_vip_v1_0_21
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap xlconcat_v2_1_6 modelsim_lib/msim/xlconcat_v2_1_6
vmap generic_baseblocks_v2_1_2 modelsim_lib/msim/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_11 modelsim_lib/msim/fifo_generator_v13_2_11
vmap axi_data_fifo_v2_1_32 modelsim_lib/msim/axi_data_fifo_v2_1_32
vmap axi_register_slice_v2_1_33 modelsim_lib/msim/axi_register_slice_v2_1_33
vmap axi_protocol_converter_v2_1_33 modelsim_lib/msim/axi_protocol_converter_v2_1_33

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L processing_system7_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16  -93  \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system/ip/system_rst_ps7_0_200M_0/sim/system_rst_ps7_0_200M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_fft_pl_ps_0_0/sim/system_fft_pl_ps_0_0.v" \
"../../../bd/system/ip/system_ila_0_0/sim/system_ila_0_0.v" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_peak_index_pad_const_0/sim/system_peak_index_pad_const_0.v" \

vlog -work xlconcat_v2_1_6  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_peak_index_concat_0/sim/system_peak_index_concat_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_11  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11  -93  \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_32  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/65ce/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_33  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/27ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_interconnect_0_imp_auto_pc_0/sim/system_axi_interconnect_0_imp_auto_pc_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

