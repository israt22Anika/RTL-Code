`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2025 11:02:51 PM
// Design Name: 
// Module Name: encoder_8_2_3_tb
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


module encoder_8_2_3_tb(

    );
    
    reg [7:0] i_tb;
    wire [2:0] O_tb;
    
    integer tmp;
    
    encoder_8_2_3 dut (.i(i_tb), .O(O_tb));
    
    initial begin
        for (tmp = 0; tmp < 8; tmp = tmp + 1) begin
            i_tb = 8'b1 << tmp; #10;
        end
        $finish;
    
    end           
endmodule