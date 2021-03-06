/* Mutiple selector for 2-1 */

module mux2_1(
	input wire				in_1,		//in_x: input port
	input wire				in_2,		//out: output port
	input wire				sel,		//sel: select port
	output reg				out
);

/*always: For reg*/
/*begin & end: For mutiple sentences*/ 
always@(*)begin
	if(sel == 1'b1)
		out = in_1;
	else
		out = in_2;
end

endmodule