module bidirectional_buff_tb();
wire a,b;
reg ctrl;
reg tempa,tempb;
integer i;

bidirectional_buff dut(a,b,ctrl);
assign a=ctrl?tempa:1'bz;
assign b=~ctrl?tempb:1'bz;

initial
begin
for(i=0;i<8;i=i+1)
begin
{tempa,tempb,ctrl}=i;
#10;
end
end
initial
$monitor("a=%b,b=%b,ctrl=%b",a,b,ctrl);
endmodule