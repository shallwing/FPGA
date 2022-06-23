onerror {exit -code 1}
vlib work
vlog -work work encoder3_8.vo
vlog -work work encoder3_8.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.encoder3_8_vlg_vec_tst -voptargs="+acc"
vcd file -direction encoder3_8.msim.vcd
vcd add -internal encoder3_8_vlg_vec_tst/*
vcd add -internal encoder3_8_vlg_vec_tst/i1/*
run -all
quit -f
