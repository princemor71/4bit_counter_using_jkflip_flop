`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2025 12:02:53
// Design Name: 
// Module Name: jk4bit
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




//`timescale 1ns/1ps

module jk4bit();
    // Testbench signals
    reg j, k, clk;
    wire q,qn;

    // Instantiate the JK flip-flop
 dflipflop uut (.j(j),.k(k),.clk(clk),.q(q),.qn(qn));
    // Clock generation
    always #5 clk = ~clk; // 10ns clock period

    // Test stimulus
    initial begin
        // Initialize signals
        clk = 0;
        j = 0;
        k = 0;

        // Wait for 20ns and test each input combination
        #10 j = 0; k = 0; // Hold state
        #10 j = 0; k = 1; // Reset state
        #10 j = 1; k = 0; // Set state
        #10 j = 1; k = 1; // Toggle state

        // End simulation
        #10 $finish;
    end

    // Display output
//    initial begin
//        $monitor("At time %0t: J = %b, K = %b, Q = %b, Qn = %b", $time, j, k, q, qn);
//    end
endmodule
