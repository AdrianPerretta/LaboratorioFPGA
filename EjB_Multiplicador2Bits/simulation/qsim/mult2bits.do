onerror {quit -f}
vlib work
vlog -work work mult2bits.vo
vlog -work work mult2bits.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mult2bits_vlg_vec_tst
vcd file -direction mult2bits.msim.vcd
vcd add -internal mult2bits_vlg_vec_tst/*
vcd add -internal mult2bits_vlg_vec_tst/i1/*
add wave /*
run -all
