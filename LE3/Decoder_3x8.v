/**********************************************
*
*FILE: 			Decoder_3x8.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	Simulates a 3x8 Decoder
*
***********************************************/
module Decoder_3x8 (A, E, D);

	input  [2:0] A;
	input 		 E;
	output [7:0] D;
	wire 	       n1;
	wire	 [1:0] a;
	
	Decoder_2x4 d1 (A[1:0], a[0], D[3:0]);
	Decoder_2x4 d2 (A[1:0], a[1], D[7:4]); 
	not 		not1  (n1, A[2]);
	and 		and1	(a[0], n1, E);
	and		and2  (a[1], E, A[2]);
	
endmodule
