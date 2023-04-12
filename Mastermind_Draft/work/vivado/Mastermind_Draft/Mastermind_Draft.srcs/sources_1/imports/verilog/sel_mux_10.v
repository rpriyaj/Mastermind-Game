/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sel_mux_10 (
    input [15:0] ra_data,
    input [15:0] rb_data,
    input [15:0] alu_data,
    input [1:0] asel_signal,
    input [2:0] bsel_signal,
    input [1:0] wdsel_signal,
    output reg [15:0] asel_out,
    output reg [15:0] bsel_out,
    output reg [15:0] wdsel_out
  );
  
  
  
  always @* begin
    asel_out = 16'h0000;
    bsel_out = 16'h0000;
    wdsel_out = 16'h0000;
    
    case (asel_signal)
      2'h0: begin
        asel_out = ra_data;
      end
      2'h1: begin
        asel_out = 16'h0001;
      end
      2'h2: begin
        asel_out = 16'h0000;
      end
      2'h3: begin
        asel_out = 16'h0002;
      end
      3'h4: begin
        asel_out = 16'h0008;
      end
      default: begin
        asel_out = ra_data;
      end
    endcase
    
    case (bsel_signal)
      3'h0: begin
        bsel_out = rb_data;
      end
      3'h1: begin
        bsel_out = 16'h0000;
      end
      3'h2: begin
        bsel_out = 16'h0001;
      end
      3'h3: begin
        bsel_out = 16'h0003;
      end
      3'h4: begin
        bsel_out = 16'h0004;
      end
      3'h5: begin
        bsel_out = 16'h0005;
      end
      3'h6: begin
        bsel_out = 16'h0006;
      end
      3'h7: begin
        bsel_out = 16'h0008;
      end
      default: begin
        bsel_out = rb_data;
      end
    endcase
    
    case (wdsel_signal)
      2'h0: begin
        wdsel_out = alu_data;
      end
      2'h1: begin
        wdsel_out = 16'h0fff;
      end
      2'h2: begin
        wdsel_out = 16'h0000;
      end
    endcase
  end
endmodule
