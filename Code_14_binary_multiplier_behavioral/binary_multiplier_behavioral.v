`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 12:37:57 AM
// Design Name: 
// Module Name: binary_multiplier_behavioral
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


module binary_multiplier_behavioral(
    input [3:0] a,
    input [3:0] b,
    output reg [7:0] product
    );
    
    integer i;
    always @(*) begin
        product = 8'b0;
        for (i = 0; i < 4; i = i + 1) begin
            if (b[i] == 1'b1) begin
                product = product + ( a << i);
            end
        end
    end
    
    
endmodule
