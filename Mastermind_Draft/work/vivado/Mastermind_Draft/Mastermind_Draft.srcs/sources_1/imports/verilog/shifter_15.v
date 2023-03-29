/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shifter_15 (
    input rst,
    input [15:0] a,
    input [3:0] b,
    input [5:0] alufn_op,
    output reg [15:0] out
  );
  
  
  
  always @* begin
    
    case (alufn_op[0+1-:2])
      default: begin
        out = a;
      end
      2'h0: begin
        out = a << b;
      end
      2'h1: begin
        out = a >> b;
      end
      2'h2: begin
        out = $signed(a) >>> b;
      end
      2'h3: begin
        out = (a << b) | (a >> (5'h10 - b));
      end
    endcase
  end
endmodule
