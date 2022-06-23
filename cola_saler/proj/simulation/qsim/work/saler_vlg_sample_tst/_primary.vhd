library verilog;
use verilog.vl_types.all;
entity saler_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in_jiao         : in     vl_logic;
        in_yuan         : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end saler_vlg_sample_tst;
