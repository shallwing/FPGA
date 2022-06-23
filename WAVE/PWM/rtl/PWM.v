module PWM
#(parameter H_TIME = 4'd12)
(
	input wire clk,
	input wire rst,
	
	output reg out,
	output reg [3:0] cnt = 4'b0001
);	
	
parameter CNT_MAX = 4'b1111;

always@(posedge clk)
begin 
	if(1'b0 == rst)
		cnt <= 4'b0000;
	else if(CNT_MAX == cnt)
		cnt <= 4'b0000;
	else
		cnt <= cnt + 4'b0001;
end



always@(posedge clk or negedge rst)
begin 
	if(1'b0 == rst)
		out <= 1'b0;
	else if(cnt >= H_TIME)
		out <= 1'b0;
	else
		out <= 1'b1;
end

			
endmodule 