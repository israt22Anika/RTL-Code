`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 04:48:05 PM
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
    input [7:0] in,
    input en,
    output reg [2:0] y
    );
    
    always @(in or en) begin
        if(en) begin
            casex(in)
                8'b0000_0001: y = 3'b000;
                8'b0000_001x: y = 3'b001;
                8'b0000_01xx: y = 3'b010;
                8'b0000_1xxx: y = 3'b011;
                8'b0001_xxxx: y = 3'b100;
                8'b001x_xxxx: y = 3'b101;
                8'b01xx_xxxx: y = 3'b110;
                8'b1xxx_xxxx: y = 3'b111;
                default: y = 3'b000;
            endcase
       end
       else begin
                y = 3'bxxx;
            end
       end
    
endmodule
