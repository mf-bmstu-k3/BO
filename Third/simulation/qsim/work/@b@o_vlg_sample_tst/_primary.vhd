library verilog;
use verilog.vl_types.all;
entity BO_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        y               : in     vl_logic_vector(10 downto 1);
        sampler_tx      : out    vl_logic
    );
end BO_vlg_sample_tst;
