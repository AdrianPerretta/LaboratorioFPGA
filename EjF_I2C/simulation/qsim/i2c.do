onerror {quit -f}
vlib work
vlog -work work i2c.vo
vlog -work work i2c.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.i2cEsquematico_vlg_vec_tst
vcd file -direction i2c.msim.vcd
vcd add -internal i2cEsquematico_vlg_vec_tst/*
vcd add -internal i2cEsquematico_vlg_vec_tst/i1/*
add wave /*
run -all
