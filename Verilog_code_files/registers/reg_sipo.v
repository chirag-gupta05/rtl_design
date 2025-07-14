`timescale 1ns / 1ps
module reg_sipo(clk, rst, sin, pdata);

input wire clk, rst;
input wire sin;
output reg [3:0] pdata;

always @(posedge clk or rst) begin
    if (rst) begin
        pdata <= 4'b0000;
    end else begin
        pdata <= {pdata[2:0], sin};
    end
end

endmodule