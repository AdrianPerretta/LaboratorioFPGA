library ieee;
use ieee.std_logic_1164.all;

entity maquinaestadotemplate_tb is
end maquinaestadotemplate_tb;

architecture fnc of maquinaestadotemplate_tb is
	component MaquinaEstadoTemplate
		port(reset : in std_logic;
           clk : in std_logic;
           input : in std_logic;
          output : out std_logic_vector(3 downto 0)
			  );
	end component;
	
	signal reset, input, clk : std_logic := '0';
	signal output : std_logic_vector(3 downto 0);
	constant clock_period : time := 150ns;
	
begin
	uut : MaquinaEstadoTemplate port map(
		clk => clk,
		reset => reset,
		input => input,
		output => output
		);
		
clock_proc: process
begin
	clk <= '0';
	wait for clock_period/2;
	clk <= '1';
	wait for clock_period/2;
end process;

stim_proc: process
begin
	reset <= '0'; input <= '0'; wait for 200ns;
	reset <= '0'; input <= '0'; wait for 200ns;
	reset <= '0'; input <= '1'; wait for 200ns;
	reset <= '0'; input <= '0'; wait for 200ns;
	reset <= '0'; input <= '1'; wait for 200ns;
	reset <= '0'; input <= '1'; wait for 200ns;
	reset <= '0'; input <= '1'; wait for 200ns;
	reset <= '0'; input <= '0'; wait for 200ns;
	wait;
end process;
end;