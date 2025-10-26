library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multModuloCa2 is
	port(A : in std_logic_vector(1 downto 0);
		  B : in std_logic_vector(1 downto 0);
		  RM: out unsigned(3 downto 0);
		  RC: out signed(3 downto 0)
		  );
	end multModuloCa2;
	
architecture fnc of multModuloCa2 is
	begin
		RM <= unsigned(A)*unsigned(B);
		RC <= signed(A)*signed(B);
	end;
	