set repo_root [file normalize [file join [file dirname [info script]] ".."]]

add_files -fileset sources_1 [list \
    [file join $repo_root "rtl" "abs_sq.v"] \
    [file join $repo_root "rtl" "peak_detector.v"] \
    [file join $repo_root "rtl" "fft_naive_top.v"] \
]

add_files -fileset sim_1 [list \
    [file join $repo_root "tb" "tb_fft_naive.sv"] \
]

set_property top fft_naive_top [get_filesets sources_1]
set_property top tb_fft_naive [get_filesets sim_1]

set mem_dir [string map {\\ /} [file join $repo_root "mem"]]
catch {set_property xsim.elaborate.xelab.more_options "+MEM_DIR=$mem_dir" [get_filesets sim_1]}
catch {set_property xsim.simulate.xsim.more_options "+MEM_DIR=$mem_dir" [get_filesets sim_1]}

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

puts "Added Part 1 RTL and simulation files."
puts "MEM_DIR=$mem_dir"
