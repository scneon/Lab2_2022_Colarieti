transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ParteA_7_1200mv_85c_slow.vho}

vcom -93 -work work {D:/Lab2_2022/ParteA/testbenchA.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=ParteA_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  testbenchA

add wave *
view structure
view signals
run -all
