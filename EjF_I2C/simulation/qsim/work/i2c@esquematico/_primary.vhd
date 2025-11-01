library verilog;
use verilog.vl_types.all;
entity i2cEsquematico is
    port(
        SALIDA_ACK      : out    vl_logic;
        SCL             : in     vl_logic;
        SDA             : inout  vl_logic;
        DATO            : out    vl_logic_vector(7 downto 0)
    );
end i2cEsquematico;
