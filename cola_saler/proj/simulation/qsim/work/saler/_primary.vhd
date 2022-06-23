library verilog;
use verilog.vl_types.all;
entity saler is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        in_yuan         : in     vl_logic;
        in_jiao         : in     vl_logic;
        state           : out    vl_logic_vector(2 downto 0);
        out_cola        : out    vl_logic;
        out_coin        : out    vl_logic
    );
end saler;
