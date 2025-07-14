`timescale 1ns / 1ps

module mux8by1using2by1_tb;

reg [7:0]I;
reg [2:0]S;
wire Y:

mux8by1using2by1 uut (.i(I),.s(S),.y(Y));
initial
begin

I=8'b10011010;
S=0;
#100 S=1;
#100 S=2;
#100 S=3;
#100 S=4;
#100 S=5;
#100 S=6;
#100 S=7;

end
endmodule