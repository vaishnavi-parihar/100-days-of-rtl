module mod12_counter_tb;

    reg clk;
    reg reset;
    wire [3:0]count;

mod12_counter DUT (
            .clk(clk),
            .reset(reset),
            .count(count));

    initial begin
        clk=0;
        reset=1;
        #10;
        reset=0;
        #100;
    end

    always #5 clk=~clk;

endmodule
