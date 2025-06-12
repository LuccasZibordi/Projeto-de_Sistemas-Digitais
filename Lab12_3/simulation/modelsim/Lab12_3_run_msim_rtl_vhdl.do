transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab12_3/upcount.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab12_3/wardrobe.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab12_3/Lab12_3.vhd}

