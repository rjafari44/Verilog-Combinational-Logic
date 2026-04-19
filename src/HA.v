`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2026 02:21:15 PM
// Design Name: 
// Module Name: HA
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


`timescale 1ns / 1ps

module HA (
    input  A,
    input  B,
    output Sum,
    output Cout
);

    // Define the Half Adder behavior
    assign Sum  = A ^ B;  // XOR
    assign Cout = A & B;  // AND

endmodule // HA
