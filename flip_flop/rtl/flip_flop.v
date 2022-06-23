module flip_flop
(
	input wire in,
	input wire sys_clk,
	input wire sys_rst_n,
	
	output reg out
);

always@(posedge sys_clk or negedge sys_rst_n)
begin 
	if(sys_rst_n == 1'b0)
		out <= 1'b0;
	else
		out <= in;
end


endmodule 