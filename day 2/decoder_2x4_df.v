
module decoder_2x4_df(d0,d1,d2,d3,a,en);
input en;
input [1:0]a;
output d0,d1,d2,d3;
assign d0= ~a[0] & ~a[1] & en;
assign d2= ~a[0] & a[1] & en;
assign d1= a[0] & ~a[1] & en;
assign d3= a[0] & a[1] & en;
endmodule