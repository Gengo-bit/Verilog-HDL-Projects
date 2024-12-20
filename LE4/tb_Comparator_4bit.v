/**********************************************
*
*FILE: 			tb_Comparator_4bit.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	Testbench file for 4-Bit Comparator
*
***********************************************/
`timescale 1 ns / 1 ps
module tb_Comparator_4bit ();

	reg	[3:0] A, B;
	wire 	[2:0] R;
	
	Comparator_4bit UUT (.A(A), .B(B), .R(R));
	initial begin
	
		$display("=-= Test Bench of 4-Bit Comparator =-=");
		
		$display("A < B");
		
			A = 4'b0001; B = 4'b1000; #10; // TRUE, 1 < 8
			A = 4'b0010; B = 4'b1001; #10; // TRUE, 2 < 9
			A = 4'b0011; B = 4'b1010; #10; // TRUE, 3 < A
			A = 4'b0100; B = 4'b1011; #10; // TRUE, 4 < B
			
		$display("A == B");
		
			A = 4'b0000; B = 4'b0000; #10; // TRUE, 0 = 0
			A = 4'b1010; B = 4'b1010; #10; // TRUE, A = A
			A = 4'b1001; B = 4'b1001; #10; // TRUE, 9 = 9
			A = 4'b1111; B = 4'b1111; #10; // TRUE, F = F
		
		$display("A > B");
	
			A = 4'b1000; B = 4'b0000; #10; // TRUE, 8 > 0
			A = 4'b1111; B = 4'b0111; #10; // TRUE, F > 7
			A = 4'b0110; B = 4'b0101; #10; // TRUE, 6 > 5
			A = 4'b1100; B = 4'b0011; #10; // TRUE, C > 3
			
		$stop;
		
	end
	initial begin
	
		$monitor("Time = %2d ns\tA = %d | [%b]\tB = %d [%b]\tR = %b", $time, A, A, B, B, R);
	
	end
endmodule
