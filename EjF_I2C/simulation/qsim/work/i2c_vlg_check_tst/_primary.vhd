library verilog;
use verilog.vl_types.all;
entity i2c_vlg_check_tst is
    port(
        acknowledge     : in     vl_logic;
        Hab_dato        : in     vl_logic;
        Hab_dir         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end i2c_vlg_check_tst;
