module decoder_2x4_tb();
reg [1:0]a;
reg en;
wire [3:0]d;
decoder_2x4 uut(d,a,en);
initial begin
a=2'b00; en=1;
#5
a=2'b01;
#5
a=2'b10;
#5
a=2'b11;
#5
en=0;
#5
$finish();
end
endmodule
