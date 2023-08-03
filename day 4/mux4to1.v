module mux4to1(i0, i1, i2, i3, s0, s1, y);
input i0, i1, i2, i3, s0, s1;
output y;
wire y1, y2;

mux2to1 M1(.a(i0), .b(i1), .sel(s0), .out(y1));
mux2to1 M2(.a(i2), .b(i3), .sel(s0), .out(y2));
mux2to1 M3(.a(y1), .b(y2), .sel(s1), .out(y));

endmodule 

module mux2to1(a,b,sel,out);

  input a, b, sel;
  output out;

  assign out = ( (a & (~sel)) | (b & (sel)) );

endmodule
