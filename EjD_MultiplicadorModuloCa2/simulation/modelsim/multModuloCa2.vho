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

-- DATE "10/31/2025 14:25:52"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multModuloCa2 IS
    PORT (
	A : IN std_logic_vector(1 DOWNTO 0);
	B : IN std_logic_vector(1 DOWNTO 0);
	RM : OUT IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	RC : OUT IEEE.NUMERIC_STD.signed(3 DOWNTO 0)
	);
END multModuloCa2;

-- Design Ports Information
-- RM[0]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RM[1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RM[2]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RM[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[1]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
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
RM <= IEEE.NUMERIC_STD.UNSIGNED(ww_RM);
RC <= IEEE.NUMERIC_STD.SIGNED(ww_RC);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X20_Y0_N23
\RM[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[0]~0_combout\,
	devoe => ww_devoe,
	o => \RM[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\RM[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[1]~1_combout\,
	devoe => ww_devoe,
	o => \RM[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\RM[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[2]~2_combout\,
	devoe => ww_devoe,
	o => \RM[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\RM[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[3]~3_combout\,
	devoe => ww_devoe,
	o => \RM[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\RC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[0]~0_combout\,
	devoe => ww_devoe,
	o => \RC[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\RC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|result[1]~1_combout\,
	devoe => ww_devoe,
	o => \RC[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\RC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1|mult_core|result[2]~0_combout\,
	devoe => ww_devoe,
	o => \RC[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\RC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1|mult_core|result[3]~1_combout\,
	devoe => ww_devoe,
	o => \RC[3]~output_o\);

-- Location: IOIBUF_X18_Y0_N22
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X19_Y1_N24
\Mult0|mult_core|result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[0]~0_combout\ = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \Mult0|mult_core|result[0]~0_combout\);

-- Location: IOIBUF_X20_Y0_N8
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X19_Y1_N2
\Mult0|mult_core|result[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[1]~1_combout\ = (\B[1]~input_o\ & (\A[0]~input_o\ $ (((\B[0]~input_o\ & \A[1]~input_o\))))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mult0|mult_core|result[1]~1_combout\);

-- Location: LCCOMB_X19_Y1_N28
\Mult0|mult_core|result[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[2]~2_combout\ = (\B[1]~input_o\ & (\A[1]~input_o\ & ((!\A[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mult0|mult_core|result[2]~2_combout\);

-- Location: LCCOMB_X19_Y1_N30
\Mult0|mult_core|result[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[3]~3_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mult0|mult_core|result[3]~3_combout\);

-- Location: LCCOMB_X19_Y1_N0
\Mult1|mult_core|result[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[2]~0_combout\ = (\B[1]~input_o\ & ((\A[0]~input_o\ & ((!\A[1]~input_o\))) # (!\A[0]~input_o\ & (!\B[0]~input_o\ & \A[1]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mult1|mult_core|result[2]~0_combout\);

-- Location: LCCOMB_X19_Y1_N26
\Mult1|mult_core|result[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|result[3]~1_combout\ = (\B[1]~input_o\ & (((\A[0]~input_o\ & !\A[1]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
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


