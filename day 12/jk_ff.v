module jk_ff (j,k,clk,q);
        
    parameter HOLD = 2'b00,
              TOGGLE = 2'b11,
              SET = 2'b10,
              RESET = 2'b01;

input j, k, clk;
    output reg q;

    always @(posedge clk) begin
        case ({j, k})
            HOLD: q <= q;
            SET: q <= 1;
            RESET: q <= 0;
            TOGGLE: q <= ~q;
        endcase
    end

endmodule



