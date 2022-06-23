library verilog;
use verilog.vl_types.all;
entity saler_vlg_check_tst is
    port(
        out_coin        : in     vl_logic;
        out_cola        : in     vl_logic;
        state           : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end saler_vlg_check_tst;
