`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 12:59:23 AM
// Design Name: 
// Module Name: comparator
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


module comparator(
    input [3:0] a,
    input [3:0] b,
    output a_gt_b,
    output a_lt_b,
    output a_eq_b
    );
    
    assign a_gt_b = (a > b) ? 1'b1: 1'b0;
    assign a_lt_b = (a < b) ? 1'b1: 1'b0;
    assign a_eq_b = (a == b) ? 1'b1: 1'b0;
endmodule
