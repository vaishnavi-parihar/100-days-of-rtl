module full_adder(a_in,
                  b_in,
		  c_in,
		  sum_out,
		  carry_out);
	 
input a_in,b_in,c_in;
output sum_out,carry_out;
 
wire w1,w2,w3;    
			 
half_adder HA1(.a(a_in), .b(b_in), .sum(w1), .carry(w2));
half_adder HA2(.a(w1), .b(c_in), .sum(sum_out), .carry(w3));
or or1(carry_out, w3, w2);

endmodule
