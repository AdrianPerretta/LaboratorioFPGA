library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multModuloCa2_tb is
end multModuloCa2_tb;

architecture fnc of multModuloCa2_tb is
	component multModuloCa2
		port(A : in std_logic_vector(1 downto 0);		  
		     B : in std_logic_vector(1 downto 0);
		     RM : out unsigned(3 downto 0);
		     RC : out signed(3 downto 0)
			  );
	end component;
	
	signal A : std_logic_vector(1 downto 0):= "00";
	signal B : std_logic_vector(1 downto 0) := "00";
	signal RM : unsigned(3 downto 0);
	signal RC : signed(3 downto 0);
	
begin 
	uut : multModuloCa2 port map(
		A => A,
		B => B,
		RM => RM,
		RC => RC
		);

stim_proc: process
begin
	A <= "00"; B <= "00"; wait for 50ns;
	A <= "01"; B <= "00"; wait for 50ns;
	A <= "00"; B <= "10"; wait for 50ns;
	A <= "11"; B <= "11"; wait for 50ns;
	A <= "10"; B <= "10"; wait for 50ns;
	A <= "10"; B <= "11"; wait for 50ns;
	A <= "01"; B <= "11"; wait for 50ns;
	wait;
end process;
end;