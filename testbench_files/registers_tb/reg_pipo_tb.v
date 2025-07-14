`timescale 1ns / 1ps
module reg_pipo_tb;
reg Clk, rst;
reg [3:0]D;
wire [3:0]qn;

reg_pipo uut (.clk(Clk), .reset(rst), .d(D), .q(qn));
initial begin
    Clk=1;
    rst=1;
    #50;
    rst=0;
    D=4'b0110;
end

always
begin
    #50;
    Clk = ~Clk;
end
endmodule
