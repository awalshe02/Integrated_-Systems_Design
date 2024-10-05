`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2024 09:44:13
// Design Name: 
// Module Name: stim_gen
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


module stim_gen(
    output reg clk,
    output reg reset,
    output reg a,   
    output reg b,
    output reg inc_exp,
    output reg dec_exp
    );
    
    always begin //clock running forver
        clk = 1;
        #15;
        clk = 0;
        #15;
    end
    
    initial begin //edit enter & exit however you like
    initialise();
    enter(17); //testing > 15 enter
    exit(20); //testing  < 15 exit
    $stop;
    end
    
    //task defs
    task clr_counter_async();
    begin
    @(posedge clk); //falling edge
    reset = 1;
    #5; //delay
    reset = 0;
    end
    endtask
    
    task initialise(); //system initilisation
    begin 
    a = 0;
    b = 0;
    inc_exp = 0;
    dec_exp = 0;
    clr_counter_async();
    end
    endtask 
    
    task enter(input integer I); //entering car park
    integer j;
    begin
        for( j = 0; j < I; j = j + 1) begin //for loop for how many times you want to enter
            @(posedge clk); //state B
            a = 1;
            b = 0;
            #2;
            @(posedge clk); //state C
            a = 1;
            b = 1;
            #2;
            @(posedge clk); //state D
            a = 0;
            b = 1;
            #2;
            @(posedge clk); //state A
            a = 0;
            b = 0;
            inc_exp = 1;
            #20;
            inc_exp = 0;
            @(posedge clk);
        end
    end
    endtask
    
    task exit(input integer I); //exiting car park
    integer j;
    begin
        for( j = 0; j < I; j = j + 1) begin //for loop for how many times you want to exit
            @(posedge clk); //state D
            a = 0;
            b = 1;
            #2;
            @(posedge clk); //state C
            a = 1;
            b = 1;
            #2;
            @(posedge clk); //state B
            a = 1;
            b = 0;
            #2;
            @(posedge clk); //state A
            a = 0;
            b = 0;
            dec_exp = 1;
            #20;
            dec_exp = 0;
            @(posedge clk);
        end
    end
    endtask
    
endmodule
