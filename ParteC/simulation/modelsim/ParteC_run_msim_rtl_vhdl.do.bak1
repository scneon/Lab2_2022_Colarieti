transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Lab2_2022/ParteC/sumador_completo.vhd}
vcom -93 -work work {D:/Lab2_2022/ParteC/ParteB_FFD.vhd}

vcom -93 -work work {D:/Lab2_2022/ParteC/Block1.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Block1

add wave *
view structure
view signals
run -all
