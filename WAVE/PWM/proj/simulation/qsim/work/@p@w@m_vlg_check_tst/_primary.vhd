library verilog;
use verilog.vl_types.all;
entity PWM_vlg_check_tst is
    port(
        cnt             : in     vl_logic_vector(3 downto 0);
        \out\           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end PWM_vlg_check_tst;
