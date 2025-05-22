-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/05/2025 16:44:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projeto1 IS
    PORT (
	sw : IN std_logic_vector(10 DOWNTO 0);
	LEDR : OUT std_logic_vector(5 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END projeto1;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \invertendo_e_somandoum|c~0_combout\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \subtraindo|c~1_combout\ : std_logic;
SIGNAL \subtraindo|c~0_combout\ : std_logic;
SIGNAL \invertendo_e_somandoum|soma~0_combout\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \subtraindo|c[2]~2_combout\ : std_logic;
SIGNAL \sw[10]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \overflowsub~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \somando|soma[3]~0_combout\ : std_logic;
SIGNAL \multiplicando|somador2|cout~0_combout\ : std_logic;
SIGNAL \multiplicando|somador2|soma~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \somando|c[1]~0_combout\ : std_logic;
SIGNAL \somando|overflow~0_combout\ : std_logic;
SIGNAL \somando|overflow~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \comparando|AgtB~0_combout\ : std_logic;
SIGNAL \comparando|AgtB~1_combout\ : std_logic;
SIGNAL \comparando|AgtB~2_combout\ : std_logic;
SIGNAL \comparando|AeqB~0_combout\ : std_logic;
SIGNAL \comparando|AeqB~combout\ : std_logic;
SIGNAL \comparando|AltB~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \multiplicando|somador1|soma~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \subtraindo|soma\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \somando|soma\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \comparando|ALT_INV_AltB~0_combout\ : std_logic;
SIGNAL \comparando|ALT_INV_AeqB~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sw <= sw;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX4 <= ww_HEX4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\comparando|ALT_INV_AltB~0_combout\ <= NOT \comparando|AltB~0_combout\;
\comparando|ALT_INV_AeqB~combout\ <= NOT \comparando|AeqB~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparando|AgtB~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparando|ALT_INV_AltB~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparando|ALT_INV_AeqB~combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux18~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux25~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux32~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOIBUF_X115_Y13_N8
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\sw[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\sw[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X109_Y17_N2
\invertendo_e_somandoum|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \invertendo_e_somandoum|c~0_combout\ = (\sw[3]~input_o\) # ((\sw[5]~input_o\) # (\sw[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[4]~input_o\,
	combout => \invertendo_e_somandoum|c~0_combout\);

-- Location: IOIBUF_X115_Y4_N22
\sw[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\sw[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X109_Y17_N30
\subtraindo|c~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \subtraindo|c~1_combout\ = (\sw[3]~input_o\ & (\sw[7]~input_o\ & ((\sw[8]~input_o\) # (!\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[8]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \subtraindo|c~1_combout\);

-- Location: LCCOMB_X109_Y17_N28
\subtraindo|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subtraindo|c~0_combout\ = (\sw[8]~input_o\ & (\sw[3]~input_o\ $ (\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[8]~input_o\,
	datac => \sw[4]~input_o\,
	combout => \subtraindo|c~0_combout\);

-- Location: LCCOMB_X109_Y17_N8
\invertendo_e_somandoum|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \invertendo_e_somandoum|soma~0_combout\ = \sw[5]~input_o\ $ (((\sw[3]~input_o\) # (\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[4]~input_o\,
	combout => \invertendo_e_somandoum|soma~0_combout\);

-- Location: IOIBUF_X115_Y16_N8
\sw[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: LCCOMB_X109_Y17_N18
\subtraindo|c[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \subtraindo|c[2]~2_combout\ = (\invertendo_e_somandoum|soma~0_combout\ & ((\subtraindo|c~1_combout\) # ((\subtraindo|c~0_combout\) # (\sw[9]~input_o\)))) # (!\invertendo_e_somandoum|soma~0_combout\ & (\sw[9]~input_o\ & ((\subtraindo|c~1_combout\) # 
-- (\subtraindo|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtraindo|c~1_combout\,
	datab => \subtraindo|c~0_combout\,
	datac => \invertendo_e_somandoum|soma~0_combout\,
	datad => \sw[9]~input_o\,
	combout => \subtraindo|c[2]~2_combout\);

-- Location: IOIBUF_X115_Y4_N15
\sw[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(10),
	o => \sw[10]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\sw[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LCCOMB_X110_Y17_N24
\overflowsub~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \overflowsub~0_combout\ = (\subtraindo|c[2]~2_combout\ & ((\sw[10]~input_o\ & (\invertendo_e_somandoum|c~0_combout\)) # (!\sw[10]~input_o\ & ((!\sw[6]~input_o\))))) # (!\subtraindo|c[2]~2_combout\ & ((\sw[10]~input_o\ & ((\sw[6]~input_o\))) # 
-- (!\sw[10]~input_o\ & (\invertendo_e_somandoum|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invertendo_e_somandoum|c~0_combout\,
	datab => \subtraindo|c[2]~2_combout\,
	datac => \sw[10]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \overflowsub~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X110_Y17_N18
\somando|soma[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somando|soma[3]~0_combout\ = \sw[10]~input_o\ $ (\sw[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[10]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \somando|soma[3]~0_combout\);

-- Location: LCCOMB_X114_Y17_N26
\multiplicando|somador2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicando|somador2|cout~0_combout\ = (\sw[4]~input_o\ & (\sw[10]~input_o\ & (\sw[3]~input_o\ & \sw[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[10]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \multiplicando|somador2|cout~0_combout\);

-- Location: LCCOMB_X109_Y17_N20
\multiplicando|somador2|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicando|somador2|soma~0_combout\ = (\sw[10]~input_o\ & (\sw[4]~input_o\ & ((!\sw[9]~input_o\) # (!\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[10]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \multiplicando|somador2|soma~0_combout\);

-- Location: LCCOMB_X110_Y17_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\sw[2]~input_o\ & (\somando|soma[3]~0_combout\ $ (\multiplicando|somador2|cout~0_combout\ $ (\multiplicando|somador2|soma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \somando|soma[3]~0_combout\,
	datac => \multiplicando|somador2|cout~0_combout\,
	datad => \multiplicando|somador2|soma~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X110_Y17_N30
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\sw[0]~input_o\ & (\overflowsub~0_combout\)) # (!\sw[0]~input_o\ & (((\sw[1]~input_o\ & \Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \overflowsub~0_combout\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X114_Y17_N16
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\sw[1]~input_o\ & \sw[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X109_Y17_N0
\somando|c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somando|c[1]~0_combout\ = (\sw[8]~input_o\ & ((\sw[4]~input_o\) # ((\sw[3]~input_o\ & \sw[7]~input_o\)))) # (!\sw[8]~input_o\ & (\sw[3]~input_o\ & (\sw[4]~input_o\ & \sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[8]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \somando|c[1]~0_combout\);

-- Location: LCCOMB_X109_Y17_N6
\somando|overflow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somando|overflow~0_combout\ = \sw[10]~input_o\ $ (((\somando|c[1]~0_combout\ & ((\sw[5]~input_o\) # (\sw[9]~input_o\))) # (!\somando|c[1]~0_combout\ & (\sw[5]~input_o\ & \sw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somando|c[1]~0_combout\,
	datab => \sw[10]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \somando|overflow~0_combout\);

-- Location: LCCOMB_X110_Y17_N14
\somando|overflow~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \somando|overflow~1_combout\ = (\somando|overflow~0_combout\ & (\sw[10]~input_o\ $ (!\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \somando|overflow~0_combout\,
	datac => \sw[10]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \somando|overflow~1_combout\);

-- Location: LCCOMB_X110_Y17_N16
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~1_combout\ & (((\Mux9~0_combout\)) # (!\sw[0]~input_o\))) # (!\Mux4~1_combout\ & (!\sw[0]~input_o\ & (\Mux9~0_combout\ & \somando|overflow~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \sw[0]~input_o\,
	datac => \Mux9~0_combout\,
	datad => \somando|overflow~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X109_Y17_N22
\comparando|AgtB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparando|AgtB~0_combout\ = (\sw[8]~input_o\ & (((!\sw[3]~input_o\ & \sw[7]~input_o\)) # (!\sw[4]~input_o\))) # (!\sw[8]~input_o\ & (!\sw[3]~input_o\ & (!\sw[4]~input_o\ & \sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[8]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \comparando|AgtB~0_combout\);

-- Location: LCCOMB_X109_Y17_N24
\comparando|AgtB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparando|AgtB~1_combout\ = (!\somando|soma[3]~0_combout\ & ((\comparando|AgtB~0_combout\ & ((\sw[9]~input_o\) # (!\sw[5]~input_o\))) # (!\comparando|AgtB~0_combout\ & (!\sw[5]~input_o\ & \sw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparando|AgtB~0_combout\,
	datab => \somando|soma[3]~0_combout\,
	datac => \sw[5]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \comparando|AgtB~1_combout\);

-- Location: LCCOMB_X109_Y22_N24
\comparando|AgtB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparando|AgtB~2_combout\ = (\comparando|AgtB~1_combout\) # ((!\sw[6]~input_o\ & \sw[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparando|AgtB~1_combout\,
	datac => \sw[6]~input_o\,
	datad => \sw[10]~input_o\,
	combout => \comparando|AgtB~2_combout\);

-- Location: LCCOMB_X109_Y17_N10
\comparando|AeqB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparando|AeqB~0_combout\ = (\sw[4]~input_o\ & ((\sw[5]~input_o\ $ (\sw[9]~input_o\)) # (!\sw[8]~input_o\))) # (!\sw[4]~input_o\ & ((\sw[8]~input_o\) # (\sw[5]~input_o\ $ (\sw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[8]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \comparando|AeqB~0_combout\);

-- Location: LCCOMB_X109_Y17_N4
\comparando|AeqB\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparando|AeqB~combout\ = (\comparando|AeqB~0_combout\) # ((\somando|soma[3]~0_combout\) # (\sw[3]~input_o\ $ (\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparando|AeqB~0_combout\,
	datab => \somando|soma[3]~0_combout\,
	datac => \sw[3]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \comparando|AeqB~combout\);

-- Location: LCCOMB_X109_Y22_N2
\comparando|AltB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comparando|AltB~0_combout\ = (\comparando|AgtB~1_combout\) # (((!\sw[6]~input_o\ & \sw[10]~input_o\)) # (!\comparando|AeqB~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comparando|AgtB~1_combout\,
	datab => \comparando|AeqB~combout\,
	datac => \sw[6]~input_o\,
	datad => \sw[10]~input_o\,
	combout => \comparando|AltB~0_combout\);

-- Location: LCCOMB_X110_Y17_N26
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\sw[2]~input_o\ & (\sw[0]~input_o\ & \sw[1]~input_o\)) # (!\sw[2]~input_o\ & ((!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X110_Y16_N0
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\) # (!\sw[2]~input_o\))) # (!\sw[1]~input_o\ & (!\sw[2]~input_o\ & \sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X110_Y16_N26
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\sw[0]~input_o\) # ((!\sw[1]~input_o\ & \sw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X114_Y17_N4
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\sw[1]~input_o\ & (\sw[2]~input_o\ & \sw[0]~input_o\)) # (!\sw[1]~input_o\ & (\sw[2]~input_o\ $ (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X114_Y17_N22
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\sw[1]~input_o\ & (!\sw[2]~input_o\ & !\sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X114_Y17_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\sw[1]~input_o\ $ (!\sw[0]~input_o\)) # (!\sw[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X114_Y17_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\sw[1]~input_o\ & (\sw[2]~input_o\ $ (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X114_Y20_N16
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\sw[3]~input_o\ & ((\sw[6]~input_o\) # (\sw[5]~input_o\ $ (\sw[4]~input_o\)))) # (!\sw[3]~input_o\ & ((\sw[4]~input_o\) # (\sw[6]~input_o\ $ (\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X109_Y22_N12
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\sw[3]~input_o\ & (\sw[6]~input_o\ $ (((\sw[4]~input_o\) # (!\sw[5]~input_o\))))) # (!\sw[3]~input_o\ & (!\sw[5]~input_o\ & (!\sw[6]~input_o\ & \sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X109_Y22_N30
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\sw[4]~input_o\ & (\sw[3]~input_o\ & ((!\sw[6]~input_o\)))) # (!\sw[4]~input_o\ & ((\sw[5]~input_o\ & ((!\sw[6]~input_o\))) # (!\sw[5]~input_o\ & (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X114_Y20_N18
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\sw[3]~input_o\ & ((\sw[5]~input_o\ $ (!\sw[4]~input_o\)))) # (!\sw[3]~input_o\ & ((\sw[6]~input_o\ & (!\sw[5]~input_o\ & \sw[4]~input_o\)) # (!\sw[6]~input_o\ & (\sw[5]~input_o\ & !\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X114_Y20_N4
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\sw[6]~input_o\ & (\sw[5]~input_o\ & ((\sw[4]~input_o\) # (!\sw[3]~input_o\)))) # (!\sw[6]~input_o\ & (!\sw[5]~input_o\ & (\sw[4]~input_o\ & !\sw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X114_Y20_N14
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\sw[6]~input_o\ & ((\sw[3]~input_o\ & ((\sw[4]~input_o\))) # (!\sw[3]~input_o\ & (\sw[5]~input_o\)))) # (!\sw[6]~input_o\ & (\sw[5]~input_o\ & (\sw[4]~input_o\ $ (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X109_Y22_N0
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\sw[5]~input_o\ & (!\sw[4]~input_o\ & (\sw[3]~input_o\ $ (!\sw[6]~input_o\)))) # (!\sw[5]~input_o\ & (\sw[3]~input_o\ & (\sw[6]~input_o\ $ (!\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X114_Y17_N20
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\sw[7]~input_o\ & ((\sw[10]~input_o\) # (\sw[9]~input_o\ $ (\sw[8]~input_o\)))) # (!\sw[7]~input_o\ & ((\sw[8]~input_o\) # (\sw[9]~input_o\ $ (\sw[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[10]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X113_Y15_N0
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\sw[9]~input_o\ & (\sw[7]~input_o\ & (\sw[10]~input_o\ $ (\sw[8]~input_o\)))) # (!\sw[9]~input_o\ & (!\sw[10]~input_o\ & ((\sw[8]~input_o\) # (\sw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[10]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X113_Y15_N10
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\sw[8]~input_o\ & (((!\sw[10]~input_o\ & \sw[7]~input_o\)))) # (!\sw[8]~input_o\ & ((\sw[9]~input_o\ & (!\sw[10]~input_o\)) # (!\sw[9]~input_o\ & ((\sw[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[10]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X113_Y15_N20
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\sw[7]~input_o\ & (\sw[9]~input_o\ $ (((!\sw[8]~input_o\))))) # (!\sw[7]~input_o\ & ((\sw[9]~input_o\ & (!\sw[10]~input_o\ & !\sw[8]~input_o\)) # (!\sw[9]~input_o\ & (\sw[10]~input_o\ & \sw[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[10]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X113_Y15_N6
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\sw[9]~input_o\ & (\sw[10]~input_o\ & ((\sw[8]~input_o\) # (!\sw[7]~input_o\)))) # (!\sw[9]~input_o\ & (!\sw[10]~input_o\ & (\sw[8]~input_o\ & !\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[10]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X113_Y15_N24
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\sw[10]~input_o\ & ((\sw[7]~input_o\ & ((\sw[8]~input_o\))) # (!\sw[7]~input_o\ & (\sw[9]~input_o\)))) # (!\sw[10]~input_o\ & (\sw[9]~input_o\ & (\sw[8]~input_o\ $ (\sw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[10]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\sw[9]~input_o\ & (!\sw[8]~input_o\ & (\sw[10]~input_o\ $ (!\sw[7]~input_o\)))) # (!\sw[9]~input_o\ & (\sw[7]~input_o\ & (\sw[10]~input_o\ $ (!\sw[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[10]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X109_Y17_N12
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = \sw[8]~input_o\ $ (\sw[4]~input_o\ $ (((\sw[3]~input_o\ & !\sw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[8]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X114_Y17_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ((\sw[1]~input_o\ & !\sw[0]~input_o\)) # (!\sw[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X110_Y17_N22
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sw[8]~input_o\ & (\sw[0]~input_o\ & \sw[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[8]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X114_Y17_N2
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\sw[2]~input_o\ & ((\sw[1]~input_o\) # (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X110_Y17_N12
\multiplicando|somador1|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplicando|somador1|soma~0_combout\ = (\sw[10]~input_o\ & (\sw[3]~input_o\ $ (((\sw[9]~input_o\ & \sw[4]~input_o\))))) # (!\sw[10]~input_o\ & (\sw[9]~input_o\ & ((\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \multiplicando|somador1|soma~0_combout\);

-- Location: LCCOMB_X110_Y17_N8
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux0~0_combout\ & ((\Mux0~1_combout\ & ((\multiplicando|somador1|soma~0_combout\))) # (!\Mux0~1_combout\ & (\Mux2~0_combout\)))) # (!\Mux0~0_combout\ & (((!\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux0~1_combout\,
	datad => \multiplicando|somador1|soma~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X110_Y17_N4
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux9~0_combout\ & (\Mux2~4_combout\ $ (((\Mux2~1_combout\ & \sw[3]~input_o\))))) # (!\Mux9~0_combout\ & (((\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux9~0_combout\,
	datad => \sw[3]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X110_Y17_N2
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\sw[0]~input_o\ & ((!\sw[4]~input_o\))) # (!\sw[0]~input_o\ & ((\sw[8]~input_o\) # (\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[8]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X110_Y17_N20
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\sw[2]~input_o\ & (\Mux2~5_combout\)) # (!\sw[2]~input_o\ & ((\sw[1]~input_o\ & ((\Mux2~2_combout\))) # (!\sw[1]~input_o\ & (\Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \Mux2~5_combout\,
	datac => \sw[1]~input_o\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X113_Y15_N16
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\sw[5]~input_o\ & (!\sw[0]~input_o\)) # (!\sw[5]~input_o\ & ((\sw[0]~input_o\) # (\sw[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[5]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X109_Y17_N14
\subtraindo|soma[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \subtraindo|soma\(2) = \invertendo_e_somandoum|soma~0_combout\ $ (\sw[9]~input_o\ $ (((\subtraindo|c~1_combout\) # (\subtraindo|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtraindo|c~1_combout\,
	datab => \subtraindo|c~0_combout\,
	datac => \invertendo_e_somandoum|soma~0_combout\,
	datad => \sw[9]~input_o\,
	combout => \subtraindo|soma\(2));

-- Location: LCCOMB_X109_Y17_N16
\somando|soma[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \somando|soma\(2) = \somando|c[1]~0_combout\ $ (\sw[5]~input_o\ $ (\sw[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \somando|c[1]~0_combout\,
	datac => \sw[5]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \somando|soma\(2));

-- Location: LCCOMB_X111_Y17_N24
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sw[5]~input_o\ & (\sw[9]~input_o\ & \sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[9]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X110_Y17_N6
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux0~0_combout\ & ((\Mux0~1_combout\ & ((\multiplicando|somador2|soma~0_combout\))) # (!\Mux0~1_combout\ & (\Mux1~0_combout\)))) # (!\Mux0~0_combout\ & (((!\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux0~1_combout\,
	datad => \multiplicando|somador2|soma~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X110_Y17_N0
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux9~0_combout\ & ((\Mux1~1_combout\ & ((\somando|soma\(2)))) # (!\Mux1~1_combout\ & (\subtraindo|soma\(2))))) # (!\Mux9~0_combout\ & (((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtraindo|soma\(2),
	datab => \Mux9~0_combout\,
	datac => \somando|soma\(2),
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X113_Y15_N26
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\sw[1]~input_o\ & ((\sw[2]~input_o\ & ((\Mux1~2_combout\))) # (!\sw[2]~input_o\ & (\Mux1~3_combout\)))) # (!\sw[1]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \Mux1~3_combout\,
	datac => \sw[2]~input_o\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X114_Y17_N12
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\sw[0]~input_o\ & (\sw[10]~input_o\ & \sw[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[10]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X114_Y17_N6
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~1_combout\ & (((\multiplicando|somador2|cout~0_combout\ & \Mux0~0_combout\)))) # (!\Mux0~1_combout\ & ((\Mux0~2_combout\) # ((!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux0~1_combout\,
	datac => \multiplicando|somador2|cout~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X110_Y17_N10
\subtraindo|soma[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \subtraindo|soma\(3) = \invertendo_e_somandoum|c~0_combout\ $ (\subtraindo|c[2]~2_combout\ $ (\sw[10]~input_o\ $ (\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \invertendo_e_somandoum|c~0_combout\,
	datab => \subtraindo|c[2]~2_combout\,
	datac => \sw[10]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \subtraindo|soma\(3));

-- Location: LCCOMB_X109_Y17_N26
\somando|soma[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \somando|soma\(3) = \somando|soma[3]~0_combout\ $ (((\somando|c[1]~0_combout\ & ((\sw[5]~input_o\) # (\sw[9]~input_o\))) # (!\somando|c[1]~0_combout\ & (\sw[5]~input_o\ & \sw[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somando|c[1]~0_combout\,
	datab => \somando|soma[3]~0_combout\,
	datac => \sw[5]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \somando|soma\(3));

-- Location: LCCOMB_X114_Y17_N8
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\ & (((\somando|soma\(3)) # (!\Mux9~0_combout\)))) # (!\Mux0~3_combout\ & (\subtraindo|soma\(3) & ((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \subtraindo|soma\(3),
	datac => \somando|soma\(3),
	datad => \Mux9~0_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X114_Y17_N18
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\sw[0]~input_o\ & ((!\sw[6]~input_o\))) # (!\sw[0]~input_o\ & ((\sw[10]~input_o\) # (\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[10]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X114_Y17_N28
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\sw[1]~input_o\ & ((\sw[2]~input_o\ & (\Mux0~4_combout\)) # (!\sw[2]~input_o\ & ((\Mux0~5_combout\))))) # (!\sw[1]~input_o\ & (\Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \Mux0~4_combout\,
	datac => \sw[2]~input_o\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X113_Y15_N12
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\sw[7]~input_o\ & (\sw[1]~input_o\ $ (((\sw[3]~input_o\ & \sw[0]~input_o\))))) # (!\sw[7]~input_o\ & (\sw[1]~input_o\ & (\sw[3]~input_o\ $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X113_Y15_N18
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sw[1]~input_o\ & (\sw[3]~input_o\ & (!\sw[0]~input_o\))) # (!\sw[1]~input_o\ & (\sw[3]~input_o\ $ (((\sw[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X113_Y15_N22
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\sw[2]~input_o\ & (\Mux3~0_combout\ & ((\sw[9]~input_o\) # (!\Mux3~1_combout\)))) # (!\sw[2]~input_o\ & (\Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \sw[2]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X87_Y4_N24
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mux3~2_combout\ & ((\Mux0~6_combout\) # (\Mux2~3_combout\ $ (\Mux1~4_combout\)))) # (!\Mux3~2_combout\ & ((\Mux2~3_combout\) # (\Mux1~4_combout\ $ (\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~4_combout\,
	datac => \Mux0~6_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X87_Y4_N18
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux2~3_combout\ & (!\Mux0~6_combout\ & ((\Mux3~2_combout\) # (!\Mux1~4_combout\)))) # (!\Mux2~3_combout\ & (\Mux3~2_combout\ & (\Mux1~4_combout\ $ (!\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~4_combout\,
	datac => \Mux0~6_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X87_Y4_N4
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux2~3_combout\ & (((!\Mux0~6_combout\ & \Mux3~2_combout\)))) # (!\Mux2~3_combout\ & ((\Mux1~4_combout\ & (!\Mux0~6_combout\)) # (!\Mux1~4_combout\ & ((\Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~4_combout\,
	datac => \Mux0~6_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X87_Y4_N22
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux3~2_combout\ & (\Mux2~3_combout\ $ ((!\Mux1~4_combout\)))) # (!\Mux3~2_combout\ & ((\Mux2~3_combout\ & (!\Mux1~4_combout\ & \Mux0~6_combout\)) # (!\Mux2~3_combout\ & (\Mux1~4_combout\ & !\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~4_combout\,
	datac => \Mux0~6_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X87_Y4_N8
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux1~4_combout\ & (\Mux0~6_combout\ & ((\Mux2~3_combout\) # (!\Mux3~2_combout\)))) # (!\Mux1~4_combout\ & (\Mux2~3_combout\ & (!\Mux0~6_combout\ & !\Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~4_combout\,
	datac => \Mux0~6_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X87_Y4_N26
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux2~3_combout\ & ((\Mux3~2_combout\ & ((\Mux0~6_combout\))) # (!\Mux3~2_combout\ & (\Mux1~4_combout\)))) # (!\Mux2~3_combout\ & (\Mux1~4_combout\ & (\Mux0~6_combout\ $ (\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~4_combout\,
	datac => \Mux0~6_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X87_Y4_N28
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux1~4_combout\ & (!\Mux2~3_combout\ & (\Mux0~6_combout\ $ (!\Mux3~2_combout\)))) # (!\Mux1~4_combout\ & (\Mux3~2_combout\ & (\Mux2~3_combout\ $ (!\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux1~4_combout\,
	datac => \Mux0~6_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux26~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;
END structure;


