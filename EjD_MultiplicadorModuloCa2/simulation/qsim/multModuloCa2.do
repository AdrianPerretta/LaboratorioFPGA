onerror {quit -f}
vlib work
vlog -work work multModuloCa2.vo
vlog -work work multModuloCa2.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multModuloCa2_vlg_vec_tst
vcd file -direction multModuloCa2.msim.vcd
vcd add -internal multModuloCa2_vlg_vec_tst/*
vcd add -internal multModuloCa2_vlg_vec_tst/i1/*
add wave /*
run -all
