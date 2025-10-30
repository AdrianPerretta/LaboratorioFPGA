library verilog;
use verilog.vl_types.all;
entity i2c is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        SDA             : in     vl_logic;
        fin_dir         : in     vl_logic;
        fin_dato        : in     vl_logic;
        soy             : in     vl_logic;
        Hab_dir         : out    vl_logic;
        Hab_dato        : out    vl_logic;
        acknowledge     : out    vl_logic
    );
end i2c;
