transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab12/muxdff.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab12/backpack.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab12/Lab12.vhd}

