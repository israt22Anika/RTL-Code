`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 10:41:47 PM
// Design Name: 
// Module Name: up_down_counter_8bit_tb
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


module up_down_counter_8bit_tb();
    
    reg clk_tb, rst_n_tb, up_down_tb;
    wire [2:0] count_tb;
    
    up_down_counter_8bit dut (.rst_n(rst_n_tb), .clk(clk_tb), .up_down(up_down_tb), .count(count_tb));
    
    always #2 clk_tb <= ~clk_tb;
    
    initial begin
        {up_down_tb, rst_n_tb, clk_tb} <= 0;
        #3 {rst_n_tb, up_down_tb} <= 2'b11;
        #100 $finish;        
    end
    
endmodule
