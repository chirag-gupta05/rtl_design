`timescale 1ns / 1ps
module alu_top(A,B,opcode,res,flag);
    
    input wire [3:0] A, B;
    input wire [2:0] opcode;
    output reg [3:0] res;
    output reg [1:0]flag;
    reg [4:0]add;
    reg c,z;
    
    always @(*)
    begin
        c=1'b0;
        flag = 2'b00;
        case (opcode)
            3'b000: 
                begin
                    add = A + B;
                    res = add[3:0];
                    c = add[4];
                end 
            3'b001: res = A - B;
            3'b010: res = A & B;
            3'b011: res = A | B;
            3'b100: res = A ^ B;
            3'b101: res = ~ A;
            3'b110: res = A << 1;
            3'b111: res = A >> 1;
            default: res = 4'b0000;
        endcase
        
        z = (res == 4'b0000)? 1'b1 : 1'b0;
        flag = {z, c};
    end
endmodule