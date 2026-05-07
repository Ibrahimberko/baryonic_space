set repo_root [file normalize [file join [file dirname [info script]] ".."]]
set project_dir [file join $repo_root "part4" "vivado_part4"]
set project_name "fft_pl_ps_part4"

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

# DDS Compiler GUI settings expected by fft_pl_ps_top:
#   - Phase generator and SIN/COS LUT
#   - Streaming or programmable PINC on s_axis_config_tdata[31:0]
#   - 32-bit phase width
#   - 12-bit sine/cosine output, one 16-bit AXIS lane per component
#   - aresetn enabled, data tvalid enabled, data tready disabled
#
# Vivado releases expose slightly different DDS property names, so this script
# sets the common ones and leaves the GUI/IP customisation pane as the final
# authority if a property is not present in your install.
foreach {prop value} [list \
    CONFIG.PartsPresent {Phase_Generator_and_SIN_COS_LUT} \
    CONFIG.Parameter_Entry {Hardware_Parameters} \
    CONFIG.Phase_Width {32} \
    CONFIG.Output_Width {12} \
    CONFIG.Phase_Increment {Programmable} \
    CONFIG.Output_Selection {Sine_and_Cosine} \
    CONFIG.Has_ARESETn {true} \
    CONFIG.Has_TREADY {false} \
    CONFIG.Samples_per_Clock {1} \
    CONFIG.DDS_Clock_Rate {200} \
    CONFIG.Noise_Shaping {None} \
] {
    if {[lsearch -exact [list_property [get_ips dds_compiler_0]] $prop] >= 0} {
        if {[catch {set_property $prop $value [get_ips dds_compiler_0]} msg]} {
            puts "WARNING: could not set $prop to $value: $msg"
        }
    } else {
        puts "INFO: DDS property $prop is not present in this Vivado version; skipped."
    }
}

# Some DDS Compiler versions re-validate dependent fields after changing
# Phase_Increment. Re-apply the hardware widths after that mode selection so
# the generated s_axis_config_tdata width matches the Part 4 software formula.
foreach {prop value} [list \
    CONFIG.Phase_Width {32} \
    CONFIG.Output_Width {12} \
] {
    if {[lsearch -exact [list_property [get_ips dds_compiler_0]] $prop] >= 0} {
        if {[catch {set_property $prop $value [get_ips dds_compiler_0]} msg]} {
            puts "WARNING: could not re-apply $prop to $value: $msg"
        }
    }
}

generate_target all [get_ips xfft_0]
generate_target all [get_ips dds_compiler_0]
export_ip_user_files -of_objects [get_ips xfft_0] -no_script -sync -force -quiet
export_ip_user_files -of_objects [get_ips dds_compiler_0] -no_script -sync -force -quiet

add_files -norecurse -fileset sim_1 [list \
    [file join $repo_root "tb" "part4" "tb_part4_regs_and_peak.sv"] \
]
set_property top fft_pl_ps_top [get_filesets sources_1]
set_property top tb_part4_regs_and_peak [get_filesets sim_1]
set_property SOURCE_SET sources_1 [get_filesets sim_1]

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

puts "Part 4 Vivado project created at: $project_dir/$project_name.xpr"
puts "Top for synthesis/integration: fft_pl_ps_top"
puts "AXI-Lite register testbench: tb_part4_regs_and_peak"
