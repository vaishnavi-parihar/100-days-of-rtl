module priority_encoder(
    input [7:0] i,
    input enable,
    output reg [2:0]y
    );
 always@(enable,i)
 begin
 if(enable==1)
 begin
 if(i[0]==1)
 y=3'b000;
 else if(i[1]==1)
 y=3'b001;
  else if(i[2]==1)
 y=3'b010;
  else if(i[3]==1)
 y=3'b011;
  else if(i[4]==1)
 y=3'b100;
  else if(i[5]==1)
 y=3'b101;
  else if(i[6]==1)
 y=3'b110;
 else
 y=3'b111;
 end
 end
 
endmodule
