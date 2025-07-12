transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab12_2/muxdffatv2.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab12_2/mochila.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab12_2/shift4.vhd}
vcom -93 -work work {C:/Users/lucca/Projetos 3 semestre/projetos_Quartus/Lab12_2/Lab12_2.vhd}

