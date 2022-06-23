library verilog;
use verilog.vl_types.all;
entity beep_vlg_check_tst is
    port(
        beep            : in     vl_logic;
        cnt             : in     vl_logic_vector(24 downto 0);
        cnt_500ms       : in     vl_logic_vector(2 downto 0);
        freq_cnt        : in     vl_logic_vector(17 downto 0);
        freq_data       : in     vl_logic_vector(17 downto 0);
        sampler_rx      : in     vl_logic
    );
end beep_vlg_check_tst;
