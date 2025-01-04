//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 09:16:14 PM
// Design Name: 
// Module Name: Code_2_mux_8_2_1
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
`timescale 1ns / 1ns

module mux_8_2_1(
    input [7:0] in,
    input [2:0] sel,
    output reg out
    );
    
    always@(*) begin
        case(sel)
            3'b000:out = in[0];
            3'b001:out = in[1];
            3'b010:out = in[2];
            3'b011:out = in[3];
            3'b100:out = in[4];
            3'b101:out = in[5];
            3'b110:out = in[6];
            3'b111:out = in[7];
            default: out = 0;
       endcase
   end
endmodule
