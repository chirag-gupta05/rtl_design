`timescale 1ns / 1ps
module jk_flipflop (clk, rst, j, k, qn, qnbar);

input wire clk, rst, j, k;
output reg qn, qnbar;

always @(posedge clk or ~rst) 
begin
    if (rst) begin
        qn <= 0;
        qnbar <= 0;
    end else begin
        case ({j, k})
            2'b00: begin
                qn <= qn;
                qnbar<=qnbar;
            end 2'b01: begin
                qn <= 0;
                qnbar<=1;
            end 2'b10: begin
                qn <= 1;
                qnbar<=0;
            end 2'b11: begin
                qn <= ~qn;
                qnbar <= ~qnbar;
            end default: begin
                qn <= qn;
                qnbar <= qnbar;
            end
        endcase
    end
end
endmodule