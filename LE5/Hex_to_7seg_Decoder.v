/***************************************************
*
*FILE: 			Hex_to_7seg_Decoder.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	simulates a Hex to 7 segment Decoder
*
***************************************************/
module Hex_to_7seg_Decoder(

	input wire [3:0] Hex,
	input wire dp,
	output reg [7:0] S
	
);

always @(*)
begin

    case (Hex)
    
      4'h0 : S[7:0] = dp ? 8'b11000000 : 8'b01000000;
      4'h1 : S[7:0] = dp ? 8'b11111001 : 8'b01111001;
      4'h2 : S[7:0] = dp ? 8'b10100100 : 8'b00100100;
      4'h3 : S[7:0] = dp ? 8'b10110000 : 8'b00110000;
      4'h4 : S[7:0] = dp ? 8'b10011001 : 8'b00011001;
      4'h5 : S[7:0] = dp ? 8'b10010010 : 8'b00010010;
      4'h6 : S[7:0] = dp ? 8'b10000010 : 8'b00000010;
      4'h7 : S[7:0] = dp ? 8'b11111000 : 8'b01111000;
      4'h8 : S[7:0] = dp ? 8'b10000000 : 8'b00000000;
      4'h9 : S[7:0] = dp ? 8'b10010000 : 8'b00010000;
      4'hA : S[7:0] = dp ? 8'b10001000 : 8'b00001000;
      4'hB : S[7:0] = dp ? 8'b10000011 : 8'b00000011;
      4'hC : S[7:0] = dp ? 8'b11000110 : 8'b01000110;
      4'hD : S[7:0] = dp ? 8'b10100001 : 8'b00100001;
      4'hE : S[7:0] = dp ? 8'b10000110 : 8'b00000110;
      4'hF : S[7:0] = dp ? 8'b10001110 : 8'b00001110;
      default : S[7:0] = dp ? 8'b11111111 : 8'b01111111;
    
    endcase
end

endmodule
