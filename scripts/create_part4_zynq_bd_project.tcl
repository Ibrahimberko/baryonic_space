set repo_root [file normalize [file join [file dirname [info script]] ".."]]
set project_dir [file join $repo_root "part4" "vivado_part4_zynq"]
set project_name "fft_pl_ps_part4_zynq"

file mkdir $project_dir

create_project -force $project_name $project_dir -part xc7z020clg400-1
set_property board_part digilentinc.com:zybo-z7-20:part0:1.2 [current_project]
set_property target_language Verilog [current_project]
set_property simulator_language Mixed [current_project]

add_files -norecurse -fileset sources_1 [list \
    [file join $repo_root "rtl" "abs_sq.v"] \
    [file join $repo_root "rtl" "peak_detector.v"] \
    [file join $repo_root "rtl" "part4" "three_term_part4.v"] \
    [file join $repo_root "rtl" "part4" "fft_freqwin_top_part4.v"] \
    [file join $repo_root "rtl" "part4" "part4_axi_lite_regs.v"] \
    [file join $repo_root "rtl" "part4" "dds_config_driver.v"] \
    [file join $repo_root "rtl" "part4" "fft_pl_ps_top.v"] \
]

create_ip -name xfft -vendor xilinx.com -library ip -version 9.1 -module_name xfft_0
set_property -dict [list \
  CONFIG.aresetn {true} \
  CONFIG.data_format {fixed_point} \
  CONFIG.implementation_options {pipelined_streaming_io} \
  CONFIG.input_width {12} \
  CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {1} \
  CONFIG.output_ordering {natural_order} \
  CONFIG.phase_factor_width {12} \
  CONFIG.target_clock_frequency {200} \
  CONFIG.transform_length {256} \
  CONFIG.xk_index {true} \
] [get_ips xfft_0]

create_ip -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_0
foreach {prop value} [list \
    CONFIG.PartsPresent {Phase_Generator_and_SIN_COS_LUT} \
    CONFIG.Parameter_Entry {Hardware_Parameters} \
    CONFIG.Phase_Width {32} \
    CONFIG.Output_Width {12} \
    CONFIG.Phase_Increment {Programmable} \
    CONFIG.Output_Selection {Sine_and_Cosine} \
    CONFIG.Has_ARESETn {true} \
    CONFIG.Has_TREADY {false} \
    CONFIG.DDS_Clock_Rate {200} \
    CONFIG.Noise_Shaping {None} \
] {
    if {[lsearch -exact [list_property [get_ips dds_compiler_0]] $prop] >= 0} {
        if {[catch {set_property $prop $value [get_ips dds_compiler_0]} msg]} {
            puts "WARNING: could not set $prop to $value: $msg"
        }
    }
}
foreach {prop value} [list CONFIG.Phase_Width {32} CONFIG.Output_Width {12}] {
    if {[lsearch -exact [list_property [get_ips dds_compiler_0]] $prop] >= 0} {
        catch {set_property $prop $value [get_ips dds_compiler_0]} msg
    }
}

generate_target all [get_ips xfft_0]
generate_target all [get_ips dds_compiler_0]
export_ip_user_files -of_objects [get_ips xfft_0] -no_script -sync -force -quiet
export_ip_user_files -of_objects [get_ips dds_compiler_0] -no_script -sync -force -quiet

update_compile_order -fileset sources_1

create_bd_design "system"

create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7 processing_system7_0
set_property -dict [list \
    CONFIG.PCW_USE_M_AXI_GP0 {1} \
    CONFIG.PCW_EN_CLK0_PORT {1} \
    CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {200} \
] [get_bd_cells processing_system7_0]

apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
    -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable"} \
    [get_bd_cells processing_system7_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset rst_ps7_0_200M
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect axi_interconnect_0
set_property -dict [list CONFIG.NUM_MI {1} CONFIG.NUM_SI {1}] [get_bd_cells axi_interconnect_0]

create_bd_cell -type module -reference fft_pl_ps_top fft_pl_ps_0

connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] \
    [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] \
    [get_bd_pins rst_ps7_0_200M/slowest_sync_clk] \
    [get_bd_pins axi_interconnect_0/ACLK] \
    [get_bd_pins axi_interconnect_0/S00_ACLK] \
    [get_bd_pins axi_interconnect_0/M00_ACLK] \
    [get_bd_pins fft_pl_ps_0/clk]

connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] \
    [get_bd_pins rst_ps7_0_200M/ext_reset_in]

connect_bd_net [get_bd_pins rst_ps7_0_200M/peripheral_aresetn] \
    [get_bd_pins axi_interconnect_0/ARESETN] \
    [get_bd_pins axi_interconnect_0/S00_ARESETN] \
    [get_bd_pins axi_interconnect_0/M00_ARESETN] \
    [get_bd_pins fft_pl_ps_0/rst_n]

connect_bd_intf_net [get_bd_intf_pins processing_system7_0/M_AXI_GP0] \
    [get_bd_intf_pins axi_interconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_0/M00_AXI] \
    [get_bd_intf_pins fft_pl_ps_0/S_AXI]

create_bd_cell -type ip -vlnv xilinx.com:ip:ila ila_0
set_property -dict [list \
    CONFIG.C_NUM_OF_PROBES {3} \
    CONFIG.C_PROBE0_WIDTH {32} \
    CONFIG.C_PROBE1_WIDTH {32} \
    CONFIG.C_PROBE2_WIDTH {1} \
] [get_bd_cells ila_0]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant peak_index_pad_const
set_property -dict [list CONFIG.CONST_WIDTH {24} CONFIG.CONST_VAL {0}] [get_bd_cells peak_index_pad_const]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat peak_index_concat
set_property -dict [list CONFIG.NUM_PORTS {2} CONFIG.IN0_WIDTH {8} CONFIG.IN1_WIDTH {24}] [get_bd_cells peak_index_concat]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins ila_0/clk]
connect_bd_net [get_bd_pins fft_pl_ps_0/dds_pinc_dbg] [get_bd_pins ila_0/probe0]
connect_bd_net [get_bd_pins fft_pl_ps_0/peak_index_dbg] [get_bd_pins peak_index_concat/In0]
connect_bd_net [get_bd_pins peak_index_pad_const/dout] [get_bd_pins peak_index_concat/In1]
connect_bd_net [get_bd_pins peak_index_concat/dout] [get_bd_pins ila_0/probe1]
connect_bd_net [get_bd_pins fft_pl_ps_0/peak_valid_dbg] [get_bd_pins ila_0/probe2]

assign_bd_address
set part4_seg [get_bd_addr_segs -quiet processing_system7_0/Data/SEG_fft_pl_ps_0_reg0]
if {[llength $part4_seg] > 0} {
    set_property offset 0x43C00000 [lindex $part4_seg 0]
    set_property range 4K [lindex $part4_seg 0]
}

validate_bd_design
save_bd_design

set wrapper [make_wrapper -files [get_files [file join $project_dir "$project_name.srcs" "sources_1" "bd" "system" "system.bd"]] -top]
add_files -norecurse $wrapper
set_property top system_wrapper [current_fileset]
update_compile_order -fileset sources_1

puts "Part 4 Zynq BD project created at: $project_dir/$project_name.xpr"
puts "Export XSA after bitstream generation from Vivado: File -> Export -> Export Hardware (Include bitstream)."
