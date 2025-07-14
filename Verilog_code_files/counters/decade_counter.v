`timescale 1ns / 1ps
module decade_counter(clk, reset, q);
input wire clk, reset;
output reg [3:0]q;

always @(posedge clk or reset)
begin
    if  (reset) begin
        q<=4'b0000;
    end
    else begin
        if (q == 4'b1001)   q <= 4'b0000;
        else    q<= q+1;
    end
end
endmodule
