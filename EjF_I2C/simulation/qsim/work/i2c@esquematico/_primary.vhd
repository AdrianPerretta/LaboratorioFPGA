library verilog;
use verilog.vl_types.all;
entity i2cEsquematico is
    port(
        Prueba          : out    vl_logic;
        clock           : in     vl_logic;
        SDA             : inout  vl_logic;
        cout1           : out    vl_logic;
        cout2           : out    vl_logic;
        cout3           : out    vl_logic;
        cout4           : out    vl_logic;
        DATO            : out    vl_logic_vector(7 downto 0)
    );
end i2cEsquematico;
