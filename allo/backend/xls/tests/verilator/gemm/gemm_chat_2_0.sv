module gemm_chat_2_0(
  input wire clk,
  input wire rst,
  input wire [127:0] A,
  input wire [127:0] B,
  output wire [127:0] out
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    begin
      umul32b_32b_x_32b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  wire [31:0] A_unflattened[2][2];
  assign A_unflattened[0][0] = A[31:0];
  assign A_unflattened[0][1] = A[63:32];
  assign A_unflattened[1][0] = A[95:64];
  assign A_unflattened[1][1] = A[127:96];
  wire [31:0] B_unflattened[2][2];
  assign B_unflattened[0][0] = B[31:0];
  assign B_unflattened[0][1] = B[63:32];
  assign B_unflattened[1][0] = B[95:64];
  assign B_unflattened[1][1] = B[127:96];

  // ===== Pipe stage 0:

  // Registers for pipe stage 0:
  reg [31:0] p0_A[2][2];
  reg [31:0] p0_B[2][2];
  always_ff @ (posedge clk) begin
    p0_A <= A_unflattened;
    p0_B <= B_unflattened;
  end

  // ===== Pipe stage 1:
  wire [31:0] p1_array_index_231_comb;
  wire [31:0] p1_array_index_232_comb;
  wire [31:0] p1_array_index_233_comb;
  wire [31:0] p1_array_index_234_comb;
  wire [31:0] p1_array_index_235_comb;
  wire [31:0] p1_array_index_236_comb;
  wire [31:0] p1_array_index_237_comb;
  wire [31:0] p1_array_index_238_comb;
  wire [31:0] p1_umul_239_comb;
  wire [31:0] p1_umul_240_comb;
  wire [31:0] p1_umul_241_comb;
  wire [31:0] p1_umul_242_comb;
  wire [31:0] p1_umul_243_comb;
  wire [31:0] p1_umul_244_comb;
  wire [31:0] p1_umul_245_comb;
  wire [31:0] p1_umul_246_comb;
  assign p1_array_index_231_comb = p0_A[1'h0][1'h0];
  assign p1_array_index_232_comb = p0_B[1'h0][1'h0];
  assign p1_array_index_233_comb = p0_A[1'h0][1'h1];
  assign p1_array_index_234_comb = p0_B[1'h1][1'h0];
  assign p1_array_index_235_comb = p0_B[1'h0][1'h1];
  assign p1_array_index_236_comb = p0_B[1'h1][1'h1];
  assign p1_array_index_237_comb = p0_A[1'h1][1'h0];
  assign p1_array_index_238_comb = p0_A[1'h1][1'h1];
  assign p1_umul_239_comb = umul32b_32b_x_32b(p1_array_index_231_comb, p1_array_index_232_comb);
  assign p1_umul_240_comb = umul32b_32b_x_32b(p1_array_index_233_comb, p1_array_index_234_comb);
  assign p1_umul_241_comb = umul32b_32b_x_32b(p1_array_index_231_comb, p1_array_index_235_comb);
  assign p1_umul_242_comb = umul32b_32b_x_32b(p1_array_index_233_comb, p1_array_index_236_comb);
  assign p1_umul_243_comb = umul32b_32b_x_32b(p1_array_index_237_comb, p1_array_index_232_comb);
  assign p1_umul_244_comb = umul32b_32b_x_32b(p1_array_index_238_comb, p1_array_index_234_comb);
  assign p1_umul_245_comb = umul32b_32b_x_32b(p1_array_index_237_comb, p1_array_index_235_comb);
  assign p1_umul_246_comb = umul32b_32b_x_32b(p1_array_index_238_comb, p1_array_index_236_comb);

  // Registers for pipe stage 1:
  reg [31:0] p1_umul_239;
  reg [31:0] p1_umul_240;
  reg [31:0] p1_umul_241;
  reg [31:0] p1_umul_242;
  reg [31:0] p1_umul_243;
  reg [31:0] p1_umul_244;
  reg [31:0] p1_umul_245;
  reg [31:0] p1_umul_246;
  always_ff @ (posedge clk) begin
    p1_umul_239 <= p1_umul_239_comb;
    p1_umul_240 <= p1_umul_240_comb;
    p1_umul_241 <= p1_umul_241_comb;
    p1_umul_242 <= p1_umul_242_comb;
    p1_umul_243 <= p1_umul_243_comb;
    p1_umul_244 <= p1_umul_244_comb;
    p1_umul_245 <= p1_umul_245_comb;
    p1_umul_246 <= p1_umul_246_comb;
  end

  // ===== Pipe stage 2:
  wire [31:0] p2_new_sum_comb;
  wire [31:0] p2_new_sum__1_comb;
  wire [31:0] p2_new_sum__2_comb;
  wire [31:0] p2_new_sum__3_comb;
  wire [31:0] p2_new_row_i__1_comb[2];
  wire [31:0] p2_new_row_i__3_comb[2];
  assign p2_new_sum_comb = p1_umul_239 + p1_umul_240;
  assign p2_new_sum__1_comb = p1_umul_241 + p1_umul_242;
  assign p2_new_sum__2_comb = p1_umul_243 + p1_umul_244;
  assign p2_new_sum__3_comb = p1_umul_245 + p1_umul_246;
  assign p2_new_row_i__1_comb[0] = p2_new_sum_comb;
  assign p2_new_row_i__1_comb[1] = p2_new_sum__1_comb;
  assign p2_new_row_i__3_comb[0] = p2_new_sum__2_comb;
  assign p2_new_row_i__3_comb[1] = p2_new_sum__3_comb;

  // Registers for pipe stage 2:
  reg [31:0] p2_new_row_i__1[2];
  reg [31:0] p2_new_row_i__3[2];
  always_ff @ (posedge clk) begin
    p2_new_row_i__1 <= p2_new_row_i__1_comb;
    p2_new_row_i__3 <= p2_new_row_i__3_comb;
  end

  // ===== Pipe stage 3:

  // Registers for pipe stage 3:
  reg [31:0] p3_new_row_i__1[2];
  reg [31:0] p3_new_row_i__3[2];
  always_ff @ (posedge clk) begin
    p3_new_row_i__1 <= p2_new_row_i__1;
    p3_new_row_i__3 <= p2_new_row_i__3;
  end

  // ===== Pipe stage 4:

  // Registers for pipe stage 4:
  reg [31:0] p4_new_row_i__1[2];
  reg [31:0] p4_new_row_i__3[2];
  always_ff @ (posedge clk) begin
    p4_new_row_i__1 <= p3_new_row_i__1;
    p4_new_row_i__3 <= p3_new_row_i__3;
  end

  // ===== Pipe stage 5:
  wire [31:0] p5_C_after_js__1_comb[2][2];
  assign p5_C_after_js__1_comb[0] = p4_new_row_i__1;
  assign p5_C_after_js__1_comb[1] = p4_new_row_i__3;

  // Registers for pipe stage 5:
  reg [31:0] p5_C_after_js__1[2][2];
  always_ff @ (posedge clk) begin
    p5_C_after_js__1 <= p5_C_after_js__1_comb;
  end
  assign out = {{p5_C_after_js__1[1][1], p5_C_after_js__1[1][0]}, {p5_C_after_js__1[0][1], p5_C_after_js__1[0][0]}};
endmodule
