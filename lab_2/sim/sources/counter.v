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
    output reg [3:0] count
    );
    
    always@(posedge clk) begin //automatically goes back to 0 after 15 (due to bit size)
        if (reset) //reset high
            count <= 0;
        if(enter) // enter high
              count <= count + 1; //increment
         if (exit) begin // exit high
            if (count != 0) //cant go below 0
              count <= count - 1; //deincrement
         end   
    end
endmodule
