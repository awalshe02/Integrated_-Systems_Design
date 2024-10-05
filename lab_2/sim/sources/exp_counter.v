`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 10:58:31
// Design Name: 
// Module Name: exp_counter
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


module exp_counter(
    input clk, reset,
    input enter, exit,
    output reg [4:0] count
    );
    
    always@(posedge clk) begin
        if (reset) //reset high
            count <= 0;
        if(enter) // enter high
              count <= count + 1; //increment
         if (exit) begin // exit high
              count <= count - 1; //deincrement
         end   
    end
endmodule
