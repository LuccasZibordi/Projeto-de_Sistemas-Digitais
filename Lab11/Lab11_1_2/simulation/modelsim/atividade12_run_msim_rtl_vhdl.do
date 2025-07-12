transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab11_1/flipflopdescidaD.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab11_1/flipflopsubidaD.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab11_1/late.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab11_1/pacoteffd.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab11_1/atividade12.vhd}

