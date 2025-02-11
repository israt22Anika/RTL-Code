`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 10:32:35 PM
// Design Name: 
// Module Name: up_down_counter_8bit
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


module up_down_counter_8bit(
    input clk,
    input rst_n,
    input up_down, // 1 for up & 0 for down
    output reg [2:0] count
    );
    
    always@(posedge clk or negedge rst_n) begin
        if (~rst_n) 
            count <= 0;
        else begin
            if (up_down) 
                count <= count + 1;
            else 
                count <= count - 1;
        end
     end       
            
    
endmodule
