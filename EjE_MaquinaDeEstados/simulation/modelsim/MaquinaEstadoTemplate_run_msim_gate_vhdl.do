transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {MaquinaEstadoTemplate_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/Adrian/Downloads/lab/LaboratorioFPGA/EjE_MaquinaDeEstados/maquinaestadotemplate_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=MaquinaEstadoTemplate_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  maquinaestadotemplate_tb

add wave *
view structure
view signals
run 2000 ns
