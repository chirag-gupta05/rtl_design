`timescale 1ns / 1ps
module reg_piso(clk, rst, load, d_in, s_out);

input wire clk, rst, load;
input wire [3:0] d_in;
output reg s_out;
reg [3:0] shift_reg;

always @(posedge clk or rst) begin
    if (rst) begin
        shift_reg <= 4'b0000;
        s_out <= 1'b0;
    end else if (load) begin
       shift_reg <= d_in;
    end else begin
        s_out <= shift_reg[3];
        shift_reg <= shift_reg << 1;
    end
end

endmodule