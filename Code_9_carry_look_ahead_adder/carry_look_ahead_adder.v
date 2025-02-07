`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 11:10:30 PM
// Design Name: 
// Module Name: carry_look_ahead_adder
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


module carry_look_ahead_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
    
    wire [3:0] P;
    wire [3:0] G;
    wire [3:0] C;
    
    assign P = a ^ b;
    assign G = a & b;
    
    assign C[0] = cin;
    assign C[1] = G[0] + (P[0] & C[0]);
    assign C[2] = G[1] + (P[1] & C[1]);
    assign C[3] = G[2] + (P[2] & C[2]);
    assign cout = G[3] + (P[3] & C[3]);
    
    assign sum = P ^ C;     
    
endmodule
