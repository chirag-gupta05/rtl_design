`timescale 1ns / 1ps
module mux8by1using2by1(y, s, i);

input [7:0]i;
input [2:0]s;
output y;
wire [5:0]x;

//stage 1
assign x[0]=s[0]?i[1]:i[0];
assign x[1]=s[0]?i[3]:i[2];
assign x[2]=s[0]?i[5]:i[4];
assign x[3]=s[0]?i[7]:i[6];

//stage 2
assign x[4]=s[1]?x[1]:x[0];
assign x[5]=s[1]?x[3]:x[2];

//stage 3
assign y=s[2]?x[5]:x[4];
endmodule