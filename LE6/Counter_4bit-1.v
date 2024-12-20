/**********************************************************
*
*FILE: 			Counter_4bit.v
*AUTHOR: 		Paul Emmanuel G. Corsino
*CLASS: 			CpE 3101L
*SCHEDULE:		Group 2 FRI 11:00 AM - 2:00 PM
*DESCRIPTION:	simulates a 4bit Counter
*
**********************************************************/
module Counter_4bit (
    input nReset,
    input clk,
    input Load,
    input Count_en,
    input Up,
    input [3:0] Count_in,
    output reg [3:0] Count_out
);

    always @(posedge clk or negedge nReset) begin
        if (!nReset) begin
            // Reset to 0
            Count_out <= 4'b0000;
        end else if (Load) begin
            // Load inputs (parallel load)
            Count_out <= Count_in;
        end else if (Count_en) begin
            // Counter Operation
            if (Up) begin
                // Count up
                Count_out <= Count_out + 1;
            end else begin
                // Count down
                Count_out <= Count_out - 1;
            end
        end
        // No change if none of the conditions match
    end

endmodule
