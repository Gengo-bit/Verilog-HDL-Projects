/**********************************************
*
*FILE: 			tb_Decoder_2x4.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	Testbench file for 2x4 Decoder
*
***********************************************/	
`timescale 1 ns / 1 ps
module tb_Decoder_2x4();

	reg  [1:0] A;
	reg  		  E;
	wire [3:0] D;
	
	Decoder_2x4 UUT (.A(A), .E(E), .D(D));
	
	initial begin
		
		$display ("Starting simulation at %0d ns...", $time);
		
			A = 2'bxx; 	E = 1'b0; 	#10
			A = 2'b00; 	E = 1'b1; 	#10
			A = 2'b01; 	E = 1'b1;	#10
			A = 2'b10; 	E = 1'b1;	#10
			A = 2'b11; 	E = 1'b1;	#10
		
		$display ("Finished simulation at %0d ns.", $time);
		
		$stop;
	end
	
	initial begin
	
		$monitor ("Time = $d ns\t Enable = %b\t A = %b\t D = %b", $time, E, A, D);
	
	end
		
endmodule
