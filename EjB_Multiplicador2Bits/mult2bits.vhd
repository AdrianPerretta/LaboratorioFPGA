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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sun Oct 19 21:33:24 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY mult2bits IS 
	PORT
	(
		B0 :  IN  STD_LOGIC;
		A0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		R3 :  OUT  STD_LOGIC;
		R2 :  OUT  STD_LOGIC;
		R1 :  OUT  STD_LOGIC;
		R0 :  OUT  STD_LOGIC
	);
END mult2bits;

ARCHITECTURE bdf_type OF mult2bits IS 

COMPONENT fulladder
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 CIN : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 COUT : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_6 <= '0';



b2v_inst : fulladder
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => SYNTHESIZED_WIRE_1,
		 CIN => SYNTHESIZED_WIRE_6,
		 S => R1,
		 COUT => SYNTHESIZED_WIRE_4);



R0 <= A0 AND B0;


SYNTHESIZED_WIRE_1 <= A1 AND B0;


SYNTHESIZED_WIRE_3 <= A1 AND B1;


SYNTHESIZED_WIRE_0 <= A0 AND B1;


b2v_inst6 : fulladder
PORT MAP(A => SYNTHESIZED_WIRE_3,
		 B => SYNTHESIZED_WIRE_4,
		 CIN => SYNTHESIZED_WIRE_6,
		 S => R2,
		 COUT => R3);


END bdf_type;