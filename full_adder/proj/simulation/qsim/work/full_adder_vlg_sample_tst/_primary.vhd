library verilog;
use verilog.vl_types.all;
entity full_adder_vlg_sample_tst is
    port(
        cin             : in     vl_logic;
        in_1            : in     vl_logic;
        in_2            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end full_adder_vlg_sample_tst;
