`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 05:11:47 PM
// Design Name: 
// Module Name: sr_ff_behavioral
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


module sr_ff_behavioral(
    input s,
    input r,
    input clk,
    output reg q,
    output reg qn
    );
    
    always @(posedge clk) begin
        if (s && ~r) begin q <= 1; qn <= 0; end
        else if (~s && r) begin q <= 0; qn <= 1; end
        else if (~s && ~r) begin q <= q; qn <= qn; end
        else begin q <= 1'bx; qn <= 1'bx; end
    end
             
endmodule
