`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 10:10:14
// Design Name: 
// Module Name: test_top
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


module test_top(
    );
    
    reg clk, reset, a, b;
    wire [3:0] total;
    
    top m3(clk, reset, a, b, total);
    
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
