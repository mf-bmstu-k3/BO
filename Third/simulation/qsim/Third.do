onerror {exit -code 1}
vlib work
vlog -work work Third.vo
vlog -work work test_for_bo.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BO_vlg_vec_tst -voptargs="+acc"
vcd file -direction Third.msim.vcd
vcd add -internal BO_vlg_vec_tst/*
vcd add -internal BO_vlg_vec_tst/i1/*
run -all
quit -f
