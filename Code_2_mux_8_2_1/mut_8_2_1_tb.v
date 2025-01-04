//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2024 09:50:28 PM
// Design Name: 
// Module Name: mut_8_2_1_tb
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

module mut_8_2_1_tb(

    );
           
        reg [7:0] in_tb; 
        reg [2:0] sel_tb;
        wire out_tb;
        
        mux_8_2_1 dut (.sel(sel_tb), .in(in_tb), .out(out_tb));
        
        initial begin
            in_tb = 8'b00000001; sel_tb = 3'b001; #5;
            in_tb = 8'b00000000; sel_tb = 3'b010; #5;
            in_tb = 8'b11111111; sel_tb = 3'b100; #5;
            $finish;
        end
                
endmodule