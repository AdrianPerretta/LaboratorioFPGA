library ieee;
use ieee.std_logic_1164.all;

entity maquinaestado_tb is
end maquinaestado_tb;

architecture fnc of maquinaestado_tb is
	component maquinaestado
		port(reset : IN STD_LOGIC;
           clock : IN STD_LOGIC;
           x : IN STD_LOGIC;
           z0 : OUT STD_LOGIC;
           z1 : OUT STD_LOGIC;
           z2 : OUT STD_LOGIC;
           z3 : OUT STD_LOGIC
			  );
	end component;
	
	signal reset, x, clock : std_logic := '0';
	signal z0, z1, z2, z3 : std_logic;
	constant clock_period : time := 150ns;
	
begin
	uut : maquinaestado port map(
		clock => clock,
		reset => reset,
		x => x,
		z0 => z0,
		z1 => z1,
		z2 => z2,
		z3 => z3
		);
		
clock_proc: process
begin
	clock <= '0';
	wait for clock_period/2;
	clock <= '1';
	wait for clock_period/2;
end process;

stim_proc: process
begin
	reset <= '0'; x <= '0'; wait for 200ns;
	reset <= '0'; x <= '0'; wait for 200ns;
	reset <= '0'; x <= '1'; wait for 200ns;
	reset <= '0'; x <= '0'; wait for 200ns;
	reset <= '0'; x <= '1'; wait for 200ns;
	reset <= '0'; x <= '1'; wait for 200ns;
	reset <= '0'; x <= '1'; wait for 200ns;
	reset <= '0'; x <= '0'; wait for 200ns;
	wait;
end process;
end;