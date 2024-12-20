/**********************************************
*
*FILE: 			tb_Decoder_3x8.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	Testbench file for 3x8 Decoder
*
***********************************************/	
`timescale 1 ns / 1 ps
module tb_Decoder_3x8();

	reg [2:0] A;
	reg  	    E;
	wire [7:0] D;
  
	Decoder_3x8 UUT (.A(A), .E(E), .D(D));
  
	initial begin
	
		$display ("Starting simulation at %0d ns...", $time);
  
			A = 3'bxxx;  E = 1'b0;   #10;
			A = 3'b000;  E = 1'b1;   #10;
			A = 3'b001;  E = 1'b1;   #10;
			A = 3'b010;  E = 1'b1;   #10;
			A = 3'b011;  E = 1'b1;   #10;
			A = 3'b100;  E = 1'b1;   #10;
			A = 3'b101;  E = 1'b1;   #10;
			A = 3'b110;  E = 1'b1;   #10;
			A = 3'b111;  E = 1'b1;   #10;		
			
		$display ("Finished simulation at %0d ns.", $time);
		
      $stop;
  end

  initial begin
  
		$monitor("Time = %2d ns\t Enable = %b\t A = %b\t D = %b", $time, E, A, D);
	 
  end

endmodule
