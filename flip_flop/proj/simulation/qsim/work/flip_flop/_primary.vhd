library verilog;
use verilog.vl_types.all;
entity flip_flop is
    port(
        \in\            : in     vl_logic;
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        \out\           : out    vl_logic
    );
end flip_flop;
