`timescale 1ns / 1ps
module t_flipflop_tb;

reg T, Rst, Clk;
wire Qn, Qnbar;

t_flipflop uut(.t(T), .clk(Clk), .rst(Rst), .qn(Qn), .qnbar(Qnbar));
initial
begin

T=0;
Clk=1;
Rst=1;
#10;
Rst=0;
#50;
T=1;
#50;
end

always
begin
#25;
Clk=~Clk;
end

endmodule
