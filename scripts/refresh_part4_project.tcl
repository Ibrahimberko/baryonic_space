set repo_root [file normalize [file join [file dirname [info script]] ".."]]
set project_file [file join $repo_root "part4" "vivado_part4" "fft_pl_ps_part4.xpr"]

open_project $project_file
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
report_compile_order -fileset sources_1

puts "Part 4 project refreshed."
