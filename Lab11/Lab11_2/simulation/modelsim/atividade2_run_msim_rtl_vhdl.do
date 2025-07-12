transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab11_2/flipflopR.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab11_2/pacoteffA.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab11_2/atividade2.vhd}

