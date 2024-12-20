/**********************************************
*
*FILE: 			FullAdder.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	simulates a 4x1 Multiplexer with n bits
*
***********************************************/
module Mux_4x1_nbit
	#(parameter n = 4) 
(
	input  [(n-1):0] A, B, C, D,
	input  [1:0] 	  S,
	output [(n-1):0] Y
);

	assign Y = (S == 2'b00) ? A : (S == 2'b01) ? B : (S == 2'b10) ? C : (S == 2'b11) ? D : {n{1'b0}};
	
endmodule
