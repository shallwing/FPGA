library verilog;
use verilog.vl_types.all;
entity mux2_1_vlg_sample_tst is
    port(
        in_1            : in     vl_logic;
        in_2            : in     vl_logic;
        sel             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux2_1_vlg_sample_tst;
