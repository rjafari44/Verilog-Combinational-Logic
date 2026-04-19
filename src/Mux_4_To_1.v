`timescale 1ns / 1ps

module Mux_4_To_1 (
    input  [1:0] S,
    input  D0,
    input  D1,
    input  D2,
    input  D3,
    output reg Y
);

    // 4:1 MUX behavior
    always @(*) begin
        case (S)
            2'b00: Y = D0;
            2'b01: Y = D1;
            2'b10: Y = D2;
            2'b11: Y = D3;
        endcase
    end

endmodule // Mux_4_To_1