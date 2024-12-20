/**********************************************************
*
*FILE: 			tb_Hex_to_7seg_Decoder.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	Testbench file for Hex to 7 segment Decoder
*
**********************************************************/
`timescale 1 ns/ 1 ps
module tb_Hex_to_7seg_Decoder();

	reg	[3:0]	 	Hex;
	reg				dp;
	wire	[7:0]	 	S;
	
	Hex_to_7seg_Decoder UUT (.Hex(Hex), .dp(dp), .S(S));
	
initial begin

	{Hex, dp} = 5'b00001;	 #10
	{Hex, dp} = 5'b00010;	 #10
	{Hex, dp} = 5'b00101;	 #10
	{Hex, dp} = 5'b00110;	 #10
	{Hex, dp} = 5'b01000;	 #10
	{Hex, dp} = 5'b01011;	 #10
	{Hex, dp} = 5'b01101;	 #10
	{Hex, dp} = 5'b01110;	 #10
	{Hex, dp} = 5'b10001;	 #10
	{Hex, dp} = 5'b10010;	 #10
	{Hex, dp} = 5'b10101;	 #10
	{Hex, dp} = 5'b10110;	 #10
	{Hex, dp} = 5'b11000;	 #10
	{Hex, dp} = 5'b11011;	 #10
	{Hex, dp} = 5'b11101;	 #10
	{Hex, dp} = 5'b11110;	 #10
		
	$stop;
		
end

initial begin

		$monitor ("Time = %2d ns\t Hex = %d\tDP = %b\t SSeg = %b", $time,  Hex, dp,  S);
		
end
	
endmodule 
