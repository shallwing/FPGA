library verilog;
use verilog.vl_types.all;
entity PWM is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \out\           : out    vl_logic;
        cnt             : out    vl_logic_vector(3 downto 0)
    );
end PWM;
