  module jk_ff_tb;
        reg j,k,clk;
        wire q;
        
        jk_ff dut(.j(j),.k(k),.clk(clk),.q(q));
        
        initial begin
        clk = 0;
        forever #5 clk = ~clk;
        end
        
        initial 
        begin
        j <= 0;
        k <= 0;
        #10;
        
        j <= 0;
        k <= 1;
        #10;
        
        j <= 1;
        k <= 0;
        #10;
        
        j <= 1;
        k <= 1;
        #10;
        
        $finish;
        end       
        
        initial 
        $monitor("j = %b, k = %b, q = %b",j,k,q);
         
endmodule