`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2018 04:53:26 PM
// Design Name: 
// Module Name: fourbit_subtractor
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


module fourbit_subtractor(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S,
    output neg_flag
    );
    
    wire [3:0] intermediate;
    wire not_neg_flag;
    wire zero_flag;
    
    twos_complement C1 (B, intermediate, zero_flag);
    fourbit_full_adder A1 (A, intermediate, 1'b0, S, not_neg_flag);
    
    assign neg_flag = (zero_flag == 0) ? (~(not_neg_flag)) : (not_neg_flag);
    
endmodule
