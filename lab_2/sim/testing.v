`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 12:44:58
// Design Name: 
// Module Name: testing
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


module testing(
    );
    
    reg clk, reset, a, b;
    wire [1:0] state;
    wire exit, enter;
    
    //testing fsm individually
    fsm m1(clk,reset,a,b,state,enter,exit);
    
    initial begin
        clk = 0;
       forever #5  clk = !clk;
    end
    
  initial begin
   reset = 1;
   #5 
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
   #10
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
