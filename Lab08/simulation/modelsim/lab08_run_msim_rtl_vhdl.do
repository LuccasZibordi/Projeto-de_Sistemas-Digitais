transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab08/SomadorParcial_pkg.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab08/somap.vhd}
vcom -2008 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab08/lab08.vhd}

