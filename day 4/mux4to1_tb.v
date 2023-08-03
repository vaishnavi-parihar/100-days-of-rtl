module mux4to1_tb();

  reg d0, d1, d2, d3, sel0, sel1;
  // Output
  wire Y;

  // Instantiate the mux4to1 module
  mux4to1 dut(.i0(d0), .i1(d1), .i2(d2), .i3(d3), .s0(sel0), .s1(sel1), .y(Y));

  // Initial block to provide stimulus
  initial begin
    
    d0 = 1'b1;
    d1 = 1'b0;
    d2 = 1'b1;
    d3 = 1'b0;

    sel0 = 1'b0; sel1 = 1'b0;
    #100
    sel0 = 1'b1; sel1 = 1'b0;
    #100
    sel0 = 1'b0; sel1 = 1'b1;
    #100
    sel0 = 1'b1; sel1 = 1'b1;
    #100

    $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("Time=%t: d0=%b, d1=%b, d2=%b, d3=%b, sel0=%b, sel1=%b, Y=%b", $time, d0, d1, d2, d3, sel0, sel1, Y);
  end

endmodule

