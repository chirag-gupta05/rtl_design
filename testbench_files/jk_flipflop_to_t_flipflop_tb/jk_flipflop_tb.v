`timescale 1ns / 1ps

module jk_flipflop_tb;
reg J,K;
reg Clk, Rst;
wire Qn, Qnbar;

jk_flipflop uut (.j(J), .k(K), .clk(Clk), .rst(Rst), .qn(Qn), .qnbar(Qnbar));
initial
begin
    J=1;
    K=0;
    Clk=1;
    Rst=1;
    #50;
    Rst=0;
    #50;
    J=0;
    K=1;
    #50;
    J=0;
    K=0;
    #50;
    J=1;
    K=1;
end

always
begin
#25;
Clk=~Clk;
end

endmodule
