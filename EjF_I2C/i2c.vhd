-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity i2c is
	port(
		clk : in	std_logic;
		reset : in std_logic;
		dir : in	std_logic_vector(6 downto 0);
		dato : in std_logic_vector(7 downto 0);
		SDA : in std_logic;
		rowed : in std_logic;
		dato_mostrado : out	std_logic_vector(7 downto 0);
		Hab_Dat : out std_logic;
		Hab_Dir : out std_logic;
		leer : out std_logic;
		acknow : out std_logic
	);

end i2c;

architecture rtl of i2c is

	-- Build an enumerated type for the state machine
	type state_type is (Oscioso, Guarda_dir, ROW, ACK, Guardar_dato);

	-- Register to hold the current state
	signal state   : state_type;
	signal fin_dir : std_logic;
	signal Hab_Dat_interna : std_logic;
	signal Hab_Dir_interna : std_logic;
	signal fin_dato : std_logic;
	signal dato_recibido : std_logic_vector(7 downto 0);
	signal soy : std_logic;

begin

	-- Logic to advance to the next state
	process (clk)
	begin
		if (rising_edge(clk)) then
		  if reset = '1' then
            state <= Oscioso;  -- Estado inicial
        else
			case state is
				when Oscioso=>
					if SDA = '1' then
						state <= Oscioso;
					else
						state <= Guarda_dir;
					end if;
				when Guarda_dir=>
					 if fin_dir = '0' then
						state <= Guarda_dir;
					elsif (fin_dir = '1' and soy = '1') then
						state <= ROW;
					elsif (fin_dir = '1' and soy = '0') then
						state <= Oscioso;
					end if;
				when ROW=>
						state <= ACK;
				when ACK =>
						state <= Guardar_dato;
				when Guardar_dato=>
					if fin_dato = '1' then
						state <= Oscioso;
					else
						state <= Guardar_dato;
					end if;
			end case;
			end if;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when Oscioso=>
			   Hab_Dir_interna <= '0';
				Hab_Dat_interna <= '0';
				Hab_Dir <= Hab_Dir_interna;
				acknow <= '0';
				Hab_Dat <= Hab_Dat_interna;
				dato_recibido <= "00000000";
			when Guarda_dir =>
				Hab_Dir_interna <= '1';
				Hab_Dat_interna <= '0';
				Hab_Dir <= Hab_Dir_interna;
				acknow <= '0';
				Hab_Dat <= Hab_Dat_interna;
				dato_recibido <= "00000000";
			when ACK =>
			   Hab_Dir_interna <= '0';
				Hab_Dat_interna <= '0';
				acknow <= '1';
				Hab_Dat <= Hab_Dat_interna;
				Hab_Dir <= Hab_Dir_interna;
				dato_recibido <= "00000000";
			when Guardar_dato =>
			   Hab_Dir_interna <= '0';
				Hab_Dat_interna <= '1';
				Hab_Dat <= Hab_Dat_interna;
				acknow <= '0';
				Hab_Dir <= Hab_Dir_interna;
				dato_recibido <= dato_recibido;
			when ROW =>
			   Hab_Dir_interna <= '0';
				Hab_Dat_interna <= '0';
				Hab_Dir <= Hab_Dir_interna;
				acknow <= '0';
				Hab_Dat <= Hab_Dat_interna;
				dato_recibido <= "00000000";
				if rowed = '1' then
					leer <= '1';
				else
					leer <= '0';
				end if;
		end case;
	end process;

	process (clk)
		variable i: integer range 0 to 6;
		variable dir_recibida : std_logic_vector (6 downto 0);
	begin	
		i:=0;
		if (i /= 6 and Hab_Dir_interna = '1') then
			if (rising_edge(clk)) then
				dir_recibida(i) := dir(i);
				i:=i+1;
				fin_dir <= '1';
			end if;
		end if;
		if dir_recibida = "1110111" then
			soy <= '1';
		else	
			soy <= '0';
		end if;
	end process;
	
	process (clk)
		variable i: integer range 0 to 6;
	begin	
		dato_recibido <= "00000000";
		i:=0;
		if (i /= 7 and Hab_Dat_interna = '1') then
			if (rising_edge(clk)) then
				dato_recibido(i) <= dato(i);
				i:=i+1;
				fin_dato <= '1';
			end if;
		end if;
	end process;
end rtl;
