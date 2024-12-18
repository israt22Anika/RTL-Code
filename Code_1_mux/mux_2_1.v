`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2024 10:01:32 PM
// Design Name: 
// Module Name: mux_2_1
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

module mux_2_1(
    input [1:0] in,
    input S,
    output reg out
    );
    always @(*) begin
        case (S)
            1'b0:out<=in[0];
            1'b1:out<=in[1];
        endcase
   end
    
endmodule
