library verilog;
use verilog.vl_types.all;
entity i2cEsquematico_vlg_check_tst is
    port(
        DATO            : in     vl_logic_vector(7 downto 0);
        SALIDA_ACK      : in     vl_logic;
        SDA             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end i2cEsquematico_vlg_check_tst;
