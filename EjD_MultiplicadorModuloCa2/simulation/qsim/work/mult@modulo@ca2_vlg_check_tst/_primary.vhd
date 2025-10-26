library verilog;
use verilog.vl_types.all;
entity multModuloCa2_vlg_check_tst is
    port(
        RC              : in     vl_logic_vector(3 downto 0);
        RM              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end multModuloCa2_vlg_check_tst;
