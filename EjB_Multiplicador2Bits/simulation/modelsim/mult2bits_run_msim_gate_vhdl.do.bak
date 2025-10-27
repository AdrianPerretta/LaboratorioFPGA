transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {mult2bits.vho}

vcom -93 -work work {C:/Facultad/FPGA/LaboratorioFPGA/EjB_Multiplicador2Bits/mult2bits_tb.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  mult2bits_tb

add wave *
view structure
view signals
run -all
