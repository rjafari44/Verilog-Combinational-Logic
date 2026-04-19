`timescale 1ns / 1ps

module Mux_2_To_1 (
    input  S,
    input  D0,
    input  D1,
    output Y
);

    // 2:1 MUX behavior
    assign Y = S ? D1 : D0;

endmodule // Mux_2_To_1