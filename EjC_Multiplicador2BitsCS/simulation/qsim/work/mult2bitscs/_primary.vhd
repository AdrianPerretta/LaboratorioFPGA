library verilog;
use verilog.vl_types.all;
entity mult2bitscs is
    port(
        R3              : out    vl_logic;
        CLK             : in     vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        B0              : in     vl_logic;
        A0              : in     vl_logic;
        R2              : out    vl_logic;
        R1              : out    vl_logic;
        R0              : out    vl_logic
    );
end mult2bitscs;
