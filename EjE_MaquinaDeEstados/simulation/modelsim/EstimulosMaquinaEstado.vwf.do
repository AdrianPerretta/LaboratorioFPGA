vlog -work work C:/Facultad/FPGA/LaboratorioFPGA/EjE_MaquinaDeEstados/simulation/modelsim/EstimulosMaquinaEstado.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.maquinaestado_vlg_vec_tst
onerror {resume}
add wave {maquinaestado_vlg_vec_tst/i1/x}
add wave {maquinaestado_vlg_vec_tst/i1/z3}
add wave {maquinaestado_vlg_vec_tst/i1/z0}
add wave {maquinaestado_vlg_vec_tst/i1/z1}
add wave {maquinaestado_vlg_vec_tst/i1/z2}
add wave {maquinaestado_vlg_vec_tst/i1/clock}
run -all
