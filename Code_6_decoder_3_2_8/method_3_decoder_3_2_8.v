`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 10:21:55 PM
// Design Name: 
// Module Name: method_3_decoder_3_2_8
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


module method_3_decoder_3_2_8(
    input [2:0] i,
    output reg [7:0] o
    );
    
    always @ (*) begin
        o = 8'hFF;
        o[i] = 1'b1;
    end
    
endmodule
