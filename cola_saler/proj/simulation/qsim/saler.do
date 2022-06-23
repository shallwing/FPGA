onerror {exit -code 1}
vlib work
vlog -work work saler.vo
vlog -work work complex_saler.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.saler_vlg_vec_tst -voptargs="+acc"
vcd file -direction saler.msim.vcd
vcd add -internal saler_vlg_vec_tst/*
vcd add -internal saler_vlg_vec_tst/i1/*
run -all
quit -f
