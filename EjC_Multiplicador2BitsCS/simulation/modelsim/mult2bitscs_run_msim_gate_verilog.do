transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {mult2bitscs.vo}

vcom -93 -work work {C:/Facultad/FPGA/1/LaboratorioFPGA/EjC_Multiplicador2BitsCS/mult2bitscs_tb.vhd}

vsim -t 1ps -L altera_ver -L cycloneiii_ver -L gate_work -L work -voptargs="+acc"  mult2bitscs_tb

add wave *
view structure
view signals
run 2000 ns
