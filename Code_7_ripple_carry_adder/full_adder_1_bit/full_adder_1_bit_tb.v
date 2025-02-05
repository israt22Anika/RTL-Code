`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 10:12:14 PM
// Design Name: 
// Module Name: full_adder_1_bit_tb
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


module full_adder_1_bit_tb(

    );
    reg a_tb, b_tb, cin_tb;
    wire cout_tb, sum_tb;
    
    full_adder_1_bit dut (.a(a_tb), .b(b_tb), .cin(cin_tb), .cout(cout_tb), .sum(sum_tb));
    
    initial begin
        #10 a_tb = 0; b_tb = 0; cin_tb = 0;
        #10 a_tb = 0; b_tb = 1;
        #10 a_tb = 1; b_tb = 0;
        #10 a_tb = 1; b_tb = 1;  #10  
        $finish;
        end
    
endmodule
