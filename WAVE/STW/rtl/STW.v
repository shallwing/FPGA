module STW
#(parameter CNT_MAX = 4'd15)
(
	input wire clk,
	input wire rst,
	
	output reg [3:0] cnt, 
	output reg out
);


always@(posedge clk or negedge rst)
begin 
	if(1'b0 == rst)
		cnt <= 4'd0;
	else if(CNT_MAX == cnt)
		cnt <= 4'd0;
	else
		cnt <= cnt + 4'd0;
end 


endmodule 