set repo_root [file normalize [file join [file dirname [info script]] ".."]]
set source_tb [file join $repo_root "tb" "part1" "tb_fft_naive.sv"]
set sim_mem_files [list \
    [file join $repo_root "mem" "tone_12p5MHz_re.mem"] \
    [file join $repo_root "mem" "tone_12p5MHz_im.mem"] \
    [file join $repo_root "mem" "tone_10MHz_re.mem"] \
    [file join $repo_root "mem" "tone_10MHz_im.mem"] \
]
set project_dir [file join $repo_root "part1" "vivado_part1"]
set project_name "fft_naive_part1"

file mkdir $project_dir

# The .mem stimulus files are added to sim_1, so Vivado exports them into the
# XSim run directory. The testbench can therefore read them from "." regardless
# of where the project folder is moved.
set mem_dir "."

create_project -force $project_name $project_dir -part xc7z020clg400-1
set_property board_part digilentinc.com:zybo-z7-20:part0:1.2 [current_project]
set_property target_language Verilog [current_project]
set_property simulator_language Mixed [current_project]

add_files -norecurse -fileset sources_1 [list \
    [file join $repo_root "rtl" "abs_sq.v"] \
    [file join $repo_root "rtl" "peak_detector.v"] \
    [file join $repo_root "rtl" "part1" "fft_naive_top.v"] \
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
generate_target all [get_files [file join $project_dir "$project_name.srcs" "sources_1" "ip" "xfft_0" "xfft_0.xci"]]
export_ip_user_files -of_objects [get_files [file join $project_dir "$project_name.srcs" "sources_1" "ip" "xfft_0" "xfft_0.xci"]] -no_script -sync -force -quiet

add_files -norecurse -fileset sim_1 [concat [list $source_tb] $sim_mem_files]
set_property top fft_naive_top [get_filesets sources_1]
set_property top tb_fft_naive [get_filesets sim_1]
set_property SOURCE_SET sources_1 [get_filesets sim_1]
set_property -dict [list xsim.simulate.xsim.more_options "-testplusarg MEM_DIR=$mem_dir"] [get_filesets sim_1]

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

launch_simulation
run all

puts "Part 1 Vivado project created at: $project_dir/$project_name.xpr"
puts "MEM_DIR=$mem_dir"
