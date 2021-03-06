`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2018 05:03:53
// Design Name: 
// Module Name: ledarray_counter
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


module ledarray_counter(
    input BUTTON,
    input CLOCK,
    output [7:0] LED_ARRAY
    );
    
    wire SLOW_CLOCK;
    wire PULSE;
    
    slow_clock count(CLOCK, SLOW_CLOCK);
    debouncer d (BUTTON, SLOW_CLOCK, PULSE);
    countup led_counter(PULSE, LED_ARRAY); 
    
endmodule
