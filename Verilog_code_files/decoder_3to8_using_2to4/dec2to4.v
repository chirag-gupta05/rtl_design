`timescale 1ns / 1ps

module dec2to4 (y, a, e);

input [1:0]a;
input e;
output [3:0]y;

assign y[0]=(~a[1]) & (~a[0]) & e;
assign y[1]=(~a[1]) & a[0] & e;
assign y[2]=a[1] & (~a[0]) & e;
assign y[3]=a[1] & a[0] & e;

endmodule