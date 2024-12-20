/**********************************************************
*
*FILE: 			JK_FF.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	simulates a JK Flip-flop
*
**********************************************************/
module JK_FF (

    input  wire J, K, Reset, Clk,
    output reg Q, Q_bar
	 
);

	always @(posedge Clk or posedge Reset) 
	begin
	
		if (Reset) 
		begin
		
			Q <= 1'b0;
         Q_bar <= 1'b1;
			
      end 
		
		else begin
		
			case ({J, K})
         
				2'b00: begin 	//No change
            Q <= Q;
            Q_bar <= Q_bar;
				end
            
				2'b01: begin 	//RESET
            Q <= 1'b0;
            Q_bar <= 1'b1;
				end
                
				2'b10: begin 	//SET
            Q <= 1'b1;
            Q_bar <= 1'b0;
            end
				
            2'b11: begin 	//Toggle
            Q <= ~Q;
            Q_bar <= ~Q_bar;
            end
				
            default: begin //Default to no change
            Q <= Q;
            Q_bar <= Q_bar;
            end
				
        endcase
		end
    end
endmodule
