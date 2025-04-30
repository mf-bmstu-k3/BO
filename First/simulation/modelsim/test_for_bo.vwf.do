vlog -work work test_for_bo.vwf.vtvsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.blok_oper_sch_vlg_vec_tst -voptargs="+acc"
add wave /*
run -all
