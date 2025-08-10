`timescale 1ns / 1ps
module SevenSegmentDisplay (
input [3:0] bin,
output reg[6:0] out
);

reg [7:0] temp = 0;
 
always@(*)
begin
case(bin)
4'b0000: temp = 8'hFC;
4'b0001: temp = 8'h60;
4'b0010: temp = 8'hDA;
4'b0011: temp = 8'hF2;
4'b0100: temp = 8'h66;
4'b0101: temp = 8'hB6;
4'b0110: temp = 8'hBE;
4'b0111: temp = 8'hE0;
4'b1000: temp = 8'hFE;
4'b1001: temp = 8'hF6;
default : temp = 8'h00;
endcase
out = temp[7:1];
end
 

 
 
endmodule