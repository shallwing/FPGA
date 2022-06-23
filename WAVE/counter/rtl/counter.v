/*-----  4Bits Counter  -----*/
module counter
(
	input wire sys_clk,
	input wire sys_rst_n,
	
	output reg [3:0] cnt = 4'b0000,
	output reg out
);



//The max count value is 2^4-1
parameter CNT_MAX = 4'b1111;



always@(posedge sys_clk)
begin 
	if(1'b0 == sys_rst_n)
		cnt <= 4'b0000;
	else if(CNT_MAX == cnt)
		cnt <= 4'b0000;
	else
		cnt <= cnt + 4'b0001;
end

always@(posedge sys_clk or negedge sys_rst_n)
begin
	if(1'b0 == sys_rst_n)
		out <= 4'b0000;
	else begin
		if(CNT_MAX == cnt)
			out <= ~out;
		else
			out <= out;
	end
end



endmodule 