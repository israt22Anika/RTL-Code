`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 10:34:46 PM
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
    
    wire [4:0] carry;
    assign carry[0] = cin;
    full_adder_1_bit adder1 (.a(a[0]), .b(b[0]), .cin(carry[0]), .cout(carry[1]), .sum(sum[0]));
    full_adder_1_bit adder2 (.a(a[1]), .b(b[1]), .cin(carry[1]), .cout(carry[2]), .sum(sum[0]));
    full_adder_1_bit adder3 (.a(a[2]), .b(b[2]), .cin(carry[2]), .cout(carry[3]), .sum(sum[0]));
    full_adder_1_bit adder4 (.a(a[3]), .b(b[3]), .cin(carry[3]), .cout(carry[4]), .sum(sum[0]));
    assign cout = carry[4];
endmodule
