transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab10_2/dec24.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab10_2/pkg.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab10_2/paquote.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab10_2/dec416.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab10_2/atividade1.vhd}

