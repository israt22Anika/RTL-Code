`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 12:20:43 AM
// Design Name: 
// Module Name: binary_multiplier
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


module binary_multiplier(
    input [3:0] a,
    input [3:0] b,
    output [7:0] product
    );
    
    wire [7:0] p0, p1, p2, p3;
    
    assign p0 = (b[0]) ? a : 8'b0;
    assign p1 = (b[1]) ? a : 8'b0;
    assign p2 = (b[2]) ? a : 8'b0;
    assign p3 = (b[3]) ? a : 8'b0;
    
    assign product = p0 + (p1 << 1) + (p2 << 2) + (p3 << 3);
    
endmodule
