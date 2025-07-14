`timescale 1ns / 1ps
module d_flipflop(d, clk, qn, qnbar);

input wire d, clk;
output reg qn, qnbar;

always @(posedge clk)
begin
    if (d)
    begin
        qn<=1;
        qnbar<=0;
    end
    else if (~d)
    begin
        qn<=0;
        qnbar<=1;
    end
end
endmodule
