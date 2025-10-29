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

-- DATE "10/28/2025 21:48:03"

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

ENTITY 	maquinaestado IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	x : IN std_logic;
	z0 : OUT std_logic;
	z1 : OUT std_logic;
	z2 : OUT std_logic;
	z3 : OUT std_logic
	);
END maquinaestado;

-- Design Ports Information
-- z0	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z1	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z2	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z3	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF maquinaestado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_z0 : std_logic;
SIGNAL ww_z1 : std_logic;
SIGNAL ww_z2 : std_logic;
SIGNAL ww_z3 : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \z0~output_o\ : std_logic;
SIGNAL \z1~output_o\ : std_logic;
SIGNAL \z2~output_o\ : std_logic;
SIGNAL \z3~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \reg_fstate.G~0_combout\ : std_logic;
SIGNAL \fstate.G~q\ : std_logic;
SIGNAL \reg_fstate.A~0_combout\ : std_logic;
SIGNAL \fstate.A~q\ : std_logic;
SIGNAL \reg_fstate.D~0_combout\ : std_logic;
SIGNAL \fstate.D~q\ : std_logic;
SIGNAL \reg_fstate.E~0_combout\ : std_logic;
SIGNAL \fstate.E~q\ : std_logic;
SIGNAL \reg_fstate.C~0_combout\ : std_logic;
SIGNAL \fstate.C~q\ : std_logic;
SIGNAL \reg_fstate.B~0_combout\ : std_logic;
SIGNAL \fstate.B~q\ : std_logic;
SIGNAL \reg_fstate.F~0_combout\ : std_logic;
SIGNAL \fstate.F~q\ : std_logic;
SIGNAL \z0~0_combout\ : std_logic;
SIGNAL \z1~0_combout\ : std_logic;
SIGNAL \z2~0_combout\ : std_logic;
SIGNAL \z3~0_combout\ : std_logic;
SIGNAL \ALT_INV_z3~0_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_x <= x;
z0 <= ww_z0;
z1 <= ww_z1;
z2 <= ww_z2;
z3 <= ww_z3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_z3~0_combout\ <= NOT \z3~0_combout\;

-- Location: IOIBUF_X58_Y0_N22
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G18
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOOBUF_X83_Y0_N16
\z0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z0~0_combout\,
	devoe => ww_devoe,
	o => \z0~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\z1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z1~0_combout\,
	devoe => ww_devoe,
	o => \z1~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\z2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z2~0_combout\,
	devoe => ww_devoe,
	o => \z2~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\z3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z3~0_combout\,
	devoe => ww_devoe,
	o => \z3~output_o\);

-- Location: IOIBUF_X85_Y0_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X73_Y1_N4
\reg_fstate.G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_fstate.G~0_combout\ = (!\reset~input_o\ & (\x~input_o\ & \fstate.B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.B~q\,
	combout => \reg_fstate.G~0_combout\);

-- Location: FF_X73_Y1_N5
\fstate.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.G~q\);

-- Location: LCCOMB_X73_Y1_N24
\reg_fstate.A~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_fstate.A~0_combout\ = (!\reset~input_o\ & (!\fstate.G~q\ & !\fstate.F~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \fstate.G~q\,
	datad => \fstate.F~q\,
	combout => \reg_fstate.A~0_combout\);

-- Location: FF_X73_Y1_N25
\fstate.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.A~q\);

-- Location: LCCOMB_X73_Y1_N18
\reg_fstate.D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_fstate.D~0_combout\ = (!\reset~input_o\ & (\x~input_o\ & !\fstate.A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.A~q\,
	combout => \reg_fstate.D~0_combout\);

-- Location: FF_X73_Y1_N19
\fstate.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.D~q\);

-- Location: LCCOMB_X73_Y1_N8
\reg_fstate.E~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_fstate.E~0_combout\ = (!\reset~input_o\ & \fstate.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \fstate.D~q\,
	combout => \reg_fstate.E~0_combout\);

-- Location: FF_X73_Y1_N9
\fstate.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.E~q\);

-- Location: LCCOMB_X73_Y1_N6
\reg_fstate.C~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_fstate.C~0_combout\ = (!\reset~input_o\ & (!\x~input_o\ & !\fstate.A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.A~q\,
	combout => \reg_fstate.C~0_combout\);

-- Location: FF_X73_Y1_N7
\fstate.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.C~q\);

-- Location: LCCOMB_X73_Y1_N16
\reg_fstate.B~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_fstate.B~0_combout\ = (!\reset~input_o\ & ((\fstate.E~q\) # (\fstate.C~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \fstate.E~q\,
	datad => \fstate.C~q\,
	combout => \reg_fstate.B~0_combout\);

-- Location: FF_X73_Y1_N17
\fstate.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.B~q\);

-- Location: LCCOMB_X73_Y1_N10
\reg_fstate.F~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_fstate.F~0_combout\ = (!\reset~input_o\ & (!\x~input_o\ & \fstate.B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \x~input_o\,
	datad => \fstate.B~q\,
	combout => \reg_fstate.F~0_combout\);

-- Location: FF_X73_Y1_N11
\fstate.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_fstate.F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.F~q\);

-- Location: LCCOMB_X73_Y1_N28
\z0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \z0~0_combout\ = (!\reset~input_o\ & ((\fstate.F~q\) # (\fstate.B~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fstate.F~q\,
	datac => \reset~input_o\,
	datad => \fstate.B~q\,
	combout => \z0~0_combout\);

-- Location: LCCOMB_X73_Y1_N30
\z1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \z1~0_combout\ = (!\reset~input_o\ & ((\fstate.G~q\) # ((\fstate.C~q\) # (\fstate.B~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.G~q\,
	datab => \fstate.C~q\,
	datac => \reset~input_o\,
	datad => \fstate.B~q\,
	combout => \z1~0_combout\);

-- Location: LCCOMB_X73_Y1_N20
\z2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \z2~0_combout\ = (\fstate.A~q\ & (!\reset~input_o\ & (!\fstate.F~q\ & !\fstate.D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.A~q\,
	datab => \reset~input_o\,
	datac => \fstate.F~q\,
	datad => \fstate.D~q\,
	combout => \z2~0_combout\);

-- Location: LCCOMB_X73_Y1_N26
\z3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \z3~0_combout\ = ((\fstate.C~q\) # (\reset~input_o\)) # (!\fstate.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.A~q\,
	datab => \fstate.C~q\,
	datac => \reset~input_o\,
	combout => \z3~0_combout\);

ww_z0 <= \z0~output_o\;

ww_z1 <= \z1~output_o\;

ww_z2 <= \z2~output_o\;

ww_z3 <= \z3~output_o\;
END structure;


