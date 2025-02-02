`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2025 10:56:57 PM
// Design Name: 
// Module Name: encoder_8_2_3
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


module encoder_8_2_3(
    input [7:0] i,
    output reg [2:0] O
    );
    
    always @(*) begin
    case (i)
    8'b0000_0001: O = 3'b000;
    8'b0000_0010: O = 3'b001;
    8'b0000_0100: O = 3'b010;
    8'b0000_1000: O = 3'b011;
    8'b0001_0000: O = 3'b100;
    8'b0010_0000: O = 3'b101;
    8'b0100_0000: O = 3'b110;
    8'b1000_0000: O = 3'b111;
    default: O = 3'b000;            
    
    endcase   
  end
endmodule
