/**********************************************
*
*FILE: 			Comparator_4bit.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	Simulates a 4-Bit Comparator
*
***********************************************/
module Comparator_4bit (A, B, R);

	input 	[3:0] A, B;
	output 	[2:0] R;
	
  //===--=== 1 if true, else 0 ===--===//
	assign R[2] = (A > B)?  1'b1 : 1'b0;
	assign R[1] = (A == B)? 1'b1 : 1'b0;
	assign R[0] = (A < B)?  1'b1 : 1'b0;
	
endmodule
