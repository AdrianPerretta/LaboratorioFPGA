library verilog;
use verilog.vl_types.all;
entity i2cEsquematico_vlg_check_tst is
    port(
        cout1           : in     vl_logic;
        cout2           : in     vl_logic;
        cout3           : in     vl_logic;
        Prueba          : in     vl_logic;
        SDA             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end i2cEsquematico_vlg_check_tst;
