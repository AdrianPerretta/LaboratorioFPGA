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

-- DATE "10/28/2025 22:44:52"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MaquinaEstadoTemplate IS
    PORT (
	clk : IN std_logic;
	input : IN std_logic;
	reset : IN std_logic;
	output : OUT std_logic_vector(3 DOWNTO 0)
	);
END MaquinaEstadoTemplate;

-- Design Ports Information
-- output[0]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MaquinaEstadoTemplate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_input : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \input~input_o\ : std_logic;
SIGNAL \state.state_bit_0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.state_bit_0~q\ : std_logic;
SIGNAL \state.state_bit_1~0_combout\ : std_logic;
SIGNAL \state.state_bit_1~q\ : std_logic;
SIGNAL \state.state_bit_2~0_combout\ : std_logic;
SIGNAL \state.state_bit_2~q\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_output~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_input <= input;
ww_reset <= reset;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_output~1_combout\ <= NOT \output~1_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;

-- Location: IOIBUF_X58_Y0_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X60_Y0_N9
\output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_output~1_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOIBUF_X56_Y0_N22
\input~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input,
	o => \input~input_o\);

-- Location: LCCOMB_X73_Y1_N28
\state.state_bit_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_0~0_combout\ = (\state.state_bit_1~q\ & ((\state.state_bit_0~q\ $ (\state.state_bit_2~q\)))) # (!\state.state_bit_1~q\ & (!\state.state_bit_2~q\ & ((\state.state_bit_0~q\) # (!\input~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.state_bit_1~q\,
	datab => \input~input_o\,
	datac => \state.state_bit_0~q\,
	datad => \state.state_bit_2~q\,
	combout => \state.state_bit_0~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X73_Y1_N29
\state.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.state_bit_0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_0~q\);

-- Location: LCCOMB_X73_Y1_N10
\state.state_bit_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_1~0_combout\ = (!\state.state_bit_2~q\ & (((!\input~input_o\ & !\state.state_bit_1~q\)) # (!\state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~input_o\,
	datab => \state.state_bit_0~q\,
	datac => \state.state_bit_1~q\,
	datad => \state.state_bit_2~q\,
	combout => \state.state_bit_1~0_combout\);

-- Location: FF_X73_Y1_N11
\state.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.state_bit_1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_1~q\);

-- Location: LCCOMB_X73_Y1_N12
\state.state_bit_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_2~0_combout\ = (!\state.state_bit_2~q\ & (\state.state_bit_0~q\ $ (\state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.state_bit_0~q\,
	datac => \state.state_bit_2~q\,
	datad => \state.state_bit_1~q\,
	combout => \state.state_bit_2~0_combout\);

-- Location: FF_X73_Y1_N13
\state.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.state_bit_2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_2~q\);

-- Location: LCCOMB_X73_Y1_N22
\output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\state.state_bit_0~q\ & (\state.state_bit_2~q\ $ (!\state.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.state_bit_2~q\,
	datac => \state.state_bit_1~q\,
	datad => \state.state_bit_0~q\,
	combout => \output~0_combout\);

-- Location: LCCOMB_X73_Y1_N20
WideOr1 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\state.state_bit_2~q\ & (!\state.state_bit_1~q\)) # (!\state.state_bit_2~q\ & ((\state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.state_bit_2~q\,
	datac => \state.state_bit_1~q\,
	datad => \state.state_bit_0~q\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X73_Y1_N26
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = \state.state_bit_0~q\ $ (((!\state.state_bit_1~q\) # (!\state.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.state_bit_2~q\,
	datac => \state.state_bit_1~q\,
	datad => \state.state_bit_0~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X73_Y1_N24
\output~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\state.state_bit_1~q\ & (!\state.state_bit_2~q\ & \state.state_bit_0~q\)) # (!\state.state_bit_1~q\ & ((!\state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.state_bit_2~q\,
	datac => \state.state_bit_1~q\,
	datad => \state.state_bit_0~q\,
	combout => \output~1_combout\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;
END structure;


