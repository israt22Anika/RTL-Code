`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2025 09:46:19 PM
// Design Name: 
// Module Name: demux_1_2_4_tb
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


module demux_1_2_4_tb(

    );
    reg in_tb;
    reg [1:0] S_tb;
    wire [3:0] O_tb;
    
    demux_1_2_4 dut (.in(in_tb), .S(S_tb), .O(O_tb));
    
    initial begin
        in_tb = 1; S_tb = 2'b00; #10;
        in_tb = 0; S_tb = 2'b00; #10;
        in_tb = 1; S_tb = 2'b11; #10;
        in_tb = 1; S_tb = 2'b01;#10;
        $finish;
    end
    
    
endmodule
