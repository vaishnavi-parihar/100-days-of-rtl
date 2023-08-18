module binary_upcounter_tb();

    reg [3:0] data_in;
    reg load, clk, resetn;
    wire [3:0] count;

    binary_upcounter DUT(
        .data_in(data_in),
        .load(load),
        .clk(clk),
        .resetn(resetn),
        .count(count)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        resetn = 0;
        load = 0;
        data_in = 4'b0000;

        #10 resetn = 1;
        #10 load = 1;
        #10 data_in = 4'b0010;

        #20 load = 0;
        #30 load = 1;
        #10 data_in = 4'b1101;

        #50 $finish;
    end

endmodule
