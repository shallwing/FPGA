onerror {exit -code 1}
vlib work
vlog -work work flip_flop.vo
vlog -work work flip_flop.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.flip_flop_vlg_vec_tst -voptargs="+acc"
vcd file -direction flip_flop.msim.vcd
vcd add -internal flip_flop_vlg_vec_tst/*
vcd add -internal flip_flop_vlg_vec_tst/i1/*
run -all
quit -f
