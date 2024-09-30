`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 13:44:29
// Design Name: 
// Module Name: counter
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


module counter(
    input clk, reset,
    input enter, exit,
    output reg [3:0] total
    );
    
    always@(posedge clk) begin
        if (reset) //reset high
            total <= 0;
        if(enter) // enter high
              total <= total + 1; //increment
         if (exit) // exit high
              total <= total - 1; //deincrement
            
    end
endmodule
