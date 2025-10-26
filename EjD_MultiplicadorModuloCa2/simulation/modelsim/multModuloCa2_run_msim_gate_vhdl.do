transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {multModuloCa2.vho}

vcom -93 -work work {C:/Facultad/FPGA/LaboratorioFPGA/EjD_MultiplicadorModuloCa2/multModuloCa2_tb.vhd}

vsim -t 1ps -L altera_mf -L altera -L lpm -L sgate -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L gate_work -L work -voptargs="+acc"  multModuloCa2_tb

add wave *
view structure
view signals
run 500 ns
