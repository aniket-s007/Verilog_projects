`timescale 1ns / 1ps

module Dff(
    input din,
    input clk,
    output reg Q,Qbar
    );
    
always@(posedge clk)
begin
Q<=din;
Qbar<=~din;
end
endmodule
