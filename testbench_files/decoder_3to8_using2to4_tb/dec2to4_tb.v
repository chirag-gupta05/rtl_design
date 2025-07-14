timescale 1ns / 1ps
module dec2to4_tb;

reg [1:0]A;
reg E;
wire [3:0]Y;

dec2to4 uut (.a(A), .e(E), .y(Y));

initial
begin

E=1:
A=2'b00:
#100 A=2'b01:
#100 A=2'b10;
#100 A=2'bll:

end
endmodule