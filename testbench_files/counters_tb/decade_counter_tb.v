`timescale 1ns / 1ps
module decade_counter_tb;
wire [3:0]qn;
reg Clk, rst;

decade_counter uut (.q(qn), .clk(Clk), .reset(rst));
initial begin
rst=1;
Clk=1;
#10;
rst=0;
end

always
begin
    #20;
    Clk = ~Clk;
end
endmodule
