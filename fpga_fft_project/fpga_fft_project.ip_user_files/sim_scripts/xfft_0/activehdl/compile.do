transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l xil_defaultlib \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l xil_defaultlib \
"../../../../fpga_fft_project.gen/sources_1/ip/xfft_0/xfft_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

