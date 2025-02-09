`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 05:15:57 PM
// Design Name: 
// Module Name: sr_ff_behavioral_tb
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


module sr_ff_behavioral_tb(

    );
    reg s_tb, r_tb, clk_tb;
    wire q_tb, qn_tb;
    
    sr_ff_behavioral dut (.s(s_tb), .r(r_tb), .clk(clk_tb), .q(q_tb), .qn(qn_tb));
    
    always begin
        #5 clk_tb = ~clk_tb;
        end
    initial begin
        clk_tb = 0; s_tb = 0; r_tb = 0;
        #10 s_tb = 1; r_tb = 0;
        #10 s_tb = 0; r_tb = 1;
        #10 s_tb = 0; r_tb = 0;
        #10 s_tb = 1; r_tb = 1;
        #10 s_tb = 0; r_tb = 0;
        #10 s_tb = 0; r_tb = 1;
        #10 $stop;
        end
endmodule
