`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2025 10:22:06 PM
// Design Name: 
// Module Name: adder_subtractor_dataflow
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


module adder_subtractor_dataflow(
    input [3:0] a,
    input [3:0] b,
    input mode,
    output [3:0] sum,
    output cout
    );
    
    wire [3:0] b1;
    
    // mode == 0-> adder; b1==b
    // mode == 1-> subtractor; b1==b'; a - b = a + b' + 1
    assign b1 = b ^ {4{mode}}; 
    assign {cout, sum} = a + b1 + mode;
    
endmodule
