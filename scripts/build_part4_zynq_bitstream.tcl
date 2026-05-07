set repo_root [file normalize [file join [file dirname [info script]] ".."]]
set project_file [file join $repo_root "part4" "vivado_part4_zynq" "fft_pl_ps_part4_zynq.xpr"]
set xsa_file [file join $repo_root "part4" "vivado_part4_zynq" "fft_pl_ps_part4_zynq.xsa"]

open_project $project_file
update_compile_order -fileset sources_1

if {[get_property PROGRESS [get_runs synth_1]] ne "0%"} {
    reset_run synth_1
}

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

set impl_status [get_property STATUS [get_runs impl_1]]
puts "impl_1 status: $impl_status"

if {[string first "Complete" $impl_status] < 0} {
    error "Implementation/bitstream did not complete successfully."
}

write_hw_platform -fixed -include_bit -force -file $xsa_file
puts "Exported XSA: $xsa_file"
