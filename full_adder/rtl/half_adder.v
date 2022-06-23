module half_adder
(
	input wire in_1,
	input wire in_2,
	
	output wire count,
	output wire sum
);

assign {count,sum} = in_1 + in_2;

endmodule 