transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab10/mux21.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab10/pakote.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab10/pacote.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab10/oitoparaum.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab10/Lab10.vhd}

