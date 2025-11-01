-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/31/2025 23:11:16"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FullAdder IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	CIN : IN std_logic;
	S : OUT std_logic;
	COUT : OUT std_logic
	);
END FullAdder;

-- Design Ports Information
-- S	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FullAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_CIN : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \COUT~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_CIN <= CIN;
S <= ww_S;
COUT <= ww_COUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X74_Y0_N23
\S~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\COUT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUT~0_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOIBUF_X72_Y0_N8
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\CIN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIN,
	o => \CIN~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X80_Y1_N8
\S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \A~input_o\ $ (\CIN~input_o\ $ (\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \CIN~input_o\,
	datad => \B~input_o\,
	combout => \S~0_combout\);

-- Location: LCCOMB_X80_Y1_N2
\COUT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUT~0_combout\ = (\A~input_o\ & ((\CIN~input_o\) # (\B~input_o\))) # (!\A~input_o\ & (\CIN~input_o\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \CIN~input_o\,
	datad => \B~input_o\,
	combout => \COUT~0_combout\);

ww_S <= \S~output_o\;

ww_COUT <= \COUT~output_o\;
END structure;


