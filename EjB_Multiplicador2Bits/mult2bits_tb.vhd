library ieee;
use ieee.std_logic_1164.all;

entity mult2bits_tb is
end mult2bits_tb;

architecture fnc of mult2bits_tb is
	component mult2bits
		port(A1 : in std_logic;
			  A0 : in std_logic;
			  B1 : in std_logic;
			  B0 : in std_logic;
			  R3 : out std_logic;
			  R2 : out std_logic;
			  R1 : out std_logic;
			  R0 : out std_logic
			  );
	end component;
	
	signal A1 : std_logic := '0';
	signal A0 : std_logic := '0';
	signal B1 : std_logic := '0';
	signal B0 : std_logic := '0';
	signal R3 : std_logic;
	signal R2 : std_logic;
	signal R1 : std_logic;
	signal R0 : std_logic;

begin
	uut : mult2bits port map(
		A1 => A1,
		A0 => A0,
		B1 => B1,
		B0 => B0,
		R3 => R3,
		R2 => R2,
		R1 => R1,
		R0 => R0
		);
	
stim_proc : process
begin
	A1 <= '0'; A0 <= '0'; B1 <= '0'; B0 <= '0'; wait for 30ns;
	A1 <= '0'; A0 <= '0'; B1 <= '0'; B0 <= '1'; wait for 30ns;
	A1 <= '0'; A0 <= '0'; B1 <= '1'; B0 <= '0'; wait for 30ns;
	A1 <= '0'; A0 <= '0'; B1 <= '1'; B0 <= '1'; wait for 30ns;
	A1 <= '0'; A0 <= '1'; B1 <= '0'; B0 <= '0'; wait for 30ns;
	A1 <= '0'; A0 <= '1'; B1 <= '0'; B0 <= '1'; wait for 30ns;
	A1 <= '0'; A0 <= '1'; B1 <= '1'; B0 <= '0'; wait for 30ns;
	A1 <= '0'; A0 <= '1'; B1 <= '1'; B0 <= '1'; wait for 30ns;
	A1 <= '1'; A0 <= '0'; B1 <= '0'; B0 <= '0'; wait for 30ns;
	A1 <= '1'; A0 <= '0'; B1 <= '0'; B0 <= '1'; wait for 30ns;
	A1 <= '1'; A0 <= '0'; B1 <= '1'; B0 <= '0'; wait for 30ns;
	A1 <= '1'; A0 <= '0'; B1 <= '1'; B0 <= '1'; wait for 30ns;
	A1 <= '1'; A0 <= '1'; B1 <= '0'; B0 <= '0'; wait for 30ns;
	A1 <= '1'; A0 <= '1'; B1 <= '0'; B0 <= '1'; wait for 30ns;
	A1 <= '1'; A0 <= '1'; B1 <= '1'; B0 <= '0'; wait for 30ns;
	A1 <= '1'; A0 <= '1'; B1 <= '1'; B0 <= '1'; wait for 30ns;
	wait;
end process;
end;