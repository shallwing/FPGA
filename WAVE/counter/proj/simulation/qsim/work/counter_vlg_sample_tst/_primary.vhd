library verilog;
use verilog.vl_types.all;
entity counter_vlg_sample_tst is
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end counter_vlg_sample_tst;
