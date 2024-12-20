/**********************************************
*
*FILE: 			tb_Mux_4x1_4bit.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	Testbench file for 4-Bit 4x1 Multiplexer
*
***********************************************/
module tb_Mux_4x1_4bit();

	reg  [3:0] A, B, C, D;
	reg  [1:0] S;	
	wire [3:0] Y;
	
	Mux_4x1_nbit #(.n(4)) UUT(
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.S(S),
		.Y(Y)
	);

	initial begin
	
		$display("=-= Test Bench of 4-Bit 4x1 Multiplexer =-=");
		
		$display("=-= A =-=");	
      A = 4'b1010; B = 4'b0110; C = 4'b1101; D = 4'b0001; S = 2'b00; #10;
        
      $display("=-= B =-=");
      A = 4'b1010; B = 4'b0110; C = 4'b1101; D = 4'b0001; S = 2'b01; #10;
      
      $display("=-= C =-=");
      A = 4'b1010; B = 4'b0110; C = 4'b1101; D = 4'b0001; S = 2'b10; #10;
      
      $display("=-= D =-=");	
      A = 4'b1010; B = 4'b0110; C = 4'b1101; D = 4'b0001; S = 2'b11; #10;
		
		$stop;
		
	end
	initial begin
	
		$monitor("Time = %2d ns\t|A = %d [%b]|\t|B = %d [%b]|\t|C = %d [%b]|\t|D = %d [%b]|\t|S = %d [%b]|\t|Y = %d [%b]|", $time, A, A, B, B, C, C, D, D, S, S, Y, Y);
		
	end
endmodule
