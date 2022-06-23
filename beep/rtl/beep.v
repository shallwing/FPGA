module beep
#(
	parameter CNT_MAX = 25'd24_999_999,
	parameter DO = 18'd190839,
	parameter RE = 18'd170067,
	parameter MI = 18'd151515,
	parameter FA = 18'd143266,
	parameter SO = 18'd127551,
	parameter LA = 18'd113636,
	parameter XI = 18'd101214
)
(
	input wire rst,
	input wire clk,
	
	output reg beep
);

reg [24:0] 			cnt				;
reg [2:0]  			cnt_500ms		;
reg [17:0]			freq_cnt			;
reg [17:0]			freq_data		;

wire [16:0]		duty_data			;


always@(posedge clk or negedge rst)
	if(rst == 1'b0)
		cnt <= 25'd0;
	else if(CNT_MAX == cnt)
		cnt <= 25'd0;
	else
		cnt <= cnt + 1'b1;

		
		
always@(posedge clk or negedge rst)
	if(rst == 1'b0)
		cnt_500ms <= 3'd0;
	else if((3'd6 == cnt_500ms) && (CNT_MAX == cnt))
		cnt_500ms <= 3'd0;
	else if(CNT_MAX == cnt)
		cnt_500ms <= 1'b1 + cnt_500ms;
	else
		cnt_500ms <= cnt_500ms;
	

	
always@(posedge clk or negedge rst)
	if(rst == 1'b0)
		freq_cnt <= 3'd0;
	else if((freq_data == freq_cnt) || (CNT_MAX == cnt))
		freq_cnt <= 18'd0;
	else 
		freq_cnt <= freq_cnt + 18'b1;

		
		
always@(posedge clk or negedge rst)
	if(rst == 1'b0)
		freq_data <= DO;
	else 
		case(cnt_500ms)
			3'd0:freq_data <= DO;
			3'd1:freq_data <= RE;
			3'd2:freq_data <= MI;
			3'd3:freq_data <= FA;
			3'd4:freq_data <= SO;
			3'd5:freq_data <= LA;
			3'd6:freq_data <= XI;
			default:freq_data <= DO;
		endcase

		
		
assign duty_data = freq_data >> 1;



always@(posedge clk or negedge rst)
	if(rst == 1'b0)
		beep <= 1'b0;
	else if(freq_cnt >= duty_data)
		beep <= 1'b1;
	else
		beep <= 1'b0;

		
		
endmodule 