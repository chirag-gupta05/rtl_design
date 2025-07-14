`timescale 1ns / 1ps
module sr_flipflop(qn,qnbar,s,r,clk);

output reg qn, qnbar;
input wire s, r, clk;

always @(posedge clk)
begin
     if (s && r)
     begin
        qn<=1'bx;
        qnbar<=1'bx;
     end
     else if (s && ~r)
     begin
        qn<=1;
        qnbar<=0;
     end
     else if (~s && r)
     begin
        qn<=0;
        qnbar<=1;
     end
     else if (~s && ~r)
     begin
        qn<=qn;
        qnbar<=qnbar;
     end
end
endmodule
