`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 10:12:15 PM
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb(

    );
    
    reg clk_tb, rst_n_tb, t_tb;
    wire q_tb;
    integer i;
    
    t_ff dut (.t(t_tb), .rst_n(rst_n_tb), .clk(clk_tb), .q(q_tb));
    
    always #5 clk_tb = ~clk_tb;
    
    initial begin
        {clk_tb, rst_n_tb, t_tb} <= 0;
        #8 rst_n_tb = 1;
        for (i = 0; i < 10; i = i +1) begin
            @(posedge clk_tb) #3 t_tb <= $random;
            end
        #5 $finish;
   end
    
endmodule
