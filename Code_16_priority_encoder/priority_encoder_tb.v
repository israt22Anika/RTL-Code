`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 04:56:06 PM
// Design Name: 
// Module Name: priority_encoder_tb
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


module priority_encoder_tb(

    );
    
    reg [7:0] in_tb;
    reg en_tb;
    wire [2:0] y_tb;
    
    priority_encoder dut (.in(in_tb), .en(en_tb), .y(y_tb));
    
    initial begin
        en_tb = 0; #10;
        en_tb = 1;
        in_tb = 8'b0000_0001; #10;
        in_tb = 8'b0000_1111; #10;
        $finish;
        end
            
            
endmodule
