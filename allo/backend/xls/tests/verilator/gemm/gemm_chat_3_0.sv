module gemm_chat_3_0(
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
  wire [31:0] p1_array_index_220_comb;
  wire [31:0] p1_a_ik__1_comb;
  wire [31:0] p1_array_index_222_comb;
  wire [31:0] p1_array_index_223_comb;
  wire [31:0] p1_array_index_224_comb;
  wire [31:0] p1_a_ik__2_comb;
  wire [31:0] p1_a_ik__3_comb;
  wire [31:0] p1_prod_comb;
  wire [31:0] p1_prod__2_comb;
  wire [31:0] p1_prod__1_comb;
  wire [31:0] p1_prod__3_comb;
  wire [31:0] p1_prod__4_comb;
  wire [31:0] p1_prod__6_comb;
  wire [31:0] p1_prod__5_comb;
  wire [31:0] p1_prod__7_comb;
  assign p1_a_ik_comb = p0_A[1'h0][1'h0];
  assign p1_array_index_220_comb = p0_B[1'h0][1'h0];
  assign p1_a_ik__1_comb = p0_A[1'h0][1'h1];
  assign p1_array_index_222_comb = p0_B[1'h1][1'h0];
  assign p1_array_index_223_comb = p0_B[1'h0][1'h1];
  assign p1_array_index_224_comb = p0_B[1'h1][1'h1];
  assign p1_a_ik__2_comb = p0_A[1'h1][1'h0];
  assign p1_a_ik__3_comb = p0_A[1'h1][1'h1];
  assign p1_prod_comb = umul32b_32b_x_32b(p1_a_ik_comb, p1_array_index_220_comb);
  assign p1_prod__2_comb = umul32b_32b_x_32b(p1_a_ik__1_comb, p1_array_index_222_comb);
  assign p1_prod__1_comb = umul32b_32b_x_32b(p1_a_ik_comb, p1_array_index_223_comb);
  assign p1_prod__3_comb = umul32b_32b_x_32b(p1_a_ik__1_comb, p1_array_index_224_comb);
  assign p1_prod__4_comb = umul32b_32b_x_32b(p1_a_ik__2_comb, p1_array_index_220_comb);
  assign p1_prod__6_comb = umul32b_32b_x_32b(p1_a_ik__3_comb, p1_array_index_222_comb);
  assign p1_prod__5_comb = umul32b_32b_x_32b(p1_a_ik__2_comb, p1_array_index_223_comb);
  assign p1_prod__7_comb = umul32b_32b_x_32b(p1_a_ik__3_comb, p1_array_index_224_comb);

  // Registers for pipe stage 1:
  reg [31:0] p1_prod;
  reg [31:0] p1_prod__2;
  reg [31:0] p1_prod__1;
  reg [31:0] p1_prod__3;
  reg [31:0] p1_prod__4;
  reg [31:0] p1_prod__6;
  reg [31:0] p1_prod__5;
  reg [31:0] p1_prod__7;
  always_ff @ (posedge clk) begin
    p1_prod <= p1_prod_comb;
    p1_prod__2 <= p1_prod__2_comb;
    p1_prod__1 <= p1_prod__1_comb;
    p1_prod__3 <= p1_prod__3_comb;
    p1_prod__4 <= p1_prod__4_comb;
    p1_prod__6 <= p1_prod__6_comb;
    p1_prod__5 <= p1_prod__5_comb;
    p1_prod__7 <= p1_prod__7_comb;
  end

  // ===== Pipe stage 2:
  wire [31:0] p2_add_251_comb;
  wire [31:0] p2_add_252_comb;
  wire [31:0] p2_add_253_comb;
  wire [31:0] p2_add_254_comb;
  wire [31:0] p2_row_comb[2];
  wire [31:0] p2_row__1_comb[2];
  assign p2_add_251_comb = p1_prod + p1_prod__2;
  assign p2_add_252_comb = p1_prod__1 + p1_prod__3;
  assign p2_add_253_comb = p1_prod__4 + p1_prod__6;
  assign p2_add_254_comb = p1_prod__5 + p1_prod__7;
  assign p2_row_comb[0] = p2_add_251_comb;
  assign p2_row_comb[1] = p2_add_252_comb;
  assign p2_row__1_comb[0] = p2_add_253_comb;
  assign p2_row__1_comb[1] = p2_add_254_comb;

  // Registers for pipe stage 2:
  reg [31:0] p2_row[2];
  reg [31:0] p2_row__1[2];
  always_ff @ (posedge clk) begin
    p2_row <= p2_row_comb;
    p2_row__1 <= p2_row__1_comb;
  end

  // ===== Pipe stage 3:

  // Registers for pipe stage 3:
  reg [31:0] p3_row[2];
  reg [31:0] p3_row__1[2];
  always_ff @ (posedge clk) begin
    p3_row <= p2_row;
    p3_row__1 <= p2_row__1;
  end

  // ===== Pipe stage 4:

  // Registers for pipe stage 4:
  reg [31:0] p4_row[2];
  reg [31:0] p4_row__1[2];
  always_ff @ (posedge clk) begin
    p4_row <= p3_row;
    p4_row__1 <= p3_row__1;
  end

  // ===== Pipe stage 5:
  wire [31:0] p5_array_269_comb[2][2];
  assign p5_array_269_comb[0] = p4_row;
  assign p5_array_269_comb[1] = p4_row__1;

  // Registers for pipe stage 5:
  reg [31:0] p5_array_269[2][2];
  always_ff @ (posedge clk) begin
    p5_array_269 <= p5_array_269_comb;
  end
  assign out = {{p5_array_269[1][1], p5_array_269[1][0]}, {p5_array_269[0][1], p5_array_269[0][0]}};
endmodule
