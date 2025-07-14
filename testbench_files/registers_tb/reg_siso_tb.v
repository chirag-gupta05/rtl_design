`timescale 1ns / 1ps
module reg_siso_tb;
reg Clk, s_in, Rst;
wire s_out;

reg_siso uut (.clk(Clk), .rst(Rst), .sin(s_in), .sout(s_out));
initial 
begin
Clk=1;
Rst=1;
#50;
Rst=0;
s_in = 1'b1;
#50;
s_in = 1'b0;
#50;
s_in = 1'b1;
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
