module mod12_counter(
	input clk,reset,
	output reg [3:0]count
	);

	always@(posedge clk)
	if(reset)
		count<=4'b0000;

	else if(count==4'b1100)
		count<=4'b0000;

	else
		count<=count+1;
endmodule
