library verilog;
use verilog.vl_types.all;
entity flip_flop_vlg_sample_tst is
    port(
        \in\            : in     vl_logic;
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end flip_flop_vlg_sample_tst;
