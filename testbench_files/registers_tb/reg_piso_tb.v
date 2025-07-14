`timescale 1ns / 1ps
module reg_piso_tb;
reg Clk, Rst, Load;
reg [3:0]data;
wire s_out;

reg_piso uut(.clk(Clk), .rst(Rst), .load(Load), .d_in(data), .s_out(s_out));
initial begin
Clk = 1;
Load = 0;
Rst = 1;
#50;
Rst = 0;
data = 4'b1101;
Load = 1;
#10;
Load = 0;
end

always
begin
#50;
Clk = ~Clk;
end
endmodule
