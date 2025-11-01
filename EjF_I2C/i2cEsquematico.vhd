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
-- CREATED		"Thu Oct 30 21:09:58 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY i2cEsquematico IS 
	PORT
	(
		SCL :  IN  STD_LOGIC;
		SDA :  INOUT  STD_LOGIC;
		SALIDA_ACK :  OUT  STD_LOGIC;
		DATO :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END i2cEsquematico;

ARCHITECTURE bdf_type OF i2cEsquematico IS 

COMPONENT lpm_compare0
	PORT(dataa : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 aeb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_counter0
	PORT(clock : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_counter1
	PORT(clock : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT alt_iobuf
	PORT(i : IN STD_LOGIC;
		 oe : IN STD_LOGIC;
		 io : INOUT STD_LOGIC;
		 o : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT i2c
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 SDA : IN STD_LOGIC;
		 fin_dir : IN STD_LOGIC;
		 fin_dato : IN STD_LOGIC;
		 soy : IN STD_LOGIC;
		 Hab_dir : OUT STD_LOGIC;
		 Hab_dato : OUT STD_LOGIC;
		 acknowledge : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_shiftreg1
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_shiftreg0
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;


BEGIN 
SALIDA_ACK <= SYNTHESIZED_WIRE_5;
SYNTHESIZED_WIRE_4 <= '1';
SYNTHESIZED_WIRE_7 <= '0';



b2v_comparador : lpm_compare0
PORT MAP(dataa => SYNTHESIZED_WIRE_0,
		 aeb => SYNTHESIZED_WIRE_11);


b2v_con7 : lpm_counter0
PORT MAP(clock => SYNTHESIZED_WIRE_16,
		 cout => SYNTHESIZED_WIRE_9);


b2v_con8 : lpm_counter1
PORT MAP(clock => SYNTHESIZED_WIRE_17,
		 cout => SYNTHESIZED_WIRE_10);



SYNTHESIZED_WIRE_17 <= SCL AND SYNTHESIZED_WIRE_3;


b2v_inst12 : alt_iobuf
PORT MAP(i => SYNTHESIZED_WIRE_4,
		 oe => SYNTHESIZED_WIRE_5,
		 io => SDA,
		 o => SYNTHESIZED_WIRE_18);


SYNTHESIZED_WIRE_16 <= SYNTHESIZED_WIRE_6 AND SCL;


b2v_maquina : i2c
PORT MAP(reset => SYNTHESIZED_WIRE_7,
		 clock => SCL,
		 SDA => SYNTHESIZED_WIRE_18,
		 fin_dir => SYNTHESIZED_WIRE_9,
		 fin_dato => SYNTHESIZED_WIRE_10,
		 soy => SYNTHESIZED_WIRE_11,
		 Hab_dir => SYNTHESIZED_WIRE_6,
		 Hab_dato => SYNTHESIZED_WIRE_3,
		 acknowledge => SYNTHESIZED_WIRE_5);


b2v_shift7 : lpm_shiftreg1
PORT MAP(clock => SYNTHESIZED_WIRE_16,
		 shiftin => SYNTHESIZED_WIRE_18,
		 q => SYNTHESIZED_WIRE_0);


b2v_shift8 : lpm_shiftreg0
PORT MAP(clock => SYNTHESIZED_WIRE_17,
		 shiftin => SYNTHESIZED_WIRE_18,
		 q => DATO);



END bdf_type;