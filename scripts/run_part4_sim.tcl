set repo_root [file normalize [file join [file dirname [info script]] ".."]]
set project_file [file join $repo_root "part4" "vivado_part4" "fft_pl_ps_part4.xpr"]

open_project $project_file
set_property top tb_part4_regs_and_peak [get_filesets sim_1]
set_property SOURCE_SET sources_1 [get_filesets sim_1]
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

launch_simulation

puts "Part 4 simulation complete."
