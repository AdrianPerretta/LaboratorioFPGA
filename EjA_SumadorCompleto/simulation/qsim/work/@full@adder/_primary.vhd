library verilog;
use verilog.vl_types.all;
entity FullAdder is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        CIN             : in     vl_logic;
        S               : out    vl_logic;
        COUT            : out    vl_logic
    );
end FullAdder;
