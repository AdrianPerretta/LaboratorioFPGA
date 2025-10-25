library verilog;
use verilog.vl_types.all;
entity mult2bitscs_vlg_check_tst is
    port(
        BANDERA_CEROS   : in     vl_logic;
        BANDERA_SIGNO   : in     vl_logic;
        R0              : in     vl_logic;
        R1              : in     vl_logic;
        R2              : in     vl_logic;
        R3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end mult2bitscs_vlg_check_tst;
