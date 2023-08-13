module sr_latch_tb();
reg s,r;
wire q,qbar;
sr_latch DUT(s,r,q,qbar);

initial
begin
s=0;r=0;
#100; s=0;r=1;
#100; s=1;r=0;
#100; s=1;r=1;
$monitor(s,r,q,qbar);
end

endmodule
