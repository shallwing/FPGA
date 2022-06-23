module Rs232
(
	input			clk,
	input			rst,
	input			rx,
	
	output		out_tx
);

endmodule



module uart_rx
(
	input			clk,
	input			rst,
	input			rx,

	output		out_data[7:0],
	output		out_flag
);

endmodule 



module uart_tx
(
	input			clk,
	input			rst,
	input			out_data[7:0],
	input			out_flag,
	
	output		out_tx
);

endmodule 