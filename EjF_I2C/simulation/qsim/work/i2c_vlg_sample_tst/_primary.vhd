library verilog;
use verilog.vl_types.all;
entity i2c_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        fin_dato        : in     vl_logic;
        fin_dir         : in     vl_logic;
        reset           : in     vl_logic;
        SDA             : in     vl_logic;
        soy             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end i2c_vlg_sample_tst;
