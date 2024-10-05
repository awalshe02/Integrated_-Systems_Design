`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2024 11:58:25
// Design Name: 
// Module Name: score_test
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


module score_test(
    );
    
    reg clk,a, b, reset;
    wire [3:0] count;
    wire inc_exp, dec_exp;
    
    //testing score board functionality
    top C1(clk,  reset, a, b, count);
    scoreboard C2(clk, reset, inc_exp, dec_exp, count);
    
    initial begin
        clk = 0;
        forever #5 clk = !clk;
    end
    
    initial begin
    reset = 1;
    #10 
    reset = 0;
    
   // entering car park
   a = 0; b = 0; 
   #10
   a = 1; b = 0;
   #10
   a = 1; b = 1;
   #10
   a = 0; b = 1;
   #10
   a = 0; b = 0;
   #20
   
   // entering car park
   a = 1; b = 0;
   #10
   a = 1; b = 1;
   #10
   a = 0; b = 1;
   #10
   a = 0; b = 0;
   #20
   
   // entering car park
   a = 1; b = 0;
   #10
   a = 1; b = 1;
   #10
   a = 0; b = 1;
   #10
   a = 0; b = 0;
   #20
   
   // entering car park
   a = 1; b = 0;
   #10
   a = 1; b = 1;
   #10
   a = 0; b = 1;
   #10
   a = 0; b = 0;
   #20
   
   //exiting car park
   a = 0; b = 1;
   #10
   a = 1; b = 1;
   #10
   a = 1; b = 0;
   #10
   a = 0; b = 0;
   #20
   
   //exiting car park
   a = 0; b = 1;
   #10
   a = 1; b = 1;
   #10
   a = 1; b = 0;
   #10
   a = 0; b = 0;
   end
   
endmodule
