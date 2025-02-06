`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 10:22:22 PM
// Design Name: 
// Module Name: ripple_carry_adder_n_bit
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


module ripple_carry_adder_n_bit #(parameter WIDTH = 4)
(
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    input cin,
    output [WIDTH-1:0]sum,
    output cout
    );
    
    wire [WIDTH:0] carry;
    assign carry[0] = cin;
    
    genvar i;
    
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin
            full_adder_1_bit fa0 (.a(a[i]), .b(b[i]), .cin(carry[i]), .sum(sum[i]), .cout(carry[i+1]) );
       end
    endgenerate
    
    assign cout = carry[WIDTH];                     
    
endmodule
