module binary_upcounter(
input [3:0]data_in,
input load,clk,resetn,
output reg [3:0]count);

always@(posedge clk)
begin
if(~resetn)
count <= 4'd0;
else if (load)
count <= data_in;
else
count <= count+1'b1;
end

endmodule

