transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_19
vlib activehdl/processing_system7_vip_v1_0_21
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_16
vlib activehdl/xlconstant_v1_1_9
vlib activehdl/xlconcat_v2_1_6
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/fifo_generator_v13_2_11
vlib activehdl/axi_data_fifo_v2_1_32
vlib activehdl/axi_register_slice_v2_1_33
vlib activehdl/axi_protocol_converter_v2_1_33

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 activehdl/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 activehdl/processing_system7_vip_v1_0_21
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 activehdl/proc_sys_reset_v5_0_16
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9
vmap xlconcat_v2_1_6 activehdl/xlconcat_v2_1_6
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_11 activehdl/fifo_generator_v13_2_11
vmap axi_data_fifo_v2_1_32 activehdl/axi_data_fifo_v2_1_32
vmap axi_register_slice_v2_1_33 activehdl/axi_register_slice_v2_1_33
vmap axi_protocol_converter_v2_1_33 activehdl/axi_protocol_converter_v2_1_33

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -sv2k12 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21  -sv2k12 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/system/ip/system_rst_ps7_0_200M_0/sim/system_rst_ps7_0_200M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../bd/system/ip/system_fft_pl_ps_0_0/sim/system_fft_pl_ps_0_0.v" \
"../../../bd/system/ip/system_ila_0_0/sim/system_ila_0_0.v" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../bd/system/ip/system_peak_index_pad_const_0/sim/system_peak_index_pad_const_0.v" \

vlog -work xlconcat_v2_1_6  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../bd/system/ip/system_peak_index_concat_0/sim/system_peak_index_concat_0.v" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_11  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11 -93  \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_32  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/65ce/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_33  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/27ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/814a/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/1017/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/52c0/hdl/verilog" "+incdir+../../../../fft_pl_ps_part4_zynq.gen/sources_1/bd/system/ipshared/2276/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 \
"../../../bd/system/ip/system_axi_interconnect_0_imp_auto_pc_0/sim/system_axi_interconnect_0_imp_auto_pc_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

