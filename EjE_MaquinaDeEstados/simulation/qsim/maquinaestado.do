onerror {quit -f}
vlib work
vlog -work work maquinaestado.vo
vlog -work work maquinaestado.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.maquinaestado_vlg_vec_tst
vcd file -direction maquinaestado.msim.vcd
vcd add -internal maquinaestado_vlg_vec_tst/*
vcd add -internal maquinaestado_vlg_vec_tst/i1/*
add wave /*
run -all
