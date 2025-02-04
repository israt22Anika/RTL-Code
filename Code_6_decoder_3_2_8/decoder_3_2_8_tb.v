`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 09:57:41 PM
// Design Name: 
// Module Name: decoder_3_2_8_tb
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


module decoder_3_2_8_tb(

    );
    reg  [2:0] i_tb;
    wire [7:0] o_tb;
    
    integer t;
    
    decoder_3_2_8   dut (.i(i_tb), .o(o_tb));
    
    initial begin
        for (t = 0; t < 8; t = t + 1) begin
            i_tb = t; #10;
        end
        $finish;
    end    
endmodule
