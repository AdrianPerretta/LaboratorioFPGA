library verilog;
use verilog.vl_types.all;
entity multModuloCa2 is
    port(
        A               : in     vl_logic_vector(1 downto 0);
        B               : in     vl_logic_vector(1 downto 0);
        RM              : out    vl_logic_vector(3 downto 0);
        RC              : out    vl_logic_vector(3 downto 0)
    );
end multModuloCa2;
