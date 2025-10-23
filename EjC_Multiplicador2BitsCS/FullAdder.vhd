library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
	port(A: in std_logic;
		  B: in std_logic;
		  CIN: in std_logic;
		  S: out std_logic;
		  COUT: out std_logic);
end FullAdder;

architecture fnc of FullAdder is
	signal xor1: std_logic;
	signal and1: std_logic;
	signal and2: std_logic;
	signal and3: std_logic;
	
begin 
	xor1 <=B xor CIN;
	and1 <=B and CIN;
	and2 <=B and A;
	and3 <=A and CIN;
	S <=A xor xor1;
	COUT <=and1 or and2 or and3;
end fnc;