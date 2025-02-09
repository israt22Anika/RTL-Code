`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 12:26:25 AM
// Design Name: 
// Module Name: binary_multiplier_tb
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


module binary_multiplier_tb(

    );
    
    reg [3:0] a_tb, b_tb;
    wire [7:0] product_tb;
    
    binary_multiplier_behavioral dut (.a(a_tb), .b(b_tb), .product(product_tb));
    
    initial begin
        a_tb = 4'b0001; b_tb = 4'b0000; #10;
        a_tb = 4'b1001; b_tb = 4'b0010; #10;
        a_tb = 4'b1101; b_tb = 4'b0100; #10;
        $finish;
    end    
endmodule
