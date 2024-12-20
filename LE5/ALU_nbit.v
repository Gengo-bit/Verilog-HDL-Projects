/**********************************************************
*
*FILE: 			ALU_nbit.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	simulates a n-Bit Arithmetic and Logic Unit 
*
**********************************************************/
module ALU_nbit #(parameter n = 4)(A, B, CB_in, Mode, Result, CB_out);

	input wire 	[n-1	: 0]	A, B;
	input wire	[2 	: 0]	Mode;
	input wire					CB_in;
	output reg	[n-1 	: 0] 	Result;
	output reg					CB_out;
	
always @(*) begin
			
	CB_out = 1'b0;
				
	case (Mode)		
			
		3'b000 : {CB_out, Result} 	= A + B + {{n-1{1'b0}}, CB_in}; 	
		3'b001 :	{CB_out, Result} 	= A - B; 																	
		3'b010 :	Result				= A & B;									//AND 								
		3'b011 :	Result				= A | B;									//OR 										
		3'b100 :	Result				= A ^ B;									//XOR 										
		3'b101 :	Result				= ~A;										//NOT 										
		3'b110 :	Result				= {A+{{n-1{1'b0}},1'b1}};			//INC 										
		3'b111 : Result				= {A-{{n-1{1'b0}},1'b1}};			//DEC 
				
	endcase	
	
end
endmodule 
