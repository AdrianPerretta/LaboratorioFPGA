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

-- DATE "10/31/2025 14:11:25"

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

ENTITY 	mult2bitscs IS
    PORT (
	R3 : OUT std_logic;
	CLEAR : IN std_logic;
	CLK : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	R2 : OUT std_logic;
	R1 : OUT std_logic;
	R0 : OUT std_logic;
	BANDERA_CEROS : OUT std_logic;
	BANDERA_SIGNO : OUT std_logic
	);
END mult2bitscs;

-- Design Ports Information
-- R3	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BANDERA_CEROS	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BANDERA_SIGNO	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLEAR	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mult2bitscs IS
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
SIGNAL ww_CLEAR : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_R2 : std_logic;
SIGNAL ww_R1 : std_logic;
SIGNAL ww_R0 : std_logic;
SIGNAL ww_BANDERA_CEROS : std_logic;
SIGNAL ww_BANDERA_SIGNO : std_logic;
SIGNAL \CLEAR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R3~output_o\ : std_logic;
SIGNAL \R2~output_o\ : std_logic;
SIGNAL \R1~output_o\ : std_logic;
SIGNAL \R0~output_o\ : std_logic;
SIGNAL \BANDERA_CEROS~output_o\ : std_logic;
SIGNAL \BANDERA_SIGNO~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \inst21~feeder_combout\ : std_logic;
SIGNAL \CLEAR~input_o\ : std_logic;
SIGNAL \CLEAR~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst21~q\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst22~feeder_combout\ : std_logic;
SIGNAL \inst22~q\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst19~feeder_combout\ : std_logic;
SIGNAL \inst19~q\ : std_logic;
SIGNAL \inst28|S~0_combout\ : std_logic;
SIGNAL \inst15~q\ : std_logic;
SIGNAL \inst26|S~0_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;
SIGNAL \inst27|S~combout\ : std_logic;
SIGNAL \inst17~q\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst20~feeder_combout\ : std_logic;
SIGNAL \inst20~q\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst18~q\ : std_logic;
SIGNAL \inst30~0_combout\ : std_logic;

BEGIN

R3 <= ww_R3;
ww_CLEAR <= CLEAR;
ww_CLK <= CLK;
ww_A1 <= A1;
ww_A0 <= A0;
ww_B1 <= B1;
ww_B0 <= B0;
R2 <= ww_R2;
R1 <= ww_R1;
R0 <= ww_R0;
BANDERA_CEROS <= ww_BANDERA_CEROS;
BANDERA_SIGNO <= ww_BANDERA_SIGNO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLEAR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLEAR~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X94_Y0_N2
\R3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~q\,
	devoe => ww_devoe,
	o => \R3~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\R2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~q\,
	devoe => ww_devoe,
	o => \R2~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\R1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~q\,
	devoe => ww_devoe,
	o => \R1~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\R0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18~q\,
	devoe => ww_devoe,
	o => \R0~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\BANDERA_CEROS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30~0_combout\,
	devoe => ww_devoe,
	o => \BANDERA_CEROS~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\BANDERA_SIGNO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~q\,
	devoe => ww_devoe,
	o => \BANDERA_SIGNO~output_o\);

-- Location: IOIBUF_X58_Y0_N22
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G18
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

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

-- Location: LCCOMB_X80_Y1_N8
\inst21~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21~feeder_combout\ = \B0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B0~input_o\,
	combout => \inst21~feeder_combout\);

-- Location: IOIBUF_X58_Y0_N15
\CLEAR~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLEAR,
	o => \CLEAR~input_o\);

-- Location: CLKCTRL_G19
\CLEAR~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLEAR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLEAR~inputclkctrl_outclk\);

-- Location: FF_X80_Y1_N9
inst21 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst21~feeder_combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21~q\);

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

-- Location: LCCOMB_X80_Y1_N4
\inst22~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22~feeder_combout\ = \B1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B1~input_o\,
	combout => \inst22~feeder_combout\);

-- Location: FF_X80_Y1_N5
inst22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst22~feeder_combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22~q\);

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

-- Location: LCCOMB_X80_Y1_N18
\inst19~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19~feeder_combout\ = \A1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A1~input_o\,
	combout => \inst19~feeder_combout\);

-- Location: FF_X80_Y1_N19
inst19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst19~feeder_combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19~q\);

-- Location: LCCOMB_X80_Y1_N24
\inst28|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst28|S~0_combout\ = (\inst22~q\ & (\inst20~q\ & ((!\inst19~q\)))) # (!\inst22~q\ & (((\inst21~q\ & \inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20~q\,
	datab => \inst21~q\,
	datac => \inst22~q\,
	datad => \inst19~q\,
	combout => \inst28|S~0_combout\);

-- Location: FF_X80_Y1_N25
inst15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst28|S~0_combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15~q\);

-- Location: LCCOMB_X80_Y1_N26
\inst26|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26|S~0_combout\ = (\inst22~q\ & ((\inst20~q\ & ((!\inst19~q\))) # (!\inst20~q\ & (!\inst21~q\ & \inst19~q\)))) # (!\inst22~q\ & (((\inst21~q\ & \inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20~q\,
	datab => \inst21~q\,
	datac => \inst22~q\,
	datad => \inst19~q\,
	combout => \inst26|S~0_combout\);

-- Location: FF_X80_Y1_N27
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst26|S~0_combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: LCCOMB_X80_Y1_N20
\inst27|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst27|S~combout\ = (\inst20~q\ & (\inst22~q\ $ (((\inst19~q\ & \inst21~q\))))) # (!\inst20~q\ & (\inst19~q\ & (\inst21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20~q\,
	datab => \inst19~q\,
	datac => \inst21~q\,
	datad => \inst22~q\,
	combout => \inst27|S~combout\);

-- Location: FF_X80_Y1_N21
inst17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst27|S~combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17~q\);

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

-- Location: LCCOMB_X80_Y1_N6
\inst20~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20~feeder_combout\ = \A0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A0~input_o\,
	combout => \inst20~feeder_combout\);

-- Location: FF_X80_Y1_N7
inst20 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst20~feeder_combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20~q\);

-- Location: LCCOMB_X80_Y1_N30
inst2 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\inst21~q\ & \inst20~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21~q\,
	datad => \inst20~q\,
	combout => \inst2~combout\);

-- Location: FF_X80_Y1_N31
inst18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2~combout\,
	clrn => \CLEAR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18~q\);

-- Location: LCCOMB_X80_Y1_N28
\inst30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst30~0_combout\ = (!\inst18~q\ & (!\inst15~q\ & (!\inst17~q\ & !\inst16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~q\,
	datab => \inst15~q\,
	datac => \inst17~q\,
	datad => \inst16~q\,
	combout => \inst30~0_combout\);

ww_R3 <= \R3~output_o\;

ww_R2 <= \R2~output_o\;

ww_R1 <= \R1~output_o\;

ww_R0 <= \R0~output_o\;

ww_BANDERA_CEROS <= \BANDERA_CEROS~output_o\;

ww_BANDERA_SIGNO <= \BANDERA_SIGNO~output_o\;
END structure;


