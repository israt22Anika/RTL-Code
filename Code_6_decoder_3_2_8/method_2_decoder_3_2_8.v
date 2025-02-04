`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 10:18:22 PM
// Design Name: 
// Module Name: method_2_decoder_3_2_8
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


module method_2_decoder_3_2_8(
    input [2:0] i,
    output [7:0] o
    );
    
    assign o = 8'hFF << i;
endmodule
