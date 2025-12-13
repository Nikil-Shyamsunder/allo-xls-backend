module __systolic__SystolicArray__PE_0_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__0_0_data,
  input wire systolic__hor_chans__0_0_valid,
  input wire systolic__hor_chans__0_1_ready,
  input wire systolic__result_chans__0_0_ready,
  input wire [31:0] systolic__vert_chans__0_0_data,
  input wire systolic__vert_chans__0_0_valid,
  input wire systolic__vert_chans__1_0_ready,
  output wire systolic__hor_chans__0_0_ready,
  output wire [31:0] systolic__hor_chans__0_1_data,
  output wire systolic__hor_chans__0_1_valid,
  output wire [31:0] systolic__result_chans__0_0_data,
  output wire systolic__result_chans__0_0_valid,
  output wire systolic__vert_chans__0_0_ready,
  output wire [31:0] systolic__vert_chans__1_0_data,
  output wire systolic__vert_chans__1_0_valid
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    begin
      umul32b_32b_x_32b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__0_1_data_has_been_sent_reg;
  reg __systolic__vert_chans__1_0_data_has_been_sent_reg;
  reg __systolic__result_chans__0_0_data_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__0_0_data_reg;
  reg __systolic__hor_chans__0_0_data_valid_reg;
  reg [31:0] __systolic__vert_chans__0_0_data_reg;
  reg __systolic__vert_chans__0_0_data_valid_reg;
  reg [31:0] __systolic__hor_chans__0_1_data_reg;
  reg __systolic__hor_chans__0_1_data_valid_reg;
  reg [31:0] __systolic__vert_chans__1_0_data_reg;
  reg __systolic__vert_chans__1_0_data_valid_reg;
  reg [31:0] __systolic__result_chans__0_0_data_reg;
  reg __systolic__result_chans__0_0_data_valid_reg;
  wire __systolic__result_chans__0_0_valid_buf;
  wire __systolic__result_chans__0_0_data_not_has_been_sent;
  wire systolic__result_chans__0_0_data_valid_inv;
  wire __systolic__result_chans__0_0_data_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_0_data_valid_load_en;
  wire systolic__result_chans__0_0_data_load_en;
  wire or_3161;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__0_1_valid_buf;
  wire __systolic__hor_chans__0_1_data_not_has_been_sent;
  wire systolic__hor_chans__0_1_data_valid_inv;
  wire __systolic__vert_chans__1_0_data_not_has_been_sent;
  wire systolic__vert_chans__1_0_data_valid_inv;
  wire __systolic__hor_chans__0_1_data_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_1_data_valid_load_en;
  wire __systolic__vert_chans__1_0_data_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_0_data_valid_load_en;
  wire systolic__hor_chans__0_1_data_load_en;
  wire systolic__vert_chans__1_0_data_load_en;
  wire __systolic__hor_chans__0_1_data_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_0_data_has_sent_or_is_ready;
  wire p2_all_active_outputs_ready;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire p1_data_enable;
  wire p1_load_en;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire [2:0] one_hot_1997;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_0_data_valid_inv;
  wire systolic__vert_chans__0_0_data_valid_inv;
  wire and_2070;
  wire and_2071;
  wire systolic__hor_chans__0_0_data_valid_load_en;
  wire systolic__vert_chans__0_0_data_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2072;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_177_1_case_1;
  wire unexpand_for_next_value_177_1_case_0;
  wire __systolic__hor_chans__0_1_data_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_1_data_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_0_data_valid_and_ready_txfr;
  wire __systolic__result_chans__0_0_data_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_0_data_valid_and_ready_txfr;
  wire systolic__hor_chans__0_0_data_load_en;
  wire systolic__vert_chans__0_0_data_load_en;
  wire or_3127;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_2073;
  wire or_2074;
  wire one_hot_sel_2079;
  wire __systolic__hor_chans__0_1_data_not_stage_load;
  wire __systolic__hor_chans__0_1_data_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_0_data_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_0_data_not_stage_load;
  wire __systolic__result_chans__0_0_data_has_been_sent_reg_load_en;
  assign __systolic__result_chans__0_0_valid_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__0_0_data_not_has_been_sent = ~__systolic__result_chans__0_0_data_has_been_sent_reg;
  assign systolic__result_chans__0_0_data_valid_inv = ~__systolic__result_chans__0_0_data_valid_reg;
  assign __systolic__result_chans__0_0_data_valid_and_not_has_been_sent = __systolic__result_chans__0_0_valid_buf & __systolic__result_chans__0_0_data_not_has_been_sent;
  assign systolic__result_chans__0_0_data_valid_load_en = systolic__result_chans__0_0_ready | systolic__result_chans__0_0_data_valid_inv;
  assign systolic__result_chans__0_0_data_load_en = __systolic__result_chans__0_0_data_valid_and_not_has_been_sent & systolic__result_chans__0_0_data_valid_load_en;
  assign or_3161 = ~____state_1 | systolic__result_chans__0_0_data_load_en | __systolic__result_chans__0_0_data_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_3161;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__0_1_valid_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__0_1_data_not_has_been_sent = ~__systolic__hor_chans__0_1_data_has_been_sent_reg;
  assign systolic__hor_chans__0_1_data_valid_inv = ~__systolic__hor_chans__0_1_data_valid_reg;
  assign __systolic__vert_chans__1_0_data_not_has_been_sent = ~__systolic__vert_chans__1_0_data_has_been_sent_reg;
  assign systolic__vert_chans__1_0_data_valid_inv = ~__systolic__vert_chans__1_0_data_valid_reg;
  assign __systolic__hor_chans__0_1_data_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_valid_buf & __systolic__hor_chans__0_1_data_not_has_been_sent;
  assign systolic__hor_chans__0_1_data_valid_load_en = systolic__hor_chans__0_1_ready | systolic__hor_chans__0_1_data_valid_inv;
  assign __systolic__vert_chans__1_0_data_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_valid_buf & __systolic__vert_chans__1_0_data_not_has_been_sent;
  assign systolic__vert_chans__1_0_data_valid_load_en = systolic__vert_chans__1_0_ready | systolic__vert_chans__1_0_data_valid_inv;
  assign systolic__hor_chans__0_1_data_load_en = __systolic__hor_chans__0_1_data_valid_and_not_has_been_sent & systolic__hor_chans__0_1_data_valid_load_en;
  assign systolic__vert_chans__1_0_data_load_en = __systolic__vert_chans__1_0_data_valid_and_not_has_been_sent & systolic__vert_chans__1_0_data_valid_load_en;
  assign __systolic__hor_chans__0_1_data_has_sent_or_is_ready = systolic__hor_chans__0_1_data_load_en | __systolic__hor_chans__0_1_data_has_been_sent_reg;
  assign __systolic__vert_chans__1_0_data_has_sent_or_is_ready = systolic__vert_chans__1_0_data_load_en | __systolic__vert_chans__1_0_data_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__0_1_data_has_sent_or_is_ready & __systolic__vert_chans__1_0_data_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__0_0_data_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_1997 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_0_data_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_0_data_valid_inv = ~__systolic__hor_chans__0_0_data_valid_reg;
  assign systolic__vert_chans__0_0_data_valid_inv = ~__systolic__vert_chans__0_0_data_valid_reg;
  assign and_2070 = ~____state_1 & p3_stage_done;
  assign and_2071 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__0_0_data_valid_load_en = p0_load_en | systolic__hor_chans__0_0_data_valid_inv;
  assign systolic__vert_chans__0_0_data_valid_load_en = p1_load_en | systolic__vert_chans__0_0_data_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_1997[1] & ____state_1 == one_hot_1997[0];
  assign concat_2072 = {and_2070, and_2071};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_177_1_case_1 = 1'h0;
  assign unexpand_for_next_value_177_1_case_0 = 1'h1;
  assign __systolic__hor_chans__0_1_data_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_1_valid_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_data_valid_and_ready_txfr = __systolic__hor_chans__0_1_data_valid_and_not_has_been_sent & systolic__hor_chans__0_1_data_load_en;
  assign __systolic__vert_chans__1_0_data_valid_and_ready_txfr = __systolic__vert_chans__1_0_data_valid_and_not_has_been_sent & systolic__vert_chans__1_0_data_load_en;
  assign __systolic__result_chans__0_0_data_valid_and_all_active_outputs_ready = __systolic__result_chans__0_0_valid_buf & or_3161;
  assign __systolic__result_chans__0_0_data_valid_and_ready_txfr = __systolic__result_chans__0_0_data_valid_and_not_has_been_sent & systolic__result_chans__0_0_data_load_en;
  assign systolic__hor_chans__0_0_data_load_en = systolic__hor_chans__0_0_valid & systolic__hor_chans__0_0_data_valid_load_en;
  assign systolic__vert_chans__0_0_data_load_en = systolic__vert_chans__0_0_valid & systolic__vert_chans__0_0_data_valid_load_en;
  assign or_3127 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_2073 = 32'h0000_0000 & {32{concat_2072[0]}} | new_accum & {32{concat_2072[1]}};
  assign or_2074 = and_2070 | and_2071;
  assign one_hot_sel_2079 = unexpand_for_next_value_177_1_case_1 & concat_2072[0] | unexpand_for_next_value_177_1_case_0 & concat_2072[1];
  assign __systolic__hor_chans__0_1_data_not_stage_load = ~__systolic__hor_chans__0_1_data_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_data_has_been_sent_reg_load_en = __systolic__hor_chans__0_1_data_valid_and_ready_txfr | __systolic__hor_chans__0_1_data_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_0_data_has_been_sent_reg_load_en = __systolic__vert_chans__1_0_data_valid_and_ready_txfr | __systolic__hor_chans__0_1_data_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_data_not_stage_load = ~__systolic__result_chans__0_0_data_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_data_has_been_sent_reg_load_en = __systolic__result_chans__0_0_data_valid_and_ready_txfr | __systolic__result_chans__0_0_data_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_0_data_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__0_0_data_reg : p1_b;
    p2_prod <= p2_load_en ? prod : p2_prod;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__0_1_data_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__1_0_data_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__0_0_data_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_0_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_0_data_valid_reg <= 1'h0;
      __systolic__vert_chans__0_0_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_0_data_valid_reg <= 1'h0;
      __systolic__hor_chans__0_1_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_1_data_valid_reg <= 1'h0;
      __systolic__vert_chans__1_0_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_0_data_valid_reg <= 1'h0;
      __systolic__result_chans__0_0_data_reg <= 32'h0000_0000;
      __systolic__result_chans__0_0_data_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_2074 ? one_hot_sel_2079 : ____state_1;
      ____state_0 <= or_2074 ? one_hot_sel_2073 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__0_0_data_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__0_1_data_has_been_sent_reg <= __systolic__hor_chans__0_1_data_has_been_sent_reg_load_en ? __systolic__hor_chans__0_1_data_not_stage_load : __systolic__hor_chans__0_1_data_has_been_sent_reg;
      __systolic__vert_chans__1_0_data_has_been_sent_reg <= __systolic__vert_chans__1_0_data_has_been_sent_reg_load_en ? __systolic__hor_chans__0_1_data_not_stage_load : __systolic__vert_chans__1_0_data_has_been_sent_reg;
      __systolic__result_chans__0_0_data_has_been_sent_reg <= __systolic__result_chans__0_0_data_has_been_sent_reg_load_en ? __systolic__result_chans__0_0_data_not_stage_load : __systolic__result_chans__0_0_data_has_been_sent_reg;
      __systolic__hor_chans__0_0_data_reg <= systolic__hor_chans__0_0_data_load_en ? systolic__hor_chans__0_0_data : __systolic__hor_chans__0_0_data_reg;
      __systolic__hor_chans__0_0_data_valid_reg <= systolic__hor_chans__0_0_data_valid_load_en ? systolic__hor_chans__0_0_valid : __systolic__hor_chans__0_0_data_valid_reg;
      __systolic__vert_chans__0_0_data_reg <= systolic__vert_chans__0_0_data_load_en ? systolic__vert_chans__0_0_data : __systolic__vert_chans__0_0_data_reg;
      __systolic__vert_chans__0_0_data_valid_reg <= systolic__vert_chans__0_0_data_valid_load_en ? systolic__vert_chans__0_0_valid : __systolic__vert_chans__0_0_data_valid_reg;
      __systolic__hor_chans__0_1_data_reg <= systolic__hor_chans__0_1_data_load_en ? p1_a : __systolic__hor_chans__0_1_data_reg;
      __systolic__hor_chans__0_1_data_valid_reg <= systolic__hor_chans__0_1_data_valid_load_en ? __systolic__hor_chans__0_1_data_valid_and_not_has_been_sent : __systolic__hor_chans__0_1_data_valid_reg;
      __systolic__vert_chans__1_0_data_reg <= systolic__vert_chans__1_0_data_load_en ? p1_b : __systolic__vert_chans__1_0_data_reg;
      __systolic__vert_chans__1_0_data_valid_reg <= systolic__vert_chans__1_0_data_valid_load_en ? __systolic__vert_chans__1_0_data_valid_and_not_has_been_sent : __systolic__vert_chans__1_0_data_valid_reg;
      __systolic__result_chans__0_0_data_reg <= systolic__result_chans__0_0_data_load_en ? new_accum : __systolic__result_chans__0_0_data_reg;
      __systolic__result_chans__0_0_data_valid_reg <= systolic__result_chans__0_0_data_valid_load_en ? __systolic__result_chans__0_0_data_valid_and_not_has_been_sent : __systolic__result_chans__0_0_data_valid_reg;
    end
  end
  assign systolic__hor_chans__0_0_ready = systolic__hor_chans__0_0_data_load_en;
  assign systolic__hor_chans__0_1_data = __systolic__hor_chans__0_1_data_reg;
  assign systolic__hor_chans__0_1_valid = __systolic__hor_chans__0_1_data_valid_reg;
  assign systolic__result_chans__0_0_data = __systolic__result_chans__0_0_data_reg;
  assign systolic__result_chans__0_0_valid = __systolic__result_chans__0_0_data_valid_reg;
  assign systolic__vert_chans__0_0_ready = systolic__vert_chans__0_0_data_load_en;
  assign systolic__vert_chans__1_0_data = __systolic__vert_chans__1_0_data_reg;
  assign systolic__vert_chans__1_0_valid = __systolic__vert_chans__1_0_data_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_3127))) or_3127) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_3127))) or_3127) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_1_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__0_1_data,
  input wire systolic__hor_chans__0_1_valid,
  input wire systolic__hor_chans__0_2_ready,
  input wire systolic__result_chans__0_1_ready,
  input wire [31:0] systolic__vert_chans__0_1_data,
  input wire systolic__vert_chans__0_1_valid,
  input wire systolic__vert_chans__1_1_ready,
  output wire systolic__hor_chans__0_1_ready,
  output wire [31:0] systolic__hor_chans__0_2_data,
  output wire systolic__hor_chans__0_2_valid,
  output wire [31:0] systolic__result_chans__0_1_data,
  output wire systolic__result_chans__0_1_valid,
  output wire systolic__vert_chans__0_1_ready,
  output wire [31:0] systolic__vert_chans__1_1_data,
  output wire systolic__vert_chans__1_1_valid
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    begin
      umul32b_32b_x_32b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__0_2_data_has_been_sent_reg;
  reg __systolic__vert_chans__1_1_data_has_been_sent_reg;
  reg __systolic__result_chans__0_1_data_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__0_1_data_reg;
  reg __systolic__hor_chans__0_1_data_valid_reg;
  reg [31:0] __systolic__vert_chans__0_1_data_reg;
  reg __systolic__vert_chans__0_1_data_valid_reg;
  reg [31:0] __systolic__hor_chans__0_2_data_reg;
  reg __systolic__hor_chans__0_2_data_valid_reg;
  reg [31:0] __systolic__vert_chans__1_1_data_reg;
  reg __systolic__vert_chans__1_1_data_valid_reg;
  reg [31:0] __systolic__result_chans__0_1_data_reg;
  reg __systolic__result_chans__0_1_data_valid_reg;
  wire __systolic__result_chans__0_1_valid_buf;
  wire __systolic__result_chans__0_1_data_not_has_been_sent;
  wire systolic__result_chans__0_1_data_valid_inv;
  wire __systolic__result_chans__0_1_data_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_1_data_valid_load_en;
  wire systolic__result_chans__0_1_data_load_en;
  wire or_3178;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__0_2_valid_buf;
  wire __systolic__hor_chans__0_2_data_not_has_been_sent;
  wire systolic__hor_chans__0_2_data_valid_inv;
  wire __systolic__vert_chans__1_1_data_not_has_been_sent;
  wire systolic__vert_chans__1_1_data_valid_inv;
  wire __systolic__hor_chans__0_2_data_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_2_data_valid_load_en;
  wire __systolic__vert_chans__1_1_data_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_1_data_valid_load_en;
  wire systolic__hor_chans__0_2_data_load_en;
  wire systolic__vert_chans__1_1_data_load_en;
  wire __systolic__hor_chans__0_2_data_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_1_data_has_sent_or_is_ready;
  wire p2_all_active_outputs_ready;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire p1_data_enable;
  wire p1_load_en;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire [2:0] one_hot_2235;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_1_data_valid_inv;
  wire systolic__vert_chans__0_1_data_valid_inv;
  wire and_2308;
  wire and_2309;
  wire systolic__hor_chans__0_1_data_valid_load_en;
  wire systolic__vert_chans__0_1_data_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2310;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_207_1_case_1;
  wire unexpand_for_next_value_207_1_case_0;
  wire __systolic__hor_chans__0_2_data_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_2_data_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_1_data_valid_and_ready_txfr;
  wire __systolic__result_chans__0_1_data_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_1_data_valid_and_ready_txfr;
  wire systolic__hor_chans__0_1_data_load_en;
  wire systolic__vert_chans__0_1_data_load_en;
  wire or_3131;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_2311;
  wire or_2312;
  wire one_hot_sel_2317;
  wire __systolic__hor_chans__0_2_data_not_stage_load;
  wire __systolic__hor_chans__0_2_data_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_1_data_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_1_data_not_stage_load;
  wire __systolic__result_chans__0_1_data_has_been_sent_reg_load_en;
  assign __systolic__result_chans__0_1_valid_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__0_1_data_not_has_been_sent = ~__systolic__result_chans__0_1_data_has_been_sent_reg;
  assign systolic__result_chans__0_1_data_valid_inv = ~__systolic__result_chans__0_1_data_valid_reg;
  assign __systolic__result_chans__0_1_data_valid_and_not_has_been_sent = __systolic__result_chans__0_1_valid_buf & __systolic__result_chans__0_1_data_not_has_been_sent;
  assign systolic__result_chans__0_1_data_valid_load_en = systolic__result_chans__0_1_ready | systolic__result_chans__0_1_data_valid_inv;
  assign systolic__result_chans__0_1_data_load_en = __systolic__result_chans__0_1_data_valid_and_not_has_been_sent & systolic__result_chans__0_1_data_valid_load_en;
  assign or_3178 = ~____state_1 | systolic__result_chans__0_1_data_load_en | __systolic__result_chans__0_1_data_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_3178;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__0_2_valid_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__0_2_data_not_has_been_sent = ~__systolic__hor_chans__0_2_data_has_been_sent_reg;
  assign systolic__hor_chans__0_2_data_valid_inv = ~__systolic__hor_chans__0_2_data_valid_reg;
  assign __systolic__vert_chans__1_1_data_not_has_been_sent = ~__systolic__vert_chans__1_1_data_has_been_sent_reg;
  assign systolic__vert_chans__1_1_data_valid_inv = ~__systolic__vert_chans__1_1_data_valid_reg;
  assign __systolic__hor_chans__0_2_data_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_valid_buf & __systolic__hor_chans__0_2_data_not_has_been_sent;
  assign systolic__hor_chans__0_2_data_valid_load_en = systolic__hor_chans__0_2_ready | systolic__hor_chans__0_2_data_valid_inv;
  assign __systolic__vert_chans__1_1_data_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_valid_buf & __systolic__vert_chans__1_1_data_not_has_been_sent;
  assign systolic__vert_chans__1_1_data_valid_load_en = systolic__vert_chans__1_1_ready | systolic__vert_chans__1_1_data_valid_inv;
  assign systolic__hor_chans__0_2_data_load_en = __systolic__hor_chans__0_2_data_valid_and_not_has_been_sent & systolic__hor_chans__0_2_data_valid_load_en;
  assign systolic__vert_chans__1_1_data_load_en = __systolic__vert_chans__1_1_data_valid_and_not_has_been_sent & systolic__vert_chans__1_1_data_valid_load_en;
  assign __systolic__hor_chans__0_2_data_has_sent_or_is_ready = systolic__hor_chans__0_2_data_load_en | __systolic__hor_chans__0_2_data_has_been_sent_reg;
  assign __systolic__vert_chans__1_1_data_has_sent_or_is_ready = systolic__vert_chans__1_1_data_load_en | __systolic__vert_chans__1_1_data_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__0_2_data_has_sent_or_is_ready & __systolic__vert_chans__1_1_data_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__0_1_data_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_2235 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_1_data_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_1_data_valid_inv = ~__systolic__hor_chans__0_1_data_valid_reg;
  assign systolic__vert_chans__0_1_data_valid_inv = ~__systolic__vert_chans__0_1_data_valid_reg;
  assign and_2308 = ~____state_1 & p3_stage_done;
  assign and_2309 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__0_1_data_valid_load_en = p0_load_en | systolic__hor_chans__0_1_data_valid_inv;
  assign systolic__vert_chans__0_1_data_valid_load_en = p1_load_en | systolic__vert_chans__0_1_data_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2235[1] & ____state_1 == one_hot_2235[0];
  assign concat_2310 = {and_2308, and_2309};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_207_1_case_1 = 1'h0;
  assign unexpand_for_next_value_207_1_case_0 = 1'h1;
  assign __systolic__hor_chans__0_2_data_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_2_valid_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_data_valid_and_ready_txfr = __systolic__hor_chans__0_2_data_valid_and_not_has_been_sent & systolic__hor_chans__0_2_data_load_en;
  assign __systolic__vert_chans__1_1_data_valid_and_ready_txfr = __systolic__vert_chans__1_1_data_valid_and_not_has_been_sent & systolic__vert_chans__1_1_data_load_en;
  assign __systolic__result_chans__0_1_data_valid_and_all_active_outputs_ready = __systolic__result_chans__0_1_valid_buf & or_3178;
  assign __systolic__result_chans__0_1_data_valid_and_ready_txfr = __systolic__result_chans__0_1_data_valid_and_not_has_been_sent & systolic__result_chans__0_1_data_load_en;
  assign systolic__hor_chans__0_1_data_load_en = systolic__hor_chans__0_1_valid & systolic__hor_chans__0_1_data_valid_load_en;
  assign systolic__vert_chans__0_1_data_load_en = systolic__vert_chans__0_1_valid & systolic__vert_chans__0_1_data_valid_load_en;
  assign or_3131 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_2311 = 32'h0000_0000 & {32{concat_2310[0]}} | new_accum & {32{concat_2310[1]}};
  assign or_2312 = and_2308 | and_2309;
  assign one_hot_sel_2317 = unexpand_for_next_value_207_1_case_1 & concat_2310[0] | unexpand_for_next_value_207_1_case_0 & concat_2310[1];
  assign __systolic__hor_chans__0_2_data_not_stage_load = ~__systolic__hor_chans__0_2_data_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_data_has_been_sent_reg_load_en = __systolic__hor_chans__0_2_data_valid_and_ready_txfr | __systolic__hor_chans__0_2_data_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_1_data_has_been_sent_reg_load_en = __systolic__vert_chans__1_1_data_valid_and_ready_txfr | __systolic__hor_chans__0_2_data_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_data_not_stage_load = ~__systolic__result_chans__0_1_data_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_data_has_been_sent_reg_load_en = __systolic__result_chans__0_1_data_valid_and_ready_txfr | __systolic__result_chans__0_1_data_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_1_data_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__0_1_data_reg : p1_b;
    p2_prod <= p2_load_en ? prod : p2_prod;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__0_2_data_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__1_1_data_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__0_1_data_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_1_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_1_data_valid_reg <= 1'h0;
      __systolic__vert_chans__0_1_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_1_data_valid_reg <= 1'h0;
      __systolic__hor_chans__0_2_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_2_data_valid_reg <= 1'h0;
      __systolic__vert_chans__1_1_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_1_data_valid_reg <= 1'h0;
      __systolic__result_chans__0_1_data_reg <= 32'h0000_0000;
      __systolic__result_chans__0_1_data_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_2312 ? one_hot_sel_2317 : ____state_1;
      ____state_0 <= or_2312 ? one_hot_sel_2311 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__0_1_data_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__0_2_data_has_been_sent_reg <= __systolic__hor_chans__0_2_data_has_been_sent_reg_load_en ? __systolic__hor_chans__0_2_data_not_stage_load : __systolic__hor_chans__0_2_data_has_been_sent_reg;
      __systolic__vert_chans__1_1_data_has_been_sent_reg <= __systolic__vert_chans__1_1_data_has_been_sent_reg_load_en ? __systolic__hor_chans__0_2_data_not_stage_load : __systolic__vert_chans__1_1_data_has_been_sent_reg;
      __systolic__result_chans__0_1_data_has_been_sent_reg <= __systolic__result_chans__0_1_data_has_been_sent_reg_load_en ? __systolic__result_chans__0_1_data_not_stage_load : __systolic__result_chans__0_1_data_has_been_sent_reg;
      __systolic__hor_chans__0_1_data_reg <= systolic__hor_chans__0_1_data_load_en ? systolic__hor_chans__0_1_data : __systolic__hor_chans__0_1_data_reg;
      __systolic__hor_chans__0_1_data_valid_reg <= systolic__hor_chans__0_1_data_valid_load_en ? systolic__hor_chans__0_1_valid : __systolic__hor_chans__0_1_data_valid_reg;
      __systolic__vert_chans__0_1_data_reg <= systolic__vert_chans__0_1_data_load_en ? systolic__vert_chans__0_1_data : __systolic__vert_chans__0_1_data_reg;
      __systolic__vert_chans__0_1_data_valid_reg <= systolic__vert_chans__0_1_data_valid_load_en ? systolic__vert_chans__0_1_valid : __systolic__vert_chans__0_1_data_valid_reg;
      __systolic__hor_chans__0_2_data_reg <= systolic__hor_chans__0_2_data_load_en ? p1_a : __systolic__hor_chans__0_2_data_reg;
      __systolic__hor_chans__0_2_data_valid_reg <= systolic__hor_chans__0_2_data_valid_load_en ? __systolic__hor_chans__0_2_data_valid_and_not_has_been_sent : __systolic__hor_chans__0_2_data_valid_reg;
      __systolic__vert_chans__1_1_data_reg <= systolic__vert_chans__1_1_data_load_en ? p1_b : __systolic__vert_chans__1_1_data_reg;
      __systolic__vert_chans__1_1_data_valid_reg <= systolic__vert_chans__1_1_data_valid_load_en ? __systolic__vert_chans__1_1_data_valid_and_not_has_been_sent : __systolic__vert_chans__1_1_data_valid_reg;
      __systolic__result_chans__0_1_data_reg <= systolic__result_chans__0_1_data_load_en ? new_accum : __systolic__result_chans__0_1_data_reg;
      __systolic__result_chans__0_1_data_valid_reg <= systolic__result_chans__0_1_data_valid_load_en ? __systolic__result_chans__0_1_data_valid_and_not_has_been_sent : __systolic__result_chans__0_1_data_valid_reg;
    end
  end
  assign systolic__hor_chans__0_1_ready = systolic__hor_chans__0_1_data_load_en;
  assign systolic__hor_chans__0_2_data = __systolic__hor_chans__0_2_data_reg;
  assign systolic__hor_chans__0_2_valid = __systolic__hor_chans__0_2_data_valid_reg;
  assign systolic__result_chans__0_1_data = __systolic__result_chans__0_1_data_reg;
  assign systolic__result_chans__0_1_valid = __systolic__result_chans__0_1_data_valid_reg;
  assign systolic__vert_chans__0_1_ready = systolic__vert_chans__0_1_data_load_en;
  assign systolic__vert_chans__1_1_data = __systolic__vert_chans__1_1_data_reg;
  assign systolic__vert_chans__1_1_valid = __systolic__vert_chans__1_1_data_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_3131))) or_3131) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_3131))) or_3131) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_2_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__1_0_data,
  input wire systolic__hor_chans__1_0_valid,
  input wire systolic__hor_chans__1_1_ready,
  input wire systolic__result_chans__1_0_ready,
  input wire [31:0] systolic__vert_chans__1_0_data,
  input wire systolic__vert_chans__1_0_valid,
  input wire systolic__vert_chans__2_0_ready,
  output wire systolic__hor_chans__1_0_ready,
  output wire [31:0] systolic__hor_chans__1_1_data,
  output wire systolic__hor_chans__1_1_valid,
  output wire [31:0] systolic__result_chans__1_0_data,
  output wire systolic__result_chans__1_0_valid,
  output wire systolic__vert_chans__1_0_ready,
  output wire [31:0] systolic__vert_chans__2_0_data,
  output wire systolic__vert_chans__2_0_valid
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    begin
      umul32b_32b_x_32b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__1_1_data_has_been_sent_reg;
  reg __systolic__vert_chans__2_0_data_has_been_sent_reg;
  reg __systolic__result_chans__1_0_data_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__1_0_data_reg;
  reg __systolic__hor_chans__1_0_data_valid_reg;
  reg [31:0] __systolic__vert_chans__1_0_data_reg;
  reg __systolic__vert_chans__1_0_data_valid_reg;
  reg [31:0] __systolic__hor_chans__1_1_data_reg;
  reg __systolic__hor_chans__1_1_data_valid_reg;
  reg [31:0] __systolic__vert_chans__2_0_data_reg;
  reg __systolic__vert_chans__2_0_data_valid_reg;
  reg [31:0] __systolic__result_chans__1_0_data_reg;
  reg __systolic__result_chans__1_0_data_valid_reg;
  wire __systolic__result_chans__1_0_valid_buf;
  wire __systolic__result_chans__1_0_data_not_has_been_sent;
  wire systolic__result_chans__1_0_data_valid_inv;
  wire __systolic__result_chans__1_0_data_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_0_data_valid_load_en;
  wire systolic__result_chans__1_0_data_load_en;
  wire or_3195;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__1_1_valid_buf;
  wire __systolic__hor_chans__1_1_data_not_has_been_sent;
  wire systolic__hor_chans__1_1_data_valid_inv;
  wire __systolic__vert_chans__2_0_data_not_has_been_sent;
  wire systolic__vert_chans__2_0_data_valid_inv;
  wire __systolic__hor_chans__1_1_data_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_1_data_valid_load_en;
  wire __systolic__vert_chans__2_0_data_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_0_data_valid_load_en;
  wire systolic__hor_chans__1_1_data_load_en;
  wire systolic__vert_chans__2_0_data_load_en;
  wire __systolic__hor_chans__1_1_data_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_0_data_has_sent_or_is_ready;
  wire p2_all_active_outputs_ready;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire p1_data_enable;
  wire p1_load_en;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire [2:0] one_hot_2473;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_0_data_valid_inv;
  wire systolic__vert_chans__1_0_data_valid_inv;
  wire and_2546;
  wire and_2547;
  wire systolic__hor_chans__1_0_data_valid_load_en;
  wire systolic__vert_chans__1_0_data_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2548;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_237_1_case_1;
  wire unexpand_for_next_value_237_1_case_0;
  wire __systolic__hor_chans__1_1_data_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_1_data_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_0_data_valid_and_ready_txfr;
  wire __systolic__result_chans__1_0_data_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_0_data_valid_and_ready_txfr;
  wire systolic__hor_chans__1_0_data_load_en;
  wire systolic__vert_chans__1_0_data_load_en;
  wire or_3135;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_2549;
  wire or_2550;
  wire one_hot_sel_2555;
  wire __systolic__hor_chans__1_1_data_not_stage_load;
  wire __systolic__hor_chans__1_1_data_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_0_data_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_0_data_not_stage_load;
  wire __systolic__result_chans__1_0_data_has_been_sent_reg_load_en;
  assign __systolic__result_chans__1_0_valid_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__1_0_data_not_has_been_sent = ~__systolic__result_chans__1_0_data_has_been_sent_reg;
  assign systolic__result_chans__1_0_data_valid_inv = ~__systolic__result_chans__1_0_data_valid_reg;
  assign __systolic__result_chans__1_0_data_valid_and_not_has_been_sent = __systolic__result_chans__1_0_valid_buf & __systolic__result_chans__1_0_data_not_has_been_sent;
  assign systolic__result_chans__1_0_data_valid_load_en = systolic__result_chans__1_0_ready | systolic__result_chans__1_0_data_valid_inv;
  assign systolic__result_chans__1_0_data_load_en = __systolic__result_chans__1_0_data_valid_and_not_has_been_sent & systolic__result_chans__1_0_data_valid_load_en;
  assign or_3195 = ~____state_1 | systolic__result_chans__1_0_data_load_en | __systolic__result_chans__1_0_data_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_3195;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__1_1_valid_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__1_1_data_not_has_been_sent = ~__systolic__hor_chans__1_1_data_has_been_sent_reg;
  assign systolic__hor_chans__1_1_data_valid_inv = ~__systolic__hor_chans__1_1_data_valid_reg;
  assign __systolic__vert_chans__2_0_data_not_has_been_sent = ~__systolic__vert_chans__2_0_data_has_been_sent_reg;
  assign systolic__vert_chans__2_0_data_valid_inv = ~__systolic__vert_chans__2_0_data_valid_reg;
  assign __systolic__hor_chans__1_1_data_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_valid_buf & __systolic__hor_chans__1_1_data_not_has_been_sent;
  assign systolic__hor_chans__1_1_data_valid_load_en = systolic__hor_chans__1_1_ready | systolic__hor_chans__1_1_data_valid_inv;
  assign __systolic__vert_chans__2_0_data_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_valid_buf & __systolic__vert_chans__2_0_data_not_has_been_sent;
  assign systolic__vert_chans__2_0_data_valid_load_en = systolic__vert_chans__2_0_ready | systolic__vert_chans__2_0_data_valid_inv;
  assign systolic__hor_chans__1_1_data_load_en = __systolic__hor_chans__1_1_data_valid_and_not_has_been_sent & systolic__hor_chans__1_1_data_valid_load_en;
  assign systolic__vert_chans__2_0_data_load_en = __systolic__vert_chans__2_0_data_valid_and_not_has_been_sent & systolic__vert_chans__2_0_data_valid_load_en;
  assign __systolic__hor_chans__1_1_data_has_sent_or_is_ready = systolic__hor_chans__1_1_data_load_en | __systolic__hor_chans__1_1_data_has_been_sent_reg;
  assign __systolic__vert_chans__2_0_data_has_sent_or_is_ready = systolic__vert_chans__2_0_data_load_en | __systolic__vert_chans__2_0_data_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__1_1_data_has_sent_or_is_ready & __systolic__vert_chans__2_0_data_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__1_0_data_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_2473 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_0_data_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_0_data_valid_inv = ~__systolic__hor_chans__1_0_data_valid_reg;
  assign systolic__vert_chans__1_0_data_valid_inv = ~__systolic__vert_chans__1_0_data_valid_reg;
  assign and_2546 = ~____state_1 & p3_stage_done;
  assign and_2547 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__1_0_data_valid_load_en = p0_load_en | systolic__hor_chans__1_0_data_valid_inv;
  assign systolic__vert_chans__1_0_data_valid_load_en = p1_load_en | systolic__vert_chans__1_0_data_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2473[1] & ____state_1 == one_hot_2473[0];
  assign concat_2548 = {and_2546, and_2547};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_237_1_case_1 = 1'h0;
  assign unexpand_for_next_value_237_1_case_0 = 1'h1;
  assign __systolic__hor_chans__1_1_data_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_1_valid_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_data_valid_and_ready_txfr = __systolic__hor_chans__1_1_data_valid_and_not_has_been_sent & systolic__hor_chans__1_1_data_load_en;
  assign __systolic__vert_chans__2_0_data_valid_and_ready_txfr = __systolic__vert_chans__2_0_data_valid_and_not_has_been_sent & systolic__vert_chans__2_0_data_load_en;
  assign __systolic__result_chans__1_0_data_valid_and_all_active_outputs_ready = __systolic__result_chans__1_0_valid_buf & or_3195;
  assign __systolic__result_chans__1_0_data_valid_and_ready_txfr = __systolic__result_chans__1_0_data_valid_and_not_has_been_sent & systolic__result_chans__1_0_data_load_en;
  assign systolic__hor_chans__1_0_data_load_en = systolic__hor_chans__1_0_valid & systolic__hor_chans__1_0_data_valid_load_en;
  assign systolic__vert_chans__1_0_data_load_en = systolic__vert_chans__1_0_valid & systolic__vert_chans__1_0_data_valid_load_en;
  assign or_3135 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_2549 = 32'h0000_0000 & {32{concat_2548[0]}} | new_accum & {32{concat_2548[1]}};
  assign or_2550 = and_2546 | and_2547;
  assign one_hot_sel_2555 = unexpand_for_next_value_237_1_case_1 & concat_2548[0] | unexpand_for_next_value_237_1_case_0 & concat_2548[1];
  assign __systolic__hor_chans__1_1_data_not_stage_load = ~__systolic__hor_chans__1_1_data_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_data_has_been_sent_reg_load_en = __systolic__hor_chans__1_1_data_valid_and_ready_txfr | __systolic__hor_chans__1_1_data_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_0_data_has_been_sent_reg_load_en = __systolic__vert_chans__2_0_data_valid_and_ready_txfr | __systolic__hor_chans__1_1_data_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_data_not_stage_load = ~__systolic__result_chans__1_0_data_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_data_has_been_sent_reg_load_en = __systolic__result_chans__1_0_data_valid_and_ready_txfr | __systolic__result_chans__1_0_data_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_0_data_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__1_0_data_reg : p1_b;
    p2_prod <= p2_load_en ? prod : p2_prod;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__1_1_data_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__2_0_data_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__1_0_data_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_0_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_0_data_valid_reg <= 1'h0;
      __systolic__vert_chans__1_0_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_0_data_valid_reg <= 1'h0;
      __systolic__hor_chans__1_1_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_1_data_valid_reg <= 1'h0;
      __systolic__vert_chans__2_0_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_0_data_valid_reg <= 1'h0;
      __systolic__result_chans__1_0_data_reg <= 32'h0000_0000;
      __systolic__result_chans__1_0_data_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_2550 ? one_hot_sel_2555 : ____state_1;
      ____state_0 <= or_2550 ? one_hot_sel_2549 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__1_0_data_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__1_1_data_has_been_sent_reg <= __systolic__hor_chans__1_1_data_has_been_sent_reg_load_en ? __systolic__hor_chans__1_1_data_not_stage_load : __systolic__hor_chans__1_1_data_has_been_sent_reg;
      __systolic__vert_chans__2_0_data_has_been_sent_reg <= __systolic__vert_chans__2_0_data_has_been_sent_reg_load_en ? __systolic__hor_chans__1_1_data_not_stage_load : __systolic__vert_chans__2_0_data_has_been_sent_reg;
      __systolic__result_chans__1_0_data_has_been_sent_reg <= __systolic__result_chans__1_0_data_has_been_sent_reg_load_en ? __systolic__result_chans__1_0_data_not_stage_load : __systolic__result_chans__1_0_data_has_been_sent_reg;
      __systolic__hor_chans__1_0_data_reg <= systolic__hor_chans__1_0_data_load_en ? systolic__hor_chans__1_0_data : __systolic__hor_chans__1_0_data_reg;
      __systolic__hor_chans__1_0_data_valid_reg <= systolic__hor_chans__1_0_data_valid_load_en ? systolic__hor_chans__1_0_valid : __systolic__hor_chans__1_0_data_valid_reg;
      __systolic__vert_chans__1_0_data_reg <= systolic__vert_chans__1_0_data_load_en ? systolic__vert_chans__1_0_data : __systolic__vert_chans__1_0_data_reg;
      __systolic__vert_chans__1_0_data_valid_reg <= systolic__vert_chans__1_0_data_valid_load_en ? systolic__vert_chans__1_0_valid : __systolic__vert_chans__1_0_data_valid_reg;
      __systolic__hor_chans__1_1_data_reg <= systolic__hor_chans__1_1_data_load_en ? p1_a : __systolic__hor_chans__1_1_data_reg;
      __systolic__hor_chans__1_1_data_valid_reg <= systolic__hor_chans__1_1_data_valid_load_en ? __systolic__hor_chans__1_1_data_valid_and_not_has_been_sent : __systolic__hor_chans__1_1_data_valid_reg;
      __systolic__vert_chans__2_0_data_reg <= systolic__vert_chans__2_0_data_load_en ? p1_b : __systolic__vert_chans__2_0_data_reg;
      __systolic__vert_chans__2_0_data_valid_reg <= systolic__vert_chans__2_0_data_valid_load_en ? __systolic__vert_chans__2_0_data_valid_and_not_has_been_sent : __systolic__vert_chans__2_0_data_valid_reg;
      __systolic__result_chans__1_0_data_reg <= systolic__result_chans__1_0_data_load_en ? new_accum : __systolic__result_chans__1_0_data_reg;
      __systolic__result_chans__1_0_data_valid_reg <= systolic__result_chans__1_0_data_valid_load_en ? __systolic__result_chans__1_0_data_valid_and_not_has_been_sent : __systolic__result_chans__1_0_data_valid_reg;
    end
  end
  assign systolic__hor_chans__1_0_ready = systolic__hor_chans__1_0_data_load_en;
  assign systolic__hor_chans__1_1_data = __systolic__hor_chans__1_1_data_reg;
  assign systolic__hor_chans__1_1_valid = __systolic__hor_chans__1_1_data_valid_reg;
  assign systolic__result_chans__1_0_data = __systolic__result_chans__1_0_data_reg;
  assign systolic__result_chans__1_0_valid = __systolic__result_chans__1_0_data_valid_reg;
  assign systolic__vert_chans__1_0_ready = systolic__vert_chans__1_0_data_load_en;
  assign systolic__vert_chans__2_0_data = __systolic__vert_chans__2_0_data_reg;
  assign systolic__vert_chans__2_0_valid = __systolic__vert_chans__2_0_data_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_3135))) or_3135) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_3135))) or_3135) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_3_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__1_1_data,
  input wire systolic__hor_chans__1_1_valid,
  input wire systolic__hor_chans__1_2_ready,
  input wire systolic__result_chans__1_1_ready,
  input wire [31:0] systolic__vert_chans__1_1_data,
  input wire systolic__vert_chans__1_1_valid,
  input wire systolic__vert_chans__2_1_ready,
  output wire systolic__hor_chans__1_1_ready,
  output wire [31:0] systolic__hor_chans__1_2_data,
  output wire systolic__hor_chans__1_2_valid,
  output wire [31:0] systolic__result_chans__1_1_data,
  output wire systolic__result_chans__1_1_valid,
  output wire systolic__vert_chans__1_1_ready,
  output wire [31:0] systolic__vert_chans__2_1_data,
  output wire systolic__vert_chans__2_1_valid
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    begin
      umul32b_32b_x_32b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__1_2_data_has_been_sent_reg;
  reg __systolic__vert_chans__2_1_data_has_been_sent_reg;
  reg __systolic__result_chans__1_1_data_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__1_1_data_reg;
  reg __systolic__hor_chans__1_1_data_valid_reg;
  reg [31:0] __systolic__vert_chans__1_1_data_reg;
  reg __systolic__vert_chans__1_1_data_valid_reg;
  reg [31:0] __systolic__hor_chans__1_2_data_reg;
  reg __systolic__hor_chans__1_2_data_valid_reg;
  reg [31:0] __systolic__vert_chans__2_1_data_reg;
  reg __systolic__vert_chans__2_1_data_valid_reg;
  reg [31:0] __systolic__result_chans__1_1_data_reg;
  reg __systolic__result_chans__1_1_data_valid_reg;
  wire __systolic__result_chans__1_1_valid_buf;
  wire __systolic__result_chans__1_1_data_not_has_been_sent;
  wire systolic__result_chans__1_1_data_valid_inv;
  wire __systolic__result_chans__1_1_data_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_1_data_valid_load_en;
  wire systolic__result_chans__1_1_data_load_en;
  wire or_3212;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__1_2_valid_buf;
  wire __systolic__hor_chans__1_2_data_not_has_been_sent;
  wire systolic__hor_chans__1_2_data_valid_inv;
  wire __systolic__vert_chans__2_1_data_not_has_been_sent;
  wire systolic__vert_chans__2_1_data_valid_inv;
  wire __systolic__hor_chans__1_2_data_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_2_data_valid_load_en;
  wire __systolic__vert_chans__2_1_data_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_1_data_valid_load_en;
  wire systolic__hor_chans__1_2_data_load_en;
  wire systolic__vert_chans__2_1_data_load_en;
  wire __systolic__hor_chans__1_2_data_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_1_data_has_sent_or_is_ready;
  wire p2_all_active_outputs_ready;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire p1_data_enable;
  wire p1_load_en;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire [2:0] one_hot_2711;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_1_data_valid_inv;
  wire systolic__vert_chans__1_1_data_valid_inv;
  wire and_2784;
  wire and_2785;
  wire systolic__hor_chans__1_1_data_valid_load_en;
  wire systolic__vert_chans__1_1_data_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2786;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_267_1_case_1;
  wire unexpand_for_next_value_267_1_case_0;
  wire __systolic__hor_chans__1_2_data_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_2_data_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_1_data_valid_and_ready_txfr;
  wire __systolic__result_chans__1_1_data_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_1_data_valid_and_ready_txfr;
  wire systolic__hor_chans__1_1_data_load_en;
  wire systolic__vert_chans__1_1_data_load_en;
  wire or_3139;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_2787;
  wire or_2788;
  wire one_hot_sel_2793;
  wire __systolic__hor_chans__1_2_data_not_stage_load;
  wire __systolic__hor_chans__1_2_data_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_1_data_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_1_data_not_stage_load;
  wire __systolic__result_chans__1_1_data_has_been_sent_reg_load_en;
  assign __systolic__result_chans__1_1_valid_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__1_1_data_not_has_been_sent = ~__systolic__result_chans__1_1_data_has_been_sent_reg;
  assign systolic__result_chans__1_1_data_valid_inv = ~__systolic__result_chans__1_1_data_valid_reg;
  assign __systolic__result_chans__1_1_data_valid_and_not_has_been_sent = __systolic__result_chans__1_1_valid_buf & __systolic__result_chans__1_1_data_not_has_been_sent;
  assign systolic__result_chans__1_1_data_valid_load_en = systolic__result_chans__1_1_ready | systolic__result_chans__1_1_data_valid_inv;
  assign systolic__result_chans__1_1_data_load_en = __systolic__result_chans__1_1_data_valid_and_not_has_been_sent & systolic__result_chans__1_1_data_valid_load_en;
  assign or_3212 = ~____state_1 | systolic__result_chans__1_1_data_load_en | __systolic__result_chans__1_1_data_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_3212;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__1_2_valid_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__1_2_data_not_has_been_sent = ~__systolic__hor_chans__1_2_data_has_been_sent_reg;
  assign systolic__hor_chans__1_2_data_valid_inv = ~__systolic__hor_chans__1_2_data_valid_reg;
  assign __systolic__vert_chans__2_1_data_not_has_been_sent = ~__systolic__vert_chans__2_1_data_has_been_sent_reg;
  assign systolic__vert_chans__2_1_data_valid_inv = ~__systolic__vert_chans__2_1_data_valid_reg;
  assign __systolic__hor_chans__1_2_data_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_valid_buf & __systolic__hor_chans__1_2_data_not_has_been_sent;
  assign systolic__hor_chans__1_2_data_valid_load_en = systolic__hor_chans__1_2_ready | systolic__hor_chans__1_2_data_valid_inv;
  assign __systolic__vert_chans__2_1_data_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_valid_buf & __systolic__vert_chans__2_1_data_not_has_been_sent;
  assign systolic__vert_chans__2_1_data_valid_load_en = systolic__vert_chans__2_1_ready | systolic__vert_chans__2_1_data_valid_inv;
  assign systolic__hor_chans__1_2_data_load_en = __systolic__hor_chans__1_2_data_valid_and_not_has_been_sent & systolic__hor_chans__1_2_data_valid_load_en;
  assign systolic__vert_chans__2_1_data_load_en = __systolic__vert_chans__2_1_data_valid_and_not_has_been_sent & systolic__vert_chans__2_1_data_valid_load_en;
  assign __systolic__hor_chans__1_2_data_has_sent_or_is_ready = systolic__hor_chans__1_2_data_load_en | __systolic__hor_chans__1_2_data_has_been_sent_reg;
  assign __systolic__vert_chans__2_1_data_has_sent_or_is_ready = systolic__vert_chans__2_1_data_load_en | __systolic__vert_chans__2_1_data_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__1_2_data_has_sent_or_is_ready & __systolic__vert_chans__2_1_data_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__1_1_data_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_2711 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_1_data_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_1_data_valid_inv = ~__systolic__hor_chans__1_1_data_valid_reg;
  assign systolic__vert_chans__1_1_data_valid_inv = ~__systolic__vert_chans__1_1_data_valid_reg;
  assign and_2784 = ~____state_1 & p3_stage_done;
  assign and_2785 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__1_1_data_valid_load_en = p0_load_en | systolic__hor_chans__1_1_data_valid_inv;
  assign systolic__vert_chans__1_1_data_valid_load_en = p1_load_en | systolic__vert_chans__1_1_data_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2711[1] & ____state_1 == one_hot_2711[0];
  assign concat_2786 = {and_2784, and_2785};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_267_1_case_1 = 1'h0;
  assign unexpand_for_next_value_267_1_case_0 = 1'h1;
  assign __systolic__hor_chans__1_2_data_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_2_valid_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_data_valid_and_ready_txfr = __systolic__hor_chans__1_2_data_valid_and_not_has_been_sent & systolic__hor_chans__1_2_data_load_en;
  assign __systolic__vert_chans__2_1_data_valid_and_ready_txfr = __systolic__vert_chans__2_1_data_valid_and_not_has_been_sent & systolic__vert_chans__2_1_data_load_en;
  assign __systolic__result_chans__1_1_data_valid_and_all_active_outputs_ready = __systolic__result_chans__1_1_valid_buf & or_3212;
  assign __systolic__result_chans__1_1_data_valid_and_ready_txfr = __systolic__result_chans__1_1_data_valid_and_not_has_been_sent & systolic__result_chans__1_1_data_load_en;
  assign systolic__hor_chans__1_1_data_load_en = systolic__hor_chans__1_1_valid & systolic__hor_chans__1_1_data_valid_load_en;
  assign systolic__vert_chans__1_1_data_load_en = systolic__vert_chans__1_1_valid & systolic__vert_chans__1_1_data_valid_load_en;
  assign or_3139 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_2787 = 32'h0000_0000 & {32{concat_2786[0]}} | new_accum & {32{concat_2786[1]}};
  assign or_2788 = and_2784 | and_2785;
  assign one_hot_sel_2793 = unexpand_for_next_value_267_1_case_1 & concat_2786[0] | unexpand_for_next_value_267_1_case_0 & concat_2786[1];
  assign __systolic__hor_chans__1_2_data_not_stage_load = ~__systolic__hor_chans__1_2_data_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_data_has_been_sent_reg_load_en = __systolic__hor_chans__1_2_data_valid_and_ready_txfr | __systolic__hor_chans__1_2_data_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_1_data_has_been_sent_reg_load_en = __systolic__vert_chans__2_1_data_valid_and_ready_txfr | __systolic__hor_chans__1_2_data_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_data_not_stage_load = ~__systolic__result_chans__1_1_data_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_data_has_been_sent_reg_load_en = __systolic__result_chans__1_1_data_valid_and_ready_txfr | __systolic__result_chans__1_1_data_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_1_data_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__1_1_data_reg : p1_b;
    p2_prod <= p2_load_en ? prod : p2_prod;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__1_2_data_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__2_1_data_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__1_1_data_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_1_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_1_data_valid_reg <= 1'h0;
      __systolic__vert_chans__1_1_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_1_data_valid_reg <= 1'h0;
      __systolic__hor_chans__1_2_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_2_data_valid_reg <= 1'h0;
      __systolic__vert_chans__2_1_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_1_data_valid_reg <= 1'h0;
      __systolic__result_chans__1_1_data_reg <= 32'h0000_0000;
      __systolic__result_chans__1_1_data_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_2788 ? one_hot_sel_2793 : ____state_1;
      ____state_0 <= or_2788 ? one_hot_sel_2787 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__1_1_data_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__1_2_data_has_been_sent_reg <= __systolic__hor_chans__1_2_data_has_been_sent_reg_load_en ? __systolic__hor_chans__1_2_data_not_stage_load : __systolic__hor_chans__1_2_data_has_been_sent_reg;
      __systolic__vert_chans__2_1_data_has_been_sent_reg <= __systolic__vert_chans__2_1_data_has_been_sent_reg_load_en ? __systolic__hor_chans__1_2_data_not_stage_load : __systolic__vert_chans__2_1_data_has_been_sent_reg;
      __systolic__result_chans__1_1_data_has_been_sent_reg <= __systolic__result_chans__1_1_data_has_been_sent_reg_load_en ? __systolic__result_chans__1_1_data_not_stage_load : __systolic__result_chans__1_1_data_has_been_sent_reg;
      __systolic__hor_chans__1_1_data_reg <= systolic__hor_chans__1_1_data_load_en ? systolic__hor_chans__1_1_data : __systolic__hor_chans__1_1_data_reg;
      __systolic__hor_chans__1_1_data_valid_reg <= systolic__hor_chans__1_1_data_valid_load_en ? systolic__hor_chans__1_1_valid : __systolic__hor_chans__1_1_data_valid_reg;
      __systolic__vert_chans__1_1_data_reg <= systolic__vert_chans__1_1_data_load_en ? systolic__vert_chans__1_1_data : __systolic__vert_chans__1_1_data_reg;
      __systolic__vert_chans__1_1_data_valid_reg <= systolic__vert_chans__1_1_data_valid_load_en ? systolic__vert_chans__1_1_valid : __systolic__vert_chans__1_1_data_valid_reg;
      __systolic__hor_chans__1_2_data_reg <= systolic__hor_chans__1_2_data_load_en ? p1_a : __systolic__hor_chans__1_2_data_reg;
      __systolic__hor_chans__1_2_data_valid_reg <= systolic__hor_chans__1_2_data_valid_load_en ? __systolic__hor_chans__1_2_data_valid_and_not_has_been_sent : __systolic__hor_chans__1_2_data_valid_reg;
      __systolic__vert_chans__2_1_data_reg <= systolic__vert_chans__2_1_data_load_en ? p1_b : __systolic__vert_chans__2_1_data_reg;
      __systolic__vert_chans__2_1_data_valid_reg <= systolic__vert_chans__2_1_data_valid_load_en ? __systolic__vert_chans__2_1_data_valid_and_not_has_been_sent : __systolic__vert_chans__2_1_data_valid_reg;
      __systolic__result_chans__1_1_data_reg <= systolic__result_chans__1_1_data_load_en ? new_accum : __systolic__result_chans__1_1_data_reg;
      __systolic__result_chans__1_1_data_valid_reg <= systolic__result_chans__1_1_data_valid_load_en ? __systolic__result_chans__1_1_data_valid_and_not_has_been_sent : __systolic__result_chans__1_1_data_valid_reg;
    end
  end
  assign systolic__hor_chans__1_1_ready = systolic__hor_chans__1_1_data_load_en;
  assign systolic__hor_chans__1_2_data = __systolic__hor_chans__1_2_data_reg;
  assign systolic__hor_chans__1_2_valid = __systolic__hor_chans__1_2_data_valid_reg;
  assign systolic__result_chans__1_1_data = __systolic__result_chans__1_1_data_reg;
  assign systolic__result_chans__1_1_valid = __systolic__result_chans__1_1_data_valid_reg;
  assign systolic__vert_chans__1_1_ready = systolic__vert_chans__1_1_data_load_en;
  assign systolic__vert_chans__2_1_data = __systolic__vert_chans__2_1_data_reg;
  assign systolic__vert_chans__2_1_valid = __systolic__vert_chans__2_1_data_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_3139))) or_3139) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_3139))) or_3139) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module systolic_2x2__1(
  input wire clk,
  input wire rst,
  input wire [127:0] systolic__arg0_data,
  input wire systolic__arg0_valid,
  input wire [127:0] systolic__arg1_data,
  input wire systolic__arg1_valid,
  input wire systolic__hor_chans__0_0_ready,
  input wire [31:0] systolic__hor_chans__0_2_data,
  input wire systolic__hor_chans__0_2_valid,
  input wire systolic__hor_chans__1_0_ready,
  input wire [31:0] systolic__hor_chans__1_2_data,
  input wire systolic__hor_chans__1_2_valid,
  input wire systolic__out0_ready,
  input wire [31:0] systolic__result_chans__0_0_data,
  input wire systolic__result_chans__0_0_valid,
  input wire [31:0] systolic__result_chans__0_1_data,
  input wire systolic__result_chans__0_1_valid,
  input wire [31:0] systolic__result_chans__1_0_data,
  input wire systolic__result_chans__1_0_valid,
  input wire [31:0] systolic__result_chans__1_1_data,
  input wire systolic__result_chans__1_1_valid,
  input wire systolic__vert_chans__0_0_ready,
  input wire systolic__vert_chans__0_1_ready,
  input wire [31:0] systolic__vert_chans__2_0_data,
  input wire systolic__vert_chans__2_0_valid,
  input wire [31:0] systolic__vert_chans__2_1_data,
  input wire systolic__vert_chans__2_1_valid,
  output wire systolic__arg0_ready,
  output wire systolic__arg1_ready,
  output wire [31:0] systolic__hor_chans__0_0_data,
  output wire systolic__hor_chans__0_0_valid,
  output wire systolic__hor_chans__0_2_ready,
  output wire [31:0] systolic__hor_chans__1_0_data,
  output wire systolic__hor_chans__1_0_valid,
  output wire systolic__hor_chans__1_2_ready,
  output wire [127:0] systolic__out0_data,
  output wire systolic__out0_valid,
  output wire systolic__result_chans__0_0_ready,
  output wire systolic__result_chans__0_1_ready,
  output wire systolic__result_chans__1_0_ready,
  output wire systolic__result_chans__1_1_ready,
  output wire [31:0] systolic__vert_chans__0_0_data,
  output wire systolic__vert_chans__0_0_valid,
  output wire [31:0] systolic__vert_chans__0_1_data,
  output wire systolic__vert_chans__0_1_valid,
  output wire systolic__vert_chans__2_0_ready,
  output wire systolic__vert_chans__2_1_ready
);
  wire [31:0] __systolic__arg0_data_reg_init[2][2];
  assign __systolic__arg0_data_reg_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] __systolic__arg1_data_reg_init[2][2];
  assign __systolic__arg1_data_reg_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] __systolic__out0_data_reg_init[2][2];
  assign __systolic__out0_data_reg_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_1438[2][2];
  assign literal_1438 = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_1442[2][2];
  assign literal_1442 = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] systolic__arg0_data_unflattened[2][2];
  assign systolic__arg0_data_unflattened[0][0] = systolic__arg0_data[31:0];
  assign systolic__arg0_data_unflattened[0][1] = systolic__arg0_data[63:32];
  assign systolic__arg0_data_unflattened[1][0] = systolic__arg0_data[95:64];
  assign systolic__arg0_data_unflattened[1][1] = systolic__arg0_data[127:96];
  wire [31:0] systolic__arg1_data_unflattened[2][2];
  assign systolic__arg1_data_unflattened[0][0] = systolic__arg1_data[31:0];
  assign systolic__arg1_data_unflattened[0][1] = systolic__arg1_data[63:32];
  assign systolic__arg1_data_unflattened[1][0] = systolic__arg1_data[95:64];
  assign systolic__arg1_data_unflattened[1][1] = systolic__arg1_data[127:96];
  reg [1:0] ____state_2;
  reg p0_bit_slice_1435;
  reg p0_nor_1436;
  reg [31:0] p0_array_index_1450;
  reg [31:0] p0_array_index_1451;
  reg [31:0] p0_array_index_1453;
  reg [31:0] p0_array_index_1454;
  reg p0_eq_1455;
  reg p0_not_1456;
  reg [31:0] p0_array_index_1459;
  reg [31:0] p0_array_index_1460;
  reg [31:0] p0_array_index_1461;
  reg [31:0] p0_array_index_1462;
  reg [31:0] ____state_0_0_1;
  reg [31:0] ____state_1_1_0;
  reg [31:0] ____state_0_1_1;
  reg [31:0] ____state_1_1_1;
  reg [31:0] ____state_0_0_0;
  reg [31:0] ____state_0_1_0;
  reg [31:0] ____state_1_0_0;
  reg [31:0] ____state_1_0_1;
  reg p1_eq_1455;
  reg p2_eq_1455;
  reg [31:0] p2_c00;
  reg p3_eq_1455;
  reg [31:0] p3_c10;
  reg [31:0] p3_array_1588[2];
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__0_0_data_has_been_sent_reg;
  reg __systolic__vert_chans__0_0_data_has_been_sent_reg;
  reg __systolic__hor_chans__1_0_data_has_been_sent_reg;
  reg __systolic__vert_chans__0_1_data_has_been_sent_reg;
  reg __systolic__out0_data_has_been_sent_reg;
  reg [31:0] __systolic__arg0_data_reg[2][2];
  reg __systolic__arg0_data_valid_reg;
  reg [31:0] __systolic__arg1_data_reg[2][2];
  reg __systolic__arg1_data_valid_reg;
  reg [31:0] __systolic__hor_chans__0_2_data_reg;
  reg __systolic__hor_chans__0_2_data_valid_reg;
  reg [31:0] __systolic__hor_chans__1_2_data_reg;
  reg __systolic__hor_chans__1_2_data_valid_reg;
  reg [31:0] __systolic__vert_chans__2_0_data_reg;
  reg __systolic__vert_chans__2_0_data_valid_reg;
  reg [31:0] __systolic__vert_chans__2_1_data_reg;
  reg __systolic__vert_chans__2_1_data_valid_reg;
  reg [31:0] __systolic__result_chans__0_0_data_reg;
  reg __systolic__result_chans__0_0_data_valid_reg;
  reg [31:0] __systolic__result_chans__0_1_data_reg;
  reg __systolic__result_chans__0_1_data_valid_reg;
  reg [31:0] __systolic__result_chans__1_0_data_reg;
  reg __systolic__result_chans__1_0_data_valid_reg;
  reg [31:0] __systolic__result_chans__1_1_data_reg;
  reg __systolic__result_chans__1_1_data_valid_reg;
  reg [31:0] __systolic__hor_chans__0_0_data_reg;
  reg __systolic__hor_chans__0_0_data_valid_reg;
  reg [31:0] __systolic__vert_chans__0_0_data_reg;
  reg __systolic__vert_chans__0_0_data_valid_reg;
  reg [31:0] __systolic__hor_chans__1_0_data_reg;
  reg __systolic__hor_chans__1_0_data_valid_reg;
  reg [31:0] __systolic__vert_chans__0_1_data_reg;
  reg __systolic__vert_chans__0_1_data_valid_reg;
  reg [31:0] __systolic__out0_data_reg[2][2];
  reg __systolic__out0_data_valid_reg;
  wire or_1620;
  wire __systolic__out0_valid_buf;
  wire __systolic__out0_data_not_has_been_sent;
  wire systolic__out0_data_valid_inv;
  wire __systolic__out0_data_valid_and_not_has_been_sent;
  wire systolic__out0_data_valid_load_en;
  wire systolic__out0_data_load_en;
  wire or_3147;
  wire p4_stage_done;
  wire p4_not_valid;
  wire p3_all_active_inputs_valid;
  wire p3_enable;
  wire p3_stage_done;
  wire p3_data_enable;
  wire p3_load_en;
  wire p3_not_valid;
  wire p2_enable;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_enable;
  wire __systolic__hor_chans__0_0_valid_buf;
  wire __systolic__hor_chans__0_0_data_not_has_been_sent;
  wire systolic__hor_chans__0_0_data_valid_inv;
  wire __systolic__vert_chans__0_0_data_not_has_been_sent;
  wire systolic__vert_chans__0_0_data_valid_inv;
  wire __systolic__hor_chans__1_0_data_not_has_been_sent;
  wire systolic__hor_chans__1_0_data_valid_inv;
  wire __systolic__vert_chans__0_1_data_not_has_been_sent;
  wire systolic__vert_chans__0_1_data_valid_inv;
  wire __systolic__hor_chans__0_0_data_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_0_data_valid_load_en;
  wire __systolic__vert_chans__0_0_data_valid_and_not_has_been_sent;
  wire systolic__vert_chans__0_0_data_valid_load_en;
  wire __systolic__hor_chans__1_0_data_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_0_data_valid_load_en;
  wire __systolic__vert_chans__0_1_data_valid_and_not_has_been_sent;
  wire systolic__vert_chans__0_1_data_valid_load_en;
  wire systolic__hor_chans__0_0_data_load_en;
  wire systolic__vert_chans__0_0_data_load_en;
  wire systolic__hor_chans__1_0_data_load_en;
  wire systolic__vert_chans__0_1_data_load_en;
  wire p1_all_active_outputs_ready;
  wire bit_slice_1435;
  wire p1_stage_done;
  wire nor_1436;
  wire p1_data_enable;
  wire systolic__arg0_not_pred;
  wire eq_1455;
  wire p1_load_en;
  wire p1_not_valid;
  wire not_1456;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [1:0] ____state_2__next_value_predicates;
  wire p0_data_enable;
  wire [2:0] one_hot_1458;
  wire p0_load_en;
  wire and_1720;
  wire systolic__arg0_data_valid_inv;
  wire systolic__arg1_data_valid_inv;
  wire systolic__hor_chans__0_2_data_valid_inv;
  wire systolic__hor_chans__1_2_data_valid_inv;
  wire systolic__result_chans__0_0_data_valid_inv;
  wire and_1723;
  wire systolic__result_chans__0_1_data_valid_inv;
  wire systolic__result_chans__1_0_data_valid_inv;
  wire systolic__result_chans__1_1_data_valid_inv;
  wire systolic__vert_chans__2_0_data_valid_inv;
  wire systolic__vert_chans__2_1_data_valid_inv;
  wire and_1709;
  wire and_1710;
  wire [31:0] systolic__result_chans__1_1_select;
  wire systolic__arg0_data_valid_load_en;
  wire systolic__arg1_data_valid_load_en;
  wire systolic__hor_chans__0_2_data_valid_load_en;
  wire systolic__hor_chans__1_2_data_valid_load_en;
  wire systolic__result_chans__0_0_data_valid_load_en;
  wire systolic__result_chans__0_1_data_valid_load_en;
  wire systolic__result_chans__1_0_data_valid_load_en;
  wire systolic__result_chans__1_1_data_valid_load_en;
  wire systolic__vert_chans__2_0_data_valid_load_en;
  wire systolic__vert_chans__2_1_data_valid_load_en;
  wire ____state_2__at_most_one_next_value;
  wire [31:0] systolic__result_chans__0_1_select;
  wire [31:0] systolic__arg0_select[2][2];
  wire [31:0] systolic__arg1_select[2][2];
  wire [31:0] sign_ext_1536;
  wire [1:0] concat_1711;
  wire [1:0] unexpand_for_next_value_147_2__4_case_1;
  wire [1:0] unexpand_for_next_value_147_2__4_case_0;
  wire __systolic__hor_chans__0_0_data_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_0_data_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_0_data_valid_and_ready_txfr;
  wire __systolic__hor_chans__1_0_data_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_1_data_valid_and_ready_txfr;
  wire __systolic__out0_data_valid_and_all_active_outputs_ready;
  wire __systolic__out0_data_valid_and_ready_txfr;
  wire [31:0] array_1602[2];
  wire systolic__arg0_data_load_en;
  wire systolic__arg1_data_load_en;
  wire systolic__hor_chans__0_2_data_load_en;
  wire systolic__hor_chans__1_2_data_load_en;
  wire systolic__result_chans__0_0_data_load_en;
  wire systolic__result_chans__0_1_data_load_en;
  wire systolic__result_chans__1_0_data_load_en;
  wire systolic__result_chans__1_1_data_load_en;
  wire systolic__vert_chans__2_0_data_load_en;
  wire systolic__vert_chans__2_1_data_load_en;
  wire or_3125;
  wire [31:0] systolic__result_chans__1_0_select;
  wire [31:0] array_1588[2];
  wire [31:0] systolic__result_chans__0_0_select;
  wire [31:0] array_index_1450;
  wire [31:0] array_index_1451;
  wire [31:0] array_index_1453;
  wire [31:0] array_index_1454;
  wire [31:0] array_index_1459;
  wire [31:0] array_index_1460;
  wire [31:0] array_index_1461;
  wire [31:0] array_index_1462;
  wire [31:0] and_1544;
  wire [31:0] and_1545;
  wire [31:0] and_1546;
  wire [31:0] and_1547;
  wire [31:0] and_1548;
  wire [31:0] and_1549;
  wire [31:0] and_1550;
  wire [31:0] and_1551;
  wire [1:0] one_hot_sel_1712;
  wire or_1713;
  wire __systolic__hor_chans__0_0_data_not_stage_load;
  wire __systolic__hor_chans__0_0_data_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__0_0_data_has_been_sent_reg_load_en;
  wire __systolic__hor_chans__1_0_data_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__0_1_data_has_been_sent_reg_load_en;
  wire __systolic__out0_data_not_stage_load;
  wire __systolic__out0_data_has_been_sent_reg_load_en;
  wire [31:0] __systolic__hor_chans__0_0_data_buf;
  wire [31:0] __systolic__vert_chans__0_0_data_buf;
  wire [31:0] __systolic__hor_chans__1_0_data_buf;
  wire [31:0] __systolic__vert_chans__0_1_data_buf;
  wire [31:0] c[2][2];
  assign or_1620 = ~p3_eq_1455 | __systolic__result_chans__1_1_data_valid_reg;
  assign __systolic__out0_valid_buf = or_1620 & p3_valid & p3_eq_1455;
  assign __systolic__out0_data_not_has_been_sent = ~__systolic__out0_data_has_been_sent_reg;
  assign systolic__out0_data_valid_inv = ~__systolic__out0_data_valid_reg;
  assign __systolic__out0_data_valid_and_not_has_been_sent = __systolic__out0_valid_buf & __systolic__out0_data_not_has_been_sent;
  assign systolic__out0_data_valid_load_en = systolic__out0_ready | systolic__out0_data_valid_inv;
  assign systolic__out0_data_load_en = __systolic__out0_data_valid_and_not_has_been_sent & systolic__out0_data_valid_load_en;
  assign or_3147 = ~p3_eq_1455 | systolic__out0_data_load_en | __systolic__out0_data_has_been_sent_reg;
  assign p4_stage_done = p3_valid & or_1620 & or_3147;
  assign p4_not_valid = ~p3_valid;
  assign p3_all_active_inputs_valid = (~p2_eq_1455 | __systolic__result_chans__0_1_data_valid_reg) & (~p2_eq_1455 | __systolic__result_chans__1_0_data_valid_reg);
  assign p3_enable = p4_stage_done | p4_not_valid;
  assign p3_stage_done = p2_valid & p3_all_active_inputs_valid;
  assign p3_data_enable = p3_enable & p3_stage_done;
  assign p3_load_en = p3_data_enable | rst;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_load_en | p3_not_valid;
  assign p2_stage_done = p1_valid & (~p1_eq_1455 | __systolic__result_chans__0_0_data_valid_reg);
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign __systolic__hor_chans__0_0_valid_buf = p0_valid & p1_enable & ~p0_bit_slice_1435;
  assign __systolic__hor_chans__0_0_data_not_has_been_sent = ~__systolic__hor_chans__0_0_data_has_been_sent_reg;
  assign systolic__hor_chans__0_0_data_valid_inv = ~__systolic__hor_chans__0_0_data_valid_reg;
  assign __systolic__vert_chans__0_0_data_not_has_been_sent = ~__systolic__vert_chans__0_0_data_has_been_sent_reg;
  assign systolic__vert_chans__0_0_data_valid_inv = ~__systolic__vert_chans__0_0_data_valid_reg;
  assign __systolic__hor_chans__1_0_data_not_has_been_sent = ~__systolic__hor_chans__1_0_data_has_been_sent_reg;
  assign systolic__hor_chans__1_0_data_valid_inv = ~__systolic__hor_chans__1_0_data_valid_reg;
  assign __systolic__vert_chans__0_1_data_not_has_been_sent = ~__systolic__vert_chans__0_1_data_has_been_sent_reg;
  assign systolic__vert_chans__0_1_data_valid_inv = ~__systolic__vert_chans__0_1_data_valid_reg;
  assign __systolic__hor_chans__0_0_data_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_valid_buf & __systolic__hor_chans__0_0_data_not_has_been_sent;
  assign systolic__hor_chans__0_0_data_valid_load_en = systolic__hor_chans__0_0_ready | systolic__hor_chans__0_0_data_valid_inv;
  assign __systolic__vert_chans__0_0_data_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_valid_buf & __systolic__vert_chans__0_0_data_not_has_been_sent;
  assign systolic__vert_chans__0_0_data_valid_load_en = systolic__vert_chans__0_0_ready | systolic__vert_chans__0_0_data_valid_inv;
  assign __systolic__hor_chans__1_0_data_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_valid_buf & __systolic__hor_chans__1_0_data_not_has_been_sent;
  assign systolic__hor_chans__1_0_data_valid_load_en = systolic__hor_chans__1_0_ready | systolic__hor_chans__1_0_data_valid_inv;
  assign __systolic__vert_chans__0_1_data_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_valid_buf & __systolic__vert_chans__0_1_data_not_has_been_sent;
  assign systolic__vert_chans__0_1_data_valid_load_en = systolic__vert_chans__0_1_ready | systolic__vert_chans__0_1_data_valid_inv;
  assign systolic__hor_chans__0_0_data_load_en = __systolic__hor_chans__0_0_data_valid_and_not_has_been_sent & systolic__hor_chans__0_0_data_valid_load_en;
  assign systolic__vert_chans__0_0_data_load_en = __systolic__vert_chans__0_0_data_valid_and_not_has_been_sent & systolic__vert_chans__0_0_data_valid_load_en;
  assign systolic__hor_chans__1_0_data_load_en = __systolic__hor_chans__1_0_data_valid_and_not_has_been_sent & systolic__hor_chans__1_0_data_valid_load_en;
  assign systolic__vert_chans__0_1_data_load_en = __systolic__vert_chans__0_1_data_valid_and_not_has_been_sent & systolic__vert_chans__0_1_data_valid_load_en;
  assign p1_all_active_outputs_ready = (p0_bit_slice_1435 | systolic__hor_chans__0_0_data_load_en | __systolic__hor_chans__0_0_data_has_been_sent_reg) & (p0_bit_slice_1435 | systolic__vert_chans__0_0_data_load_en | __systolic__vert_chans__0_0_data_has_been_sent_reg) & (p0_bit_slice_1435 | systolic__hor_chans__1_0_data_load_en | __systolic__hor_chans__1_0_data_has_been_sent_reg) & (p0_bit_slice_1435 | systolic__vert_chans__0_1_data_load_en | __systolic__vert_chans__0_1_data_has_been_sent_reg);
  assign bit_slice_1435 = ____state_2[1];
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign nor_1436 = ~(____state_2[0] | bit_slice_1435);
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign systolic__arg0_not_pred = ~nor_1436;
  assign eq_1455 = ____state_2 == 2'h2;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign not_1456 = ~eq_1455;
  assign p0_enable = p1_load_en | p1_not_valid;
  assign p0_all_active_inputs_valid = (systolic__arg0_not_pred | __systolic__arg0_data_valid_reg) & (systolic__arg0_not_pred | __systolic__arg1_data_valid_reg);
  assign ____state_2__next_value_predicates = {not_1456, eq_1455};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign one_hot_1458 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign p0_load_en = p0_data_enable | rst;
  assign and_1720 = p0_load_en & nor_1436;
  assign systolic__arg0_data_valid_inv = ~__systolic__arg0_data_valid_reg;
  assign systolic__arg1_data_valid_inv = ~__systolic__arg1_data_valid_reg;
  assign systolic__hor_chans__0_2_data_valid_inv = ~__systolic__hor_chans__0_2_data_valid_reg;
  assign systolic__hor_chans__1_2_data_valid_inv = ~__systolic__hor_chans__1_2_data_valid_reg;
  assign systolic__result_chans__0_0_data_valid_inv = ~__systolic__result_chans__0_0_data_valid_reg;
  assign and_1723 = p3_load_en & p2_eq_1455;
  assign systolic__result_chans__0_1_data_valid_inv = ~__systolic__result_chans__0_1_data_valid_reg;
  assign systolic__result_chans__1_0_data_valid_inv = ~__systolic__result_chans__1_0_data_valid_reg;
  assign systolic__result_chans__1_1_data_valid_inv = ~__systolic__result_chans__1_1_data_valid_reg;
  assign systolic__vert_chans__2_0_data_valid_inv = ~__systolic__vert_chans__2_0_data_valid_reg;
  assign systolic__vert_chans__2_1_data_valid_inv = ~__systolic__vert_chans__2_1_data_valid_reg;
  assign and_1709 = not_1456 & p0_data_enable;
  assign and_1710 = eq_1455 & p0_data_enable;
  assign systolic__result_chans__1_1_select = p3_eq_1455 ? __systolic__result_chans__1_1_data_reg : 32'h0000_0000;
  assign systolic__arg0_data_valid_load_en = and_1720 | systolic__arg0_data_valid_inv;
  assign systolic__arg1_data_valid_load_en = and_1720 | systolic__arg1_data_valid_inv;
  assign systolic__hor_chans__0_2_data_valid_load_en = p0_load_en | systolic__hor_chans__0_2_data_valid_inv;
  assign systolic__hor_chans__1_2_data_valid_load_en = p0_load_en | systolic__hor_chans__1_2_data_valid_inv;
  assign systolic__result_chans__0_0_data_valid_load_en = p2_load_en & p1_eq_1455 | systolic__result_chans__0_0_data_valid_inv;
  assign systolic__result_chans__0_1_data_valid_load_en = and_1723 | systolic__result_chans__0_1_data_valid_inv;
  assign systolic__result_chans__1_0_data_valid_load_en = and_1723 | systolic__result_chans__1_0_data_valid_inv;
  assign systolic__result_chans__1_1_data_valid_load_en = p4_stage_done & p3_eq_1455 | systolic__result_chans__1_1_data_valid_inv;
  assign systolic__vert_chans__2_0_data_valid_load_en = p0_load_en | systolic__vert_chans__2_0_data_valid_inv;
  assign systolic__vert_chans__2_1_data_valid_load_en = p0_load_en | systolic__vert_chans__2_1_data_valid_inv;
  assign ____state_2__at_most_one_next_value = not_1456 == one_hot_1458[1] & eq_1455 == one_hot_1458[0];
  assign systolic__result_chans__0_1_select = p2_eq_1455 ? __systolic__result_chans__0_1_data_reg : 32'h0000_0000;
  assign systolic__arg0_select = nor_1436 == 1'h0 ? literal_1438 : __systolic__arg0_data_reg;
  assign systolic__arg1_select = nor_1436 == 1'h0 ? literal_1442 : __systolic__arg1_data_reg;
  assign sign_ext_1536 = {32{p0_not_1456}};
  assign concat_1711 = {and_1709, and_1710};
  assign unexpand_for_next_value_147_2__4_case_1 = 2'h0;
  assign unexpand_for_next_value_147_2__4_case_0 = ____state_2 + 2'h1;
  assign __systolic__hor_chans__0_0_data_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_0_valid_buf & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_data_valid_and_ready_txfr = __systolic__hor_chans__0_0_data_valid_and_not_has_been_sent & systolic__hor_chans__0_0_data_load_en;
  assign __systolic__vert_chans__0_0_data_valid_and_ready_txfr = __systolic__vert_chans__0_0_data_valid_and_not_has_been_sent & systolic__vert_chans__0_0_data_load_en;
  assign __systolic__hor_chans__1_0_data_valid_and_ready_txfr = __systolic__hor_chans__1_0_data_valid_and_not_has_been_sent & systolic__hor_chans__1_0_data_load_en;
  assign __systolic__vert_chans__0_1_data_valid_and_ready_txfr = __systolic__vert_chans__0_1_data_valid_and_not_has_been_sent & systolic__vert_chans__0_1_data_load_en;
  assign __systolic__out0_data_valid_and_all_active_outputs_ready = __systolic__out0_valid_buf & or_3147;
  assign __systolic__out0_data_valid_and_ready_txfr = __systolic__out0_data_valid_and_not_has_been_sent & systolic__out0_data_load_en;
  assign array_1602[0] = p3_c10;
  assign array_1602[1] = systolic__result_chans__1_1_select;
  assign systolic__arg0_data_load_en = systolic__arg0_valid & systolic__arg0_data_valid_load_en;
  assign systolic__arg1_data_load_en = systolic__arg1_valid & systolic__arg1_data_valid_load_en;
  assign systolic__hor_chans__0_2_data_load_en = systolic__hor_chans__0_2_valid & systolic__hor_chans__0_2_data_valid_load_en;
  assign systolic__hor_chans__1_2_data_load_en = systolic__hor_chans__1_2_valid & systolic__hor_chans__1_2_data_valid_load_en;
  assign systolic__result_chans__0_0_data_load_en = systolic__result_chans__0_0_valid & systolic__result_chans__0_0_data_valid_load_en;
  assign systolic__result_chans__0_1_data_load_en = systolic__result_chans__0_1_valid & systolic__result_chans__0_1_data_valid_load_en;
  assign systolic__result_chans__1_0_data_load_en = systolic__result_chans__1_0_valid & systolic__result_chans__1_0_data_valid_load_en;
  assign systolic__result_chans__1_1_data_load_en = systolic__result_chans__1_1_valid & systolic__result_chans__1_1_data_valid_load_en;
  assign systolic__vert_chans__2_0_data_load_en = systolic__vert_chans__2_0_valid & systolic__vert_chans__2_0_data_valid_load_en;
  assign systolic__vert_chans__2_1_data_load_en = systolic__vert_chans__2_1_valid & systolic__vert_chans__2_1_data_valid_load_en;
  assign or_3125 = ~p0_all_active_inputs_valid | ____state_2__at_most_one_next_value | rst;
  assign systolic__result_chans__1_0_select = p2_eq_1455 ? __systolic__result_chans__1_0_data_reg : 32'h0000_0000;
  assign array_1588[0] = p2_c00;
  assign array_1588[1] = systolic__result_chans__0_1_select;
  assign systolic__result_chans__0_0_select = p1_eq_1455 ? __systolic__result_chans__0_0_data_reg : 32'h0000_0000;
  assign array_index_1450 = systolic__arg0_select[1'h0][1'h0];
  assign array_index_1451 = systolic__arg1_select[1'h0][1'h0];
  assign array_index_1453 = systolic__arg0_select[1'h1][1'h0];
  assign array_index_1454 = systolic__arg1_select[1'h0][1'h1];
  assign array_index_1459 = systolic__arg0_select[1'h0][1'h1];
  assign array_index_1460 = systolic__arg0_select[1'h1][1'h1];
  assign array_index_1461 = systolic__arg1_select[1'h1][1'h0];
  assign array_index_1462 = systolic__arg1_select[1'h1][1'h1];
  assign and_1544 = (p0_nor_1436 ? p0_array_index_1450 : ____state_0_0_0) & sign_ext_1536;
  assign and_1545 = (p0_nor_1436 ? p0_array_index_1459 : ____state_0_0_1) & sign_ext_1536;
  assign and_1546 = (p0_nor_1436 ? p0_array_index_1453 : ____state_0_1_0) & sign_ext_1536;
  assign and_1547 = (p0_nor_1436 ? p0_array_index_1460 : ____state_0_1_1) & sign_ext_1536;
  assign and_1548 = (p0_nor_1436 ? p0_array_index_1461 : ____state_1_1_0) & sign_ext_1536;
  assign and_1549 = (p0_nor_1436 ? p0_array_index_1462 : ____state_1_1_1) & sign_ext_1536;
  assign and_1550 = (p0_nor_1436 ? p0_array_index_1451 : ____state_1_0_0) & sign_ext_1536;
  assign and_1551 = (p0_nor_1436 ? p0_array_index_1454 : ____state_1_0_1) & sign_ext_1536;
  assign one_hot_sel_1712 = unexpand_for_next_value_147_2__4_case_1 & {2{concat_1711[0]}} | unexpand_for_next_value_147_2__4_case_0 & {2{concat_1711[1]}};
  assign or_1713 = and_1709 | and_1710;
  assign __systolic__hor_chans__0_0_data_not_stage_load = ~__systolic__hor_chans__0_0_data_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_data_has_been_sent_reg_load_en = __systolic__hor_chans__0_0_data_valid_and_ready_txfr | __systolic__hor_chans__0_0_data_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_0_data_has_been_sent_reg_load_en = __systolic__vert_chans__0_0_data_valid_and_ready_txfr | __systolic__hor_chans__0_0_data_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_0_data_has_been_sent_reg_load_en = __systolic__hor_chans__1_0_data_valid_and_ready_txfr | __systolic__hor_chans__0_0_data_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_1_data_has_been_sent_reg_load_en = __systolic__vert_chans__0_1_data_valid_and_ready_txfr | __systolic__hor_chans__0_0_data_valid_and_all_active_outputs_ready;
  assign __systolic__out0_data_not_stage_load = ~__systolic__out0_data_valid_and_all_active_outputs_ready;
  assign __systolic__out0_data_has_been_sent_reg_load_en = __systolic__out0_data_valid_and_ready_txfr | __systolic__out0_data_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_data_buf = p0_nor_1436 ? p0_array_index_1450 : ____state_0_0_1;
  assign __systolic__vert_chans__0_0_data_buf = p0_nor_1436 ? p0_array_index_1451 : ____state_1_1_0;
  assign __systolic__hor_chans__1_0_data_buf = p0_nor_1436 ? p0_array_index_1453 : ____state_0_1_1;
  assign __systolic__vert_chans__0_1_data_buf = p0_nor_1436 ? p0_array_index_1454 : ____state_1_1_1;
  assign c[0] = p3_array_1588;
  assign c[1] = array_1602;
  always_ff @ (posedge clk) begin
    p0_bit_slice_1435 <= p0_load_en ? bit_slice_1435 : p0_bit_slice_1435;
    p0_nor_1436 <= p0_load_en ? nor_1436 : p0_nor_1436;
    p0_array_index_1450 <= p0_load_en ? array_index_1450 : p0_array_index_1450;
    p0_array_index_1451 <= p0_load_en ? array_index_1451 : p0_array_index_1451;
    p0_array_index_1453 <= p0_load_en ? array_index_1453 : p0_array_index_1453;
    p0_array_index_1454 <= p0_load_en ? array_index_1454 : p0_array_index_1454;
    p0_eq_1455 <= p0_load_en ? eq_1455 : p0_eq_1455;
    p0_not_1456 <= p0_load_en ? not_1456 : p0_not_1456;
    p0_array_index_1459 <= p0_load_en ? array_index_1459 : p0_array_index_1459;
    p0_array_index_1460 <= p0_load_en ? array_index_1460 : p0_array_index_1460;
    p0_array_index_1461 <= p0_load_en ? array_index_1461 : p0_array_index_1461;
    p0_array_index_1462 <= p0_load_en ? array_index_1462 : p0_array_index_1462;
    p1_eq_1455 <= p1_load_en ? p0_eq_1455 : p1_eq_1455;
    p2_eq_1455 <= p2_load_en ? p1_eq_1455 : p2_eq_1455;
    p2_c00 <= p2_load_en ? systolic__result_chans__0_0_select : p2_c00;
    p3_eq_1455 <= p3_load_en ? p2_eq_1455 : p3_eq_1455;
    p3_c10 <= p3_load_en ? systolic__result_chans__1_0_select : p3_c10;
    p3_array_1588 <= p3_load_en ? array_1588 : p3_array_1588;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_2 <= 2'h0;
      ____state_0_0_1 <= 32'h0000_0000;
      ____state_1_1_0 <= 32'h0000_0000;
      ____state_0_1_1 <= 32'h0000_0000;
      ____state_1_1_1 <= 32'h0000_0000;
      ____state_0_0_0 <= 32'h0000_0000;
      ____state_0_1_0 <= 32'h0000_0000;
      ____state_1_0_0 <= 32'h0000_0000;
      ____state_1_0_1 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__0_0_data_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_0_data_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_0_data_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_1_data_has_been_sent_reg <= 1'h0;
      __systolic__out0_data_has_been_sent_reg <= 1'h0;
      __systolic__arg0_data_reg <= __systolic__arg0_data_reg_init;
      __systolic__arg0_data_valid_reg <= 1'h0;
      __systolic__arg1_data_reg <= __systolic__arg1_data_reg_init;
      __systolic__arg1_data_valid_reg <= 1'h0;
      __systolic__hor_chans__0_2_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_2_data_valid_reg <= 1'h0;
      __systolic__hor_chans__1_2_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_2_data_valid_reg <= 1'h0;
      __systolic__vert_chans__2_0_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_0_data_valid_reg <= 1'h0;
      __systolic__vert_chans__2_1_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_1_data_valid_reg <= 1'h0;
      __systolic__result_chans__0_0_data_reg <= 32'h0000_0000;
      __systolic__result_chans__0_0_data_valid_reg <= 1'h0;
      __systolic__result_chans__0_1_data_reg <= 32'h0000_0000;
      __systolic__result_chans__0_1_data_valid_reg <= 1'h0;
      __systolic__result_chans__1_0_data_reg <= 32'h0000_0000;
      __systolic__result_chans__1_0_data_valid_reg <= 1'h0;
      __systolic__result_chans__1_1_data_reg <= 32'h0000_0000;
      __systolic__result_chans__1_1_data_valid_reg <= 1'h0;
      __systolic__hor_chans__0_0_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_0_data_valid_reg <= 1'h0;
      __systolic__vert_chans__0_0_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_0_data_valid_reg <= 1'h0;
      __systolic__hor_chans__1_0_data_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_0_data_valid_reg <= 1'h0;
      __systolic__vert_chans__0_1_data_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_1_data_valid_reg <= 1'h0;
      __systolic__out0_data_reg <= __systolic__out0_data_reg_init;
      __systolic__out0_data_valid_reg <= 1'h0;
    end else begin
      ____state_2 <= or_1713 ? one_hot_sel_1712 : ____state_2;
      ____state_0_0_1 <= p1_data_enable ? and_1545 : ____state_0_0_1;
      ____state_1_1_0 <= p1_data_enable ? and_1548 : ____state_1_1_0;
      ____state_0_1_1 <= p1_data_enable ? and_1547 : ____state_0_1_1;
      ____state_1_1_1 <= p1_data_enable ? and_1549 : ____state_1_1_1;
      ____state_0_0_0 <= p1_data_enable ? and_1544 : ____state_0_0_0;
      ____state_0_1_0 <= p1_data_enable ? and_1546 : ____state_0_1_0;
      ____state_1_0_0 <= p1_data_enable ? and_1550 : ____state_1_0_0;
      ____state_1_0_1 <= p1_data_enable ? and_1551 : ____state_1_0_1;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__0_0_data_has_been_sent_reg <= __systolic__hor_chans__0_0_data_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_data_not_stage_load : __systolic__hor_chans__0_0_data_has_been_sent_reg;
      __systolic__vert_chans__0_0_data_has_been_sent_reg <= __systolic__vert_chans__0_0_data_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_data_not_stage_load : __systolic__vert_chans__0_0_data_has_been_sent_reg;
      __systolic__hor_chans__1_0_data_has_been_sent_reg <= __systolic__hor_chans__1_0_data_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_data_not_stage_load : __systolic__hor_chans__1_0_data_has_been_sent_reg;
      __systolic__vert_chans__0_1_data_has_been_sent_reg <= __systolic__vert_chans__0_1_data_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_data_not_stage_load : __systolic__vert_chans__0_1_data_has_been_sent_reg;
      __systolic__out0_data_has_been_sent_reg <= __systolic__out0_data_has_been_sent_reg_load_en ? __systolic__out0_data_not_stage_load : __systolic__out0_data_has_been_sent_reg;
      __systolic__arg0_data_reg <= systolic__arg0_data_load_en ? systolic__arg0_data_unflattened : __systolic__arg0_data_reg;
      __systolic__arg0_data_valid_reg <= systolic__arg0_data_valid_load_en ? systolic__arg0_valid : __systolic__arg0_data_valid_reg;
      __systolic__arg1_data_reg <= systolic__arg1_data_load_en ? systolic__arg1_data_unflattened : __systolic__arg1_data_reg;
      __systolic__arg1_data_valid_reg <= systolic__arg1_data_valid_load_en ? systolic__arg1_valid : __systolic__arg1_data_valid_reg;
      __systolic__hor_chans__0_2_data_reg <= systolic__hor_chans__0_2_data_load_en ? systolic__hor_chans__0_2_data : __systolic__hor_chans__0_2_data_reg;
      __systolic__hor_chans__0_2_data_valid_reg <= systolic__hor_chans__0_2_data_valid_load_en ? systolic__hor_chans__0_2_valid : __systolic__hor_chans__0_2_data_valid_reg;
      __systolic__hor_chans__1_2_data_reg <= systolic__hor_chans__1_2_data_load_en ? systolic__hor_chans__1_2_data : __systolic__hor_chans__1_2_data_reg;
      __systolic__hor_chans__1_2_data_valid_reg <= systolic__hor_chans__1_2_data_valid_load_en ? systolic__hor_chans__1_2_valid : __systolic__hor_chans__1_2_data_valid_reg;
      __systolic__vert_chans__2_0_data_reg <= systolic__vert_chans__2_0_data_load_en ? systolic__vert_chans__2_0_data : __systolic__vert_chans__2_0_data_reg;
      __systolic__vert_chans__2_0_data_valid_reg <= systolic__vert_chans__2_0_data_valid_load_en ? systolic__vert_chans__2_0_valid : __systolic__vert_chans__2_0_data_valid_reg;
      __systolic__vert_chans__2_1_data_reg <= systolic__vert_chans__2_1_data_load_en ? systolic__vert_chans__2_1_data : __systolic__vert_chans__2_1_data_reg;
      __systolic__vert_chans__2_1_data_valid_reg <= systolic__vert_chans__2_1_data_valid_load_en ? systolic__vert_chans__2_1_valid : __systolic__vert_chans__2_1_data_valid_reg;
      __systolic__result_chans__0_0_data_reg <= systolic__result_chans__0_0_data_load_en ? systolic__result_chans__0_0_data : __systolic__result_chans__0_0_data_reg;
      __systolic__result_chans__0_0_data_valid_reg <= systolic__result_chans__0_0_data_valid_load_en ? systolic__result_chans__0_0_valid : __systolic__result_chans__0_0_data_valid_reg;
      __systolic__result_chans__0_1_data_reg <= systolic__result_chans__0_1_data_load_en ? systolic__result_chans__0_1_data : __systolic__result_chans__0_1_data_reg;
      __systolic__result_chans__0_1_data_valid_reg <= systolic__result_chans__0_1_data_valid_load_en ? systolic__result_chans__0_1_valid : __systolic__result_chans__0_1_data_valid_reg;
      __systolic__result_chans__1_0_data_reg <= systolic__result_chans__1_0_data_load_en ? systolic__result_chans__1_0_data : __systolic__result_chans__1_0_data_reg;
      __systolic__result_chans__1_0_data_valid_reg <= systolic__result_chans__1_0_data_valid_load_en ? systolic__result_chans__1_0_valid : __systolic__result_chans__1_0_data_valid_reg;
      __systolic__result_chans__1_1_data_reg <= systolic__result_chans__1_1_data_load_en ? systolic__result_chans__1_1_data : __systolic__result_chans__1_1_data_reg;
      __systolic__result_chans__1_1_data_valid_reg <= systolic__result_chans__1_1_data_valid_load_en ? systolic__result_chans__1_1_valid : __systolic__result_chans__1_1_data_valid_reg;
      __systolic__hor_chans__0_0_data_reg <= systolic__hor_chans__0_0_data_load_en ? __systolic__hor_chans__0_0_data_buf : __systolic__hor_chans__0_0_data_reg;
      __systolic__hor_chans__0_0_data_valid_reg <= systolic__hor_chans__0_0_data_valid_load_en ? __systolic__hor_chans__0_0_data_valid_and_not_has_been_sent : __systolic__hor_chans__0_0_data_valid_reg;
      __systolic__vert_chans__0_0_data_reg <= systolic__vert_chans__0_0_data_load_en ? __systolic__vert_chans__0_0_data_buf : __systolic__vert_chans__0_0_data_reg;
      __systolic__vert_chans__0_0_data_valid_reg <= systolic__vert_chans__0_0_data_valid_load_en ? __systolic__vert_chans__0_0_data_valid_and_not_has_been_sent : __systolic__vert_chans__0_0_data_valid_reg;
      __systolic__hor_chans__1_0_data_reg <= systolic__hor_chans__1_0_data_load_en ? __systolic__hor_chans__1_0_data_buf : __systolic__hor_chans__1_0_data_reg;
      __systolic__hor_chans__1_0_data_valid_reg <= systolic__hor_chans__1_0_data_valid_load_en ? __systolic__hor_chans__1_0_data_valid_and_not_has_been_sent : __systolic__hor_chans__1_0_data_valid_reg;
      __systolic__vert_chans__0_1_data_reg <= systolic__vert_chans__0_1_data_load_en ? __systolic__vert_chans__0_1_data_buf : __systolic__vert_chans__0_1_data_reg;
      __systolic__vert_chans__0_1_data_valid_reg <= systolic__vert_chans__0_1_data_valid_load_en ? __systolic__vert_chans__0_1_data_valid_and_not_has_been_sent : __systolic__vert_chans__0_1_data_valid_reg;
      __systolic__out0_data_reg <= systolic__out0_data_load_en ? c : __systolic__out0_data_reg;
      __systolic__out0_data_valid_reg <= systolic__out0_data_valid_load_en ? __systolic__out0_data_valid_and_not_has_been_sent : __systolic__out0_data_valid_reg;
    end
  end
  assign systolic__arg0_ready = systolic__arg0_data_load_en;
  assign systolic__arg1_ready = systolic__arg1_data_load_en;
  assign systolic__hor_chans__0_0_data = __systolic__hor_chans__0_0_data_reg;
  assign systolic__hor_chans__0_0_valid = __systolic__hor_chans__0_0_data_valid_reg;
  assign systolic__hor_chans__0_2_ready = systolic__hor_chans__0_2_data_load_en;
  assign systolic__hor_chans__1_0_data = __systolic__hor_chans__1_0_data_reg;
  assign systolic__hor_chans__1_0_valid = __systolic__hor_chans__1_0_data_valid_reg;
  assign systolic__hor_chans__1_2_ready = systolic__hor_chans__1_2_data_load_en;
  assign systolic__out0_data = {{__systolic__out0_data_reg[1][1], __systolic__out0_data_reg[1][0]}, {__systolic__out0_data_reg[0][1], __systolic__out0_data_reg[0][0]}};
  assign systolic__out0_valid = __systolic__out0_data_valid_reg;
  assign systolic__result_chans__0_0_ready = systolic__result_chans__0_0_data_load_en;
  assign systolic__result_chans__0_1_ready = systolic__result_chans__0_1_data_load_en;
  assign systolic__result_chans__1_0_ready = systolic__result_chans__1_0_data_load_en;
  assign systolic__result_chans__1_1_ready = systolic__result_chans__1_1_data_load_en;
  assign systolic__vert_chans__0_0_data = __systolic__vert_chans__0_0_data_reg;
  assign systolic__vert_chans__0_0_valid = __systolic__vert_chans__0_0_data_valid_reg;
  assign systolic__vert_chans__0_1_data = __systolic__vert_chans__0_1_data_reg;
  assign systolic__vert_chans__0_1_valid = __systolic__vert_chans__0_1_data_valid_reg;
  assign systolic__vert_chans__2_0_ready = systolic__vert_chans__2_0_data_load_en;
  assign systolic__vert_chans__2_1_ready = systolic__vert_chans__2_1_data_load_en;
  `ifdef ASSERT_ON
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_3125))) or_3125) else $fatal(0, "More than one next_value fired for state element: __state_2");
  `endif  // ASSERT_ON
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3253;
  wire eq_3258;
  wire ne_3242;
  wire and_3259;
  wire or_3256;
  wire [2:0] add_3250;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3245;
  wire popped;
  wire [1:0] sub_3271;
  wire [1:0] add_3273;
  wire [2:0] umod_3251;
  wire [2:0] umod_3246;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3275;
  wire [31:0] array_update_3282[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3253 = pop_ready & push_valid;
  assign eq_3258 = head == tail;
  assign ne_3242 = head != tail;
  assign and_3259 = eq_3258 & and_3253;
  assign or_3256 = ne_3242 | push_valid;
  assign add_3250 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3245 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3256;
  assign sub_3271 = slots - 2'h1;
  assign add_3273 = slots + 2'h1;
  assign umod_3251 = add_3250 % long_buf_size_lit;
  assign umod_3246 = add_3245 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3251[1:0];
  assign did_push_occur = (can_do_push | and_3253) & push_valid & ~and_3259 & ~is_full_bool;
  assign next_tail_if_pop = umod_3246[1:0];
  assign did_pop_occur = (ne_3242 | and_3253) & pop_ready & ~and_3259;
  assign sel_3275 = pushed ? (popped ? slots : add_3273) : (popped ? sub_3271 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3275;
      buf__1 <= did_push_occur ? array_update_3282 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3256;
  assign pop_data = eq_3258 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3282_0
    assign array_update_3282[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___1(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3310;
  wire eq_3315;
  wire ne_3299;
  wire and_3316;
  wire or_3313;
  wire [2:0] add_3307;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3302;
  wire popped;
  wire [1:0] sub_3328;
  wire [1:0] add_3330;
  wire [2:0] umod_3308;
  wire [2:0] umod_3303;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3332;
  wire [31:0] array_update_3339[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3310 = pop_ready & push_valid;
  assign eq_3315 = head == tail;
  assign ne_3299 = head != tail;
  assign and_3316 = eq_3315 & and_3310;
  assign or_3313 = ne_3299 | push_valid;
  assign add_3307 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3302 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3313;
  assign sub_3328 = slots - 2'h1;
  assign add_3330 = slots + 2'h1;
  assign umod_3308 = add_3307 % long_buf_size_lit;
  assign umod_3303 = add_3302 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3308[1:0];
  assign did_push_occur = (can_do_push | and_3310) & push_valid & ~and_3316 & ~is_full_bool;
  assign next_tail_if_pop = umod_3303[1:0];
  assign did_pop_occur = (ne_3299 | and_3310) & pop_ready & ~and_3316;
  assign sel_3332 = pushed ? (popped ? slots : add_3330) : (popped ? sub_3328 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3332;
      buf__1 <= did_push_occur ? array_update_3339 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3313;
  assign pop_data = eq_3315 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3339_0
    assign array_update_3339[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___2(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3367;
  wire eq_3372;
  wire ne_3356;
  wire and_3373;
  wire or_3370;
  wire [2:0] add_3364;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3359;
  wire popped;
  wire [1:0] sub_3385;
  wire [1:0] add_3387;
  wire [2:0] umod_3365;
  wire [2:0] umod_3360;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3389;
  wire [31:0] array_update_3396[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3367 = pop_ready & push_valid;
  assign eq_3372 = head == tail;
  assign ne_3356 = head != tail;
  assign and_3373 = eq_3372 & and_3367;
  assign or_3370 = ne_3356 | push_valid;
  assign add_3364 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3359 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3370;
  assign sub_3385 = slots - 2'h1;
  assign add_3387 = slots + 2'h1;
  assign umod_3365 = add_3364 % long_buf_size_lit;
  assign umod_3360 = add_3359 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3365[1:0];
  assign did_push_occur = (can_do_push | and_3367) & push_valid & ~and_3373 & ~is_full_bool;
  assign next_tail_if_pop = umod_3360[1:0];
  assign did_pop_occur = (ne_3356 | and_3367) & pop_ready & ~and_3373;
  assign sel_3389 = pushed ? (popped ? slots : add_3387) : (popped ? sub_3385 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3389;
      buf__1 <= did_push_occur ? array_update_3396 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3370;
  assign pop_data = eq_3372 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3396_0
    assign array_update_3396[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___3(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3424;
  wire eq_3429;
  wire ne_3413;
  wire and_3430;
  wire or_3427;
  wire [2:0] add_3421;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3416;
  wire popped;
  wire [1:0] sub_3442;
  wire [1:0] add_3444;
  wire [2:0] umod_3422;
  wire [2:0] umod_3417;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3446;
  wire [31:0] array_update_3453[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3424 = pop_ready & push_valid;
  assign eq_3429 = head == tail;
  assign ne_3413 = head != tail;
  assign and_3430 = eq_3429 & and_3424;
  assign or_3427 = ne_3413 | push_valid;
  assign add_3421 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3416 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3427;
  assign sub_3442 = slots - 2'h1;
  assign add_3444 = slots + 2'h1;
  assign umod_3422 = add_3421 % long_buf_size_lit;
  assign umod_3417 = add_3416 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3422[1:0];
  assign did_push_occur = (can_do_push | and_3424) & push_valid & ~and_3430 & ~is_full_bool;
  assign next_tail_if_pop = umod_3417[1:0];
  assign did_pop_occur = (ne_3413 | and_3424) & pop_ready & ~and_3430;
  assign sel_3446 = pushed ? (popped ? slots : add_3444) : (popped ? sub_3442 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3446;
      buf__1 <= did_push_occur ? array_update_3453 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3427;
  assign pop_data = eq_3429 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3453_0
    assign array_update_3453[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___4(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3481;
  wire eq_3486;
  wire ne_3470;
  wire and_3487;
  wire or_3484;
  wire [2:0] add_3478;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3473;
  wire popped;
  wire [1:0] sub_3499;
  wire [1:0] add_3501;
  wire [2:0] umod_3479;
  wire [2:0] umod_3474;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3503;
  wire [31:0] array_update_3510[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3481 = pop_ready & push_valid;
  assign eq_3486 = head == tail;
  assign ne_3470 = head != tail;
  assign and_3487 = eq_3486 & and_3481;
  assign or_3484 = ne_3470 | push_valid;
  assign add_3478 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3473 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3484;
  assign sub_3499 = slots - 2'h1;
  assign add_3501 = slots + 2'h1;
  assign umod_3479 = add_3478 % long_buf_size_lit;
  assign umod_3474 = add_3473 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3479[1:0];
  assign did_push_occur = (can_do_push | and_3481) & push_valid & ~and_3487 & ~is_full_bool;
  assign next_tail_if_pop = umod_3474[1:0];
  assign did_pop_occur = (ne_3470 | and_3481) & pop_ready & ~and_3487;
  assign sel_3503 = pushed ? (popped ? slots : add_3501) : (popped ? sub_3499 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3503;
      buf__1 <= did_push_occur ? array_update_3510 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3484;
  assign pop_data = eq_3486 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3510_0
    assign array_update_3510[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___5(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3538;
  wire eq_3543;
  wire ne_3527;
  wire and_3544;
  wire or_3541;
  wire [2:0] add_3535;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3530;
  wire popped;
  wire [1:0] sub_3556;
  wire [1:0] add_3558;
  wire [2:0] umod_3536;
  wire [2:0] umod_3531;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3560;
  wire [31:0] array_update_3567[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3538 = pop_ready & push_valid;
  assign eq_3543 = head == tail;
  assign ne_3527 = head != tail;
  assign and_3544 = eq_3543 & and_3538;
  assign or_3541 = ne_3527 | push_valid;
  assign add_3535 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3530 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3541;
  assign sub_3556 = slots - 2'h1;
  assign add_3558 = slots + 2'h1;
  assign umod_3536 = add_3535 % long_buf_size_lit;
  assign umod_3531 = add_3530 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3536[1:0];
  assign did_push_occur = (can_do_push | and_3538) & push_valid & ~and_3544 & ~is_full_bool;
  assign next_tail_if_pop = umod_3531[1:0];
  assign did_pop_occur = (ne_3527 | and_3538) & pop_ready & ~and_3544;
  assign sel_3560 = pushed ? (popped ? slots : add_3558) : (popped ? sub_3556 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3560;
      buf__1 <= did_push_occur ? array_update_3567 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3541;
  assign pop_data = eq_3543 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3567_0
    assign array_update_3567[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___6(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3595;
  wire eq_3600;
  wire ne_3584;
  wire and_3601;
  wire or_3598;
  wire [2:0] add_3592;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3587;
  wire popped;
  wire [1:0] sub_3613;
  wire [1:0] add_3615;
  wire [2:0] umod_3593;
  wire [2:0] umod_3588;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3617;
  wire [31:0] array_update_3624[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3595 = pop_ready & push_valid;
  assign eq_3600 = head == tail;
  assign ne_3584 = head != tail;
  assign and_3601 = eq_3600 & and_3595;
  assign or_3598 = ne_3584 | push_valid;
  assign add_3592 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3587 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3598;
  assign sub_3613 = slots - 2'h1;
  assign add_3615 = slots + 2'h1;
  assign umod_3593 = add_3592 % long_buf_size_lit;
  assign umod_3588 = add_3587 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3593[1:0];
  assign did_push_occur = (can_do_push | and_3595) & push_valid & ~and_3601 & ~is_full_bool;
  assign next_tail_if_pop = umod_3588[1:0];
  assign did_pop_occur = (ne_3584 | and_3595) & pop_ready & ~and_3601;
  assign sel_3617 = pushed ? (popped ? slots : add_3615) : (popped ? sub_3613 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3617;
      buf__1 <= did_push_occur ? array_update_3624 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3598;
  assign pop_data = eq_3600 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3624_0
    assign array_update_3624[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___7(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3652;
  wire eq_3657;
  wire ne_3641;
  wire and_3658;
  wire or_3655;
  wire [2:0] add_3649;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3644;
  wire popped;
  wire [1:0] sub_3670;
  wire [1:0] add_3672;
  wire [2:0] umod_3650;
  wire [2:0] umod_3645;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3674;
  wire [31:0] array_update_3681[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3652 = pop_ready & push_valid;
  assign eq_3657 = head == tail;
  assign ne_3641 = head != tail;
  assign and_3658 = eq_3657 & and_3652;
  assign or_3655 = ne_3641 | push_valid;
  assign add_3649 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3644 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3655;
  assign sub_3670 = slots - 2'h1;
  assign add_3672 = slots + 2'h1;
  assign umod_3650 = add_3649 % long_buf_size_lit;
  assign umod_3645 = add_3644 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3650[1:0];
  assign did_push_occur = (can_do_push | and_3652) & push_valid & ~and_3658 & ~is_full_bool;
  assign next_tail_if_pop = umod_3645[1:0];
  assign did_pop_occur = (ne_3641 | and_3652) & pop_ready & ~and_3658;
  assign sel_3674 = pushed ? (popped ? slots : add_3672) : (popped ? sub_3670 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3674;
      buf__1 <= did_push_occur ? array_update_3681 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3655;
  assign pop_data = eq_3657 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3681_0
    assign array_update_3681[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___8(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3709;
  wire eq_3714;
  wire ne_3698;
  wire and_3715;
  wire or_3712;
  wire [2:0] add_3706;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3701;
  wire popped;
  wire [1:0] sub_3727;
  wire [1:0] add_3729;
  wire [2:0] umod_3707;
  wire [2:0] umod_3702;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3731;
  wire [31:0] array_update_3738[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3709 = pop_ready & push_valid;
  assign eq_3714 = head == tail;
  assign ne_3698 = head != tail;
  assign and_3715 = eq_3714 & and_3709;
  assign or_3712 = ne_3698 | push_valid;
  assign add_3706 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3701 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3712;
  assign sub_3727 = slots - 2'h1;
  assign add_3729 = slots + 2'h1;
  assign umod_3707 = add_3706 % long_buf_size_lit;
  assign umod_3702 = add_3701 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3707[1:0];
  assign did_push_occur = (can_do_push | and_3709) & push_valid & ~and_3715 & ~is_full_bool;
  assign next_tail_if_pop = umod_3702[1:0];
  assign did_pop_occur = (ne_3698 | and_3709) & pop_ready & ~and_3715;
  assign sel_3731 = pushed ? (popped ? slots : add_3729) : (popped ? sub_3727 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3731;
      buf__1 <= did_push_occur ? array_update_3738 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3712;
  assign pop_data = eq_3714 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3738_0
    assign array_update_3738[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___9(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3766;
  wire eq_3771;
  wire ne_3755;
  wire and_3772;
  wire or_3769;
  wire [2:0] add_3763;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3758;
  wire popped;
  wire [1:0] sub_3784;
  wire [1:0] add_3786;
  wire [2:0] umod_3764;
  wire [2:0] umod_3759;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3788;
  wire [31:0] array_update_3795[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3766 = pop_ready & push_valid;
  assign eq_3771 = head == tail;
  assign ne_3755 = head != tail;
  assign and_3772 = eq_3771 & and_3766;
  assign or_3769 = ne_3755 | push_valid;
  assign add_3763 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3758 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3769;
  assign sub_3784 = slots - 2'h1;
  assign add_3786 = slots + 2'h1;
  assign umod_3764 = add_3763 % long_buf_size_lit;
  assign umod_3759 = add_3758 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3764[1:0];
  assign did_push_occur = (can_do_push | and_3766) & push_valid & ~and_3772 & ~is_full_bool;
  assign next_tail_if_pop = umod_3759[1:0];
  assign did_pop_occur = (ne_3755 | and_3766) & pop_ready & ~and_3772;
  assign sel_3788 = pushed ? (popped ? slots : add_3786) : (popped ? sub_3784 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3788;
      buf__1 <= did_push_occur ? array_update_3795 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3769;
  assign pop_data = eq_3771 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3795_0
    assign array_update_3795[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___10(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3823;
  wire eq_3828;
  wire ne_3812;
  wire and_3829;
  wire or_3826;
  wire [2:0] add_3820;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3815;
  wire popped;
  wire [1:0] sub_3841;
  wire [1:0] add_3843;
  wire [2:0] umod_3821;
  wire [2:0] umod_3816;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3845;
  wire [31:0] array_update_3852[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3823 = pop_ready & push_valid;
  assign eq_3828 = head == tail;
  assign ne_3812 = head != tail;
  assign and_3829 = eq_3828 & and_3823;
  assign or_3826 = ne_3812 | push_valid;
  assign add_3820 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3815 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3826;
  assign sub_3841 = slots - 2'h1;
  assign add_3843 = slots + 2'h1;
  assign umod_3821 = add_3820 % long_buf_size_lit;
  assign umod_3816 = add_3815 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3821[1:0];
  assign did_push_occur = (can_do_push | and_3823) & push_valid & ~and_3829 & ~is_full_bool;
  assign next_tail_if_pop = umod_3816[1:0];
  assign did_pop_occur = (ne_3812 | and_3823) & pop_ready & ~and_3829;
  assign sel_3845 = pushed ? (popped ? slots : add_3843) : (popped ? sub_3841 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3845;
      buf__1 <= did_push_occur ? array_update_3852 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3826;
  assign pop_data = eq_3828 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3852_0
    assign array_update_3852[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___11(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3880;
  wire eq_3885;
  wire ne_3869;
  wire and_3886;
  wire or_3883;
  wire [2:0] add_3877;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3872;
  wire popped;
  wire [1:0] sub_3898;
  wire [1:0] add_3900;
  wire [2:0] umod_3878;
  wire [2:0] umod_3873;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3902;
  wire [31:0] array_update_3909[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3880 = pop_ready & push_valid;
  assign eq_3885 = head == tail;
  assign ne_3869 = head != tail;
  assign and_3886 = eq_3885 & and_3880;
  assign or_3883 = ne_3869 | push_valid;
  assign add_3877 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3872 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3883;
  assign sub_3898 = slots - 2'h1;
  assign add_3900 = slots + 2'h1;
  assign umod_3878 = add_3877 % long_buf_size_lit;
  assign umod_3873 = add_3872 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3878[1:0];
  assign did_push_occur = (can_do_push | and_3880) & push_valid & ~and_3886 & ~is_full_bool;
  assign next_tail_if_pop = umod_3873[1:0];
  assign did_pop_occur = (ne_3869 | and_3880) & pop_ready & ~and_3886;
  assign sel_3902 = pushed ? (popped ? slots : add_3900) : (popped ? sub_3898 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3902;
      buf__1 <= did_push_occur ? array_update_3909 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3883;
  assign pop_data = eq_3885 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3909_0
    assign array_update_3909[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___12(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3937;
  wire eq_3942;
  wire ne_3926;
  wire and_3943;
  wire or_3940;
  wire [2:0] add_3934;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3929;
  wire popped;
  wire [1:0] sub_3955;
  wire [1:0] add_3957;
  wire [2:0] umod_3935;
  wire [2:0] umod_3930;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_3959;
  wire [31:0] array_update_3966[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3937 = pop_ready & push_valid;
  assign eq_3942 = head == tail;
  assign ne_3926 = head != tail;
  assign and_3943 = eq_3942 & and_3937;
  assign or_3940 = ne_3926 | push_valid;
  assign add_3934 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3929 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3940;
  assign sub_3955 = slots - 2'h1;
  assign add_3957 = slots + 2'h1;
  assign umod_3935 = add_3934 % long_buf_size_lit;
  assign umod_3930 = add_3929 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3935[1:0];
  assign did_push_occur = (can_do_push | and_3937) & push_valid & ~and_3943 & ~is_full_bool;
  assign next_tail_if_pop = umod_3930[1:0];
  assign did_pop_occur = (ne_3926 | and_3937) & pop_ready & ~and_3943;
  assign sel_3959 = pushed ? (popped ? slots : add_3957) : (popped ? sub_3955 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_3959;
      buf__1 <= did_push_occur ? array_update_3966 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3940;
  assign pop_data = eq_3942 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_3966_0
    assign array_update_3966[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___13(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_3994;
  wire eq_3999;
  wire ne_3983;
  wire and_4000;
  wire or_3997;
  wire [2:0] add_3991;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_3986;
  wire popped;
  wire [1:0] sub_4012;
  wire [1:0] add_4014;
  wire [2:0] umod_3992;
  wire [2:0] umod_3987;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_4016;
  wire [31:0] array_update_4023[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_3994 = pop_ready & push_valid;
  assign eq_3999 = head == tail;
  assign ne_3983 = head != tail;
  assign and_4000 = eq_3999 & and_3994;
  assign or_3997 = ne_3983 | push_valid;
  assign add_3991 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_3986 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_3997;
  assign sub_4012 = slots - 2'h1;
  assign add_4014 = slots + 2'h1;
  assign umod_3992 = add_3991 % long_buf_size_lit;
  assign umod_3987 = add_3986 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_3992[1:0];
  assign did_push_occur = (can_do_push | and_3994) & push_valid & ~and_4000 & ~is_full_bool;
  assign next_tail_if_pop = umod_3987[1:0];
  assign did_pop_occur = (ne_3983 | and_3994) & pop_ready & ~and_4000;
  assign sel_4016 = pushed ? (popped ? slots : add_4014) : (popped ? sub_4012 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_4016;
      buf__1 <= did_push_occur ? array_update_4023 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_3997;
  assign pop_data = eq_3999 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_4023_0
    assign array_update_4023[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___14(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_4051;
  wire eq_4056;
  wire ne_4040;
  wire and_4057;
  wire or_4054;
  wire [2:0] add_4048;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_4043;
  wire popped;
  wire [1:0] sub_4069;
  wire [1:0] add_4071;
  wire [2:0] umod_4049;
  wire [2:0] umod_4044;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_4073;
  wire [31:0] array_update_4080[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_4051 = pop_ready & push_valid;
  assign eq_4056 = head == tail;
  assign ne_4040 = head != tail;
  assign and_4057 = eq_4056 & and_4051;
  assign or_4054 = ne_4040 | push_valid;
  assign add_4048 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_4043 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_4054;
  assign sub_4069 = slots - 2'h1;
  assign add_4071 = slots + 2'h1;
  assign umod_4049 = add_4048 % long_buf_size_lit;
  assign umod_4044 = add_4043 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_4049[1:0];
  assign did_push_occur = (can_do_push | and_4051) & push_valid & ~and_4057 & ~is_full_bool;
  assign next_tail_if_pop = umod_4044[1:0];
  assign did_pop_occur = (ne_4040 | and_4051) & pop_ready & ~and_4057;
  assign sel_4073 = pushed ? (popped ? slots : add_4071) : (popped ? sub_4069 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_4073;
      buf__1 <= did_push_occur ? array_update_4080 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_4054;
  assign pop_data = eq_4056 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_4080_0
    assign array_update_4080[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module fifo_for_depth_1_ty_bits_32__with_bypass_register_push___15(
  input wire clk,
  input wire rst,
  input wire push_valid,
  input wire pop_ready,
  input wire [31:0] push_data,
  output wire push_ready,
  output wire pop_valid,
  output wire [31:0] pop_data
);
  wire [31:0] buf__1_init[2];
  assign buf__1_init = '{32'h0000_0000, 32'h0000_0000};
  reg [1:0] head;
  reg [1:0] tail;
  reg [1:0] slots;
  reg [31:0] buf__1[2];
  wire is_full_bool;
  wire can_do_push;
  wire and_4108;
  wire eq_4113;
  wire ne_4097;
  wire and_4114;
  wire or_4111;
  wire [2:0] add_4105;
  wire [2:0] long_buf_size_lit;
  wire [2:0] add_4100;
  wire popped;
  wire [1:0] sub_4126;
  wire [1:0] add_4128;
  wire [2:0] umod_4106;
  wire [2:0] umod_4101;
  wire pushed;
  wire [1:0] next_head_if_push;
  wire did_push_occur;
  wire [1:0] next_tail_if_pop;
  wire did_pop_occur;
  wire [1:0] sel_4130;
  wire [31:0] array_update_4137[2];
  assign is_full_bool = slots == 2'h1;
  assign can_do_push = ~is_full_bool | pop_ready;
  assign and_4108 = pop_ready & push_valid;
  assign eq_4113 = head == tail;
  assign ne_4097 = head != tail;
  assign and_4114 = eq_4113 & and_4108;
  assign or_4111 = ne_4097 | push_valid;
  assign add_4105 = {1'h0, head} + {1'h0, 2'h1};
  assign long_buf_size_lit = 3'h2;
  assign add_4100 = {1'h0, tail} + {1'h0, 2'h1};
  assign popped = pop_ready & or_4111;
  assign sub_4126 = slots - 2'h1;
  assign add_4128 = slots + 2'h1;
  assign umod_4106 = add_4105 % long_buf_size_lit;
  assign umod_4101 = add_4100 % long_buf_size_lit;
  assign pushed = ~is_full_bool & push_valid;
  assign next_head_if_push = umod_4106[1:0];
  assign did_push_occur = (can_do_push | and_4108) & push_valid & ~and_4114 & ~is_full_bool;
  assign next_tail_if_pop = umod_4101[1:0];
  assign did_pop_occur = (ne_4097 | and_4108) & pop_ready & ~and_4114;
  assign sel_4130 = pushed ? (popped ? slots : add_4128) : (popped ? sub_4126 : slots);
  always_ff @ (posedge clk) begin
    if (rst) begin
      head <= 2'h0;
      tail <= 2'h0;
      slots <= 2'h0;
      buf__1 <= buf__1_init;
    end else begin
      head <= did_push_occur ? next_head_if_push : head;
      tail <= did_pop_occur ? next_tail_if_pop : tail;
      slots <= sel_4130;
      buf__1 <= did_push_occur ? array_update_4137 : buf__1;
    end
  end
  assign push_ready = ~is_full_bool;
  assign pop_valid = or_4111;
  assign pop_data = eq_4113 ? push_data : buf__1[tail > 2'h1 ? 1'h1 : tail[0:0]];
  for (genvar __i0 = 0; __i0 < 2; __i0 = __i0 + 1) begin : gen__array_update_4137_0
    assign array_update_4137[__i0] = head == __i0 ? push_data : buf__1[__i0];
  end
endmodule


module systolic_2x2(
  input wire clk,
  input wire rst,
  input wire [127:0] systolic__arg0_data,
  input wire systolic__arg0_valid,
  input wire [127:0] systolic__arg1_data,
  input wire systolic__arg1_valid,
  input wire systolic__out0_ready,
  output wire systolic__arg0_ready,
  output wire systolic__arg1_ready,
  output wire [127:0] systolic__out0_data,
  output wire systolic__out0_valid
);
  wire [31:0] systolic__arg0_data_unflattened[2][2];
  assign systolic__arg0_data_unflattened[0][0] = systolic__arg0_data[31:0];
  assign systolic__arg0_data_unflattened[0][1] = systolic__arg0_data[63:32];
  assign systolic__arg0_data_unflattened[1][0] = systolic__arg0_data[95:64];
  assign systolic__arg0_data_unflattened[1][1] = systolic__arg0_data[127:96];
  wire [31:0] systolic__arg1_data_unflattened[2][2];
  assign systolic__arg1_data_unflattened[0][0] = systolic__arg1_data[31:0];
  assign systolic__arg1_data_unflattened[0][1] = systolic__arg1_data[63:32];
  assign systolic__arg1_data_unflattened[1][0] = systolic__arg1_data[95:64];
  assign systolic__arg1_data_unflattened[1][1] = systolic__arg1_data[127:96];
  wire instantiation_output_2919;
  wire [31:0] instantiation_output_2924;
  wire instantiation_output_2925;
  wire [31:0] instantiation_output_2995;
  wire instantiation_output_2996;
  wire instantiation_output_3055;
  wire [31:0] instantiation_output_3073;
  wire instantiation_output_3074;
  wire instantiation_output_2932;
  wire [31:0] instantiation_output_2937;
  wire instantiation_output_2938;
  wire [31:0] instantiation_output_3008;
  wire instantiation_output_3009;
  wire instantiation_output_3068;
  wire [31:0] instantiation_output_3086;
  wire instantiation_output_3087;
  wire instantiation_output_2958;
  wire [31:0] instantiation_output_2963;
  wire instantiation_output_2964;
  wire [31:0] instantiation_output_3021;
  wire instantiation_output_3022;
  wire instantiation_output_3081;
  wire [31:0] instantiation_output_3099;
  wire instantiation_output_3100;
  wire instantiation_output_2971;
  wire [31:0] instantiation_output_2976;
  wire instantiation_output_2977;
  wire [31:0] instantiation_output_3034;
  wire instantiation_output_3035;
  wire instantiation_output_3094;
  wire [31:0] instantiation_output_3112;
  wire instantiation_output_3113;
  wire instantiation_output_2900;
  wire instantiation_output_2906;
  wire [31:0] instantiation_output_2911;
  wire instantiation_output_2912;
  wire instantiation_output_2945;
  wire [31:0] instantiation_output_2950;
  wire instantiation_output_2951;
  wire instantiation_output_2984;
  wire [31:0] instantiation_output_2988[2][2];
  wire instantiation_output_2989;
  wire instantiation_output_3003;
  wire instantiation_output_3016;
  wire instantiation_output_3029;
  wire instantiation_output_3042;
  wire [31:0] instantiation_output_3047;
  wire instantiation_output_3048;
  wire [31:0] instantiation_output_3060;
  wire instantiation_output_3061;
  wire instantiation_output_3107;
  wire instantiation_output_3120;
  wire instantiation_output_4145;
  wire [31:0] instantiation_output_4146;
  wire instantiation_output_4147;
  wire instantiation_output_4152;
  wire [31:0] instantiation_output_4153;
  wire instantiation_output_4154;
  wire instantiation_output_4159;
  wire [31:0] instantiation_output_4160;
  wire instantiation_output_4161;
  wire instantiation_output_4166;
  wire [31:0] instantiation_output_4167;
  wire instantiation_output_4168;
  wire instantiation_output_4173;
  wire [31:0] instantiation_output_4174;
  wire instantiation_output_4175;
  wire instantiation_output_4180;
  wire [31:0] instantiation_output_4181;
  wire instantiation_output_4182;
  wire instantiation_output_4187;
  wire [31:0] instantiation_output_4188;
  wire instantiation_output_4189;
  wire instantiation_output_4194;
  wire [31:0] instantiation_output_4195;
  wire instantiation_output_4196;
  wire instantiation_output_4201;
  wire [31:0] instantiation_output_4202;
  wire instantiation_output_4203;
  wire instantiation_output_4208;
  wire [31:0] instantiation_output_4209;
  wire instantiation_output_4210;
  wire instantiation_output_4215;
  wire [31:0] instantiation_output_4216;
  wire instantiation_output_4217;
  wire instantiation_output_4222;
  wire [31:0] instantiation_output_4223;
  wire instantiation_output_4224;
  wire instantiation_output_4229;
  wire [31:0] instantiation_output_4230;
  wire instantiation_output_4231;
  wire instantiation_output_4236;
  wire [31:0] instantiation_output_4237;
  wire instantiation_output_4238;
  wire instantiation_output_4243;
  wire [31:0] instantiation_output_4244;
  wire instantiation_output_4245;
  wire instantiation_output_4250;
  wire [31:0] instantiation_output_4251;
  wire instantiation_output_4252;

  // ===== Instantiations
  __systolic__SystolicArray__PE_0_next __systolic__SystolicArray__PE_0_next_inst0 (
    .rst(rst),
    .systolic__hor_chans__0_0_data(instantiation_output_4146),
    .systolic__hor_chans__0_0_valid(instantiation_output_4147),
    .systolic__hor_chans__0_1_ready(instantiation_output_4152),
    .systolic__result_chans__0_0_ready(instantiation_output_4187),
    .systolic__vert_chans__0_0_data(instantiation_output_4216),
    .systolic__vert_chans__0_0_valid(instantiation_output_4217),
    .systolic__vert_chans__1_0_ready(instantiation_output_4229),
    .systolic__hor_chans__0_0_ready(instantiation_output_2919),
    .systolic__hor_chans__0_1_data(instantiation_output_2924),
    .systolic__hor_chans__0_1_valid(instantiation_output_2925),
    .systolic__result_chans__0_0_data(instantiation_output_2995),
    .systolic__result_chans__0_0_valid(instantiation_output_2996),
    .systolic__vert_chans__0_0_ready(instantiation_output_3055),
    .systolic__vert_chans__1_0_data(instantiation_output_3073),
    .systolic__vert_chans__1_0_valid(instantiation_output_3074),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_1_next __systolic__SystolicArray__PE_1_next_inst1 (
    .rst(rst),
    .systolic__hor_chans__0_1_data(instantiation_output_4153),
    .systolic__hor_chans__0_1_valid(instantiation_output_4154),
    .systolic__hor_chans__0_2_ready(instantiation_output_4159),
    .systolic__result_chans__0_1_ready(instantiation_output_4194),
    .systolic__vert_chans__0_1_data(instantiation_output_4223),
    .systolic__vert_chans__0_1_valid(instantiation_output_4224),
    .systolic__vert_chans__1_1_ready(instantiation_output_4236),
    .systolic__hor_chans__0_1_ready(instantiation_output_2932),
    .systolic__hor_chans__0_2_data(instantiation_output_2937),
    .systolic__hor_chans__0_2_valid(instantiation_output_2938),
    .systolic__result_chans__0_1_data(instantiation_output_3008),
    .systolic__result_chans__0_1_valid(instantiation_output_3009),
    .systolic__vert_chans__0_1_ready(instantiation_output_3068),
    .systolic__vert_chans__1_1_data(instantiation_output_3086),
    .systolic__vert_chans__1_1_valid(instantiation_output_3087),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_2_next __systolic__SystolicArray__PE_2_next_inst2 (
    .rst(rst),
    .systolic__hor_chans__1_0_data(instantiation_output_4167),
    .systolic__hor_chans__1_0_valid(instantiation_output_4168),
    .systolic__hor_chans__1_1_ready(instantiation_output_4173),
    .systolic__result_chans__1_0_ready(instantiation_output_4201),
    .systolic__vert_chans__1_0_data(instantiation_output_4230),
    .systolic__vert_chans__1_0_valid(instantiation_output_4231),
    .systolic__vert_chans__2_0_ready(instantiation_output_4243),
    .systolic__hor_chans__1_0_ready(instantiation_output_2958),
    .systolic__hor_chans__1_1_data(instantiation_output_2963),
    .systolic__hor_chans__1_1_valid(instantiation_output_2964),
    .systolic__result_chans__1_0_data(instantiation_output_3021),
    .systolic__result_chans__1_0_valid(instantiation_output_3022),
    .systolic__vert_chans__1_0_ready(instantiation_output_3081),
    .systolic__vert_chans__2_0_data(instantiation_output_3099),
    .systolic__vert_chans__2_0_valid(instantiation_output_3100),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_3_next __systolic__SystolicArray__PE_3_next_inst3 (
    .rst(rst),
    .systolic__hor_chans__1_1_data(instantiation_output_4174),
    .systolic__hor_chans__1_1_valid(instantiation_output_4175),
    .systolic__hor_chans__1_2_ready(instantiation_output_4180),
    .systolic__result_chans__1_1_ready(instantiation_output_4208),
    .systolic__vert_chans__1_1_data(instantiation_output_4237),
    .systolic__vert_chans__1_1_valid(instantiation_output_4238),
    .systolic__vert_chans__2_1_ready(instantiation_output_4250),
    .systolic__hor_chans__1_1_ready(instantiation_output_2971),
    .systolic__hor_chans__1_2_data(instantiation_output_2976),
    .systolic__hor_chans__1_2_valid(instantiation_output_2977),
    .systolic__result_chans__1_1_data(instantiation_output_3034),
    .systolic__result_chans__1_1_valid(instantiation_output_3035),
    .systolic__vert_chans__1_1_ready(instantiation_output_3094),
    .systolic__vert_chans__2_1_data(instantiation_output_3112),
    .systolic__vert_chans__2_1_valid(instantiation_output_3113),
    .clk(clk)
  );
  systolic_2x2__1 systolic_2x2__1_inst4 (
    .rst(rst),
    .systolic__arg0_data({{systolic__arg0_data_unflattened[1][1], systolic__arg0_data_unflattened[1][0]}, {systolic__arg0_data_unflattened[0][1], systolic__arg0_data_unflattened[0][0]}}),
    .systolic__arg0_valid(systolic__arg0_valid),
    .systolic__arg1_data({{systolic__arg1_data_unflattened[1][1], systolic__arg1_data_unflattened[1][0]}, {systolic__arg1_data_unflattened[0][1], systolic__arg1_data_unflattened[0][0]}}),
    .systolic__arg1_valid(systolic__arg1_valid),
    .systolic__hor_chans__0_0_ready(instantiation_output_4145),
    .systolic__hor_chans__0_2_data(instantiation_output_4160),
    .systolic__hor_chans__0_2_valid(instantiation_output_4161),
    .systolic__hor_chans__1_0_ready(instantiation_output_4166),
    .systolic__hor_chans__1_2_data(instantiation_output_4181),
    .systolic__hor_chans__1_2_valid(instantiation_output_4182),
    .systolic__out0_ready(systolic__out0_ready),
    .systolic__result_chans__0_0_data(instantiation_output_4188),
    .systolic__result_chans__0_0_valid(instantiation_output_4189),
    .systolic__result_chans__0_1_data(instantiation_output_4195),
    .systolic__result_chans__0_1_valid(instantiation_output_4196),
    .systolic__result_chans__1_0_data(instantiation_output_4202),
    .systolic__result_chans__1_0_valid(instantiation_output_4203),
    .systolic__result_chans__1_1_data(instantiation_output_4209),
    .systolic__result_chans__1_1_valid(instantiation_output_4210),
    .systolic__vert_chans__0_0_ready(instantiation_output_4215),
    .systolic__vert_chans__0_1_ready(instantiation_output_4222),
    .systolic__vert_chans__2_0_data(instantiation_output_4244),
    .systolic__vert_chans__2_0_valid(instantiation_output_4245),
    .systolic__vert_chans__2_1_data(instantiation_output_4251),
    .systolic__vert_chans__2_1_valid(instantiation_output_4252),
    .systolic__arg0_ready(instantiation_output_2900),
    .systolic__arg1_ready(instantiation_output_2906),
    .systolic__hor_chans__0_0_data(instantiation_output_2911),
    .systolic__hor_chans__0_0_valid(instantiation_output_2912),
    .systolic__hor_chans__0_2_ready(instantiation_output_2945),
    .systolic__hor_chans__1_0_data(instantiation_output_2950),
    .systolic__hor_chans__1_0_valid(instantiation_output_2951),
    .systolic__hor_chans__1_2_ready(instantiation_output_2984),
    .systolic__out0_data({{instantiation_output_2988[1][1], instantiation_output_2988[1][0]}, {instantiation_output_2988[0][1], instantiation_output_2988[0][0]}}),
    .systolic__out0_valid(instantiation_output_2989),
    .systolic__result_chans__0_0_ready(instantiation_output_3003),
    .systolic__result_chans__0_1_ready(instantiation_output_3016),
    .systolic__result_chans__1_0_ready(instantiation_output_3029),
    .systolic__result_chans__1_1_ready(instantiation_output_3042),
    .systolic__vert_chans__0_0_data(instantiation_output_3047),
    .systolic__vert_chans__0_0_valid(instantiation_output_3048),
    .systolic__vert_chans__0_1_data(instantiation_output_3060),
    .systolic__vert_chans__0_1_valid(instantiation_output_3061),
    .systolic__vert_chans__2_0_ready(instantiation_output_3107),
    .systolic__vert_chans__2_1_ready(instantiation_output_3120),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push materialized_fifo_fifo_systolic__hor_chans__0_0_ (
    .rst(rst),
    .push_data(instantiation_output_2911),
    .push_valid(instantiation_output_2912),
    .pop_ready(instantiation_output_2919),
    .push_ready(instantiation_output_4145),
    .pop_data(instantiation_output_4146),
    .pop_valid(instantiation_output_4147),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___1 materialized_fifo_fifo_systolic__hor_chans__0_1_ (
    .rst(rst),
    .push_data(instantiation_output_2924),
    .push_valid(instantiation_output_2925),
    .pop_ready(instantiation_output_2932),
    .push_ready(instantiation_output_4152),
    .pop_data(instantiation_output_4153),
    .pop_valid(instantiation_output_4154),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___2 materialized_fifo_fifo_systolic__hor_chans__0_2_ (
    .rst(rst),
    .push_data(instantiation_output_2937),
    .push_valid(instantiation_output_2938),
    .pop_ready(instantiation_output_2945),
    .push_ready(instantiation_output_4159),
    .pop_data(instantiation_output_4160),
    .pop_valid(instantiation_output_4161),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___3 materialized_fifo_fifo_systolic__hor_chans__1_0_ (
    .rst(rst),
    .push_data(instantiation_output_2950),
    .push_valid(instantiation_output_2951),
    .pop_ready(instantiation_output_2958),
    .push_ready(instantiation_output_4166),
    .pop_data(instantiation_output_4167),
    .pop_valid(instantiation_output_4168),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___4 materialized_fifo_fifo_systolic__hor_chans__1_1_ (
    .rst(rst),
    .push_data(instantiation_output_2963),
    .push_valid(instantiation_output_2964),
    .pop_ready(instantiation_output_2971),
    .push_ready(instantiation_output_4173),
    .pop_data(instantiation_output_4174),
    .pop_valid(instantiation_output_4175),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___5 materialized_fifo_fifo_systolic__hor_chans__1_2_ (
    .rst(rst),
    .push_data(instantiation_output_2976),
    .push_valid(instantiation_output_2977),
    .pop_ready(instantiation_output_2984),
    .push_ready(instantiation_output_4180),
    .pop_data(instantiation_output_4181),
    .pop_valid(instantiation_output_4182),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___6 materialized_fifo_fifo_systolic__result_chans__0_0_ (
    .rst(rst),
    .push_data(instantiation_output_2995),
    .push_valid(instantiation_output_2996),
    .pop_ready(instantiation_output_3003),
    .push_ready(instantiation_output_4187),
    .pop_data(instantiation_output_4188),
    .pop_valid(instantiation_output_4189),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___7 materialized_fifo_fifo_systolic__result_chans__0_1_ (
    .rst(rst),
    .push_data(instantiation_output_3008),
    .push_valid(instantiation_output_3009),
    .pop_ready(instantiation_output_3016),
    .push_ready(instantiation_output_4194),
    .pop_data(instantiation_output_4195),
    .pop_valid(instantiation_output_4196),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___8 materialized_fifo_fifo_systolic__result_chans__1_0_ (
    .rst(rst),
    .push_data(instantiation_output_3021),
    .push_valid(instantiation_output_3022),
    .pop_ready(instantiation_output_3029),
    .push_ready(instantiation_output_4201),
    .pop_data(instantiation_output_4202),
    .pop_valid(instantiation_output_4203),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___9 materialized_fifo_fifo_systolic__result_chans__1_1_ (
    .rst(rst),
    .push_data(instantiation_output_3034),
    .push_valid(instantiation_output_3035),
    .pop_ready(instantiation_output_3042),
    .push_ready(instantiation_output_4208),
    .pop_data(instantiation_output_4209),
    .pop_valid(instantiation_output_4210),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___10 materialized_fifo_fifo_systolic__vert_chans__0_0_ (
    .rst(rst),
    .push_data(instantiation_output_3047),
    .push_valid(instantiation_output_3048),
    .pop_ready(instantiation_output_3055),
    .push_ready(instantiation_output_4215),
    .pop_data(instantiation_output_4216),
    .pop_valid(instantiation_output_4217),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___11 materialized_fifo_fifo_systolic__vert_chans__0_1_ (
    .rst(rst),
    .push_data(instantiation_output_3060),
    .push_valid(instantiation_output_3061),
    .pop_ready(instantiation_output_3068),
    .push_ready(instantiation_output_4222),
    .pop_data(instantiation_output_4223),
    .pop_valid(instantiation_output_4224),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___12 materialized_fifo_fifo_systolic__vert_chans__1_0_ (
    .rst(rst),
    .push_data(instantiation_output_3073),
    .push_valid(instantiation_output_3074),
    .pop_ready(instantiation_output_3081),
    .push_ready(instantiation_output_4229),
    .pop_data(instantiation_output_4230),
    .pop_valid(instantiation_output_4231),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___13 materialized_fifo_fifo_systolic__vert_chans__1_1_ (
    .rst(rst),
    .push_data(instantiation_output_3086),
    .push_valid(instantiation_output_3087),
    .pop_ready(instantiation_output_3094),
    .push_ready(instantiation_output_4236),
    .pop_data(instantiation_output_4237),
    .pop_valid(instantiation_output_4238),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___14 materialized_fifo_fifo_systolic__vert_chans__2_0_ (
    .rst(rst),
    .push_data(instantiation_output_3099),
    .push_valid(instantiation_output_3100),
    .pop_ready(instantiation_output_3107),
    .push_ready(instantiation_output_4243),
    .pop_data(instantiation_output_4244),
    .pop_valid(instantiation_output_4245),
    .clk(clk)
  );
  fifo_for_depth_1_ty_bits_32__with_bypass_register_push___15 materialized_fifo_fifo_systolic__vert_chans__2_1_ (
    .rst(rst),
    .push_data(instantiation_output_3112),
    .push_valid(instantiation_output_3113),
    .pop_ready(instantiation_output_3120),
    .push_ready(instantiation_output_4250),
    .pop_data(instantiation_output_4251),
    .pop_valid(instantiation_output_4252),
    .clk(clk)
  );
  assign systolic__arg0_ready = instantiation_output_2900;
  assign systolic__arg1_ready = instantiation_output_2906;
  assign systolic__out0_data = {{instantiation_output_2988[1][1], instantiation_output_2988[1][0]}, {instantiation_output_2988[0][1], instantiation_output_2988[0][0]}};
  assign systolic__out0_valid = instantiation_output_2989;
endmodule
