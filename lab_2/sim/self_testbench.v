`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2024 10:54:58
// Design Name: 
// Module Name: self_testbench
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


module self_testbench(
    );
    
    //calling all modules in single test bench
    wire clk, reset, a, b, inc_exp, dec_exp;
    wire [3:0] gen_count;
    
    stim_gen T1(clk, reset, a, b, inc_exp, dec_exp);
    top T2(clk, reset, a, b, gen_count);
    scoreboard T3(clk, reset, inc_exp, dec_exp, gen_count);
    
endmodule
