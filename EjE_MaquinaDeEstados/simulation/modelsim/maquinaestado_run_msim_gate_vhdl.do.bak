transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {maquinaestado.vho}

vcom -93 -work work {C:/Users/Adrian/Downloads/lab/LaboratorioFPGA/EjE_MaquinaDeEstados/maquinaestado_tb.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  maquinaestado_tb

add wave *
view structure
view signals
run 2000 ns
