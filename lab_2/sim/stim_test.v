`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2024 11:00:46
// Design Name: 
// Module Name: stim_test
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


module stim_test(
    );
    
    wire [3:0] count;
    // testing stimulator and score board output
    stim_gen S1(clk, reset, a, b, inc_exp, dec_exp);
    scoreboard S2(clk, reset, inc_exp, dec_exp, count);
endmodule
