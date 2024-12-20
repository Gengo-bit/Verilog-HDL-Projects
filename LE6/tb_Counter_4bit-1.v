/**********************************************************
*
*FILE: 			tb_Counter_4bit.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	Testbench file for Counter_4bit
*
**********************************************************/
`timescale 1ns/1ps
module tb_Counter_4bit;

  // Inputs
  reg nReset, clk, Load, Count_en, Up;
  reg [3:0] Count_in;
  wire [3:0] Count_out;

  // Instantiate the Counter_4bit module
  Counter_4bit uut (
    .nReset(nReset),
    .clk(clk),
    .Load(Load),
    .Count_en(Count_en),
    .Up(Up),
    .Count_in(Count_in),
    .Count_out(Count_out)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Initial block: apply test vectors
  initial begin
    // Test case 1: Reset to 0
    nReset = 0; Load = 0; Count_en = 0; Up = 0; Count_in = 4'b0000;
    #10;

    // Test case 2: Load inputs (parallel load)
    nReset = 1; Load = 1; Count_en = 1; Up = 1; Count_in = 4'b1010;
    #10;

    // Test case 3: No change
    nReset = 1; Load = 0; Count_en = 0; Up = 0; Count_in = 4'b0000;
    #10;

    // Test case 4: Count down
    nReset = 1; Load = 0; Count_en = 1; Up = 0; Count_in = 4'b1101;
    #20;

    // Test case 5: Count up
    nReset = 1; Load = 0; Count_en = 1; Up = 1; Count_in = 4'b0110;
    #20;

    // Test case 6: Load inputs and Count down
    nReset = 1; Load = 1; Count_en = 1; Up = 0; Count_in = 4'b1010;
    #10;
    Load = 0;
    #10;

    // Test case 7: Reset, Count up, and Load inputs
    nReset = 1; Load = 1; Count_en = 1; Up = 1; Count_in = 4'b0011;
    #10;
    nReset = 0;
    #10;

    // Test case 8: Reset, Count down, and Load inputs
    nReset = 1; Load = 1; Count_en = 1; Up = 0; Count_in = 4'b1101;
    #10;
    nReset = 0;
    #10;

    $finish;
  end

endmodule
