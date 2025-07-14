`timescale 1ns / 1ps
module reg_pipo(clk, reset, q, d);

input wire clk, reset;
input wire [3:0]d;
output reg [3:0]q;

always @(posedge clk or reset)
begin
    if (reset)  q<=4'b0000;
    else    q <= d;
end

endmodule
