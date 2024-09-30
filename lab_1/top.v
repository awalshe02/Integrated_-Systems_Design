`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 10:05:53
// Design Name: 
// Module Name: top
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


module top(
    input clk, reset, a, b,
    output [3:0] total 
    );
    
    wire enter, exit;
    
    fsm m3(clk, reset, a,b, enter, exit);
    counter m4(clk, reset, enter, exit, total);
    
    
endmodule
