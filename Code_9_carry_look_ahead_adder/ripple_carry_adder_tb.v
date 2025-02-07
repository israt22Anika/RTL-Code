`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 10:57:50 PM
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb(

    );
    reg [3:0] a_tb;
    reg [3:0] b_tb;
    reg cin_tb;
    wire [3:0] sum_tb;
    wire cout_tb;
    
    integer t;
    
    carry_look_ahead_adder dut (.a(a_tb), .b(b_tb), .cin(cin_tb), .sum(sum_tb), .cout(cout_tb));
    
    initial begin
        cin_tb = 1'b0;
        for (t = 0; t < 16; t = t + 1) begin
            a_tb = t;
            b_tb = t + 1;
            #5;
        end
        $finish;
    end
    
endmodule
