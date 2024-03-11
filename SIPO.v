`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 16:02:59
// Design Name: 
// Module Name: SIPO
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


module SIPO(
    
    input clk,reset,d,
    output reg [3:0] q
    );
    
    reg [3:0] temp; // Temporary register
    always @ (posedge clk) 
        if ( reset ==1)
            q = 4'b0000;
        else begin
            temp = q>>1;
            q = {d, temp [2:0]}; // Concatinating 
        end
endmodule
