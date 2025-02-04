`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2025 10:54:21 PM
// Design Name: 
// Module Name: decoder_3_2_8
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


module decoder_3_2_8(
    input [2:0] i,
    output reg [7:0] o
    );
    
    always @ (*) begin
            o = 2'h00;
        case(i)
            3'b000: o[0] = 1;
            3'b001: o[1] = 1;
            3'b010: o[2] = 1;
            3'b011: o[3] = 1;
            3'b100: o[4] = 1;
            3'b101: o[5] = 1;
            3'b110: o[6] = 1;
            3'b111: o[7] = 1;
            default: o = 2'h00;
       endcase 
    end
endmodule
