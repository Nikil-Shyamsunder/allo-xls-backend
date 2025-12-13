module gemm_chat_2_1(
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
  wire [31:0] p1_a_ik_comb;
  wire [31:0] p1_b_kj_comb;
  wire [31:0] p1_a_ik__1_comb;
  wire [31:0] p1_b_kj__1_comb;
  wire [31:0] p1_b_kj__2_comb;
  wire [31:0] p1_b_kj__3_comb;
  wire [31:0] p1_a_ik__2_comb;
  wire [31:0] p1_a_ik__3_comb;
  wire [31:0] p1_new_val__8_comb;
  wire [31:0] p1_umul_246_comb;
  wire [31:0] p1_new_val__2_comb;
  wire [31:0] p1_umul_248_comb;
  wire [31:0] p1_new_val__4_comb;
  wire [31:0] p1_umul_250_comb;
  wire [31:0] p1_new_val__6_comb;
  wire [31:0] p1_umul_252_comb;
  assign p1_a_ik_comb = p0_A[1'h0][1'h0];
  assign p1_b_kj_comb = p0_B[1'h0][1'h0];
  assign p1_a_ik__1_comb = p0_A[1'h0][1'h1];
  assign p1_b_kj__1_comb = p0_B[1'h1][1'h0];
  assign p1_b_kj__2_comb = p0_B[1'h0][1'h1];
  assign p1_b_kj__3_comb = p0_B[1'h1][1'h1];
  assign p1_a_ik__2_comb = p0_A[1'h1][1'h0];
  assign p1_a_ik__3_comb = p0_A[1'h1][1'h1];
  assign p1_new_val__8_comb = umul32b_32b_x_32b(p1_a_ik_comb, p1_b_kj_comb);
  assign p1_umul_246_comb = umul32b_32b_x_32b(p1_a_ik__1_comb, p1_b_kj__1_comb);
  assign p1_new_val__2_comb = umul32b_32b_x_32b(p1_a_ik_comb, p1_b_kj__2_comb);
  assign p1_umul_248_comb = umul32b_32b_x_32b(p1_a_ik__1_comb, p1_b_kj__3_comb);
  assign p1_new_val__4_comb = umul32b_32b_x_32b(p1_a_ik__2_comb, p1_b_kj_comb);
  assign p1_umul_250_comb = umul32b_32b_x_32b(p1_a_ik__3_comb, p1_b_kj__1_comb);
  assign p1_new_val__6_comb = umul32b_32b_x_32b(p1_a_ik__2_comb, p1_b_kj__2_comb);
  assign p1_umul_252_comb = umul32b_32b_x_32b(p1_a_ik__3_comb, p1_b_kj__3_comb);

  // Registers for pipe stage 1:
  reg [31:0] p1_new_val__8;
  reg [31:0] p1_umul_246;
  reg [31:0] p1_new_val__2;
  reg [31:0] p1_umul_248;
  reg [31:0] p1_new_val__4;
  reg [31:0] p1_umul_250;
  reg [31:0] p1_new_val__6;
  reg [31:0] p1_umul_252;
  always_ff @ (posedge clk) begin
    p1_new_val__8 <= p1_new_val__8_comb;
    p1_umul_246 <= p1_umul_246_comb;
    p1_new_val__2 <= p1_new_val__2_comb;
    p1_umul_248 <= p1_umul_248_comb;
    p1_new_val__4 <= p1_new_val__4_comb;
    p1_umul_250 <= p1_umul_250_comb;
    p1_new_val__6 <= p1_new_val__6_comb;
    p1_umul_252 <= p1_umul_252_comb;
  end

  // ===== Pipe stage 2:
  wire [31:0] p2_new_val__1_comb;
  wire [31:0] p2_new_val__3_comb;
  wire [31:0] p2_new_val__5_comb;
  wire [31:0] p2_new_val__7_comb;
  wire [31:0] p2_updated_row__1_comb[2];
  wire [31:0] p2_updated_row__3_comb[2];
  assign p2_new_val__1_comb = p1_new_val__8 + p1_umul_246;
  assign p2_new_val__3_comb = p1_new_val__2 + p1_umul_248;
  assign p2_new_val__5_comb = p1_new_val__4 + p1_umul_250;
  assign p2_new_val__7_comb = p1_new_val__6 + p1_umul_252;
  assign p2_updated_row__1_comb[0] = p2_new_val__1_comb;
  assign p2_updated_row__1_comb[1] = p2_new_val__3_comb;
  assign p2_updated_row__3_comb[0] = p2_new_val__5_comb;
  assign p2_updated_row__3_comb[1] = p2_new_val__7_comb;

  // Registers for pipe stage 2:
  reg [31:0] p2_updated_row__1[2];
  reg [31:0] p2_updated_row__3[2];
  always_ff @ (posedge clk) begin
    p2_updated_row__1 <= p2_updated_row__1_comb;
    p2_updated_row__3 <= p2_updated_row__3_comb;
  end

  // ===== Pipe stage 3:

  // Registers for pipe stage 3:
  reg [31:0] p3_updated_row__1[2];
  reg [31:0] p3_updated_row__3[2];
  always_ff @ (posedge clk) begin
    p3_updated_row__1 <= p2_updated_row__1;
    p3_updated_row__3 <= p2_updated_row__3;
  end

  // ===== Pipe stage 4:

  // Registers for pipe stage 4:
  reg [31:0] p4_updated_row__1[2];
  reg [31:0] p4_updated_row__3[2];
  always_ff @ (posedge clk) begin
    p4_updated_row__1 <= p3_updated_row__1;
    p4_updated_row__3 <= p3_updated_row__3;
  end

  // ===== Pipe stage 5:
  wire [31:0] p5_result_comb[2][2];
  assign p5_result_comb[0] = p4_updated_row__1;
  assign p5_result_comb[1] = p4_updated_row__3;

  // Registers for pipe stage 5:
  reg [31:0] p5_result[2][2];
  always_ff @ (posedge clk) begin
    p5_result <= p5_result_comb;
  end
  assign out = {{p5_result[1][1], p5_result[1][0]}, {p5_result[0][1], p5_result[0][0]}};
endmodule
