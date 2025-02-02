`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2025 12:09:08 AM
// Design Name: 
// Module Name: encoder_1024_2_10_tb
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


module encoder_1024_2_10_tb(

    );
    
    reg [1023:0] i_tb;
    wire [9:0] O_tb;
    
    integer tmp;
    
    encoder_1024_2_10 dut (.i(i_tb), .o(O_tb));
    
    initial begin
        for (tmp = 1000; tmp < 1024; tmp = tmp + 1) begin
            i_tb = 8'b1 << tmp; #10;
        end
        $finish;
    
    end           

endmodule
