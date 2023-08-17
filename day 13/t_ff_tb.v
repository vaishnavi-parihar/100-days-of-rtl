module t_ff_tb();
reg clk,reset,t;
wire q,qbar;
t_ff TFF(clk,reset,t,q,qbar);

initial begin
clk = 1'b0; 
forever #10 clk = ~clk;
end

initial begin
reset = 1'b1;#80;
reset = 1'b0;
end

initial begin
t = 1'b0;
 forever #20 t = ~t;
end
initial 
        $monitor("t = %b, q = %b,  qbar = %b",t,q,qbar);

endmodule

