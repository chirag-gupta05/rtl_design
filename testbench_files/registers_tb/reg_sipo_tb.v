`timescale 1ns / 1ps
module reg_sipo_tb;
reg Clk, Rst;
reg s_in;
wire [3:0] pdata;

reg_sipo uut (.clk(Clk), .rst(Rst), .sin(s_in), .pdata(pdata));
initial begin
Clk=1;
Rst=1;
#50;
Rst=0;
s_in = 1'b1;
#50;
s_in = 1'b1;
#50;
s_in = 1'b0;
#50;
s_in = 1'b1;
#50;
s_in = 1'b0;
end

always begin
#25;
Clk = ~Clk;
end
endmodule
