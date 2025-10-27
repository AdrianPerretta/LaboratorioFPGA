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

-- DATE "10/26/2025 17:34:53"

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

ENTITY 	mult2bits IS
    PORT (
	R3 : OUT std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	R2 : OUT std_logic;
	R1 : OUT std_logic;
	R0 : OUT std_logic
	);
END mult2bits;

-- Design Ports Information
-- R3	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mult2bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R3 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_R2 : std_logic;
SIGNAL ww_R1 : std_logic;
SIGNAL ww_R0 : std_logic;
SIGNAL \R3~output_o\ : std_logic;
SIGNAL \R2~output_o\ : std_logic;
SIGNAL \R1~output_o\ : std_logic;
SIGNAL \R0~output_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst7|and2~0_combout\ : std_logic;
SIGNAL \inst7|S~0_combout\ : std_logic;
SIGNAL \inst8|S~combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;

BEGIN

R3 <= ww_R3;
ww_A1 <= A1;
ww_B1 <= B1;
ww_A0 <= A0;
ww_B0 <= B0;
R2 <= ww_R2;
R1 <= ww_R1;
R0 <= ww_R0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X60_Y0_N9
\R3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|and2~0_combout\,
	devoe => ww_devoe,
	o => \R3~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\R2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|S~0_combout\,
	devoe => ww_devoe,
	o => \R2~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\R1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|S~combout\,
	devoe => ww_devoe,
	o => \R1~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\R0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => \R0~output_o\);

-- Location: IOIBUF_X56_Y0_N22
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X80_Y1_N16
\inst7|and2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|and2~0_combout\ = (\A0~input_o\ & (\A1~input_o\ & (\B0~input_o\ & \B1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \A1~input_o\,
	datac => \B0~input_o\,
	datad => \B1~input_o\,
	combout => \inst7|and2~0_combout\);

-- Location: LCCOMB_X80_Y1_N10
\inst7|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|S~0_combout\ = (\A1~input_o\ & (\B1~input_o\ & ((!\B0~input_o\) # (!\A0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \A1~input_o\,
	datac => \B0~input_o\,
	datad => \B1~input_o\,
	combout => \inst7|S~0_combout\);

-- Location: LCCOMB_X80_Y1_N4
\inst8|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|S~combout\ = (\A0~input_o\ & (\B1~input_o\ $ (((\A1~input_o\ & \B0~input_o\))))) # (!\A0~input_o\ & (\A1~input_o\ & (\B0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \A1~input_o\,
	datac => \B0~input_o\,
	datad => \B1~input_o\,
	combout => \inst8|S~combout\);

-- Location: LCCOMB_X80_Y1_N6
inst2 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\A0~input_o\ & \B0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datac => \B0~input_o\,
	combout => \inst2~combout\);

ww_R3 <= \R3~output_o\;

ww_R2 <= \R2~output_o\;

ww_R1 <= \R1~output_o\;

ww_R0 <= \R0~output_o\;
END structure;


