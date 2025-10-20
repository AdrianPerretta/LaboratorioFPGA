library ieee;
use ieee.std_logic_1164.all;

entity FullAdder_tb is
end FullAdder_tb;

architecture fnc of FullAdder_tb is

	component FullAdder 
		port(A : in std_logic;
			  B : in std_logic;
			  CIN : in std_logic;
			  S : out std_logic;
			  COUT : out std_logic
			  );
	end component;
	
	signal A : std_logic := '0';
	signal B : std_logic := '0';
	signal CIN : std_logic := '0';
	signal S : std_logic;
	signal COUT : std_logic;
	
begin
	uut: FullAdder port map(
		A => A,
		B => B,
		CIN => CIN,
		S => S,
		COUT => COUT
		);
		
stim_proc: process
begin
	A <= '0'; B <= '0'; CIN <= '0'; wait for 10ns;
	A <= '1'; B <= '0'; CIN <= '0'; wait for 10ns;
	A <= '0'; B <= '1'; CIN <= '0'; wait for 10ns;
	A <= '1'; B <= '1'; CIN <= '0'; wait for 10ns;
	A <= '0'; B <= '0'; CIN <= '1'; wait for 10ns;
	A <= '1'; B <= '0'; CIN <= '1'; wait for 10ns;
	A <= '0'; B <= '1'; CIN <= '1'; wait for 10ns;
	A <= '1'; B <= '1'; CIN <= '1'; wait for 10ns;
	wait;
end process;
end;
