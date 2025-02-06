`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 10:48:36 PM
// Design Name: 
// Module Name: ripple_carry_adder_n_bit_tb
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


module ripple_carry_adder_n_bit_tb(

    );
    parameter WIDTH_tb = 4;
    
    reg [WIDTH_tb-1:0] a_tb;
    reg [WIDTH_tb-1:0] b_tb;
    reg cin_tb;
    
    wire [WIDTH_tb-1:0] sum_tb;
    wire cout_tb;
    
    integer t;
    
    ripple_carry_adder_n_bit #(.WIDTH(WIDTH_tb)) dut (.a(a_tb), .b(b_tb), .cin(cin_tb), .sum(sum_tb), .cout(cout_tb));
    
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
