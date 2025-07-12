transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab11_2_2/flipflopS.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab11_2_2/pacoteS.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab11_2_2/atividade2_2.vhd}

