/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_7 (
    input rst,
    input [5:0] alufn_signal,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] out,
    output reg [0:0] div_err,
    output reg [2:0] zvn,
    output reg [15:0] a_data,
    output reg [15:0] b_data,
    output reg [5:0] aluop_signal
  );
  
  
  
  wire [16-1:0] M_cmp_out;
  reg [1-1:0] M_cmp_z;
  reg [1-1:0] M_cmp_v;
  reg [1-1:0] M_cmp_n;
  reg [6-1:0] M_cmp_alufn_op;
  comparator_15 cmp (
    .rst(rst),
    .z(M_cmp_z),
    .v(M_cmp_v),
    .n(M_cmp_n),
    .alufn_op(M_cmp_alufn_op),
    .out(M_cmp_out)
  );
  
  wire [3-1:0] M_add_zvn;
  wire [16-1:0] M_add_out;
  reg [16-1:0] M_add_a;
  reg [16-1:0] M_add_b;
  reg [6-1:0] M_add_alufn;
  adder_16 add (
    .rst(rst),
    .a(M_add_a),
    .b(M_add_b),
    .alufn(M_add_alufn),
    .zvn(M_add_zvn),
    .out(M_add_out)
  );
  
  wire [16-1:0] M_shift_out;
  reg [16-1:0] M_shift_a;
  reg [4-1:0] M_shift_b;
  reg [6-1:0] M_shift_alufn_op;
  shifter_17 shift (
    .rst(rst),
    .a(M_shift_a),
    .b(M_shift_b),
    .alufn_op(M_shift_alufn_op),
    .out(M_shift_out)
  );
  
  wire [16-1:0] M_bool_out;
  reg [16-1:0] M_bool_a;
  reg [16-1:0] M_bool_b;
  reg [6-1:0] M_bool_alufn_op;
  boolean_18 bool (
    .rst(rst),
    .a(M_bool_a),
    .b(M_bool_b),
    .alufn_op(M_bool_alufn_op),
    .out(M_bool_out)
  );
  
  wire [16-1:0] M_mult_out;
  reg [16-1:0] M_mult_a;
  reg [16-1:0] M_mult_b;
  reg [6-1:0] M_mult_alufn_op;
  multiplier_19 mult (
    .rst(rst),
    .a(M_mult_a),
    .b(M_mult_b),
    .alufn_op(M_mult_alufn_op),
    .out(M_mult_out)
  );
  
  always @* begin
    zvn = 3'h0;
    M_add_a = a;
    M_add_b = b;
    M_add_alufn = alufn_signal;
    M_bool_a = a;
    M_bool_b = b;
    M_bool_alufn_op = alufn_signal;
    M_mult_a = a;
    M_mult_b = b;
    M_mult_alufn_op = alufn_signal;
    M_shift_a = a;
    M_shift_b = b;
    M_shift_alufn_op = alufn_signal;
    M_cmp_z = 1'h0;
    M_cmp_v = 1'h0;
    M_cmp_n = 1'h0;
    M_cmp_alufn_op = alufn_signal;
    div_err = 1'h0;
    out = 16'h0000;
    a_data = a;
    b_data = b;
    aluop_signal = alufn_signal;
    
    case (alufn_signal[4+1-:2])
      2'h0: begin
        
        case (alufn_signal[1+0-:1])
          1'h0: begin
            out = M_add_out;
            zvn[2+0-:1] = M_add_zvn[2+0-:1];
            zvn[1+0-:1] = M_add_zvn[1+0-:1];
            zvn[0+0-:1] = M_add_zvn[0+0-:1];
          end
          1'h1: begin
            out = M_mult_out;
          end
        endcase
      end
      2'h1: begin
        out = M_bool_out;
      end
      2'h2: begin
        out = M_shift_out;
      end
      2'h3: begin
        M_cmp_z = M_add_zvn[2+0-:1];
        M_cmp_v = M_add_zvn[1+0-:1];
        M_cmp_n = M_add_zvn[0+0-:1];
        out = M_cmp_out;
      end
    endcase
  end
endmodule
