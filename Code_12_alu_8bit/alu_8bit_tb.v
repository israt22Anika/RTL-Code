`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2025 11:39:45 PM
// Design Name: 
// Module Name: alu_8bit_tb
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


module alu_8bit_tb();
    
    reg [7:0] A_tb;
    reg [7:0] B_tb;
    reg [3:0] select_tb;
    
    wire [7:0] result_tb;
    wire carry_flag_tb;
    wire overflow_flag_tb;
    wire zero_flag_tb;
    wire negative_flag_tb;
    
    integer  i;
    
    alu_8bit dut (.A(A_tb), .B(B_tb), .select(select_tb), .result(result_tb), .overflow_flag(overflow_flag_tb), .carry_flag(carry_flag_tb), .zero_flag(zero_flag_tb), .negative_flag(negative_flag_tb));
    
    initial begin
        for ( i = 0; i < 11; i = i + 1) begin
            select_tb = i; A_tb = i + 1; B_tb = i;
            #10;
            end
            $finish;
        end 
    
endmodule
