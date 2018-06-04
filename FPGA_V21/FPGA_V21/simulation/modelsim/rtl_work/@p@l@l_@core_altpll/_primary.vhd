library verilog;
use verilog.vl_types.all;
entity PLL_Core_altpll is
    port(
        clk             : out    vl_logic_vector(4 downto 0);
        inclk           : in     vl_logic_vector(1 downto 0);
        locked          : out    vl_logic
    );
end PLL_Core_altpll;
