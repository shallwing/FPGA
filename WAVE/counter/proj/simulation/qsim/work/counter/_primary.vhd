library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        cnt             : out    vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic
    );
end counter;
