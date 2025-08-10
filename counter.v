`timescale 1ns / 1ps

module counter(
    input clk,rst, ///resets high
    input load, ///high for loading value
    input [3:0] loadVal,
    output [3:0] dout
);

    reg [3:0] temp;

    always@(posedge clk)
    begin
        if (rst==1)
            temp<=4'b0000;


        else
            begin
                if(load == 1)
                    temp<=loadVal;

                else if(temp==4'b1111)
                    temp=4'b0000;
                else
                    temp=temp+1;

            end
    end

    assign dout=temp;




endmodule
