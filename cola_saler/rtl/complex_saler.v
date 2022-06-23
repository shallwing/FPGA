module saler
(
	input wire clk,
	input wire rst,
	input wire in_yuan,
	input wire in_jiao,
	
	output reg [2:0] state,
	output reg out_cola,
	output reg out_coin
);


wire [1:0] money;

parameter  IDLE 			= 3'b000,
			  HALF 			= 3'b001,
			  ONE				= 3'b010,
			  ONE_HALF		= 3'b011,
			  TWO				= 3'b100;

assign money = {in_yuan, in_jiao};
			  

always@(posedge clk or negedge rst)
begin 
	if(1'b0 == rst)
		state <= IDLE;
	else
		case(state)
			IDLE:
				if(2'b01 == money)
					state <= HALF;
				else if(2'b10 == money)
					state <= ONE;
				else if(2'b11 == money)
					state <= ONE_HALF;
				else
					state <= state;
			HALF:
				if(2'b01 == money)
					state <= ONE;
				else if(2'b10 == money)
					state <= ONE_HALF;
				else if(2'b11 == money)
					state <= TWO;
				else
					state <= state;
			ONE:
				if(2'b01 == money)
					state <= ONE_HALF;
				else if(2'b10 == money)
					state <= TWO;
				else if(2'b11 == money)
					state <= IDLE;
				else
					state <= state;
			ONE_HALF:
				if(2'b01 == money)
					state <= TWO;
				else if(2'b00 == money)
					state <= state;
				else 
					state <= IDLE;
			TWO:
				if(2'b00 == money)
					state <= state;
				else
					state <= IDLE;
			default: state <= IDLE;
		endcase
end




always@(posedge clk or negedge rst)
begin 
	if(1'b0 == rst)
		out_cola <= 1'b0;
	else if(2'b00 != money && TWO == state)
		out_cola <= 1'b1;
	else if(ONE_HALF == state && in_yuan)
		out_cola <= 1'b1;
	else if(ONE == state && 2'b11 == money)
		out_cola <= 1'b1;
	else
		out_cola <= 1'b0;
end




always@(posedge clk or negedge rst)
begin 
	if(1'b0 == rst)
		out_coin <= 1'b0;
	else if(TWO == state && in_yuan)
		out_coin <= 1'b1;
	else
		out_coin <= 1'b0;
end




endmodule 