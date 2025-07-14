`timescale 1ns / 1ps
module downncounter_tb;
reg Clk, Rst;
wire [2:0]Count;

downcounter uut (.clk(Clk), .rst(Rst), .count(Count));
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
