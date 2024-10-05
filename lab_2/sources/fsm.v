`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 12:05:42
// Design Name: 
// Module Name: fsm
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


module fsm(
    input clk,
    input reset,
    input a,b,
    output reg enter,
    output reg exit
    );
    
    parameter A = 2'b00, B = 2'b10, C = 2'b11, D =2'b01; //states
    reg [1:0] next; //next state
    
    always @(posedge clk or posedge reset) begin
    if(reset)begin //reset high
        next <= 2'b00;
        enter <= 0;
        exit <= 0;
    end
    else begin
        case(next)
            A: begin
               enter <= 0; //set both to 0 for start
               exit <= 0;
               if(a == 1 && b == 0) //10 innput
                next = B;
               if(a == 0 && b == 1) //01 input
                next = D;
               end
            B: begin
               if(a == 1 && b == 1) //11 input
                next = C;
               if (a == 0 && b == 0) begin // 00 input
                next = A;
                exit <= 1; //exiting car park
               end 
               end
            C: begin
               if (a == 0 && b == 1) //01 input
               next = D;
               if (a ==1 && b == 0) //10 input
                next = B;
               end
            D: begin
               if(a == 0 && b == 0)begin //00 input
                next = A;
                enter <= 1; //entering car park
               end
               if (a == 1 && b ==1) //11 input
                next = C;
               end
         default: begin
            next = A;
            enter <= 0;
            exit <= 0;
         end
        endcase
     end
    end
endmodule
