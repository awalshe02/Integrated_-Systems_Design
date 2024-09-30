`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 09:44:44
// Design Name: 
// Module Name: test_count
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


module test_count(
    );
    
    reg clk, reset, enter, exit;
    wire [3:0] total;
    
    counter m2(clk, reset, enter, exit, total);
    
    initial begin
        clk = 0;
        forever #5 clk = !clk;
    end
    
    initial begin
    reset = 1;
    #10
    reset = 0;
    #10
    enter = 1; // add
    exit = 0;
    #10
    enter = 1; // add
    exit = 0;
    #10
    enter = 0; //minus
    exit = 1;
    #10
    enter = 1; // add
    exit = 0; 
    end
    
endmodule
