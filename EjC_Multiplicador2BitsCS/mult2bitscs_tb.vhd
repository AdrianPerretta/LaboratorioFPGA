library ieee;
use ieee.std_logic_1164.all;

entity mult2bitscs_tb is
end mult2bitscs_tb;

architecture fnc of mult2bitscs_tb is
	component mult2bitscs
		port(A1 : in std_logic;
			  A0 : in std_logic;
			  B1 : in std_logic;
			  B0 : in std_logic;
			  CLEAR : in std_logic;
			  CLK : in std_logic;
			  R3 : out std_logic;
			  R2 : out std_logic;
			  R1 : out std_logic;
			  R0 : out std_logic;
			  BANDERA_SIGNO : out std_logic;
			  BANDERA_CEROS : out std_logic
			  );
	end component;
	
	signal A1, A0, B1, B0, CLK, CLEAR : std_logic := '0';
	signal R3, R2, R1, R0, BANDERA_SIGNO, BANDERA_CEROS : std_logic;
	constant clock_period : time := 50ns;
	
begin
	uut : mult2bitscs port map(
		CLK => CLK,
		CLEAR => CLEAR,
		A1 => A1,
		A0 => A0,
		B1 => B1,
		B0 => B0,
		R3 => R3,
		R2 => R2,
		R1 => R1,
		R0 => R0,
		BANDERA_CEROS => BANDERA_CEROS,
		BANDERA_SIGNO => BANDERA_SIGNO
		);

clock_proc: process
begin
	CLK <= '0';
	wait for clock_period/2;
	CLK <= '1';
	wait for clock_period/2;
end process;

stim_proc: process
begin
	A1 <= '0'; A0 <= '0'; B1 <= '0'; B0 <= '0'; CLEAR <= '0'; wait for 200ns;
	A1 <= '0'; A0 <= '0'; B1 <= '0'; B0 <= '0'; CLEAR <= '1'; wait for 200ns;
	A1 <= '1'; A0 <= '0'; B1 <= '0'; B0 <= '0'; CLEAR <= '1'; wait for 200ns;
	A1 <= '0'; A0 <= '1'; B1 <= '0'; B0 <= '0'; CLEAR <= '1'; wait for 200ns;
	A1 <= '0'; A0 <= '0'; B1 <= '1';	B0 <= '0'; CLEAR <= '1'; wait for 200ns;
	A1 <= '0'; A0 <= '0'; B1 <= '0'; B0 <= '1'; CLEAR <= '1'; wait for 200ns;
	A1 <= '1'; A0 <= '1'; B1 <= '1'; B0 <= '1'; CLEAR <= '1'; wait for 200ns;
	A1 <= '1'; A0 <= '1'; B1 <= '0'; B0 <= '1'; CLEAR <= '1'; wait for 200ns;
	A1 <= '1'; A0 <= '0'; B1 <= '1'; B0 <= '0'; CLEAR <= '1'; wait for 200ns;
	wait;
end process;
end;