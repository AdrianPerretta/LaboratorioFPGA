library verilog;
use verilog.vl_types.all;
entity i2c_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        dato            : in     vl_logic_vector(7 downto 0);
        dir             : in     vl_logic_vector(6 downto 0);
        reset           : in     vl_logic;
        rowed           : in     vl_logic;
        SDA             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end i2c_vlg_sample_tst;
