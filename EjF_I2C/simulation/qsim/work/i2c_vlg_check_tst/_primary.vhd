library verilog;
use verilog.vl_types.all;
entity i2c_vlg_check_tst is
    port(
        acknow          : in     vl_logic;
        dato_mostrado   : in     vl_logic_vector(7 downto 0);
        Hab_Dat         : in     vl_logic;
        Hab_Dir         : in     vl_logic;
        leer            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end i2c_vlg_check_tst;
