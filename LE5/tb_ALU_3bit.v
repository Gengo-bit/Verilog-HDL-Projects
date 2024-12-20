/******************************************************************
*
*FILE: 			tb_ALU_3bit.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	Testbench file for 3-Bit Arithmetic and Logic Unit 
*
******************************************************************/
`timescale 1 ns/ 1 ps
module tb_ALU_3bit();

	reg 	[3:0] A, B;
	reg	[2:0]	Mode;
	reg			CB_in;
	wire	[3:0] Result;
	wire 			CB_out;
		
	ALU_nbit #(.n(3))	UUT (.A(A), .B(B), .Mode(Mode), .CB_in(CB_in),
				  .Result(Result), .CB_out(CB_out));								
		
initial begin

	$display("Initiating simulation at %0d ns. ", $time);
		
	//=-= Addition =-=//
	Mode	=	3'b000;
	A = 4'd4; 	B = 4'd2;	CB_in = 1'b1;	#10
	A = 4'd8; 	B = 4'd14;	CB_in = 1'b0;	#10
	A = 4'd5; 	B = 4'd12;	CB_in = 1'b1;	#10
	
	//=-= Subtraction =-=//
	Mode	=	3'b001;	
	A = 4'd4; 	B = 4'd2;		#10
	A = 4'd8; 	B = 4'd14;		#10
	A = 4'd5; 	B = 4'd12;		#10
				
	//=-= AND =-=//
	Mode	=	3'b010;
	A = 4'd4; 	B = 4'd2;		#10
	A = 4'd8; 	B = 4'd14;		#10
	A = 4'd5; 	B = 4'd12;		#10
		
	//=-= OR =-=//
	Mode	=	3'b011;
	A = 4'd4; 	B = 4'd2;		#10
	A = 4'd8; 	B = 4'd14;		#10
	A = 4'd5; 	B = 4'd12;		#10
				
	//=-= XOR =-=//
	Mode	=	3'b100;
	A = 4'd4; 	B = 4'd2;		#10
	A = 4'd8; 	B = 4'd14;		#10
	A = 4'd5; 	B = 4'd12;		#10
										
	//=-= NOT =-=//
	Mode	=	3'b101;
	A = 4'd11; 			#10
	A = 4'd8; 			#10
	A = 4'd5; 			#10
					
	//=-= INC =-=//
	Mode	=	3'b110;
	A = 4'd11; 			#10
	A = 4'd8; 			#10
	A = 4'd5; 			#10							
									
	//=-= DEC =-=//
	Mode	=	3'b111;
	A = 4'd11; 			#10
	A = 4'd8; 			#10
	A = 4'd5; 			#10
			
	$display("Simulation finished at %0d ns. ", $time);
	$stop;
		
end
initial	begin

	$monitor("Time = %2d ns\tMode = %b\tA = %b\tB = %b\tCB_in = %b\tResult = %b\tCB_out = %b",
	$time, Mode, A, B, CB_in, Result, CB_out);		
	
end
endmodule
			