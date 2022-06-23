library verilog;
use verilog.vl_types.all;
entity beep is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        cnt             : out    vl_logic_vector(24 downto 0);
        cnt_500ms       : out    vl_logic_vector(2 downto 0);
        freq_cnt        : out    vl_logic_vector(17 downto 0);
        freq_data       : out    vl_logic_vector(17 downto 0);
        beep            : out    vl_logic
    );
end beep;
