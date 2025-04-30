library verilog;
use verilog.vl_types.all;
entity BO is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(10 downto 1);
        rr              : out    vl_logic_vector(7 downto 0);
        priznak         : out    vl_logic_vector(1 downto 0);
        f               : out    vl_logic_vector(3 downto 1);
        clk             : in     vl_logic
    );
end BO;
