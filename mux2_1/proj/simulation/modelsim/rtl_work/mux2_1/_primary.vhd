library verilog;
use verilog.vl_types.all;
entity mux2_1 is
    port(
        in_1            : in     vl_logic;
        in_2            : in     vl_logic;
        sel             : in     vl_logic;
        \out\           : out    vl_logic
    );
end mux2_1;
