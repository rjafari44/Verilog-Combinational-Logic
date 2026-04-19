`timescale 1ns / 1ps

module Mux_4_To_1_tb;

    // Testbench signals
    reg [1:0] S_tb = 0;
    reg D0_tb = 0;
    reg D1_tb = 0;
    reg D2_tb = 0;
    reg D3_tb = 0;
    wire Y_tb;

    // Instantiate the DUT
    Mux_4_To_1 dut (
        .S(S_tb),
        .D0(D0_tb),
        .D1(D1_tb),
        .D2(D2_tb),
        .D3(D3_tb),
        .Y(Y_tb)
    );

    // Monitor outputs
    initial begin
        $display("  Time | D0 D1 D2 D3 | S  | Y");
        $monitor("%4dns | %b  %b  %b  %b  | %b | %b", $time, D0_tb, D1_tb, D2_tb, D3_tb, S_tb, Y_tb);
    end

    // Apply stimulus
    initial begin
        D0_tb = 0; D1_tb = 1; D2_tb = 0; D3_tb = 1;

        // Test 1: S = 00 → Y = D0
        S_tb = 2'b00; #20;

        // Test 2: S = 01 → Y = D1
        S_tb = 2'b01; #20;

        // Test 3: S = 10 → Y = D2
        S_tb = 2'b10; #20;

        // Test 4: S = 11 → Y = D3
        S_tb = 2'b11; #20;

        $finish;
    end

endmodule