library verilog;
use verilog.vl_types.all;
entity blok_oper_sch is
    port(
        f1              : out    vl_logic;
        y               : in     vl_logic_vector(10 downto 1);
        clk             : in     vl_logic;
        b               : in     vl_logic_vector(3 downto 0);
        f2              : out    vl_logic;
        f3              : out    vl_logic;
        rr              : out    vl_logic_vector(7 downto 0);
        a               : in     vl_logic_vector(3 downto 0);
        priznak         : out    vl_logic_vector(1 downto 0)
    );
end blok_oper_sch;
