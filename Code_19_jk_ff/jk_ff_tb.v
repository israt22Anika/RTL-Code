`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2025 12:06:18 AM
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb(

    );
    
    reg j_tb, k_tb, rst_tb, clk_tb;
    wire q_tb;
    integer i;
    
    reg [2:0] dly;
    
    jk_ff  dut (.j(j_tb), .k(k_tb), .clk(clk_tb), .rst(rst_tb), .q(q_tb));
    
    initial begin   
        forever #5 clk_tb <= ~clk_tb;
    end
    initial begin
        {j_tb, k_tb, rst_tb, clk_tb} <= 0;
        #10 rst_tb = 1'b1;
        
        for (i = 0; i < 10; i = i + 1) begin
            // $random-> function returns a new 32-bit random number, which is a signed integer that can be either positive or negative.
            dly = $random;
            #(dly) j_tb <= $random;
            #(dly) k_tb <= $random;
        end
        
        #20 $finish;
        end

//    initial begin
//    clk_tb = 0; j_tb = 0; k_tb = 0; rst_tb = 0;
//    #10 rst_tb = 1; j_tb = 1; k_tb = 0;
//    #10 j_tb = 0; k_tb = 1;
//    #10 j_tb = 0; k_tb = 0;
//    #10 j_tb = 1; k_tb = 1;
//    #10 j_tb = 0; k_tb = 0;
//    #10 j_tb = 0; k_tb = 1;
//    #10 $stop;
//    end
                
endmodule
