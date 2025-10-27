library verilog;
use verilog.vl_types.all;
entity i2c is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        dir             : in     vl_logic_vector(6 downto 0);
        dato            : in     vl_logic_vector(7 downto 0);
        SDA             : in     vl_logic;
        rowed           : in     vl_logic;
        dato_mostrado   : out    vl_logic_vector(7 downto 0);
        Hab_Dat         : out    vl_logic;
        Hab_Dir         : out    vl_logic;
        leer            : out    vl_logic;
        acknow          : out    vl_logic
    );
end i2c;
