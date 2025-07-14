`timescale 1ns / 1ps
module d_flipflop_tb;

reg D, Clk;
wire Qn, Qnbar;

d_flipflop uut(.d(D), .clk(Clk), .qn(Qn), .qnbar(Qnbar));
initial
begin
    Clk=1;
    D=0;
    #40 D=1;
    #40
end

always
begin
    #20;
    Clk=~Clk;
end

endmodule
