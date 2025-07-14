`timescale 1ns / 1ps
module upcounter_tb;
reg Clk, Rst;
wire [2:0]Count;

upcounter uut (.clk(Clk), .rst(Rst), .count(Count));
initial
begin
    Clk=1;
    Rst=1;
    #10;
    Rst=0;
end

always
begin
    #20;
    Clk=~Clk;
end
endmodule
