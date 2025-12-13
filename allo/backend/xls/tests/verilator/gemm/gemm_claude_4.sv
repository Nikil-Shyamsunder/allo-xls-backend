module gemm_claude_4(
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
  wire [31:0] p1_a_val_comb;
  wire [31:0] p1_b_val_comb;
  wire [31:0] p1_a_val__1_comb;
  wire [31:0] p1_b_val__1_comb;
  wire [31:0] p1_b_val__2_comb;
  wire [31:0] p1_b_val__3_comb;
  wire [31:0] p1_a_val__2_comb;
  wire [31:0] p1_a_val__3_comb;
  wire [31:0] p1_product_comb;
  wire [31:0] p1_product__1_comb;
  wire [31:0] p1_product__2_comb;
  wire [31:0] p1_product__3_comb;
  wire [31:0] p1_product__4_comb;
  wire [31:0] p1_product__5_comb;
  wire [31:0] p1_product__6_comb;
  wire [31:0] p1_product__7_comb;
  assign p1_a_val_comb = p0_A[1'h0][1'h0];
  assign p1_b_val_comb = p0_B[1'h0][1'h0];
  assign p1_a_val__1_comb = p0_A[1'h0][1'h1];
  assign p1_b_val__1_comb = p0_B[1'h1][1'h0];
  assign p1_b_val__2_comb = p0_B[1'h0][1'h1];
  assign p1_b_val__3_comb = p0_B[1'h1][1'h1];
  assign p1_a_val__2_comb = p0_A[1'h1][1'h0];
  assign p1_a_val__3_comb = p0_A[1'h1][1'h1];
  assign p1_product_comb = umul32b_32b_x_32b(p1_a_val_comb, p1_b_val_comb);
  assign p1_product__1_comb = umul32b_32b_x_32b(p1_a_val__1_comb, p1_b_val__1_comb);
  assign p1_product__2_comb = umul32b_32b_x_32b(p1_a_val_comb, p1_b_val__2_comb);
  assign p1_product__3_comb = umul32b_32b_x_32b(p1_a_val__1_comb, p1_b_val__3_comb);
  assign p1_product__4_comb = umul32b_32b_x_32b(p1_a_val__2_comb, p1_b_val_comb);
  assign p1_product__5_comb = umul32b_32b_x_32b(p1_a_val__3_comb, p1_b_val__1_comb);
  assign p1_product__6_comb = umul32b_32b_x_32b(p1_a_val__2_comb, p1_b_val__2_comb);
  assign p1_product__7_comb = umul32b_32b_x_32b(p1_a_val__3_comb, p1_b_val__3_comb);

  // Registers for pipe stage 1:
  reg [31:0] p1_product;
  reg [31:0] p1_product__1;
  reg [31:0] p1_product__2;
  reg [31:0] p1_product__3;
  reg [31:0] p1_product__4;
  reg [31:0] p1_product__5;
  reg [31:0] p1_product__6;
  reg [31:0] p1_product__7;
  always_ff @ (posedge clk) begin
    p1_product <= p1_product_comb;
    p1_product__1 <= p1_product__1_comb;
    p1_product__2 <= p1_product__2_comb;
    p1_product__3 <= p1_product__3_comb;
    p1_product__4 <= p1_product__4_comb;
    p1_product__5 <= p1_product__5_comb;
    p1_product__6 <= p1_product__6_comb;
    p1_product__7 <= p1_product__7_comb;
  end

  // ===== Pipe stage 2:
  wire [31:0] p2_new_val__1_comb;
  wire [31:0] p2_new_val__3_comb;
  wire [31:0] p2_new_val__5_comb;
  wire [31:0] p2_new_val__7_comb;
  wire [31:0] p2_row__3_comb[2];
  wire [31:0] p2_row__7_comb[2];
  assign p2_new_val__1_comb = p1_product + p1_product__1;
  assign p2_new_val__3_comb = p1_product__2 + p1_product__3;
  assign p2_new_val__5_comb = p1_product__4 + p1_product__5;
  assign p2_new_val__7_comb = p1_product__6 + p1_product__7;
  assign p2_row__3_comb[0] = p2_new_val__1_comb;
  assign p2_row__3_comb[1] = p2_new_val__3_comb;
  assign p2_row__7_comb[0] = p2_new_val__5_comb;
  assign p2_row__7_comb[1] = p2_new_val__7_comb;

  // Registers for pipe stage 2:
  reg [31:0] p2_row__3[2];
  reg [31:0] p2_row__7[2];
  always_ff @ (posedge clk) begin
    p2_row__3 <= p2_row__3_comb;
    p2_row__7 <= p2_row__7_comb;
  end

  // ===== Pipe stage 3:

  // Registers for pipe stage 3:
  reg [31:0] p3_row__3[2];
  reg [31:0] p3_row__7[2];
  always_ff @ (posedge clk) begin
    p3_row__3 <= p2_row__3;
    p3_row__7 <= p2_row__7;
  end

  // ===== Pipe stage 4:

  // Registers for pipe stage 4:
  reg [31:0] p4_row__3[2];
  reg [31:0] p4_row__7[2];
  always_ff @ (posedge clk) begin
    p4_row__3 <= p3_row__3;
    p4_row__7 <= p3_row__7;
  end

  // ===== Pipe stage 5:
  wire [31:0] p5_C_final_comb[2][2];
  assign p5_C_final_comb[0] = p4_row__3;
  assign p5_C_final_comb[1] = p4_row__7;

  // Registers for pipe stage 5:
  reg [31:0] p5_C_final[2][2];
  always_ff @ (posedge clk) begin
    p5_C_final <= p5_C_final_comb;
  end
  assign out = {{p5_C_final[1][1], p5_C_final[1][0]}, {p5_C_final[0][1], p5_C_final[0][0]}};
endmodule
