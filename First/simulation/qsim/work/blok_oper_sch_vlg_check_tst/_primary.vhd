library verilog;
use verilog.vl_types.all;
entity blok_oper_sch_vlg_check_tst is
    port(
        f1              : in     vl_logic;
        f2              : in     vl_logic;
        f3              : in     vl_logic;
        priznak         : in     vl_logic_vector(1 downto 0);
        rr              : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end blok_oper_sch_vlg_check_tst;
