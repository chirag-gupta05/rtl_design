timescale 1ns / 1ps
module dec3to8_tb;

reg [1:0]A;
reg E;
wire [7:0]Y;

dec3to8 uut(.a(A),.y(Y),.e(E));

initial
begin

E = 0; 
A = 0;
#100 A = 1;
#100 A = 2;
#100 A = 3;
#100 E = 1;
A = 0;
#100 A = 1;
#100 A = 2;
#100 A = 3;

end
endmodule