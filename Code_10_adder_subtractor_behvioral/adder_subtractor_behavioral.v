`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2025 11:53:50 PM
// Design Name: 
// Module Name: adder_subtractor_behavioral
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


module adder_subtractor_behavioral(
    input [3:0] a,
    input [3:0] b,
    input mode,
    output reg [3:0] sum,
    output reg cout
    );
    
    always@ (*)
    begin
        if (mode==1) begin
            {cout, sum} = a + b;
          end else begin
            {cout, sum} = a + ( ~b + 1); // 2's complement of b
          end
    end
    
endmodule
