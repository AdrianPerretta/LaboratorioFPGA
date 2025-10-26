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

-- DATE "10/25/2025 19:38:37"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multModuloCa2 IS
    PORT (
	A : IN std_logic_vector(1 DOWNTO 0);
	B : IN std_logic_vector(1 DOWNTO 0);
	RM : OUT std_logic_vector(3 DOWNTO 0);
	RC : OUT std_logic_vector(3 DOWNTO 0)
	);
END multModuloCa2;

-- Design Ports Information
-- RM[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RM[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RM[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RM[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multModuloCa2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RC : std_logic_vector(3 DOWNTO 0);
SIGNAL \RM[0]~output_o\ : std_logic;
SIGNAL \RM[1]~output_o\ : std_logic;
SIGNAL \RM[2]~output_o\ : std_logic;
SIGNAL \RM[3]~output_o\ : std_logic;
SIGNAL \RC[0]~output_o\ : std_logic;
SIGNAL \RC[1]~output_o\ : std_logic;
SIGNAL \RC[2]~output_o\ : std_logic;
SIGNAL \RC[3]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|result[0]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|result[1]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[2]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[3]~3_combout\ : std_logic;
SIGNAL \Mult1|mult_core|result[2]~0_combout\ : std_logic;
SIGNAL \Mult1|mult_core|result[3]~1_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
RM <= ww_RM;
RC <= ww_RC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N9
\RM[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[0]~0_combout\,
	devoe => ww_devoe,
	o => \RM[0]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\RM[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[1]~1_combout\,
	devoe => ww_devoe,
	o => \RM[1]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\RM[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[2]~2_combout\,
	devoe => ww_devoe,
	o => \RM[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\RM[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[3]~3_combout\,
	devoe => ww_devoe,
	o => \RM[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\RC[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[0]~0_combout\,
	devoe => ww_devoe,
	o => \RC[0]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\RC[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[1]~1_combout\,
	devoe => ww_devoe,
	o => \RC[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\RC[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1|mult_core|result[2]~0_combout\,
	devoe => ww_devoe,
	o => \RC[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\RC[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1|mult_core|result[3]~1_combout\,
	devoe => ww_devoe,
	o => \RC[3]~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X13_Y1_N8
\Mult0|mult_core|result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[0]~0_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|mult_core|result[0]~0_combout\);

-- Location: IOIBUF_X20_Y0_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X13_Y1_N2
\Mult0|mult_core|result[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[1]~1_combout\ = (\B[1]~input_o\ & (\A[0]~input_o\ $ (((\A[1]~input_o\ & \B[0]~input_o\))))) # (!\B[1]~input_o\ & (((\A[1]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|mult_core|result[1]~1_combout\);

-- Location: LCCOMB_X13_Y1_N4
\Mult0|mult_core|result[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[2]~2_combout\ = (\B[1]~input_o\ & (\A[1]~input_o\ & ((!\B[0]~input_o\) # (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X13_Y1_N14
\Mult0|mult_core|result[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[3]~3_combout\ = (\B[1]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|mult_core|result[3]~3_combout\);

-- Location: LCCOMB_X13_Y1_N24
\Mult1|mult_core|result[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[2]~0_combout\ = (\B[1]~input_o\ & ((\A[0]~input_o\ & (!\A[1]~input_o\)) # (!\A[0]~input_o\ & (\A[1]~input_o\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\A[1]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult1|mult_core|result[2]~0_combout\);

-- Location: LCCOMB_X13_Y1_N26
\Mult1|mult_core|result[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[3]~1_combout\ = (\B[1]~input_o\ & (\A[0]~input_o\ & (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (((\A[1]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult1|mult_core|result[3]~1_combout\);

ww_RM(0) <= \RM[0]~output_o\;

ww_RM(1) <= \RM[1]~output_o\;

ww_RM(2) <= \RM[2]~output_o\;

ww_RM(3) <= \RM[3]~output_o\;

ww_RC(0) <= \RC[0]~output_o\;

ww_RC(1) <= \RC[1]~output_o\;

ww_RC(2) <= \RC[2]~output_o\;

ww_RC(3) <= \RC[3]~output_o\;
END structure;


