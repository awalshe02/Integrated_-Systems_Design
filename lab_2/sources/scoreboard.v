`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2024 10:23:19
// Design Name: 
// Module Name: scoreboard
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


module scoreboard(
    input clk,
    input reset,
    input inc_exp,
    input dec_exp,
    input [3:0]fsm_count
    );
    
    wire signed [4:0] exp_count;
    wire [4:0] extended_fsm;
    reg [4:0] prev_exp, prev_fsm;
    integer file;
    
    exp_counter ct(clk, reset, inc_exp, dec_exp, exp_count); //count the expected num of cars
    
    assign extended_fsm = {1'b0, fsm_count};
    
    always@(posedge clk) begin
        if(reset) begin
            prev_exp <= 0;
            prev_fsm <= 0;
//            extended_fsm <= {1'b0, fsm_count}; //extending the fsm count
        end
        else begin
            if(exp_count != prev_exp ||extended_fsm != prev_fsm) begin
             
                $display("Expected count: %d \n", exp_count); //print expected count
                $display("FSM count: %d \n", fsm_count); //print fsm count
        
                if(exp_count == extended_fsm) //check to see if the same
                    $display("PASS, counters are the same :)))\n");
                else 
                    $display("FAIL, counters are the different :(((\n");
                
                prev_exp <= exp_count;
                prev_fsm <= extended_fsm;
            end
        end
    end
    
endmodule
