module sr_latch(
    input s,
    input r,
    output q,
    output qbar
    );
    
 assign q=~(r|qbar);
 assign qbar=~(s|q);
endmodule
