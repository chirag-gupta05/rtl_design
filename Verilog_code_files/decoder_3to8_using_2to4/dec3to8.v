`timescale 1ns / 1ps
module dec3to8(y,e,a);

input [1:0]a;
input e;
output [7:0]y;

dec2to4 d1 (y[3:0], a[1:0], (~e));
dec2to4 d2 (y[7:4], a[1:0], e);

endmodule