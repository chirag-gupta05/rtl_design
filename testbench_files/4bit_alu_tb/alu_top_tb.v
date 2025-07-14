`timescale 1ns / 1ps
module alu_top_tb;
    reg [3:0]a,b;
    reg [2:0]code;
    wire [3:0]result;
    wire [1:0]flag;
    
    alu_top uut (.A(a), .B (b), .opcode(code), .res(result), .flag(flag));
    
    initial
    begin
        $monitor ("Opcode = %b, A = (%b %d), B = (%b %d), Result = (%b %d)", code, a, a, b, b, result, result);
        a = 4'b1001;
        b = 4'b1001;
        code = 3'b000;
        #50 code = 3'b001;
        #50 code = 3'b010;
        #50 code = 3'b011;
        #50 code = 3'b100;
        #50 code = 3'b101;
        #50 code = 3'b110;
        #50 code = 3'b111;
        #50 code = 3'bx;
    end
endmodule
