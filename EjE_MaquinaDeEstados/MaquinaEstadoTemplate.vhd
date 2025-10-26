-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity MaquinaEstadoTemplate is

	port(
		clk		 : in	std_logic;
		input	 : in	std_logic;
		reset	 : in	std_logic;
		output	 : out	std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of MaquinaEstadoTemplate is

	-- Build an enumerated type for the state machine
	type state_type is (A, B, C, D, E, F, G);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= A;
		elsif (rising_edge(clk)) then
			case state is
				when A=>
					if input = '1' then
						state <= D;
					else
						state <= C;
					end if;
				when B=>
					if input = '1' then
						state <= G;
					else
						state <= F;
					end if;
				when D=>
					state <= E;
				when E=>
					state <= B;
				when C=>
					state <= B;
				when G=>
					state <= A;
				when F=>
					state <= A;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when A =>
				output <= "0000";
			when B =>
				output <= "1111";
			when C =>
				output <= "0110";
			when D =>
				output <= "1000";
			when E =>
				output <= "1100";
			when F =>
				output <= "1001";
			when G =>
				output <= "1110";
		end case;
	end process;

end rtl;
