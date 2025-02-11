`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 05:44:24 PM
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb(

    );
    reg clk_tb;
    reg rst_tb;
    reg d_tb;
    wire q_tb;
    
    d_ff dut (.d(d_tb), .q(q_tb), .rst(rst_tb), .clk(clk_tb));
    always #5 clk_tb = ~ clk_tb;
    initial begin
        clk_tb = 0; rst_tb = 0; 
        #15 rst_tb = 1; d_tb = 0;
        #10 d_tb = 1;
        #10 d_tb = 0;
        $finish;
        end
endmodule
