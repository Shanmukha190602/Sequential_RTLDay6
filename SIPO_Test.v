`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 16:10:46
// Design Name: 
// Module Name: SIPO_Test
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


module SIPO_Test();
    
    reg clk,reset,D; // Inputs
    wire [3:0] q; // Output
    
     parameter CLK_PERIOD = 10; // Clock period in nanoseconds
     
    // Instantiating the module
    SIPO Dut ( .clk(clk), 
    .reset(reset), 
    .d(D), 
    .q(q) );
    
    initial begin
        
        reset = 1;
        clk = 0;
        D =0;
        #10 reset  = 0;
    end
    
     // Clock generation
    always #((CLK_PERIOD)/2) clk = ~clk;
    
    // Giving Data to Flip flop
    always #10 D = ~D;
    
    initial begin
    
        $monitor("D = %b,  Q = %b",D,q);
        #100 $finish;
    end
    
endmodule
