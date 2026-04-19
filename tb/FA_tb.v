`timescale 1ns / 1ps

module FA_tb ();

    // Declare testbench signals
    reg  A_tb   = 0;
    reg  B_tb   = 0;
    reg  Cin_tb = 0;
    wire Sum_tb;
    wire Cout_tb;

    // Instantiate the DUT
    FA dut (
        .A    (A_tb),
        .B    (B_tb),
        .Cin  (Cin_tb),
        .Sum  (Sum_tb),
        .Cout (Cout_tb)
    );

// Apply stimulus and print outputs
initial begin
    $display("  Time | A B Cin | Sum Cout"); // header

    // Test 1
    A_tb = 0; B_tb = 1; Cin_tb = 0; #20;
    $display("%4dns | %b %b  %b  |  %b   %b", $time, A_tb, B_tb, Cin_tb, Sum_tb, Cout_tb);

    // Test 2
    A_tb = 1; B_tb = 1; Cin_tb = 0; #20;
    $display("%4dns | %b %b  %b  |  %b   %b", $time, A_tb, B_tb, Cin_tb, Sum_tb, Cout_tb);

    // Test 3
    A_tb = 1; B_tb = 1; Cin_tb = 1; #20;
    $display("%4dns | %b %b  %b  |  %b   %b", $time, A_tb, B_tb, Cin_tb, Sum_tb, Cout_tb);

    $finish;
end

    // Apply stimulus
    initial begin
        // Test 1: A=0, B=1, Cin=0
        A_tb = 1'b0; B_tb = 1'b1; Cin_tb = 1'b0; #20;
        // Test 2: A=1, B=1, Cin=0
        A_tb = 1'b1; B_tb = 1'b1; Cin_tb = 1'b0; #20;
        // Test 3: A=1, B=1, Cin=1
        A_tb = 1'b1; B_tb = 1'b1; Cin_tb = 1'b1; #20;
        $finish;  // End simulation
    end

endmodule