`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2025 07:16:07 PM
// Design Name: 
// Module Name: demux_1_2_4
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


module demux_1_2_4(
    input in,
    input [1:0] S,
    output reg [3:0] O
    );
    
    always @(*)
        begin
            O = 4'b0000;
            case(S)
                2'b00:O[0] = in;
                2'b01:O[1] = in;
                2'b10:O[2] = in;
                2'b11:O[3] = in;
                default: O = 4'b0000;
            endcase
        end                                              
endmodule
