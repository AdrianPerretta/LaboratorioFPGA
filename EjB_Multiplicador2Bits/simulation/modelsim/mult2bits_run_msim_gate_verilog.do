transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {mult2bits.vo}

vcom -93 -work work {C:/Users/Adrian/Downloads/lab/LaboratorioFPGA/EjB_Multiplicador2Bits/mult2bits_tb.vhd}

vsim -t 1ps -L altera_ver -L cycloneiii_ver -L gate_work -L work -voptargs="+acc"  mult2bits_tb

add wave *
view structure
view signals
run -all
