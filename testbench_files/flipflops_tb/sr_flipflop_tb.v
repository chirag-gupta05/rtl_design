`timescale 1ns / 1ps
module sr_flipflop_tb;

reg S, R , Clk;
wire Qn, Qnbar; 

sr_flipflop uut(.s(S), .r(R), .clk(Clk), .qn(Qn), .qnbar(Qnbar));
initial begin

Clk=1;
S=0; R=1;
#40 S=1; R=0;
#40 S=0; R=0;
#40 S=1; R=1;
end

always
begin
#20;
Clk=~Clk;
end

endmodule
