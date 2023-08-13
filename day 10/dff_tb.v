module dff_tb();
		
   reg clk,reset,d;
   wire q,qb;
			
parameter CYCLE=10;
			   
d_ff DUT(.clock(clk), .reset(reset), .d_in(d), .Q_out(q), .Qb_out(qb));   

always
      begin
	 #(CYCLE/2);
	 clk = 1'b0;
	 #(CYCLE/2);
	 clk=~clk;
      end
				
   //Reset task
   task rst_dut();
      begin
	 @(negedge clk);
	 reset=1'b1;
	 @(negedge clk);
	 reset=1'b0;
      end
   endtask
			
   //Data task
   task din(input i);
      begin
         @(negedge clk);
         d=i;
      end
   endtask
			
   initial 
      begin
         rst_dut;
         din(0);
         din(1);
         din(0);
         din(1);
         din(1);
         rst_dut;
         din(0);
         din(1);
         #10;
         $finish;
      end

  
initial
$monitor("d=%d, q=%d, qb=%d", d,q,qb);
    
endmodule