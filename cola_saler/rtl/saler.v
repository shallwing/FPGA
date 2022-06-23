module saler
(
	input wire coin_in,
	input wire rst,
	input wire clk,
	
	output reg [2:0] state,
	output reg sig_out
);


reg [2:0] IDLE = 3'b000;
reg [2:0] ONE = 3'b001;
reg [2:0] TWO = 3'b010;
reg [2:0] THREE = 3'b100;



always@(posedge clk or negedge rst)
begin 
	if(1'b0 == rst)
		state <= IDLE;
	else	
		begin
			case(state)
			IDLE:
				if(1'b0 == coin_in)
					state <= state;
				else
					state <= ONE;
			ONE:
				if(1'b0 == coin_in)
					state <= state;
				else
					state <= TWO;
			TWO:
				if(1'b0 == coin_in)
					state <= state;
				else
					state <= THREE;
			THREE:
				if(1'b0 == coin_in)
					state <= IDLE;
				else
					state <= ONE;
			default: state <= IDLE;
			endcase
		end
end


always@(posedge clk or negedge rst)
begin 
	if(1'b0 == rst)
		sig_out <= 1'b0;
	else if(state == THREE)
		sig_out <= 1'b1;
	else
		sig_out <= 1'b0;
end

endmodule 