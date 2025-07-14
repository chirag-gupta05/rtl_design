`timescale 1ns / 1ps
module reg_siso(clk, rst, sin, sout);

input wire clk, sin, rst;
output reg sout;
reg [3:0]shift_reg;

always @(posedge clk or rst) begin
    if (rst) begin
        shift_reg <= 4'b0000;
        sout <= 1'b0;
    end else begin
        sout <= shift_reg[3];
        shift_reg <= {shift_reg[2:0], sin};
    end
end

endmodule
