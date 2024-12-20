/**********************************************
*
*FILE: 			Decoder_2x4.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	Simulates a 2x4 Decoder
*
***********************************************/
module Decoder_2x4 (A, E, D);

	input  [1:0] A;
	input  		 E;
	output [3:0] D;
	wire 	 [4:1] a;
	wire	 [2:1] n;
	
	not not1  (n[1], A[1]);
	not not2	 (n[2], A[0]);
	and and1  (a[1], A[1], A[0]);
	and and1e (D[3], a[1], E);
	and and2  (a[2], A[1], n[2]);
	and and2e (D[2], a[2], E);
	and and3  (a[3], n[1], A[0]);
	and and3e (D[1], a[3], E);
	and and4  (a[4], n[1], n[2]);
	and and4e (D[0], a[4], E);
	
endmodule	