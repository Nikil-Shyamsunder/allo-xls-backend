module gemm_chat_3_1(
  input wire clk,
  input wire rst,
  input wire [127:0] a,
  input wire [127:0] b,
  output wire [127:0] out
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    begin
      umul32b_32b_x_32b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  wire [31:0] a_unflattened[2][2];
  assign a_unflattened[0][0] = a[31:0];
  assign a_unflattened[0][1] = a[63:32];
  assign a_unflattened[1][0] = a[95:64];
  assign a_unflattened[1][1] = a[127:96];
  wire [31:0] b_unflattened[2][2];
  assign b_unflattened[0][0] = b[31:0];
  assign b_unflattened[0][1] = b[63:32];
  assign b_unflattened[1][0] = b[95:64];
  assign b_unflattened[1][1] = b[127:96];

  // ===== Pipe stage 0:

  // Registers for pipe stage 0:
  reg [31:0] p0_a[2][2];
  reg [31:0] p0_b[2][2];
  always_ff @ (posedge clk) begin
    p0_a <= a_unflattened;
    p0_b <= b_unflattened;
  end

  // ===== Pipe stage 1:
  wire [31:0] p1_aik__2_comb;
  wire [31:0] p1_array_index_218_comb;
  wire [31:0] p1_aik__4_comb;
  wire [31:0] p1_array_index_220_comb;
  wire [31:0] p1_array_index_221_comb;
  wire [31:0] p1_array_index_222_comb;
  wire [31:0] p1_aik__7_comb;
  wire [31:0] p1_aik__8_comb;
  wire [31:0] p1_val__8_comb;
  wire [31:0] p1_umul_226_comb;
  wire [31:0] p1_val__9_comb;
  wire [31:0] p1_umul_228_comb;
  wire [31:0] p1_val__4_comb;
  wire [31:0] p1_umul_230_comb;
  wire [31:0] p1_val__5_comb;
  wire [31:0] p1_umul_232_comb;
  assign p1_aik__2_comb = p0_a[1'h0][1'h0];
  assign p1_array_index_218_comb = p0_b[1'h0][1'h0];
  assign p1_aik__4_comb = p0_a[1'h0][1'h1];
  assign p1_array_index_220_comb = p0_b[1'h1][1'h0];
  assign p1_array_index_221_comb = p0_b[1'h0][1'h1];
  assign p1_array_index_222_comb = p0_b[1'h1][1'h1];
  assign p1_aik__7_comb = p0_a[1'h1][1'h0];
  assign p1_aik__8_comb = p0_a[1'h1][1'h1];
  assign p1_val__8_comb = umul32b_32b_x_32b(p1_aik__2_comb, p1_array_index_218_comb);
  assign p1_umul_226_comb = umul32b_32b_x_32b(p1_aik__4_comb, p1_array_index_220_comb);
  assign p1_val__9_comb = umul32b_32b_x_32b(p1_aik__2_comb, p1_array_index_221_comb);
  assign p1_umul_228_comb = umul32b_32b_x_32b(p1_aik__4_comb, p1_array_index_222_comb);
  assign p1_val__4_comb = umul32b_32b_x_32b(p1_aik__7_comb, p1_array_index_218_comb);
  assign p1_umul_230_comb = umul32b_32b_x_32b(p1_aik__8_comb, p1_array_index_220_comb);
  assign p1_val__5_comb = umul32b_32b_x_32b(p1_aik__7_comb, p1_array_index_221_comb);
  assign p1_umul_232_comb = umul32b_32b_x_32b(p1_aik__8_comb, p1_array_index_222_comb);

  // Registers for pipe stage 1:
  reg [31:0] p1_val__8;
  reg [31:0] p1_umul_226;
  reg [31:0] p1_val__9;
  reg [31:0] p1_umul_228;
  reg [31:0] p1_val__4;
  reg [31:0] p1_umul_230;
  reg [31:0] p1_val__5;
  reg [31:0] p1_umul_232;
  always_ff @ (posedge clk) begin
    p1_val__8 <= p1_val__8_comb;
    p1_umul_226 <= p1_umul_226_comb;
    p1_val__9 <= p1_val__9_comb;
    p1_umul_228 <= p1_umul_228_comb;
    p1_val__4 <= p1_val__4_comb;
    p1_umul_230 <= p1_umul_230_comb;
    p1_val__5 <= p1_val__5_comb;
    p1_umul_232 <= p1_umul_232_comb;
  end

  // ===== Pipe stage 2:
  wire [31:0] p2_val__2_comb;
  wire [31:0] p2_val__3_comb;
  wire [31:0] p2_val__6_comb;
  wire [31:0] p2_val__7_comb;
  wire [31:0] p2_new_row_comb[2];
  wire [31:0] p2_new_row__1_comb[2];
  assign p2_val__2_comb = p1_val__8 + p1_umul_226;
  assign p2_val__3_comb = p1_val__9 + p1_umul_228;
  assign p2_val__6_comb = p1_val__4 + p1_umul_230;
  assign p2_val__7_comb = p1_val__5 + p1_umul_232;
  assign p2_new_row_comb[0] = p2_val__2_comb;
  assign p2_new_row_comb[1] = p2_val__3_comb;
  assign p2_new_row__1_comb[0] = p2_val__6_comb;
  assign p2_new_row__1_comb[1] = p2_val__7_comb;

  // Registers for pipe stage 2:
  reg [31:0] p2_new_row[2];
  reg [31:0] p2_new_row__1[2];
  always_ff @ (posedge clk) begin
    p2_new_row <= p2_new_row_comb;
    p2_new_row__1 <= p2_new_row__1_comb;
  end

  // ===== Pipe stage 3:

  // Registers for pipe stage 3:
  reg [31:0] p3_new_row[2];
  reg [31:0] p3_new_row__1[2];
  always_ff @ (posedge clk) begin
    p3_new_row <= p2_new_row;
    p3_new_row__1 <= p2_new_row__1;
  end

  // ===== Pipe stage 4:

  // Registers for pipe stage 4:
  reg [31:0] p4_new_row[2];
  reg [31:0] p4_new_row__1[2];
  always_ff @ (posedge clk) begin
    p4_new_row <= p3_new_row;
    p4_new_row__1 <= p3_new_row__1;
  end

  // ===== Pipe stage 5:
  wire [31:0] p5_array_267_comb[2][2];
  assign p5_array_267_comb[0] = p4_new_row;
  assign p5_array_267_comb[1] = p4_new_row__1;

  // Registers for pipe stage 5:
  reg [31:0] p5_array_267[2][2];
  always_ff @ (posedge clk) begin
    p5_array_267 <= p5_array_267_comb;
  end
  assign out = {{p5_array_267[1][1], p5_array_267[1][0]}, {p5_array_267[0][1], p5_array_267[0][0]}};
endmodule
