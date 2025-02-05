`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 10:39:46 PM
// Design Name: 
// Module Name: full_adder_1_bit
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


module full_adder_1_bit(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    
    assign sum = (a ^ b ^ cin);
    assign cout = (a && b) || (b && cin) || (cin && a);
endmodule
