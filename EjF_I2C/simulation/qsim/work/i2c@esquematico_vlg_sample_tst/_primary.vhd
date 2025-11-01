library verilog;
use verilog.vl_types.all;
entity i2cEsquematico_vlg_sample_tst is
    port(
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end i2cEsquematico_vlg_sample_tst;
