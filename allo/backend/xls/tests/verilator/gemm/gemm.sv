module gemm(
  input wire clk,
  input wire rst,
  input wire [127:0] arg0,
  input wire [127:0] arg1,
  output wire [127:0] out
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    begin
      umul32b_32b_x_32b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  wire [31:0] arg0_unflattened[2][2];
  assign arg0_unflattened[0][0] = arg0[31:0];
  assign arg0_unflattened[0][1] = arg0[63:32];
  assign arg0_unflattened[1][0] = arg0[95:64];
  assign arg0_unflattened[1][1] = arg0[127:96];
  wire [31:0] arg1_unflattened[2][2];
  assign arg1_unflattened[0][0] = arg1[31:0];
  assign arg1_unflattened[0][1] = arg1[63:32];
  assign arg1_unflattened[1][0] = arg1[95:64];
  assign arg1_unflattened[1][1] = arg1[127:96];

  // ===== Pipe stage 0:

  // Registers for pipe stage 0:
  reg [31:0] p0_arg0[2][2];
  reg [31:0] p0_arg1[2][2];
  always_ff @ (posedge clk) begin
    p0_arg0 <= arg0_unflattened;
    p0_arg1 <= arg1_unflattened;
  end

  // ===== Pipe stage 1:
  wire [31:0] p1_array_index_277_comb;
  wire [31:0] p1_array_index_278_comb;
  wire [31:0] p1_array_index_279_comb;
  wire [31:0] p1_array_index_280_comb;
  wire [31:0] p1_array_index_281_comb;
  wire [31:0] p1_array_index_282_comb;
  wire [31:0] p1_array_index_283_comb;
  wire [31:0] p1_array_index_284_comb;
  wire [31:0] p1_umul_285_comb;
  wire [31:0] p1_umul_286_comb;
  wire [31:0] p1_umul_287_comb;
  wire [31:0] p1_umul_288_comb;
  wire [31:0] p1_umul_289_comb;
  wire [31:0] p1_umul_290_comb;
  wire [31:0] p1_umul_291_comb;
  wire [31:0] p1_umul_292_comb;
  assign p1_array_index_277_comb = p0_arg0[1'h0][1'h0];
  assign p1_array_index_278_comb = p0_arg1[1'h0][1'h0];
  assign p1_array_index_279_comb = p0_arg0[1'h0][1'h1];
  assign p1_array_index_280_comb = p0_arg1[1'h1][1'h0];
  assign p1_array_index_281_comb = p0_arg1[1'h0][1'h1];
  assign p1_array_index_282_comb = p0_arg1[1'h1][1'h1];
  assign p1_array_index_283_comb = p0_arg0[1'h1][1'h0];
  assign p1_array_index_284_comb = p0_arg0[1'h1][1'h1];
  assign p1_umul_285_comb = umul32b_32b_x_32b(p1_array_index_277_comb, p1_array_index_278_comb);
  assign p1_umul_286_comb = umul32b_32b_x_32b(p1_array_index_279_comb, p1_array_index_280_comb);
  assign p1_umul_287_comb = umul32b_32b_x_32b(p1_array_index_277_comb, p1_array_index_281_comb);
  assign p1_umul_288_comb = umul32b_32b_x_32b(p1_array_index_279_comb, p1_array_index_282_comb);
  assign p1_umul_289_comb = umul32b_32b_x_32b(p1_array_index_283_comb, p1_array_index_278_comb);
  assign p1_umul_290_comb = umul32b_32b_x_32b(p1_array_index_284_comb, p1_array_index_280_comb);
  assign p1_umul_291_comb = umul32b_32b_x_32b(p1_array_index_283_comb, p1_array_index_281_comb);
  assign p1_umul_292_comb = umul32b_32b_x_32b(p1_array_index_284_comb, p1_array_index_282_comb);

  // Registers for pipe stage 1:
  reg [31:0] p1_umul_285;
  reg [31:0] p1_umul_286;
  reg [31:0] p1_umul_287;
  reg [31:0] p1_umul_288;
  reg [31:0] p1_umul_289;
  reg [31:0] p1_umul_290;
  reg [31:0] p1_umul_291;
  reg [31:0] p1_umul_292;
  always_ff @ (posedge clk) begin
    p1_umul_285 <= p1_umul_285_comb;
    p1_umul_286 <= p1_umul_286_comb;
    p1_umul_287 <= p1_umul_287_comb;
    p1_umul_288 <= p1_umul_288_comb;
    p1_umul_289 <= p1_umul_289_comb;
    p1_umul_290 <= p1_umul_290_comb;
    p1_umul_291 <= p1_umul_291_comb;
    p1_umul_292 <= p1_umul_292_comb;
  end

  // ===== Pipe stage 2:
  wire [31:0] p2_add_309_comb;
  wire [31:0] p2_add_310_comb;
  wire [31:0] p2_add_311_comb;
  wire [31:0] p2_add_312_comb;
  wire [31:0] p2_array_313_comb[2];
  wire [31:0] p2_array_314_comb[2];
  assign p2_add_309_comb = p1_umul_285 + p1_umul_286;
  assign p2_add_310_comb = p1_umul_287 + p1_umul_288;
  assign p2_add_311_comb = p1_umul_289 + p1_umul_290;
  assign p2_add_312_comb = p1_umul_291 + p1_umul_292;
  assign p2_array_313_comb[0] = p2_add_309_comb;
  assign p2_array_313_comb[1] = p2_add_310_comb;
  assign p2_array_314_comb[0] = p2_add_311_comb;
  assign p2_array_314_comb[1] = p2_add_312_comb;

  // Registers for pipe stage 2:
  reg [31:0] p2_array_313[2];
  reg [31:0] p2_array_314[2];
  always_ff @ (posedge clk) begin
    p2_array_313 <= p2_array_313_comb;
    p2_array_314 <= p2_array_314_comb;
  end

  // ===== Pipe stage 3:

  // Registers for pipe stage 3:
  reg [31:0] p3_array_313[2];
  reg [31:0] p3_array_314[2];
  always_ff @ (posedge clk) begin
    p3_array_313 <= p2_array_313;
    p3_array_314 <= p2_array_314;
  end

  // ===== Pipe stage 4:

  // Registers for pipe stage 4:
  reg [31:0] p4_array_313[2];
  reg [31:0] p4_array_314[2];
  always_ff @ (posedge clk) begin
    p4_array_313 <= p3_array_313;
    p4_array_314 <= p3_array_314;
  end

  // ===== Pipe stage 5:
  wire [31:0] p5_C_comb[2][2];
  assign p5_C_comb[0] = p4_array_313;
  assign p5_C_comb[1] = p4_array_314;

  // Registers for pipe stage 5:
  reg [31:0] p5_C[2][2];
  always_ff @ (posedge clk) begin
    p5_C <= p5_C_comb;
  end
  assign out = {{p5_C[1][1], p5_C[1][0]}, {p5_C[0][1], p5_C[0][0]}};
endmodule
