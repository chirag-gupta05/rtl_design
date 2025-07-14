`timescale 1ns/1ps
module t_flipflop(t, clk, rst, qn, qnbar);

input wire t, clk, rst;
output reg qn, qnbar;

jk_flipflop jkff(clk, rst, t, t, qn, qnbar):

endmodule