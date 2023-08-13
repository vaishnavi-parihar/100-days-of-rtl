module d_ff(clock,
	   reset,
	   d_in,
	   Q_out,
	   Qb_out);


input clock,reset,d_in;
output reg Q_out;
output Qb_out;


   always@(posedge clock)
      begin
	 if(reset)
	    Q_out <= 1'b0;
	 else
	    Q_out <= d_in;
      end
	
assign Qb_out = ~Q_out;			
				 
endmodule          


