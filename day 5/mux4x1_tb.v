module mux4x1_tb;
reg [3:0]A;
reg [1:0]S;
wire OUT;
integer i;

mux4x1_decoder_buffer dut(.in(A), .sel(S), .out(OUT));

initial 
begin
A=4'hb;
for(i=0;i<4;i=i+1)
begin
S=i;
#10;
end 
end

initial begin
#100 A=4'b1010;
for(i=0;i<4;i=i+1)
begin
S=i;
#10;
end
end
initial
begin
$monitor("A=%b, S=%b, OUT=%b", A, S, OUT);
#220 $finish;
end
endmodule

