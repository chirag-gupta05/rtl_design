`timescale 1ns / 1ps
module upcounter(count, clk, rst);
output [2:0]count;
input clk, rst;
reg [2:0]qn;

always @(posedge clk or rst) begin
    if (rst) begin
        qn[0]<=0;
    end else begin
        qn[0]=~qn[0];
    end
end

always @(negedge qn[0] or rst) begin
    if (rst) begin
        qn[1]<=0;
    end else begin
        qn[1]<=~qn[1];
    end
end

always @(negedge qn[1] or rst) begin
    if (rst) begin
        qn[2]<=0;
    end else begin
        qn[2]<=~qn[2];
    end
end

assign count=qn;
endmodule
