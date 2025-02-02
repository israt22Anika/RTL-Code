`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2025 11:56:39 PM
// Design Name: 
// Module Name: encoder_1024_2_10
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module encoder_1024_2_10(
    input [1023:0] i,
    output reg [9:0] o
    );
    
    integer c;
    always @(*) begin
        o = 10'bx;
        for (c = 0; c < 1024; c = c + 1) begin
            if (i[c]) begin
                o = c;
            end
        end
    end
endmodule
