/**********************************************************
*
*FILE: 			tb_JK_FF.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	Testbench file for JK_FF
*
**********************************************************/
`timescale 1 ns/ 1 ps
module tb_JK_FF();
	
	reg	J, K, Reset, Clk;
	wire	Q, Q_bar;
	
	JK_FF UUT (J, K, Reset, Clk, Q, Q_bar);
	
	initial
	
		Clk = 1'b0;
		
	always
	
		#5 Clk = ~Clk;
		
	initial
		begin
		
			Reset = 1'b1; #10
			Reset = 1'b0;
			
		end	
		
	initial
		begin
		
			{J, K} = 2'b00; #12
			{J, K} = 2'b01; #10
			{J, K} = 2'b10; #25
			{J, K} = 2'b11; #12
			{J, K} = 2'b00; #10
			$stop;
			
		end
endmodule	