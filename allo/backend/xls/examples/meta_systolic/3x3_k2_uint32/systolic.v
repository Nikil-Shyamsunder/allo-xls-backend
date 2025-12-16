module __systolic__SystolicArray_0_next__1(
  input wire clk,
  input wire rst,
  input wire [191:0] systolic__arg0,
  input wire systolic__arg0_vld,
  input wire [191:0] systolic__arg1,
  input wire systolic__arg1_vld,
  input wire systolic__hor_chans__0_0_rdy,
  input wire [31:0] systolic__hor_chans__0_3,
  input wire systolic__hor_chans__0_3_vld,
  input wire systolic__hor_chans__1_0_rdy,
  input wire [31:0] systolic__hor_chans__1_3,
  input wire systolic__hor_chans__1_3_vld,
  input wire systolic__hor_chans__2_0_rdy,
  input wire [31:0] systolic__hor_chans__2_3,
  input wire systolic__hor_chans__2_3_vld,
  input wire systolic__out0_rdy,
  input wire [31:0] systolic__result_chans__0_0,
  input wire systolic__result_chans__0_0_vld,
  input wire [31:0] systolic__result_chans__0_1,
  input wire systolic__result_chans__0_1_vld,
  input wire [31:0] systolic__result_chans__0_2,
  input wire systolic__result_chans__0_2_vld,
  input wire [31:0] systolic__result_chans__1_0,
  input wire systolic__result_chans__1_0_vld,
  input wire [31:0] systolic__result_chans__1_1,
  input wire systolic__result_chans__1_1_vld,
  input wire [31:0] systolic__result_chans__1_2,
  input wire systolic__result_chans__1_2_vld,
  input wire [31:0] systolic__result_chans__2_0,
  input wire systolic__result_chans__2_0_vld,
  input wire [31:0] systolic__result_chans__2_1,
  input wire systolic__result_chans__2_1_vld,
  input wire [31:0] systolic__result_chans__2_2,
  input wire systolic__result_chans__2_2_vld,
  input wire systolic__vert_chans__0_0_rdy,
  input wire systolic__vert_chans__0_1_rdy,
  input wire systolic__vert_chans__0_2_rdy,
  input wire [31:0] systolic__vert_chans__3_0,
  input wire systolic__vert_chans__3_0_vld,
  input wire [31:0] systolic__vert_chans__3_1,
  input wire systolic__vert_chans__3_1_vld,
  input wire [31:0] systolic__vert_chans__3_2,
  input wire systolic__vert_chans__3_2_vld,
  output wire systolic__arg0_rdy,
  output wire systolic__arg1_rdy,
  output wire [31:0] systolic__hor_chans__0_0,
  output wire systolic__hor_chans__0_0_vld,
  output wire systolic__hor_chans__0_3_rdy,
  output wire [31:0] systolic__hor_chans__1_0,
  output wire systolic__hor_chans__1_0_vld,
  output wire systolic__hor_chans__1_3_rdy,
  output wire [31:0] systolic__hor_chans__2_0,
  output wire systolic__hor_chans__2_0_vld,
  output wire systolic__hor_chans__2_3_rdy,
  output wire [287:0] systolic__out0,
  output wire systolic__out0_vld,
  output wire systolic__result_chans__0_0_rdy,
  output wire systolic__result_chans__0_1_rdy,
  output wire systolic__result_chans__0_2_rdy,
  output wire systolic__result_chans__1_0_rdy,
  output wire systolic__result_chans__1_1_rdy,
  output wire systolic__result_chans__1_2_rdy,
  output wire systolic__result_chans__2_0_rdy,
  output wire systolic__result_chans__2_1_rdy,
  output wire systolic__result_chans__2_2_rdy,
  output wire [31:0] systolic__vert_chans__0_0,
  output wire systolic__vert_chans__0_0_vld,
  output wire [31:0] systolic__vert_chans__0_1,
  output wire systolic__vert_chans__0_1_vld,
  output wire [31:0] systolic__vert_chans__0_2,
  output wire systolic__vert_chans__0_2_vld,
  output wire systolic__vert_chans__3_0_rdy,
  output wire systolic__vert_chans__3_1_rdy,
  output wire systolic__vert_chans__3_2_rdy
);
  wire [31:0] ____state_0_init[3][2];
  assign ____state_0_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] ____state_1_1_init[3];
  assign ____state_1_1_init = '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000};
  wire [31:0] ____state_1_0_init[3];
  assign ____state_1_0_init = '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000};
  wire [31:0] __systolic__arg0_reg_init[3][2];
  assign __systolic__arg0_reg_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] __systolic__arg1_reg_init[2][3];
  assign __systolic__arg1_reg_init = '{'{32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000}};
  wire [31:0] __systolic__out0_reg_init[3][3];
  assign __systolic__out0_reg_init = '{'{32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_2134[3][2];
  assign literal_2134 = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_2138[2][3];
  assign literal_2138 = '{'{32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_2024[3][2];
  assign literal_2024 = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_2025[3];
  assign literal_2025 = '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000};
  wire [31:0] systolic__arg0_unflattened[3][2];
  assign systolic__arg0_unflattened[0][0] = systolic__arg0[31:0];
  assign systolic__arg0_unflattened[0][1] = systolic__arg0[63:32];
  assign systolic__arg0_unflattened[1][0] = systolic__arg0[95:64];
  assign systolic__arg0_unflattened[1][1] = systolic__arg0[127:96];
  assign systolic__arg0_unflattened[2][0] = systolic__arg0[159:128];
  assign systolic__arg0_unflattened[2][1] = systolic__arg0[191:160];
  wire [31:0] systolic__arg1_unflattened[2][3];
  assign systolic__arg1_unflattened[0][0] = systolic__arg1[31:0];
  assign systolic__arg1_unflattened[0][1] = systolic__arg1[63:32];
  assign systolic__arg1_unflattened[0][2] = systolic__arg1[95:64];
  assign systolic__arg1_unflattened[1][0] = systolic__arg1[127:96];
  assign systolic__arg1_unflattened[1][1] = systolic__arg1[159:128];
  assign systolic__arg1_unflattened[1][2] = systolic__arg1[191:160];
  reg [1:0] ____state_2;
  reg [31:0] ____state_0[3][2];
  reg [31:0] ____state_1_1[3];
  reg [31:0] ____state_1_0[3];
  reg p0_bit_slice_2131;
  reg p0_not_2154;
  reg [31:0] p0_sel_2162;
  reg [31:0] p0_sel_2163;
  reg [31:0] p0_sel_2168;
  reg [31:0] p0_sel_2169;
  reg p0_eq_2170;
  reg p1_eq_2170;
  reg p2_eq_2170;
  reg [31:0] p2_tuple_2283_index1;
  reg [31:0] p2_array_2287[3];
  reg p3_eq_2170;
  reg [31:0] p3_c20;
  reg [31:0] p3_array_2287[3];
  reg [31:0] p3_array_2319[3];
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__0_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_0_has_been_sent_reg;
  reg __systolic__hor_chans__1_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_1_has_been_sent_reg;
  reg __systolic__hor_chans__2_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_2_has_been_sent_reg;
  reg __systolic__out0_has_been_sent_reg;
  reg [31:0] __systolic__arg0_reg[3][2];
  reg __systolic__arg0_valid_reg;
  reg [31:0] __systolic__arg1_reg[2][3];
  reg __systolic__arg1_valid_reg;
  reg [31:0] __systolic__hor_chans__0_3_reg;
  reg __systolic__hor_chans__0_3_valid_reg;
  reg [31:0] __systolic__hor_chans__1_3_reg;
  reg __systolic__hor_chans__1_3_valid_reg;
  reg [31:0] __systolic__hor_chans__2_3_reg;
  reg __systolic__hor_chans__2_3_valid_reg;
  reg [31:0] __systolic__vert_chans__3_0_reg;
  reg __systolic__vert_chans__3_0_valid_reg;
  reg [31:0] __systolic__vert_chans__3_1_reg;
  reg __systolic__vert_chans__3_1_valid_reg;
  reg [31:0] __systolic__vert_chans__3_2_reg;
  reg __systolic__vert_chans__3_2_valid_reg;
  reg [31:0] __systolic__result_chans__0_0_reg;
  reg __systolic__result_chans__0_0_valid_reg;
  reg [31:0] __systolic__result_chans__0_1_reg;
  reg __systolic__result_chans__0_1_valid_reg;
  reg [31:0] __systolic__result_chans__0_2_reg;
  reg __systolic__result_chans__0_2_valid_reg;
  reg [31:0] __systolic__result_chans__1_0_reg;
  reg __systolic__result_chans__1_0_valid_reg;
  reg [31:0] __systolic__result_chans__1_1_reg;
  reg __systolic__result_chans__1_1_valid_reg;
  reg [31:0] __systolic__result_chans__1_2_reg;
  reg __systolic__result_chans__1_2_valid_reg;
  reg [31:0] __systolic__result_chans__2_0_reg;
  reg __systolic__result_chans__2_0_valid_reg;
  reg [31:0] __systolic__result_chans__2_1_reg;
  reg __systolic__result_chans__2_1_valid_reg;
  reg [31:0] __systolic__result_chans__2_2_reg;
  reg __systolic__result_chans__2_2_valid_reg;
  reg [31:0] __systolic__hor_chans__0_0_reg;
  reg __systolic__hor_chans__0_0_valid_reg;
  reg [31:0] __systolic__vert_chans__0_0_reg;
  reg __systolic__vert_chans__0_0_valid_reg;
  reg [31:0] __systolic__hor_chans__1_0_reg;
  reg __systolic__hor_chans__1_0_valid_reg;
  reg [31:0] __systolic__vert_chans__0_1_reg;
  reg __systolic__vert_chans__0_1_valid_reg;
  reg [31:0] __systolic__hor_chans__2_0_reg;
  reg __systolic__hor_chans__2_0_valid_reg;
  reg [31:0] __systolic__vert_chans__0_2_reg;
  reg __systolic__vert_chans__0_2_valid_reg;
  reg [31:0] __systolic__out0_reg[3][3];
  reg __systolic__out0_valid_reg;
  wire p4_all_active_inputs_valid;
  wire __systolic__out0_vld_buf;
  wire __systolic__out0_not_has_been_sent;
  wire systolic__out0_valid_inv;
  wire __systolic__out0_valid_and_not_has_been_sent;
  wire systolic__out0_valid_load_en;
  wire systolic__out0_load_en;
  wire or_5476;
  wire p4_stage_done;
  wire p4_not_valid;
  wire p3_all_active_inputs_valid;
  wire p3_enable;
  wire p3_stage_done;
  wire p3_data_enable;
  wire p3_load_en;
  wire p3_not_valid;
  wire p2_all_active_inputs_valid;
  wire p2_enable;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_enable;
  wire __systolic__hor_chans__1_0_vld_buf;
  wire __systolic__hor_chans__1_0_not_has_been_sent;
  wire systolic__hor_chans__1_0_valid_inv;
  wire __systolic__vert_chans__0_1_not_has_been_sent;
  wire systolic__vert_chans__0_1_valid_inv;
  wire __systolic__hor_chans__2_0_not_has_been_sent;
  wire systolic__hor_chans__2_0_valid_inv;
  wire __systolic__vert_chans__0_2_not_has_been_sent;
  wire systolic__vert_chans__0_2_valid_inv;
  wire __systolic__hor_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_0_valid_load_en;
  wire __systolic__vert_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__0_1_valid_load_en;
  wire __systolic__hor_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_0_valid_load_en;
  wire __systolic__vert_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__0_2_valid_load_en;
  wire systolic__hor_chans__1_0_load_en;
  wire systolic__vert_chans__0_1_load_en;
  wire systolic__hor_chans__2_0_load_en;
  wire systolic__vert_chans__0_2_load_en;
  wire systolic__hor_chans__0_0_not_pred;
  wire p1_all_active_outputs_ready;
  wire a_mat2_1_case_cmp;
  wire p1_stage_done;
  wire p1_data_enable;
  wire p1_load_en;
  wire p1_not_valid;
  wire p0_all_active_inputs_valid;
  wire p0_enable;
  wire not_2154;
  wire __systolic__hor_chans__0_0_vld_buf;
  wire __systolic__hor_chans__0_0_not_has_been_sent;
  wire systolic__hor_chans__0_0_valid_inv;
  wire __systolic__vert_chans__0_0_not_has_been_sent;
  wire systolic__vert_chans__0_0_valid_inv;
  wire __systolic__hor_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_0_valid_load_en;
  wire __systolic__vert_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__0_0_valid_load_en;
  wire systolic__hor_chans__0_0_load_en;
  wire systolic__vert_chans__0_0_load_en;
  wire eq_2170;
  wire p0_all_active_outputs_ready;
  wire nor_2171;
  wire p0_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire [1:0] ____state_1_0__next_value_predicates;
  wire [1:0] ____state_2__next_value_predicates;
  wire p0_data_enable;
  wire [2:0] one_hot_2176;
  wire [2:0] one_hot_2177;
  wire [2:0] one_hot_2178;
  wire p0_load_en;
  wire and_2488;
  wire systolic__arg0_valid_inv;
  wire systolic__arg1_valid_inv;
  wire systolic__hor_chans__0_3_valid_inv;
  wire systolic__hor_chans__1_3_valid_inv;
  wire systolic__hor_chans__2_3_valid_inv;
  wire and_2490;
  wire systolic__result_chans__0_0_valid_inv;
  wire systolic__result_chans__0_1_valid_inv;
  wire systolic__result_chans__0_2_valid_inv;
  wire systolic__result_chans__1_0_valid_inv;
  wire and_2494;
  wire systolic__result_chans__1_1_valid_inv;
  wire systolic__result_chans__1_2_valid_inv;
  wire systolic__result_chans__2_0_valid_inv;
  wire and_2497;
  wire systolic__result_chans__2_1_valid_inv;
  wire systolic__result_chans__2_2_valid_inv;
  wire systolic__vert_chans__3_0_valid_inv;
  wire systolic__vert_chans__3_1_valid_inv;
  wire systolic__vert_chans__3_2_valid_inv;
  wire [31:0] systolic__arg0_select[3][2];
  wire [31:0] systolic__arg1_select[2][3];
  wire and_2454;
  wire and_2455;
  wire and_2462;
  wire and_2475;
  wire [1:0] unexpand_for_next_value_210_2__1_case_1;
  wire [31:0] systolic__result_chans__2_1_select;
  wire [31:0] systolic__result_chans__2_2_select;
  wire systolic__arg0_valid_load_en;
  wire systolic__arg1_valid_load_en;
  wire systolic__hor_chans__0_3_valid_load_en;
  wire systolic__hor_chans__1_3_valid_load_en;
  wire systolic__hor_chans__2_3_valid_load_en;
  wire systolic__result_chans__0_0_valid_load_en;
  wire systolic__result_chans__0_1_valid_load_en;
  wire systolic__result_chans__0_2_valid_load_en;
  wire systolic__result_chans__1_0_valid_load_en;
  wire systolic__result_chans__1_1_valid_load_en;
  wire systolic__result_chans__1_2_valid_load_en;
  wire systolic__result_chans__2_0_valid_load_en;
  wire systolic__result_chans__2_1_valid_load_en;
  wire systolic__result_chans__2_2_valid_load_en;
  wire systolic__vert_chans__3_0_valid_load_en;
  wire systolic__vert_chans__3_1_valid_load_en;
  wire systolic__vert_chans__3_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire ____state_1_0__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire [31:0] systolic__result_chans__1_1_select;
  wire [31:0] systolic__result_chans__1_2_select;
  wire [31:0] systolic__result_chans__0_0_select;
  wire [31:0] systolic__result_chans__0_1_select;
  wire [31:0] systolic__result_chans__0_2_select;
  wire [1:0] concat_2457;
  wire [1:0] concat_2464;
  wire [31:0] array_index_2193[3];
  wire [31:0] array_index_2194[3];
  wire [1:0] concat_2477;
  wire [1:0] unexpand_for_next_value_210_2__1_case_0;
  wire __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_0_valid_and_ready_txfr;
  wire __systolic__hor_chans__1_0_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_1_valid_and_ready_txfr;
  wire __systolic__hor_chans__2_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_2_valid_and_ready_txfr;
  wire __systolic__out0_valid_and_all_active_outputs_ready;
  wire __systolic__out0_valid_and_ready_txfr;
  wire [31:0] array_2341[3];
  wire systolic__arg0_load_en;
  wire systolic__arg1_load_en;
  wire systolic__hor_chans__0_3_load_en;
  wire systolic__hor_chans__1_3_load_en;
  wire systolic__hor_chans__2_3_load_en;
  wire systolic__result_chans__0_0_load_en;
  wire systolic__result_chans__0_1_load_en;
  wire systolic__result_chans__0_2_load_en;
  wire systolic__result_chans__1_0_load_en;
  wire systolic__result_chans__1_1_load_en;
  wire systolic__result_chans__1_2_load_en;
  wire systolic__result_chans__2_0_load_en;
  wire systolic__result_chans__2_1_load_en;
  wire systolic__result_chans__2_2_load_en;
  wire systolic__vert_chans__3_0_load_en;
  wire systolic__vert_chans__3_1_load_en;
  wire systolic__vert_chans__3_2_load_en;
  wire or_5426;
  wire or_5428;
  wire or_5432;
  wire [31:0] systolic__result_chans__2_0_select;
  wire [31:0] array_2319[3];
  wire [31:0] systolic__result_chans__1_0_select;
  wire [31:0] array_2287[3];
  wire [31:0] sel_2162;
  wire [31:0] sel_2163;
  wire [31:0] sel_2168;
  wire [31:0] sel_2169;
  wire [31:0] one_hot_sel_2458[3][2];
  wire or_2459;
  wire [31:0] one_hot_sel_2465[3];
  wire or_2466;
  wire [31:0] one_hot_sel_2472[3];
  wire [1:0] one_hot_sel_2478;
  wire or_2479;
  wire __systolic__hor_chans__0_0_not_stage_load;
  wire __systolic__hor_chans__0_0_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__0_0_has_been_sent_reg_load_en;
  wire __systolic__hor_chans__1_0_not_stage_load;
  wire __systolic__hor_chans__1_0_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__0_1_has_been_sent_reg_load_en;
  wire __systolic__hor_chans__2_0_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__0_2_has_been_sent_reg_load_en;
  wire __systolic__out0_not_stage_load;
  wire __systolic__out0_has_been_sent_reg_load_en;
  wire [31:0] __systolic__hor_chans__0_0_buf;
  wire [31:0] __systolic__vert_chans__0_0_buf;
  wire [31:0] c[3][3];
  assign p4_all_active_inputs_valid = (~p3_eq_2170 | __systolic__result_chans__2_1_valid_reg) & (~p3_eq_2170 | __systolic__result_chans__2_2_valid_reg);
  assign __systolic__out0_vld_buf = p4_all_active_inputs_valid & p3_valid & p3_eq_2170;
  assign __systolic__out0_not_has_been_sent = ~__systolic__out0_has_been_sent_reg;
  assign systolic__out0_valid_inv = ~__systolic__out0_valid_reg;
  assign __systolic__out0_valid_and_not_has_been_sent = __systolic__out0_vld_buf & __systolic__out0_not_has_been_sent;
  assign systolic__out0_valid_load_en = systolic__out0_rdy | systolic__out0_valid_inv;
  assign systolic__out0_load_en = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_valid_load_en;
  assign or_5476 = ~p3_eq_2170 | systolic__out0_load_en | __systolic__out0_has_been_sent_reg;
  assign p4_stage_done = p3_valid & p4_all_active_inputs_valid & or_5476;
  assign p4_not_valid = ~p3_valid;
  assign p3_all_active_inputs_valid = (~p2_eq_2170 | __systolic__result_chans__1_1_valid_reg) & (~p2_eq_2170 | __systolic__result_chans__1_2_valid_reg) & (~p2_eq_2170 | __systolic__result_chans__2_0_valid_reg);
  assign p3_enable = p4_stage_done | p4_not_valid;
  assign p3_stage_done = p2_valid & p3_all_active_inputs_valid;
  assign p3_data_enable = p3_enable & p3_stage_done;
  assign p3_load_en = p3_data_enable | rst;
  assign p3_not_valid = ~p2_valid;
  assign p2_all_active_inputs_valid = (~p1_eq_2170 | __systolic__result_chans__0_0_valid_reg) & (~p1_eq_2170 | __systolic__result_chans__0_1_valid_reg) & (~p1_eq_2170 | __systolic__result_chans__0_2_valid_reg) & (~p1_eq_2170 | __systolic__result_chans__1_0_valid_reg);
  assign p2_enable = p3_load_en | p3_not_valid;
  assign p2_stage_done = p1_valid & p2_all_active_inputs_valid;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign __systolic__hor_chans__1_0_vld_buf = p0_valid & p1_enable & p0_not_2154;
  assign __systolic__hor_chans__1_0_not_has_been_sent = ~__systolic__hor_chans__1_0_has_been_sent_reg;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign __systolic__vert_chans__0_1_not_has_been_sent = ~__systolic__vert_chans__0_1_has_been_sent_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign __systolic__hor_chans__2_0_not_has_been_sent = ~__systolic__hor_chans__2_0_has_been_sent_reg;
  assign systolic__hor_chans__2_0_valid_inv = ~__systolic__hor_chans__2_0_valid_reg;
  assign __systolic__vert_chans__0_2_not_has_been_sent = ~__systolic__vert_chans__0_2_has_been_sent_reg;
  assign systolic__vert_chans__0_2_valid_inv = ~__systolic__vert_chans__0_2_valid_reg;
  assign __systolic__hor_chans__1_0_valid_and_not_has_been_sent = __systolic__hor_chans__1_0_vld_buf & __systolic__hor_chans__1_0_not_has_been_sent;
  assign systolic__hor_chans__1_0_valid_load_en = systolic__hor_chans__1_0_rdy | systolic__hor_chans__1_0_valid_inv;
  assign __systolic__vert_chans__0_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_0_vld_buf & __systolic__vert_chans__0_1_not_has_been_sent;
  assign systolic__vert_chans__0_1_valid_load_en = systolic__vert_chans__0_1_rdy | systolic__vert_chans__0_1_valid_inv;
  assign __systolic__hor_chans__2_0_valid_and_not_has_been_sent = __systolic__hor_chans__1_0_vld_buf & __systolic__hor_chans__2_0_not_has_been_sent;
  assign systolic__hor_chans__2_0_valid_load_en = systolic__hor_chans__2_0_rdy | systolic__hor_chans__2_0_valid_inv;
  assign __systolic__vert_chans__0_2_valid_and_not_has_been_sent = __systolic__hor_chans__1_0_vld_buf & __systolic__vert_chans__0_2_not_has_been_sent;
  assign systolic__vert_chans__0_2_valid_load_en = systolic__vert_chans__0_2_rdy | systolic__vert_chans__0_2_valid_inv;
  assign systolic__hor_chans__1_0_load_en = __systolic__hor_chans__1_0_valid_and_not_has_been_sent & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = __systolic__vert_chans__0_1_valid_and_not_has_been_sent & systolic__vert_chans__0_1_valid_load_en;
  assign systolic__hor_chans__2_0_load_en = __systolic__hor_chans__2_0_valid_and_not_has_been_sent & systolic__hor_chans__2_0_valid_load_en;
  assign systolic__vert_chans__0_2_load_en = __systolic__vert_chans__0_2_valid_and_not_has_been_sent & systolic__vert_chans__0_2_valid_load_en;
  assign systolic__hor_chans__0_0_not_pred = ____state_2[1];
  assign p1_all_active_outputs_ready = (~p0_not_2154 | systolic__hor_chans__1_0_load_en | __systolic__hor_chans__1_0_has_been_sent_reg) & (~p0_not_2154 | systolic__vert_chans__0_1_load_en | __systolic__vert_chans__0_1_has_been_sent_reg) & (~p0_not_2154 | systolic__hor_chans__2_0_load_en | __systolic__hor_chans__2_0_has_been_sent_reg) & (~p0_not_2154 | systolic__vert_chans__0_2_load_en | __systolic__vert_chans__0_2_has_been_sent_reg);
  assign a_mat2_1_case_cmp = ~(____state_2[0] | systolic__hor_chans__0_0_not_pred);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign p0_all_active_inputs_valid = (~a_mat2_1_case_cmp | __systolic__arg0_valid_reg) & (~a_mat2_1_case_cmp | __systolic__arg1_valid_reg);
  assign p0_enable = p1_load_en | p1_not_valid;
  assign not_2154 = ~systolic__hor_chans__0_0_not_pred;
  assign __systolic__hor_chans__0_0_vld_buf = p0_all_active_inputs_valid & p0_enable & not_2154;
  assign __systolic__hor_chans__0_0_not_has_been_sent = ~__systolic__hor_chans__0_0_has_been_sent_reg;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign __systolic__vert_chans__0_0_not_has_been_sent = ~__systolic__vert_chans__0_0_has_been_sent_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign __systolic__hor_chans__0_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__hor_chans__0_0_not_has_been_sent;
  assign systolic__hor_chans__0_0_valid_load_en = systolic__hor_chans__0_0_rdy | systolic__hor_chans__0_0_valid_inv;
  assign __systolic__vert_chans__0_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__vert_chans__0_0_not_has_been_sent;
  assign systolic__vert_chans__0_0_valid_load_en = systolic__vert_chans__0_0_rdy | systolic__vert_chans__0_0_valid_inv;
  assign systolic__hor_chans__0_0_load_en = __systolic__hor_chans__0_0_valid_and_not_has_been_sent & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = __systolic__vert_chans__0_0_valid_and_not_has_been_sent & systolic__vert_chans__0_0_valid_load_en;
  assign eq_2170 = ____state_2 == 2'h2;
  assign p0_all_active_outputs_ready = (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__0_0_load_en | __systolic__hor_chans__0_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_0_load_en | __systolic__vert_chans__0_0_has_been_sent_reg);
  assign nor_2171 = ~(eq_2170 | ____state_2[0] | systolic__hor_chans__0_0_not_pred);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign ____state_0__next_value_predicates = {eq_2170, a_mat2_1_case_cmp};
  assign ____state_1_0__next_value_predicates = {eq_2170, nor_2171};
  assign ____state_2__next_value_predicates = {~eq_2170, eq_2170};
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign one_hot_2176 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign one_hot_2177 = {____state_1_0__next_value_predicates[1:0] == 2'h0, ____state_1_0__next_value_predicates[1] && !____state_1_0__next_value_predicates[0], ____state_1_0__next_value_predicates[0]};
  assign one_hot_2178 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign p0_load_en = p0_data_enable | rst;
  assign and_2488 = p0_load_en & a_mat2_1_case_cmp;
  assign systolic__arg0_valid_inv = ~__systolic__arg0_valid_reg;
  assign systolic__arg1_valid_inv = ~__systolic__arg1_valid_reg;
  assign systolic__hor_chans__0_3_valid_inv = ~__systolic__hor_chans__0_3_valid_reg;
  assign systolic__hor_chans__1_3_valid_inv = ~__systolic__hor_chans__1_3_valid_reg;
  assign systolic__hor_chans__2_3_valid_inv = ~__systolic__hor_chans__2_3_valid_reg;
  assign and_2490 = p2_load_en & p1_eq_2170;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign systolic__result_chans__0_2_valid_inv = ~__systolic__result_chans__0_2_valid_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign and_2494 = p3_load_en & p2_eq_2170;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign systolic__result_chans__1_2_valid_inv = ~__systolic__result_chans__1_2_valid_reg;
  assign systolic__result_chans__2_0_valid_inv = ~__systolic__result_chans__2_0_valid_reg;
  assign and_2497 = p4_stage_done & p3_eq_2170;
  assign systolic__result_chans__2_1_valid_inv = ~__systolic__result_chans__2_1_valid_reg;
  assign systolic__result_chans__2_2_valid_inv = ~__systolic__result_chans__2_2_valid_reg;
  assign systolic__vert_chans__3_0_valid_inv = ~__systolic__vert_chans__3_0_valid_reg;
  assign systolic__vert_chans__3_1_valid_inv = ~__systolic__vert_chans__3_1_valid_reg;
  assign systolic__vert_chans__3_2_valid_inv = ~__systolic__vert_chans__3_2_valid_reg;
  assign systolic__arg0_select = a_mat2_1_case_cmp == 1'h0 ? literal_2134 : __systolic__arg0_reg;
  assign systolic__arg1_select = a_mat2_1_case_cmp == 1'h0 ? literal_2138 : __systolic__arg1_reg;
  assign and_2454 = eq_2170 & p0_data_enable;
  assign and_2455 = a_mat2_1_case_cmp & p0_data_enable;
  assign and_2462 = nor_2171 & p0_data_enable;
  assign and_2475 = ~eq_2170 & p0_data_enable;
  assign unexpand_for_next_value_210_2__1_case_1 = 2'h0;
  assign systolic__result_chans__2_1_select = p3_eq_2170 ? __systolic__result_chans__2_1_reg : 32'h0000_0000;
  assign systolic__result_chans__2_2_select = p3_eq_2170 ? __systolic__result_chans__2_2_reg : 32'h0000_0000;
  assign systolic__arg0_valid_load_en = and_2488 | systolic__arg0_valid_inv;
  assign systolic__arg1_valid_load_en = and_2488 | systolic__arg1_valid_inv;
  assign systolic__hor_chans__0_3_valid_load_en = p0_load_en | systolic__hor_chans__0_3_valid_inv;
  assign systolic__hor_chans__1_3_valid_load_en = p0_load_en | systolic__hor_chans__1_3_valid_inv;
  assign systolic__hor_chans__2_3_valid_load_en = p0_load_en | systolic__hor_chans__2_3_valid_inv;
  assign systolic__result_chans__0_0_valid_load_en = and_2490 | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_1_valid_load_en = and_2490 | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__0_2_valid_load_en = and_2490 | systolic__result_chans__0_2_valid_inv;
  assign systolic__result_chans__1_0_valid_load_en = and_2490 | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_1_valid_load_en = and_2494 | systolic__result_chans__1_1_valid_inv;
  assign systolic__result_chans__1_2_valid_load_en = and_2494 | systolic__result_chans__1_2_valid_inv;
  assign systolic__result_chans__2_0_valid_load_en = and_2494 | systolic__result_chans__2_0_valid_inv;
  assign systolic__result_chans__2_1_valid_load_en = and_2497 | systolic__result_chans__2_1_valid_inv;
  assign systolic__result_chans__2_2_valid_load_en = and_2497 | systolic__result_chans__2_2_valid_inv;
  assign systolic__vert_chans__3_0_valid_load_en = p0_load_en | systolic__vert_chans__3_0_valid_inv;
  assign systolic__vert_chans__3_1_valid_load_en = p0_load_en | systolic__vert_chans__3_1_valid_inv;
  assign systolic__vert_chans__3_2_valid_load_en = p0_load_en | systolic__vert_chans__3_2_valid_inv;
  assign ____state_0__at_most_one_next_value = eq_2170 == one_hot_2176[1] & a_mat2_1_case_cmp == one_hot_2176[0];
  assign ____state_1_0__at_most_one_next_value = eq_2170 == one_hot_2177[1] & nor_2171 == one_hot_2177[0];
  assign ____state_2__at_most_one_next_value = ~eq_2170 == one_hot_2178[1] & eq_2170 == one_hot_2178[0];
  assign systolic__result_chans__1_1_select = p2_eq_2170 ? __systolic__result_chans__1_1_reg : 32'h0000_0000;
  assign systolic__result_chans__1_2_select = p2_eq_2170 ? __systolic__result_chans__1_2_reg : 32'h0000_0000;
  assign systolic__result_chans__0_0_select = p1_eq_2170 ? __systolic__result_chans__0_0_reg : 32'h0000_0000;
  assign systolic__result_chans__0_1_select = p1_eq_2170 ? __systolic__result_chans__0_1_reg : 32'h0000_0000;
  assign systolic__result_chans__0_2_select = p1_eq_2170 ? __systolic__result_chans__0_2_reg : 32'h0000_0000;
  assign concat_2457 = {and_2454, and_2455};
  assign concat_2464 = {and_2454, and_2462};
  assign array_index_2193 = systolic__arg1_select[1'h0];
  assign array_index_2194 = systolic__arg1_select[1'h1];
  assign concat_2477 = {and_2475, and_2454};
  assign unexpand_for_next_value_210_2__1_case_0 = ____state_2 + 2'h1;
  assign __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_0_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_valid_and_ready_txfr = __systolic__hor_chans__0_0_valid_and_not_has_been_sent & systolic__hor_chans__0_0_load_en;
  assign __systolic__vert_chans__0_0_valid_and_ready_txfr = __systolic__vert_chans__0_0_valid_and_not_has_been_sent & systolic__vert_chans__0_0_load_en;
  assign __systolic__hor_chans__1_0_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_0_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__1_0_valid_and_ready_txfr = __systolic__hor_chans__1_0_valid_and_not_has_been_sent & systolic__hor_chans__1_0_load_en;
  assign __systolic__vert_chans__0_1_valid_and_ready_txfr = __systolic__vert_chans__0_1_valid_and_not_has_been_sent & systolic__vert_chans__0_1_load_en;
  assign __systolic__hor_chans__2_0_valid_and_ready_txfr = __systolic__hor_chans__2_0_valid_and_not_has_been_sent & systolic__hor_chans__2_0_load_en;
  assign __systolic__vert_chans__0_2_valid_and_ready_txfr = __systolic__vert_chans__0_2_valid_and_not_has_been_sent & systolic__vert_chans__0_2_load_en;
  assign __systolic__out0_valid_and_all_active_outputs_ready = __systolic__out0_vld_buf & or_5476;
  assign __systolic__out0_valid_and_ready_txfr = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_load_en;
  assign array_2341[0] = p3_c20;
  assign array_2341[1] = systolic__result_chans__2_1_select;
  assign array_2341[2] = systolic__result_chans__2_2_select;
  assign systolic__arg0_load_en = systolic__arg0_vld & systolic__arg0_valid_load_en;
  assign systolic__arg1_load_en = systolic__arg1_vld & systolic__arg1_valid_load_en;
  assign systolic__hor_chans__0_3_load_en = systolic__hor_chans__0_3_vld & systolic__hor_chans__0_3_valid_load_en;
  assign systolic__hor_chans__1_3_load_en = systolic__hor_chans__1_3_vld & systolic__hor_chans__1_3_valid_load_en;
  assign systolic__hor_chans__2_3_load_en = systolic__hor_chans__2_3_vld & systolic__hor_chans__2_3_valid_load_en;
  assign systolic__result_chans__0_0_load_en = systolic__result_chans__0_0_vld & systolic__result_chans__0_0_valid_load_en;
  assign systolic__result_chans__0_1_load_en = systolic__result_chans__0_1_vld & systolic__result_chans__0_1_valid_load_en;
  assign systolic__result_chans__0_2_load_en = systolic__result_chans__0_2_vld & systolic__result_chans__0_2_valid_load_en;
  assign systolic__result_chans__1_0_load_en = systolic__result_chans__1_0_vld & systolic__result_chans__1_0_valid_load_en;
  assign systolic__result_chans__1_1_load_en = systolic__result_chans__1_1_vld & systolic__result_chans__1_1_valid_load_en;
  assign systolic__result_chans__1_2_load_en = systolic__result_chans__1_2_vld & systolic__result_chans__1_2_valid_load_en;
  assign systolic__result_chans__2_0_load_en = systolic__result_chans__2_0_vld & systolic__result_chans__2_0_valid_load_en;
  assign systolic__result_chans__2_1_load_en = systolic__result_chans__2_1_vld & systolic__result_chans__2_1_valid_load_en;
  assign systolic__result_chans__2_2_load_en = systolic__result_chans__2_2_vld & systolic__result_chans__2_2_valid_load_en;
  assign systolic__vert_chans__3_0_load_en = systolic__vert_chans__3_0_vld & systolic__vert_chans__3_0_valid_load_en;
  assign systolic__vert_chans__3_1_load_en = systolic__vert_chans__3_1_vld & systolic__vert_chans__3_1_valid_load_en;
  assign systolic__vert_chans__3_2_load_en = systolic__vert_chans__3_2_vld & systolic__vert_chans__3_2_valid_load_en;
  assign or_5426 = ~p0_stage_done | ____state_0__at_most_one_next_value | rst;
  assign or_5428 = ~p0_stage_done | ____state_1_0__at_most_one_next_value | rst;
  assign or_5432 = ~p0_stage_done | ____state_2__at_most_one_next_value | rst;
  assign systolic__result_chans__2_0_select = p2_eq_2170 ? __systolic__result_chans__2_0_reg : 32'h0000_0000;
  assign array_2319[0] = p2_tuple_2283_index1;
  assign array_2319[1] = systolic__result_chans__1_1_select;
  assign array_2319[2] = systolic__result_chans__1_2_select;
  assign systolic__result_chans__1_0_select = p1_eq_2170 ? __systolic__result_chans__1_0_reg : 32'h0000_0000;
  assign array_2287[0] = systolic__result_chans__0_0_select;
  assign array_2287[1] = systolic__result_chans__0_1_select;
  assign array_2287[2] = systolic__result_chans__0_2_select;
  assign sel_2162 = a_mat2_1_case_cmp ? systolic__arg0_select[2'h1][1'h0] : ____state_0[2'h1][1'h1];
  assign sel_2163 = a_mat2_1_case_cmp ? systolic__arg1_select[1'h0][2'h1] : ____state_1_1[2'h1];
  assign sel_2168 = a_mat2_1_case_cmp ? systolic__arg0_select[2'h2][1'h0] : ____state_0[2'h2][1'h1];
  assign sel_2169 = a_mat2_1_case_cmp ? systolic__arg1_select[1'h0][2'h2] : ____state_1_1[2'h2];
  assign one_hot_sel_2458[0][0] = systolic__arg0_select[0][0] & {32{concat_2457[0]}} | literal_2024[0][0] & {32{concat_2457[1]}};
  assign one_hot_sel_2458[0][1] = systolic__arg0_select[0][1] & {32{concat_2457[0]}} | literal_2024[0][1] & {32{concat_2457[1]}};
  assign one_hot_sel_2458[1][0] = systolic__arg0_select[1][0] & {32{concat_2457[0]}} | literal_2024[1][0] & {32{concat_2457[1]}};
  assign one_hot_sel_2458[1][1] = systolic__arg0_select[1][1] & {32{concat_2457[0]}} | literal_2024[1][1] & {32{concat_2457[1]}};
  assign one_hot_sel_2458[2][0] = systolic__arg0_select[2][0] & {32{concat_2457[0]}} | literal_2024[2][0] & {32{concat_2457[1]}};
  assign one_hot_sel_2458[2][1] = systolic__arg0_select[2][1] & {32{concat_2457[0]}} | literal_2024[2][1] & {32{concat_2457[1]}};
  assign or_2459 = and_2454 | and_2455;
  assign one_hot_sel_2465[0] = array_index_2193[0] & {32{concat_2464[0]}} | literal_2025[0] & {32{concat_2464[1]}};
  assign one_hot_sel_2465[1] = array_index_2193[1] & {32{concat_2464[0]}} | literal_2025[1] & {32{concat_2464[1]}};
  assign one_hot_sel_2465[2] = array_index_2193[2] & {32{concat_2464[0]}} | literal_2025[2] & {32{concat_2464[1]}};
  assign or_2466 = and_2454 | and_2462;
  assign one_hot_sel_2472[0] = array_index_2194[0] & {32{concat_2464[0]}} | literal_2025[0] & {32{concat_2464[1]}};
  assign one_hot_sel_2472[1] = array_index_2194[1] & {32{concat_2464[0]}} | literal_2025[1] & {32{concat_2464[1]}};
  assign one_hot_sel_2472[2] = array_index_2194[2] & {32{concat_2464[0]}} | literal_2025[2] & {32{concat_2464[1]}};
  assign one_hot_sel_2478 = unexpand_for_next_value_210_2__1_case_1 & {2{concat_2477[0]}} | unexpand_for_next_value_210_2__1_case_0 & {2{concat_2477[1]}};
  assign or_2479 = and_2475 | and_2454;
  assign __systolic__hor_chans__0_0_not_stage_load = ~__systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_has_been_sent_reg_load_en = __systolic__hor_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_0_has_been_sent_reg_load_en = __systolic__vert_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_0_not_stage_load = ~__systolic__hor_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_0_has_been_sent_reg_load_en = __systolic__hor_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_1_has_been_sent_reg_load_en = __systolic__vert_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_0_has_been_sent_reg_load_en = __systolic__hor_chans__2_0_valid_and_ready_txfr | __systolic__hor_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_2_has_been_sent_reg_load_en = __systolic__vert_chans__0_2_valid_and_ready_txfr | __systolic__hor_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_not_stage_load = ~__systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_has_been_sent_reg_load_en = __systolic__out0_valid_and_ready_txfr | __systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_buf = a_mat2_1_case_cmp ? systolic__arg0_select[unexpand_for_next_value_210_2__1_case_1][1'h0] : ____state_0[unexpand_for_next_value_210_2__1_case_1][1'h1];
  assign __systolic__vert_chans__0_0_buf = a_mat2_1_case_cmp ? systolic__arg1_select[1'h0][unexpand_for_next_value_210_2__1_case_1] : ____state_1_1[unexpand_for_next_value_210_2__1_case_1];
  assign c[0] = p3_array_2287;
  assign c[1] = p3_array_2319;
  assign c[2] = array_2341;
  always_ff @ (posedge clk) begin
    p0_bit_slice_2131 <= p0_load_en ? systolic__hor_chans__0_0_not_pred : p0_bit_slice_2131;
    p0_not_2154 <= p0_load_en ? not_2154 : p0_not_2154;
    p0_sel_2162 <= p0_load_en ? sel_2162 : p0_sel_2162;
    p0_sel_2163 <= p0_load_en ? sel_2163 : p0_sel_2163;
    p0_sel_2168 <= p0_load_en ? sel_2168 : p0_sel_2168;
    p0_sel_2169 <= p0_load_en ? sel_2169 : p0_sel_2169;
    p0_eq_2170 <= p0_load_en ? eq_2170 : p0_eq_2170;
    p1_eq_2170 <= p1_load_en ? p0_eq_2170 : p1_eq_2170;
    p2_eq_2170 <= p2_load_en ? p1_eq_2170 : p2_eq_2170;
    p2_tuple_2283_index1 <= p2_load_en ? systolic__result_chans__1_0_select : p2_tuple_2283_index1;
    p2_array_2287 <= p2_load_en ? array_2287 : p2_array_2287;
    p3_eq_2170 <= p3_load_en ? p2_eq_2170 : p3_eq_2170;
    p3_c20 <= p3_load_en ? systolic__result_chans__2_0_select : p3_c20;
    p3_array_2287 <= p3_load_en ? p2_array_2287 : p3_array_2287;
    p3_array_2319 <= p3_load_en ? array_2319 : p3_array_2319;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_2 <= 2'h0;
      ____state_0 <= ____state_0_init;
      ____state_1_1 <= ____state_1_1_init;
      ____state_1_0 <= ____state_1_0_init;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_1_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__2_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_2_has_been_sent_reg <= 1'h0;
      __systolic__out0_has_been_sent_reg <= 1'h0;
      __systolic__arg0_reg <= __systolic__arg0_reg_init;
      __systolic__arg0_valid_reg <= 1'h0;
      __systolic__arg1_reg <= __systolic__arg1_reg_init;
      __systolic__arg1_valid_reg <= 1'h0;
      __systolic__hor_chans__0_3_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_3_valid_reg <= 1'h0;
      __systolic__hor_chans__1_3_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_3_valid_reg <= 1'h0;
      __systolic__hor_chans__2_3_reg <= 32'h0000_0000;
      __systolic__hor_chans__2_3_valid_reg <= 1'h0;
      __systolic__vert_chans__3_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__3_0_valid_reg <= 1'h0;
      __systolic__vert_chans__3_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__3_1_valid_reg <= 1'h0;
      __systolic__vert_chans__3_2_reg <= 32'h0000_0000;
      __systolic__vert_chans__3_2_valid_reg <= 1'h0;
      __systolic__result_chans__0_0_reg <= 32'h0000_0000;
      __systolic__result_chans__0_0_valid_reg <= 1'h0;
      __systolic__result_chans__0_1_reg <= 32'h0000_0000;
      __systolic__result_chans__0_1_valid_reg <= 1'h0;
      __systolic__result_chans__0_2_reg <= 32'h0000_0000;
      __systolic__result_chans__0_2_valid_reg <= 1'h0;
      __systolic__result_chans__1_0_reg <= 32'h0000_0000;
      __systolic__result_chans__1_0_valid_reg <= 1'h0;
      __systolic__result_chans__1_1_reg <= 32'h0000_0000;
      __systolic__result_chans__1_1_valid_reg <= 1'h0;
      __systolic__result_chans__1_2_reg <= 32'h0000_0000;
      __systolic__result_chans__1_2_valid_reg <= 1'h0;
      __systolic__result_chans__2_0_reg <= 32'h0000_0000;
      __systolic__result_chans__2_0_valid_reg <= 1'h0;
      __systolic__result_chans__2_1_reg <= 32'h0000_0000;
      __systolic__result_chans__2_1_valid_reg <= 1'h0;
      __systolic__result_chans__2_2_reg <= 32'h0000_0000;
      __systolic__result_chans__2_2_valid_reg <= 1'h0;
      __systolic__hor_chans__0_0_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_0_valid_reg <= 1'h0;
      __systolic__hor_chans__1_0_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_1_valid_reg <= 1'h0;
      __systolic__hor_chans__2_0_reg <= 32'h0000_0000;
      __systolic__hor_chans__2_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_2_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_2_valid_reg <= 1'h0;
      __systolic__out0_reg <= __systolic__out0_reg_init;
      __systolic__out0_valid_reg <= 1'h0;
    end else begin
      ____state_2 <= or_2479 ? one_hot_sel_2478 : ____state_2;
      ____state_0 <= or_2459 ? one_hot_sel_2458 : ____state_0;
      ____state_1_1 <= or_2466 ? one_hot_sel_2472 : ____state_1_1;
      ____state_1_0 <= or_2466 ? one_hot_sel_2465 : ____state_1_0;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__0_0_has_been_sent_reg <= __systolic__hor_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__0_0_has_been_sent_reg;
      __systolic__vert_chans__0_0_has_been_sent_reg <= __systolic__vert_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_0_has_been_sent_reg;
      __systolic__hor_chans__1_0_has_been_sent_reg <= __systolic__hor_chans__1_0_has_been_sent_reg_load_en ? __systolic__hor_chans__1_0_not_stage_load : __systolic__hor_chans__1_0_has_been_sent_reg;
      __systolic__vert_chans__0_1_has_been_sent_reg <= __systolic__vert_chans__0_1_has_been_sent_reg_load_en ? __systolic__hor_chans__1_0_not_stage_load : __systolic__vert_chans__0_1_has_been_sent_reg;
      __systolic__hor_chans__2_0_has_been_sent_reg <= __systolic__hor_chans__2_0_has_been_sent_reg_load_en ? __systolic__hor_chans__1_0_not_stage_load : __systolic__hor_chans__2_0_has_been_sent_reg;
      __systolic__vert_chans__0_2_has_been_sent_reg <= __systolic__vert_chans__0_2_has_been_sent_reg_load_en ? __systolic__hor_chans__1_0_not_stage_load : __systolic__vert_chans__0_2_has_been_sent_reg;
      __systolic__out0_has_been_sent_reg <= __systolic__out0_has_been_sent_reg_load_en ? __systolic__out0_not_stage_load : __systolic__out0_has_been_sent_reg;
      __systolic__arg0_reg <= systolic__arg0_load_en ? systolic__arg0_unflattened : __systolic__arg0_reg;
      __systolic__arg0_valid_reg <= systolic__arg0_valid_load_en ? systolic__arg0_vld : __systolic__arg0_valid_reg;
      __systolic__arg1_reg <= systolic__arg1_load_en ? systolic__arg1_unflattened : __systolic__arg1_reg;
      __systolic__arg1_valid_reg <= systolic__arg1_valid_load_en ? systolic__arg1_vld : __systolic__arg1_valid_reg;
      __systolic__hor_chans__0_3_reg <= systolic__hor_chans__0_3_load_en ? systolic__hor_chans__0_3 : __systolic__hor_chans__0_3_reg;
      __systolic__hor_chans__0_3_valid_reg <= systolic__hor_chans__0_3_valid_load_en ? systolic__hor_chans__0_3_vld : __systolic__hor_chans__0_3_valid_reg;
      __systolic__hor_chans__1_3_reg <= systolic__hor_chans__1_3_load_en ? systolic__hor_chans__1_3 : __systolic__hor_chans__1_3_reg;
      __systolic__hor_chans__1_3_valid_reg <= systolic__hor_chans__1_3_valid_load_en ? systolic__hor_chans__1_3_vld : __systolic__hor_chans__1_3_valid_reg;
      __systolic__hor_chans__2_3_reg <= systolic__hor_chans__2_3_load_en ? systolic__hor_chans__2_3 : __systolic__hor_chans__2_3_reg;
      __systolic__hor_chans__2_3_valid_reg <= systolic__hor_chans__2_3_valid_load_en ? systolic__hor_chans__2_3_vld : __systolic__hor_chans__2_3_valid_reg;
      __systolic__vert_chans__3_0_reg <= systolic__vert_chans__3_0_load_en ? systolic__vert_chans__3_0 : __systolic__vert_chans__3_0_reg;
      __systolic__vert_chans__3_0_valid_reg <= systolic__vert_chans__3_0_valid_load_en ? systolic__vert_chans__3_0_vld : __systolic__vert_chans__3_0_valid_reg;
      __systolic__vert_chans__3_1_reg <= systolic__vert_chans__3_1_load_en ? systolic__vert_chans__3_1 : __systolic__vert_chans__3_1_reg;
      __systolic__vert_chans__3_1_valid_reg <= systolic__vert_chans__3_1_valid_load_en ? systolic__vert_chans__3_1_vld : __systolic__vert_chans__3_1_valid_reg;
      __systolic__vert_chans__3_2_reg <= systolic__vert_chans__3_2_load_en ? systolic__vert_chans__3_2 : __systolic__vert_chans__3_2_reg;
      __systolic__vert_chans__3_2_valid_reg <= systolic__vert_chans__3_2_valid_load_en ? systolic__vert_chans__3_2_vld : __systolic__vert_chans__3_2_valid_reg;
      __systolic__result_chans__0_0_reg <= systolic__result_chans__0_0_load_en ? systolic__result_chans__0_0 : __systolic__result_chans__0_0_reg;
      __systolic__result_chans__0_0_valid_reg <= systolic__result_chans__0_0_valid_load_en ? systolic__result_chans__0_0_vld : __systolic__result_chans__0_0_valid_reg;
      __systolic__result_chans__0_1_reg <= systolic__result_chans__0_1_load_en ? systolic__result_chans__0_1 : __systolic__result_chans__0_1_reg;
      __systolic__result_chans__0_1_valid_reg <= systolic__result_chans__0_1_valid_load_en ? systolic__result_chans__0_1_vld : __systolic__result_chans__0_1_valid_reg;
      __systolic__result_chans__0_2_reg <= systolic__result_chans__0_2_load_en ? systolic__result_chans__0_2 : __systolic__result_chans__0_2_reg;
      __systolic__result_chans__0_2_valid_reg <= systolic__result_chans__0_2_valid_load_en ? systolic__result_chans__0_2_vld : __systolic__result_chans__0_2_valid_reg;
      __systolic__result_chans__1_0_reg <= systolic__result_chans__1_0_load_en ? systolic__result_chans__1_0 : __systolic__result_chans__1_0_reg;
      __systolic__result_chans__1_0_valid_reg <= systolic__result_chans__1_0_valid_load_en ? systolic__result_chans__1_0_vld : __systolic__result_chans__1_0_valid_reg;
      __systolic__result_chans__1_1_reg <= systolic__result_chans__1_1_load_en ? systolic__result_chans__1_1 : __systolic__result_chans__1_1_reg;
      __systolic__result_chans__1_1_valid_reg <= systolic__result_chans__1_1_valid_load_en ? systolic__result_chans__1_1_vld : __systolic__result_chans__1_1_valid_reg;
      __systolic__result_chans__1_2_reg <= systolic__result_chans__1_2_load_en ? systolic__result_chans__1_2 : __systolic__result_chans__1_2_reg;
      __systolic__result_chans__1_2_valid_reg <= systolic__result_chans__1_2_valid_load_en ? systolic__result_chans__1_2_vld : __systolic__result_chans__1_2_valid_reg;
      __systolic__result_chans__2_0_reg <= systolic__result_chans__2_0_load_en ? systolic__result_chans__2_0 : __systolic__result_chans__2_0_reg;
      __systolic__result_chans__2_0_valid_reg <= systolic__result_chans__2_0_valid_load_en ? systolic__result_chans__2_0_vld : __systolic__result_chans__2_0_valid_reg;
      __systolic__result_chans__2_1_reg <= systolic__result_chans__2_1_load_en ? systolic__result_chans__2_1 : __systolic__result_chans__2_1_reg;
      __systolic__result_chans__2_1_valid_reg <= systolic__result_chans__2_1_valid_load_en ? systolic__result_chans__2_1_vld : __systolic__result_chans__2_1_valid_reg;
      __systolic__result_chans__2_2_reg <= systolic__result_chans__2_2_load_en ? systolic__result_chans__2_2 : __systolic__result_chans__2_2_reg;
      __systolic__result_chans__2_2_valid_reg <= systolic__result_chans__2_2_valid_load_en ? systolic__result_chans__2_2_vld : __systolic__result_chans__2_2_valid_reg;
      __systolic__hor_chans__0_0_reg <= systolic__hor_chans__0_0_load_en ? __systolic__hor_chans__0_0_buf : __systolic__hor_chans__0_0_reg;
      __systolic__hor_chans__0_0_valid_reg <= systolic__hor_chans__0_0_valid_load_en ? __systolic__hor_chans__0_0_valid_and_not_has_been_sent : __systolic__hor_chans__0_0_valid_reg;
      __systolic__vert_chans__0_0_reg <= systolic__vert_chans__0_0_load_en ? __systolic__vert_chans__0_0_buf : __systolic__vert_chans__0_0_reg;
      __systolic__vert_chans__0_0_valid_reg <= systolic__vert_chans__0_0_valid_load_en ? __systolic__vert_chans__0_0_valid_and_not_has_been_sent : __systolic__vert_chans__0_0_valid_reg;
      __systolic__hor_chans__1_0_reg <= systolic__hor_chans__1_0_load_en ? p0_sel_2162 : __systolic__hor_chans__1_0_reg;
      __systolic__hor_chans__1_0_valid_reg <= systolic__hor_chans__1_0_valid_load_en ? __systolic__hor_chans__1_0_valid_and_not_has_been_sent : __systolic__hor_chans__1_0_valid_reg;
      __systolic__vert_chans__0_1_reg <= systolic__vert_chans__0_1_load_en ? p0_sel_2163 : __systolic__vert_chans__0_1_reg;
      __systolic__vert_chans__0_1_valid_reg <= systolic__vert_chans__0_1_valid_load_en ? __systolic__vert_chans__0_1_valid_and_not_has_been_sent : __systolic__vert_chans__0_1_valid_reg;
      __systolic__hor_chans__2_0_reg <= systolic__hor_chans__2_0_load_en ? p0_sel_2168 : __systolic__hor_chans__2_0_reg;
      __systolic__hor_chans__2_0_valid_reg <= systolic__hor_chans__2_0_valid_load_en ? __systolic__hor_chans__2_0_valid_and_not_has_been_sent : __systolic__hor_chans__2_0_valid_reg;
      __systolic__vert_chans__0_2_reg <= systolic__vert_chans__0_2_load_en ? p0_sel_2169 : __systolic__vert_chans__0_2_reg;
      __systolic__vert_chans__0_2_valid_reg <= systolic__vert_chans__0_2_valid_load_en ? __systolic__vert_chans__0_2_valid_and_not_has_been_sent : __systolic__vert_chans__0_2_valid_reg;
      __systolic__out0_reg <= systolic__out0_load_en ? c : __systolic__out0_reg;
      __systolic__out0_valid_reg <= systolic__out0_valid_load_en ? __systolic__out0_valid_and_not_has_been_sent : __systolic__out0_valid_reg;
    end
  end
  assign systolic__arg0_rdy = systolic__arg0_load_en;
  assign systolic__arg1_rdy = systolic__arg1_load_en;
  assign systolic__hor_chans__0_0 = __systolic__hor_chans__0_0_reg;
  assign systolic__hor_chans__0_0_vld = __systolic__hor_chans__0_0_valid_reg;
  assign systolic__hor_chans__0_3_rdy = systolic__hor_chans__0_3_load_en;
  assign systolic__hor_chans__1_0 = __systolic__hor_chans__1_0_reg;
  assign systolic__hor_chans__1_0_vld = __systolic__hor_chans__1_0_valid_reg;
  assign systolic__hor_chans__1_3_rdy = systolic__hor_chans__1_3_load_en;
  assign systolic__hor_chans__2_0 = __systolic__hor_chans__2_0_reg;
  assign systolic__hor_chans__2_0_vld = __systolic__hor_chans__2_0_valid_reg;
  assign systolic__hor_chans__2_3_rdy = systolic__hor_chans__2_3_load_en;
  assign systolic__out0 = {{__systolic__out0_reg[2][2], __systolic__out0_reg[2][1], __systolic__out0_reg[2][0]}, {__systolic__out0_reg[1][2], __systolic__out0_reg[1][1], __systolic__out0_reg[1][0]}, {__systolic__out0_reg[0][2], __systolic__out0_reg[0][1], __systolic__out0_reg[0][0]}};
  assign systolic__out0_vld = __systolic__out0_valid_reg;
  assign systolic__result_chans__0_0_rdy = systolic__result_chans__0_0_load_en;
  assign systolic__result_chans__0_1_rdy = systolic__result_chans__0_1_load_en;
  assign systolic__result_chans__0_2_rdy = systolic__result_chans__0_2_load_en;
  assign systolic__result_chans__1_0_rdy = systolic__result_chans__1_0_load_en;
  assign systolic__result_chans__1_1_rdy = systolic__result_chans__1_1_load_en;
  assign systolic__result_chans__1_2_rdy = systolic__result_chans__1_2_load_en;
  assign systolic__result_chans__2_0_rdy = systolic__result_chans__2_0_load_en;
  assign systolic__result_chans__2_1_rdy = systolic__result_chans__2_1_load_en;
  assign systolic__result_chans__2_2_rdy = systolic__result_chans__2_2_load_en;
  assign systolic__vert_chans__0_0 = __systolic__vert_chans__0_0_reg;
  assign systolic__vert_chans__0_0_vld = __systolic__vert_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_1 = __systolic__vert_chans__0_1_reg;
  assign systolic__vert_chans__0_1_vld = __systolic__vert_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_2 = __systolic__vert_chans__0_2_reg;
  assign systolic__vert_chans__0_2_vld = __systolic__vert_chans__0_2_valid_reg;
  assign systolic__vert_chans__3_0_rdy = systolic__vert_chans__3_0_load_en;
  assign systolic__vert_chans__3_1_rdy = systolic__vert_chans__3_1_load_en;
  assign systolic__vert_chans__3_2_rdy = systolic__vert_chans__3_2_load_en;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5426))) or_5426) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5428))) or_5428) else $fatal(0, "More than one next_value fired for state element: __state_1_0");
  ____state_1_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5428))) or_5428) else $fatal(0, "More than one next_value fired for state element: __state_1_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5432))) or_5432) else $fatal(0, "More than one next_value fired for state element: __state_2");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_0_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__0_0,
  input wire systolic__hor_chans__0_0_vld,
  input wire systolic__hor_chans__0_1_rdy,
  input wire systolic__result_chans__0_0_rdy,
  input wire [31:0] systolic__vert_chans__0_0,
  input wire systolic__vert_chans__0_0_vld,
  input wire systolic__vert_chans__1_0_rdy,
  output wire systolic__hor_chans__0_0_rdy,
  output wire [31:0] systolic__hor_chans__0_1,
  output wire systolic__hor_chans__0_1_vld,
  output wire [31:0] systolic__result_chans__0_0,
  output wire systolic__result_chans__0_0_vld,
  output wire systolic__vert_chans__0_0_rdy,
  output wire [31:0] systolic__vert_chans__1_0,
  output wire systolic__vert_chans__1_0_vld
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
  reg __systolic__hor_chans__0_1_has_been_sent_reg;
  reg __systolic__vert_chans__1_0_has_been_sent_reg;
  reg __systolic__result_chans__0_0_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__0_0_reg;
  reg __systolic__hor_chans__0_0_valid_reg;
  reg [31:0] __systolic__vert_chans__0_0_reg;
  reg __systolic__vert_chans__0_0_valid_reg;
  reg [31:0] __systolic__hor_chans__0_1_reg;
  reg __systolic__hor_chans__0_1_valid_reg;
  reg [31:0] __systolic__vert_chans__1_0_reg;
  reg __systolic__vert_chans__1_0_valid_reg;
  reg [31:0] __systolic__result_chans__0_0_reg;
  reg __systolic__result_chans__0_0_valid_reg;
  wire __systolic__result_chans__0_0_vld_buf;
  wire __systolic__result_chans__0_0_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_inv;
  wire __systolic__result_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_load_en;
  wire systolic__result_chans__0_0_load_en;
  wire or_5492;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__0_1_vld_buf;
  wire __systolic__hor_chans__0_1_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_inv;
  wire __systolic__vert_chans__1_0_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_inv;
  wire __systolic__hor_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire __systolic__vert_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire __systolic__hor_chans__0_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_0_has_sent_or_is_ready;
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
  wire [2:0] one_hot_2882;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_0_valid_inv;
  wire systolic__vert_chans__0_0_valid_inv;
  wire and_2955;
  wire and_2956;
  wire systolic__hor_chans__0_0_valid_load_en;
  wire systolic__vert_chans__0_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2957;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_240_1_case_1;
  wire unexpand_for_next_value_240_1_case_0;
  wire __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_0_valid_and_ready_txfr;
  wire __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_0_valid_and_ready_txfr;
  wire systolic__hor_chans__0_0_load_en;
  wire systolic__vert_chans__0_0_load_en;
  wire or_5434;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_2958;
  wire or_2959;
  wire one_hot_sel_2964;
  wire __systolic__hor_chans__0_1_not_stage_load;
  wire __systolic__hor_chans__0_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_0_not_stage_load;
  wire __systolic__result_chans__0_0_has_been_sent_reg_load_en;
  assign __systolic__result_chans__0_0_vld_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__0_0_not_has_been_sent = ~__systolic__result_chans__0_0_has_been_sent_reg;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign __systolic__result_chans__0_0_valid_and_not_has_been_sent = __systolic__result_chans__0_0_vld_buf & __systolic__result_chans__0_0_not_has_been_sent;
  assign systolic__result_chans__0_0_valid_load_en = systolic__result_chans__0_0_rdy | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_0_load_en = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_valid_load_en;
  assign or_5492 = ~____state_1 | systolic__result_chans__0_0_load_en | __systolic__result_chans__0_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_5492;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__0_1_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__0_1_not_has_been_sent = ~__systolic__hor_chans__0_1_has_been_sent_reg;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign __systolic__vert_chans__1_0_not_has_been_sent = ~__systolic__vert_chans__1_0_has_been_sent_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign __systolic__hor_chans__0_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_vld_buf & __systolic__hor_chans__0_1_not_has_been_sent;
  assign systolic__hor_chans__0_1_valid_load_en = systolic__hor_chans__0_1_rdy | systolic__hor_chans__0_1_valid_inv;
  assign __systolic__vert_chans__1_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_vld_buf & __systolic__vert_chans__1_0_not_has_been_sent;
  assign systolic__vert_chans__1_0_valid_load_en = systolic__vert_chans__1_0_rdy | systolic__vert_chans__1_0_valid_inv;
  assign systolic__hor_chans__0_1_load_en = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_valid_load_en;
  assign __systolic__hor_chans__0_1_has_sent_or_is_ready = systolic__hor_chans__0_1_load_en | __systolic__hor_chans__0_1_has_been_sent_reg;
  assign __systolic__vert_chans__1_0_has_sent_or_is_ready = systolic__vert_chans__1_0_load_en | __systolic__vert_chans__1_0_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__0_1_has_sent_or_is_ready & __systolic__vert_chans__1_0_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__0_0_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_2882 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_0_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign and_2955 = ~____state_1 & p3_stage_done;
  assign and_2956 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__0_0_valid_load_en = p0_load_en | systolic__hor_chans__0_0_valid_inv;
  assign systolic__vert_chans__0_0_valid_load_en = p1_load_en | systolic__vert_chans__0_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2882[1] & ____state_1 == one_hot_2882[0];
  assign concat_2957 = {and_2955, and_2956};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_240_1_case_1 = 1'h0;
  assign unexpand_for_next_value_240_1_case_0 = 1'h1;
  assign __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_valid_and_ready_txfr = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_load_en;
  assign __systolic__vert_chans__1_0_valid_and_ready_txfr = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_load_en;
  assign __systolic__result_chans__0_0_valid_and_all_active_outputs_ready = __systolic__result_chans__0_0_vld_buf & or_5492;
  assign __systolic__result_chans__0_0_valid_and_ready_txfr = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_load_en;
  assign systolic__hor_chans__0_0_load_en = systolic__hor_chans__0_0_vld & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = systolic__vert_chans__0_0_vld & systolic__vert_chans__0_0_valid_load_en;
  assign or_5434 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_2958 = 32'h0000_0000 & {32{concat_2957[0]}} | new_accum & {32{concat_2957[1]}};
  assign or_2959 = and_2955 | and_2956;
  assign one_hot_sel_2964 = unexpand_for_next_value_240_1_case_1 & concat_2957[0] | unexpand_for_next_value_240_1_case_0 & concat_2957[1];
  assign __systolic__hor_chans__0_1_not_stage_load = ~__systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_has_been_sent_reg_load_en = __systolic__hor_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_0_has_been_sent_reg_load_en = __systolic__vert_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_not_stage_load = ~__systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_has_been_sent_reg_load_en = __systolic__result_chans__0_0_valid_and_ready_txfr | __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_0_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__0_0_reg : p1_b;
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
      __systolic__hor_chans__0_1_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__1_0_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_0_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_0_valid_reg <= 1'h0;
      __systolic__hor_chans__0_1_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_1_valid_reg <= 1'h0;
      __systolic__vert_chans__1_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_0_valid_reg <= 1'h0;
      __systolic__result_chans__0_0_reg <= 32'h0000_0000;
      __systolic__result_chans__0_0_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_2959 ? one_hot_sel_2964 : ____state_1;
      ____state_0 <= or_2959 ? one_hot_sel_2958 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__0_0_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__0_1_has_been_sent_reg <= __systolic__hor_chans__0_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_1_not_stage_load : __systolic__hor_chans__0_1_has_been_sent_reg;
      __systolic__vert_chans__1_0_has_been_sent_reg <= __systolic__vert_chans__1_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_1_not_stage_load : __systolic__vert_chans__1_0_has_been_sent_reg;
      __systolic__result_chans__0_0_has_been_sent_reg <= __systolic__result_chans__0_0_has_been_sent_reg_load_en ? __systolic__result_chans__0_0_not_stage_load : __systolic__result_chans__0_0_has_been_sent_reg;
      __systolic__hor_chans__0_0_reg <= systolic__hor_chans__0_0_load_en ? systolic__hor_chans__0_0 : __systolic__hor_chans__0_0_reg;
      __systolic__hor_chans__0_0_valid_reg <= systolic__hor_chans__0_0_valid_load_en ? systolic__hor_chans__0_0_vld : __systolic__hor_chans__0_0_valid_reg;
      __systolic__vert_chans__0_0_reg <= systolic__vert_chans__0_0_load_en ? systolic__vert_chans__0_0 : __systolic__vert_chans__0_0_reg;
      __systolic__vert_chans__0_0_valid_reg <= systolic__vert_chans__0_0_valid_load_en ? systolic__vert_chans__0_0_vld : __systolic__vert_chans__0_0_valid_reg;
      __systolic__hor_chans__0_1_reg <= systolic__hor_chans__0_1_load_en ? p1_a : __systolic__hor_chans__0_1_reg;
      __systolic__hor_chans__0_1_valid_reg <= systolic__hor_chans__0_1_valid_load_en ? __systolic__hor_chans__0_1_valid_and_not_has_been_sent : __systolic__hor_chans__0_1_valid_reg;
      __systolic__vert_chans__1_0_reg <= systolic__vert_chans__1_0_load_en ? p1_b : __systolic__vert_chans__1_0_reg;
      __systolic__vert_chans__1_0_valid_reg <= systolic__vert_chans__1_0_valid_load_en ? __systolic__vert_chans__1_0_valid_and_not_has_been_sent : __systolic__vert_chans__1_0_valid_reg;
      __systolic__result_chans__0_0_reg <= systolic__result_chans__0_0_load_en ? new_accum : __systolic__result_chans__0_0_reg;
      __systolic__result_chans__0_0_valid_reg <= systolic__result_chans__0_0_valid_load_en ? __systolic__result_chans__0_0_valid_and_not_has_been_sent : __systolic__result_chans__0_0_valid_reg;
    end
  end
  assign systolic__hor_chans__0_0_rdy = systolic__hor_chans__0_0_load_en;
  assign systolic__hor_chans__0_1 = __systolic__hor_chans__0_1_reg;
  assign systolic__hor_chans__0_1_vld = __systolic__hor_chans__0_1_valid_reg;
  assign systolic__result_chans__0_0 = __systolic__result_chans__0_0_reg;
  assign systolic__result_chans__0_0_vld = __systolic__result_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_0_rdy = systolic__vert_chans__0_0_load_en;
  assign systolic__vert_chans__1_0 = __systolic__vert_chans__1_0_reg;
  assign systolic__vert_chans__1_0_vld = __systolic__vert_chans__1_0_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5434))) or_5434) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5434))) or_5434) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_1_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__0_1,
  input wire systolic__hor_chans__0_1_vld,
  input wire systolic__hor_chans__0_2_rdy,
  input wire systolic__result_chans__0_1_rdy,
  input wire [31:0] systolic__vert_chans__0_1,
  input wire systolic__vert_chans__0_1_vld,
  input wire systolic__vert_chans__1_1_rdy,
  output wire systolic__hor_chans__0_1_rdy,
  output wire [31:0] systolic__hor_chans__0_2,
  output wire systolic__hor_chans__0_2_vld,
  output wire [31:0] systolic__result_chans__0_1,
  output wire systolic__result_chans__0_1_vld,
  output wire systolic__vert_chans__0_1_rdy,
  output wire [31:0] systolic__vert_chans__1_1,
  output wire systolic__vert_chans__1_1_vld
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
  reg __systolic__hor_chans__0_2_has_been_sent_reg;
  reg __systolic__vert_chans__1_1_has_been_sent_reg;
  reg __systolic__result_chans__0_1_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__0_1_reg;
  reg __systolic__hor_chans__0_1_valid_reg;
  reg [31:0] __systolic__vert_chans__0_1_reg;
  reg __systolic__vert_chans__0_1_valid_reg;
  reg [31:0] __systolic__hor_chans__0_2_reg;
  reg __systolic__hor_chans__0_2_valid_reg;
  reg [31:0] __systolic__vert_chans__1_1_reg;
  reg __systolic__vert_chans__1_1_valid_reg;
  reg [31:0] __systolic__result_chans__0_1_reg;
  reg __systolic__result_chans__0_1_valid_reg;
  wire __systolic__result_chans__0_1_vld_buf;
  wire __systolic__result_chans__0_1_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_inv;
  wire __systolic__result_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_load_en;
  wire systolic__result_chans__0_1_load_en;
  wire or_5509;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__0_2_vld_buf;
  wire __systolic__hor_chans__0_2_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_inv;
  wire __systolic__vert_chans__1_1_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_inv;
  wire __systolic__hor_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire __systolic__vert_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire systolic__hor_chans__0_2_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire __systolic__hor_chans__0_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_1_has_sent_or_is_ready;
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
  wire [2:0] one_hot_3120;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_1_valid_inv;
  wire systolic__vert_chans__0_1_valid_inv;
  wire and_3193;
  wire and_3194;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire systolic__vert_chans__0_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_3195;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_270_1_case_1;
  wire unexpand_for_next_value_270_1_case_0;
  wire __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_1_valid_and_ready_txfr;
  wire __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_1_valid_and_ready_txfr;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__0_1_load_en;
  wire or_5438;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_3196;
  wire or_3197;
  wire one_hot_sel_3202;
  wire __systolic__hor_chans__0_2_not_stage_load;
  wire __systolic__hor_chans__0_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_1_not_stage_load;
  wire __systolic__result_chans__0_1_has_been_sent_reg_load_en;
  assign __systolic__result_chans__0_1_vld_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__0_1_not_has_been_sent = ~__systolic__result_chans__0_1_has_been_sent_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign __systolic__result_chans__0_1_valid_and_not_has_been_sent = __systolic__result_chans__0_1_vld_buf & __systolic__result_chans__0_1_not_has_been_sent;
  assign systolic__result_chans__0_1_valid_load_en = systolic__result_chans__0_1_rdy | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__0_1_load_en = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_valid_load_en;
  assign or_5509 = ~____state_1 | systolic__result_chans__0_1_load_en | __systolic__result_chans__0_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_5509;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__0_2_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__0_2_not_has_been_sent = ~__systolic__hor_chans__0_2_has_been_sent_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign __systolic__vert_chans__1_1_not_has_been_sent = ~__systolic__vert_chans__1_1_has_been_sent_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign __systolic__hor_chans__0_2_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_vld_buf & __systolic__hor_chans__0_2_not_has_been_sent;
  assign systolic__hor_chans__0_2_valid_load_en = systolic__hor_chans__0_2_rdy | systolic__hor_chans__0_2_valid_inv;
  assign __systolic__vert_chans__1_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_vld_buf & __systolic__vert_chans__1_1_not_has_been_sent;
  assign systolic__vert_chans__1_1_valid_load_en = systolic__vert_chans__1_1_rdy | systolic__vert_chans__1_1_valid_inv;
  assign systolic__hor_chans__0_2_load_en = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_valid_load_en;
  assign __systolic__hor_chans__0_2_has_sent_or_is_ready = systolic__hor_chans__0_2_load_en | __systolic__hor_chans__0_2_has_been_sent_reg;
  assign __systolic__vert_chans__1_1_has_sent_or_is_ready = systolic__vert_chans__1_1_load_en | __systolic__vert_chans__1_1_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__0_2_has_sent_or_is_ready & __systolic__vert_chans__1_1_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__0_1_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_3120 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_1_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign and_3193 = ~____state_1 & p3_stage_done;
  assign and_3194 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__0_1_valid_load_en = p0_load_en | systolic__hor_chans__0_1_valid_inv;
  assign systolic__vert_chans__0_1_valid_load_en = p1_load_en | systolic__vert_chans__0_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_3120[1] & ____state_1 == one_hot_3120[0];
  assign concat_3195 = {and_3193, and_3194};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_270_1_case_1 = 1'h0;
  assign unexpand_for_next_value_270_1_case_0 = 1'h1;
  assign __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_valid_and_ready_txfr = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_load_en;
  assign __systolic__vert_chans__1_1_valid_and_ready_txfr = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_load_en;
  assign __systolic__result_chans__0_1_valid_and_all_active_outputs_ready = __systolic__result_chans__0_1_vld_buf & or_5509;
  assign __systolic__result_chans__0_1_valid_and_ready_txfr = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_load_en;
  assign systolic__hor_chans__0_1_load_en = systolic__hor_chans__0_1_vld & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = systolic__vert_chans__0_1_vld & systolic__vert_chans__0_1_valid_load_en;
  assign or_5438 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_3196 = 32'h0000_0000 & {32{concat_3195[0]}} | new_accum & {32{concat_3195[1]}};
  assign or_3197 = and_3193 | and_3194;
  assign one_hot_sel_3202 = unexpand_for_next_value_270_1_case_1 & concat_3195[0] | unexpand_for_next_value_270_1_case_0 & concat_3195[1];
  assign __systolic__hor_chans__0_2_not_stage_load = ~__systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_has_been_sent_reg_load_en = __systolic__hor_chans__0_2_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_1_has_been_sent_reg_load_en = __systolic__vert_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_not_stage_load = ~__systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_has_been_sent_reg_load_en = __systolic__result_chans__0_1_valid_and_ready_txfr | __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_1_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__0_1_reg : p1_b;
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
      __systolic__hor_chans__0_2_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__1_1_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__0_1_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_1_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_1_valid_reg <= 1'h0;
      __systolic__vert_chans__0_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_1_valid_reg <= 1'h0;
      __systolic__hor_chans__0_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_2_valid_reg <= 1'h0;
      __systolic__vert_chans__1_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_1_valid_reg <= 1'h0;
      __systolic__result_chans__0_1_reg <= 32'h0000_0000;
      __systolic__result_chans__0_1_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_3197 ? one_hot_sel_3202 : ____state_1;
      ____state_0 <= or_3197 ? one_hot_sel_3196 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__0_1_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__0_2_has_been_sent_reg <= __systolic__hor_chans__0_2_has_been_sent_reg_load_en ? __systolic__hor_chans__0_2_not_stage_load : __systolic__hor_chans__0_2_has_been_sent_reg;
      __systolic__vert_chans__1_1_has_been_sent_reg <= __systolic__vert_chans__1_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_2_not_stage_load : __systolic__vert_chans__1_1_has_been_sent_reg;
      __systolic__result_chans__0_1_has_been_sent_reg <= __systolic__result_chans__0_1_has_been_sent_reg_load_en ? __systolic__result_chans__0_1_not_stage_load : __systolic__result_chans__0_1_has_been_sent_reg;
      __systolic__hor_chans__0_1_reg <= systolic__hor_chans__0_1_load_en ? systolic__hor_chans__0_1 : __systolic__hor_chans__0_1_reg;
      __systolic__hor_chans__0_1_valid_reg <= systolic__hor_chans__0_1_valid_load_en ? systolic__hor_chans__0_1_vld : __systolic__hor_chans__0_1_valid_reg;
      __systolic__vert_chans__0_1_reg <= systolic__vert_chans__0_1_load_en ? systolic__vert_chans__0_1 : __systolic__vert_chans__0_1_reg;
      __systolic__vert_chans__0_1_valid_reg <= systolic__vert_chans__0_1_valid_load_en ? systolic__vert_chans__0_1_vld : __systolic__vert_chans__0_1_valid_reg;
      __systolic__hor_chans__0_2_reg <= systolic__hor_chans__0_2_load_en ? p1_a : __systolic__hor_chans__0_2_reg;
      __systolic__hor_chans__0_2_valid_reg <= systolic__hor_chans__0_2_valid_load_en ? __systolic__hor_chans__0_2_valid_and_not_has_been_sent : __systolic__hor_chans__0_2_valid_reg;
      __systolic__vert_chans__1_1_reg <= systolic__vert_chans__1_1_load_en ? p1_b : __systolic__vert_chans__1_1_reg;
      __systolic__vert_chans__1_1_valid_reg <= systolic__vert_chans__1_1_valid_load_en ? __systolic__vert_chans__1_1_valid_and_not_has_been_sent : __systolic__vert_chans__1_1_valid_reg;
      __systolic__result_chans__0_1_reg <= systolic__result_chans__0_1_load_en ? new_accum : __systolic__result_chans__0_1_reg;
      __systolic__result_chans__0_1_valid_reg <= systolic__result_chans__0_1_valid_load_en ? __systolic__result_chans__0_1_valid_and_not_has_been_sent : __systolic__result_chans__0_1_valid_reg;
    end
  end
  assign systolic__hor_chans__0_1_rdy = systolic__hor_chans__0_1_load_en;
  assign systolic__hor_chans__0_2 = __systolic__hor_chans__0_2_reg;
  assign systolic__hor_chans__0_2_vld = __systolic__hor_chans__0_2_valid_reg;
  assign systolic__result_chans__0_1 = __systolic__result_chans__0_1_reg;
  assign systolic__result_chans__0_1_vld = __systolic__result_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_1_rdy = systolic__vert_chans__0_1_load_en;
  assign systolic__vert_chans__1_1 = __systolic__vert_chans__1_1_reg;
  assign systolic__vert_chans__1_1_vld = __systolic__vert_chans__1_1_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5438))) or_5438) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5438))) or_5438) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_2_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__0_2,
  input wire systolic__hor_chans__0_2_vld,
  input wire systolic__hor_chans__0_3_rdy,
  input wire systolic__result_chans__0_2_rdy,
  input wire [31:0] systolic__vert_chans__0_2,
  input wire systolic__vert_chans__0_2_vld,
  input wire systolic__vert_chans__1_2_rdy,
  output wire systolic__hor_chans__0_2_rdy,
  output wire [31:0] systolic__hor_chans__0_3,
  output wire systolic__hor_chans__0_3_vld,
  output wire [31:0] systolic__result_chans__0_2,
  output wire systolic__result_chans__0_2_vld,
  output wire systolic__vert_chans__0_2_rdy,
  output wire [31:0] systolic__vert_chans__1_2,
  output wire systolic__vert_chans__1_2_vld
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
  reg __systolic__hor_chans__0_3_has_been_sent_reg;
  reg __systolic__vert_chans__1_2_has_been_sent_reg;
  reg __systolic__result_chans__0_2_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__0_2_reg;
  reg __systolic__hor_chans__0_2_valid_reg;
  reg [31:0] __systolic__vert_chans__0_2_reg;
  reg __systolic__vert_chans__0_2_valid_reg;
  reg [31:0] __systolic__hor_chans__0_3_reg;
  reg __systolic__hor_chans__0_3_valid_reg;
  reg [31:0] __systolic__vert_chans__1_2_reg;
  reg __systolic__vert_chans__1_2_valid_reg;
  reg [31:0] __systolic__result_chans__0_2_reg;
  reg __systolic__result_chans__0_2_valid_reg;
  wire __systolic__result_chans__0_2_vld_buf;
  wire __systolic__result_chans__0_2_not_has_been_sent;
  wire systolic__result_chans__0_2_valid_inv;
  wire __systolic__result_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_2_valid_load_en;
  wire systolic__result_chans__0_2_load_en;
  wire or_5526;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__0_3_vld_buf;
  wire __systolic__hor_chans__0_3_not_has_been_sent;
  wire systolic__hor_chans__0_3_valid_inv;
  wire __systolic__vert_chans__1_2_not_has_been_sent;
  wire systolic__vert_chans__1_2_valid_inv;
  wire __systolic__hor_chans__0_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_3_valid_load_en;
  wire __systolic__vert_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_2_valid_load_en;
  wire systolic__hor_chans__0_3_load_en;
  wire systolic__vert_chans__1_2_load_en;
  wire __systolic__hor_chans__0_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_2_has_sent_or_is_ready;
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
  wire [2:0] one_hot_3358;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_2_valid_inv;
  wire systolic__vert_chans__0_2_valid_inv;
  wire and_3431;
  wire and_3432;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire systolic__vert_chans__0_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_3433;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_300_1_case_1;
  wire unexpand_for_next_value_300_1_case_0;
  wire __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_3_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_2_valid_and_ready_txfr;
  wire __systolic__result_chans__0_2_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_2_valid_and_ready_txfr;
  wire systolic__hor_chans__0_2_load_en;
  wire systolic__vert_chans__0_2_load_en;
  wire or_5442;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_3434;
  wire or_3435;
  wire one_hot_sel_3440;
  wire __systolic__hor_chans__0_3_not_stage_load;
  wire __systolic__hor_chans__0_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_2_not_stage_load;
  wire __systolic__result_chans__0_2_has_been_sent_reg_load_en;
  assign __systolic__result_chans__0_2_vld_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__0_2_not_has_been_sent = ~__systolic__result_chans__0_2_has_been_sent_reg;
  assign systolic__result_chans__0_2_valid_inv = ~__systolic__result_chans__0_2_valid_reg;
  assign __systolic__result_chans__0_2_valid_and_not_has_been_sent = __systolic__result_chans__0_2_vld_buf & __systolic__result_chans__0_2_not_has_been_sent;
  assign systolic__result_chans__0_2_valid_load_en = systolic__result_chans__0_2_rdy | systolic__result_chans__0_2_valid_inv;
  assign systolic__result_chans__0_2_load_en = __systolic__result_chans__0_2_valid_and_not_has_been_sent & systolic__result_chans__0_2_valid_load_en;
  assign or_5526 = ~____state_1 | systolic__result_chans__0_2_load_en | __systolic__result_chans__0_2_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_5526;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__0_3_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__0_3_not_has_been_sent = ~__systolic__hor_chans__0_3_has_been_sent_reg;
  assign systolic__hor_chans__0_3_valid_inv = ~__systolic__hor_chans__0_3_valid_reg;
  assign __systolic__vert_chans__1_2_not_has_been_sent = ~__systolic__vert_chans__1_2_has_been_sent_reg;
  assign systolic__vert_chans__1_2_valid_inv = ~__systolic__vert_chans__1_2_valid_reg;
  assign __systolic__hor_chans__0_3_valid_and_not_has_been_sent = __systolic__hor_chans__0_3_vld_buf & __systolic__hor_chans__0_3_not_has_been_sent;
  assign systolic__hor_chans__0_3_valid_load_en = systolic__hor_chans__0_3_rdy | systolic__hor_chans__0_3_valid_inv;
  assign __systolic__vert_chans__1_2_valid_and_not_has_been_sent = __systolic__hor_chans__0_3_vld_buf & __systolic__vert_chans__1_2_not_has_been_sent;
  assign systolic__vert_chans__1_2_valid_load_en = systolic__vert_chans__1_2_rdy | systolic__vert_chans__1_2_valid_inv;
  assign systolic__hor_chans__0_3_load_en = __systolic__hor_chans__0_3_valid_and_not_has_been_sent & systolic__hor_chans__0_3_valid_load_en;
  assign systolic__vert_chans__1_2_load_en = __systolic__vert_chans__1_2_valid_and_not_has_been_sent & systolic__vert_chans__1_2_valid_load_en;
  assign __systolic__hor_chans__0_3_has_sent_or_is_ready = systolic__hor_chans__0_3_load_en | __systolic__hor_chans__0_3_has_been_sent_reg;
  assign __systolic__vert_chans__1_2_has_sent_or_is_ready = systolic__vert_chans__1_2_load_en | __systolic__vert_chans__1_2_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__0_3_has_sent_or_is_ready & __systolic__vert_chans__1_2_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__0_2_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_3358 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_2_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign systolic__vert_chans__0_2_valid_inv = ~__systolic__vert_chans__0_2_valid_reg;
  assign and_3431 = ~____state_1 & p3_stage_done;
  assign and_3432 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__0_2_valid_load_en = p0_load_en | systolic__hor_chans__0_2_valid_inv;
  assign systolic__vert_chans__0_2_valid_load_en = p1_load_en | systolic__vert_chans__0_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_3358[1] & ____state_1 == one_hot_3358[0];
  assign concat_3433 = {and_3431, and_3432};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_300_1_case_1 = 1'h0;
  assign unexpand_for_next_value_300_1_case_0 = 1'h1;
  assign __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_3_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_3_valid_and_ready_txfr = __systolic__hor_chans__0_3_valid_and_not_has_been_sent & systolic__hor_chans__0_3_load_en;
  assign __systolic__vert_chans__1_2_valid_and_ready_txfr = __systolic__vert_chans__1_2_valid_and_not_has_been_sent & systolic__vert_chans__1_2_load_en;
  assign __systolic__result_chans__0_2_valid_and_all_active_outputs_ready = __systolic__result_chans__0_2_vld_buf & or_5526;
  assign __systolic__result_chans__0_2_valid_and_ready_txfr = __systolic__result_chans__0_2_valid_and_not_has_been_sent & systolic__result_chans__0_2_load_en;
  assign systolic__hor_chans__0_2_load_en = systolic__hor_chans__0_2_vld & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__vert_chans__0_2_load_en = systolic__vert_chans__0_2_vld & systolic__vert_chans__0_2_valid_load_en;
  assign or_5442 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_3434 = 32'h0000_0000 & {32{concat_3433[0]}} | new_accum & {32{concat_3433[1]}};
  assign or_3435 = and_3431 | and_3432;
  assign one_hot_sel_3440 = unexpand_for_next_value_300_1_case_1 & concat_3433[0] | unexpand_for_next_value_300_1_case_0 & concat_3433[1];
  assign __systolic__hor_chans__0_3_not_stage_load = ~__systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_3_has_been_sent_reg_load_en = __systolic__hor_chans__0_3_valid_and_ready_txfr | __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_2_has_been_sent_reg_load_en = __systolic__vert_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_2_not_stage_load = ~__systolic__result_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_2_has_been_sent_reg_load_en = __systolic__result_chans__0_2_valid_and_ready_txfr | __systolic__result_chans__0_2_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_2_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__0_2_reg : p1_b;
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
      __systolic__hor_chans__0_3_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__1_2_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__0_2_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_2_valid_reg <= 1'h0;
      __systolic__vert_chans__0_2_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_2_valid_reg <= 1'h0;
      __systolic__hor_chans__0_3_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_3_valid_reg <= 1'h0;
      __systolic__vert_chans__1_2_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_2_valid_reg <= 1'h0;
      __systolic__result_chans__0_2_reg <= 32'h0000_0000;
      __systolic__result_chans__0_2_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_3435 ? one_hot_sel_3440 : ____state_1;
      ____state_0 <= or_3435 ? one_hot_sel_3434 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__0_2_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__0_3_has_been_sent_reg <= __systolic__hor_chans__0_3_has_been_sent_reg_load_en ? __systolic__hor_chans__0_3_not_stage_load : __systolic__hor_chans__0_3_has_been_sent_reg;
      __systolic__vert_chans__1_2_has_been_sent_reg <= __systolic__vert_chans__1_2_has_been_sent_reg_load_en ? __systolic__hor_chans__0_3_not_stage_load : __systolic__vert_chans__1_2_has_been_sent_reg;
      __systolic__result_chans__0_2_has_been_sent_reg <= __systolic__result_chans__0_2_has_been_sent_reg_load_en ? __systolic__result_chans__0_2_not_stage_load : __systolic__result_chans__0_2_has_been_sent_reg;
      __systolic__hor_chans__0_2_reg <= systolic__hor_chans__0_2_load_en ? systolic__hor_chans__0_2 : __systolic__hor_chans__0_2_reg;
      __systolic__hor_chans__0_2_valid_reg <= systolic__hor_chans__0_2_valid_load_en ? systolic__hor_chans__0_2_vld : __systolic__hor_chans__0_2_valid_reg;
      __systolic__vert_chans__0_2_reg <= systolic__vert_chans__0_2_load_en ? systolic__vert_chans__0_2 : __systolic__vert_chans__0_2_reg;
      __systolic__vert_chans__0_2_valid_reg <= systolic__vert_chans__0_2_valid_load_en ? systolic__vert_chans__0_2_vld : __systolic__vert_chans__0_2_valid_reg;
      __systolic__hor_chans__0_3_reg <= systolic__hor_chans__0_3_load_en ? p1_a : __systolic__hor_chans__0_3_reg;
      __systolic__hor_chans__0_3_valid_reg <= systolic__hor_chans__0_3_valid_load_en ? __systolic__hor_chans__0_3_valid_and_not_has_been_sent : __systolic__hor_chans__0_3_valid_reg;
      __systolic__vert_chans__1_2_reg <= systolic__vert_chans__1_2_load_en ? p1_b : __systolic__vert_chans__1_2_reg;
      __systolic__vert_chans__1_2_valid_reg <= systolic__vert_chans__1_2_valid_load_en ? __systolic__vert_chans__1_2_valid_and_not_has_been_sent : __systolic__vert_chans__1_2_valid_reg;
      __systolic__result_chans__0_2_reg <= systolic__result_chans__0_2_load_en ? new_accum : __systolic__result_chans__0_2_reg;
      __systolic__result_chans__0_2_valid_reg <= systolic__result_chans__0_2_valid_load_en ? __systolic__result_chans__0_2_valid_and_not_has_been_sent : __systolic__result_chans__0_2_valid_reg;
    end
  end
  assign systolic__hor_chans__0_2_rdy = systolic__hor_chans__0_2_load_en;
  assign systolic__hor_chans__0_3 = __systolic__hor_chans__0_3_reg;
  assign systolic__hor_chans__0_3_vld = __systolic__hor_chans__0_3_valid_reg;
  assign systolic__result_chans__0_2 = __systolic__result_chans__0_2_reg;
  assign systolic__result_chans__0_2_vld = __systolic__result_chans__0_2_valid_reg;
  assign systolic__vert_chans__0_2_rdy = systolic__vert_chans__0_2_load_en;
  assign systolic__vert_chans__1_2 = __systolic__vert_chans__1_2_reg;
  assign systolic__vert_chans__1_2_vld = __systolic__vert_chans__1_2_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5442))) or_5442) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5442))) or_5442) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_3_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__1_0,
  input wire systolic__hor_chans__1_0_vld,
  input wire systolic__hor_chans__1_1_rdy,
  input wire systolic__result_chans__1_0_rdy,
  input wire [31:0] systolic__vert_chans__1_0,
  input wire systolic__vert_chans__1_0_vld,
  input wire systolic__vert_chans__2_0_rdy,
  output wire systolic__hor_chans__1_0_rdy,
  output wire [31:0] systolic__hor_chans__1_1,
  output wire systolic__hor_chans__1_1_vld,
  output wire [31:0] systolic__result_chans__1_0,
  output wire systolic__result_chans__1_0_vld,
  output wire systolic__vert_chans__1_0_rdy,
  output wire [31:0] systolic__vert_chans__2_0,
  output wire systolic__vert_chans__2_0_vld
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
  reg __systolic__hor_chans__1_1_has_been_sent_reg;
  reg __systolic__vert_chans__2_0_has_been_sent_reg;
  reg __systolic__result_chans__1_0_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__1_0_reg;
  reg __systolic__hor_chans__1_0_valid_reg;
  reg [31:0] __systolic__vert_chans__1_0_reg;
  reg __systolic__vert_chans__1_0_valid_reg;
  reg [31:0] __systolic__hor_chans__1_1_reg;
  reg __systolic__hor_chans__1_1_valid_reg;
  reg [31:0] __systolic__vert_chans__2_0_reg;
  reg __systolic__vert_chans__2_0_valid_reg;
  reg [31:0] __systolic__result_chans__1_0_reg;
  reg __systolic__result_chans__1_0_valid_reg;
  wire __systolic__result_chans__1_0_vld_buf;
  wire __systolic__result_chans__1_0_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_inv;
  wire __systolic__result_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_load_en;
  wire systolic__result_chans__1_0_load_en;
  wire or_5543;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__1_1_vld_buf;
  wire __systolic__hor_chans__1_1_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_inv;
  wire __systolic__vert_chans__2_0_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_inv;
  wire __systolic__hor_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire __systolic__vert_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__2_0_load_en;
  wire __systolic__hor_chans__1_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_0_has_sent_or_is_ready;
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
  wire [2:0] one_hot_3596;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_0_valid_inv;
  wire systolic__vert_chans__1_0_valid_inv;
  wire and_3669;
  wire and_3670;
  wire systolic__hor_chans__1_0_valid_load_en;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_3671;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_330_1_case_1;
  wire unexpand_for_next_value_330_1_case_0;
  wire __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_0_valid_and_ready_txfr;
  wire __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_0_valid_and_ready_txfr;
  wire systolic__hor_chans__1_0_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire or_5446;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_3672;
  wire or_3673;
  wire one_hot_sel_3678;
  wire __systolic__hor_chans__1_1_not_stage_load;
  wire __systolic__hor_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_0_not_stage_load;
  wire __systolic__result_chans__1_0_has_been_sent_reg_load_en;
  assign __systolic__result_chans__1_0_vld_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__1_0_not_has_been_sent = ~__systolic__result_chans__1_0_has_been_sent_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign __systolic__result_chans__1_0_valid_and_not_has_been_sent = __systolic__result_chans__1_0_vld_buf & __systolic__result_chans__1_0_not_has_been_sent;
  assign systolic__result_chans__1_0_valid_load_en = systolic__result_chans__1_0_rdy | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_0_load_en = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_valid_load_en;
  assign or_5543 = ~____state_1 | systolic__result_chans__1_0_load_en | __systolic__result_chans__1_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_5543;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__1_1_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__1_1_not_has_been_sent = ~__systolic__hor_chans__1_1_has_been_sent_reg;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign __systolic__vert_chans__2_0_not_has_been_sent = ~__systolic__vert_chans__2_0_has_been_sent_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign __systolic__hor_chans__1_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_vld_buf & __systolic__hor_chans__1_1_not_has_been_sent;
  assign systolic__hor_chans__1_1_valid_load_en = systolic__hor_chans__1_1_rdy | systolic__hor_chans__1_1_valid_inv;
  assign __systolic__vert_chans__2_0_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_vld_buf & __systolic__vert_chans__2_0_not_has_been_sent;
  assign systolic__vert_chans__2_0_valid_load_en = systolic__vert_chans__2_0_rdy | systolic__vert_chans__2_0_valid_inv;
  assign systolic__hor_chans__1_1_load_en = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_valid_load_en;
  assign __systolic__hor_chans__1_1_has_sent_or_is_ready = systolic__hor_chans__1_1_load_en | __systolic__hor_chans__1_1_has_been_sent_reg;
  assign __systolic__vert_chans__2_0_has_sent_or_is_ready = systolic__vert_chans__2_0_load_en | __systolic__vert_chans__2_0_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__1_1_has_sent_or_is_ready & __systolic__vert_chans__2_0_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__1_0_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_3596 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_0_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign and_3669 = ~____state_1 & p3_stage_done;
  assign and_3670 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__1_0_valid_load_en = p0_load_en | systolic__hor_chans__1_0_valid_inv;
  assign systolic__vert_chans__1_0_valid_load_en = p1_load_en | systolic__vert_chans__1_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_3596[1] & ____state_1 == one_hot_3596[0];
  assign concat_3671 = {and_3669, and_3670};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_330_1_case_1 = 1'h0;
  assign unexpand_for_next_value_330_1_case_0 = 1'h1;
  assign __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_valid_and_ready_txfr = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_load_en;
  assign __systolic__vert_chans__2_0_valid_and_ready_txfr = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_load_en;
  assign __systolic__result_chans__1_0_valid_and_all_active_outputs_ready = __systolic__result_chans__1_0_vld_buf & or_5543;
  assign __systolic__result_chans__1_0_valid_and_ready_txfr = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_load_en;
  assign systolic__hor_chans__1_0_load_en = systolic__hor_chans__1_0_vld & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = systolic__vert_chans__1_0_vld & systolic__vert_chans__1_0_valid_load_en;
  assign or_5446 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_3672 = 32'h0000_0000 & {32{concat_3671[0]}} | new_accum & {32{concat_3671[1]}};
  assign or_3673 = and_3669 | and_3670;
  assign one_hot_sel_3678 = unexpand_for_next_value_330_1_case_1 & concat_3671[0] | unexpand_for_next_value_330_1_case_0 & concat_3671[1];
  assign __systolic__hor_chans__1_1_not_stage_load = ~__systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_has_been_sent_reg_load_en = __systolic__hor_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_0_has_been_sent_reg_load_en = __systolic__vert_chans__2_0_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_not_stage_load = ~__systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_has_been_sent_reg_load_en = __systolic__result_chans__1_0_valid_and_ready_txfr | __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_0_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__1_0_reg : p1_b;
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
      __systolic__hor_chans__1_1_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__2_0_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__1_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_0_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_0_valid_reg <= 1'h0;
      __systolic__vert_chans__1_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_0_valid_reg <= 1'h0;
      __systolic__hor_chans__1_1_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_1_valid_reg <= 1'h0;
      __systolic__vert_chans__2_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_0_valid_reg <= 1'h0;
      __systolic__result_chans__1_0_reg <= 32'h0000_0000;
      __systolic__result_chans__1_0_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_3673 ? one_hot_sel_3678 : ____state_1;
      ____state_0 <= or_3673 ? one_hot_sel_3672 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__1_0_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__1_1_has_been_sent_reg <= __systolic__hor_chans__1_1_has_been_sent_reg_load_en ? __systolic__hor_chans__1_1_not_stage_load : __systolic__hor_chans__1_1_has_been_sent_reg;
      __systolic__vert_chans__2_0_has_been_sent_reg <= __systolic__vert_chans__2_0_has_been_sent_reg_load_en ? __systolic__hor_chans__1_1_not_stage_load : __systolic__vert_chans__2_0_has_been_sent_reg;
      __systolic__result_chans__1_0_has_been_sent_reg <= __systolic__result_chans__1_0_has_been_sent_reg_load_en ? __systolic__result_chans__1_0_not_stage_load : __systolic__result_chans__1_0_has_been_sent_reg;
      __systolic__hor_chans__1_0_reg <= systolic__hor_chans__1_0_load_en ? systolic__hor_chans__1_0 : __systolic__hor_chans__1_0_reg;
      __systolic__hor_chans__1_0_valid_reg <= systolic__hor_chans__1_0_valid_load_en ? systolic__hor_chans__1_0_vld : __systolic__hor_chans__1_0_valid_reg;
      __systolic__vert_chans__1_0_reg <= systolic__vert_chans__1_0_load_en ? systolic__vert_chans__1_0 : __systolic__vert_chans__1_0_reg;
      __systolic__vert_chans__1_0_valid_reg <= systolic__vert_chans__1_0_valid_load_en ? systolic__vert_chans__1_0_vld : __systolic__vert_chans__1_0_valid_reg;
      __systolic__hor_chans__1_1_reg <= systolic__hor_chans__1_1_load_en ? p1_a : __systolic__hor_chans__1_1_reg;
      __systolic__hor_chans__1_1_valid_reg <= systolic__hor_chans__1_1_valid_load_en ? __systolic__hor_chans__1_1_valid_and_not_has_been_sent : __systolic__hor_chans__1_1_valid_reg;
      __systolic__vert_chans__2_0_reg <= systolic__vert_chans__2_0_load_en ? p1_b : __systolic__vert_chans__2_0_reg;
      __systolic__vert_chans__2_0_valid_reg <= systolic__vert_chans__2_0_valid_load_en ? __systolic__vert_chans__2_0_valid_and_not_has_been_sent : __systolic__vert_chans__2_0_valid_reg;
      __systolic__result_chans__1_0_reg <= systolic__result_chans__1_0_load_en ? new_accum : __systolic__result_chans__1_0_reg;
      __systolic__result_chans__1_0_valid_reg <= systolic__result_chans__1_0_valid_load_en ? __systolic__result_chans__1_0_valid_and_not_has_been_sent : __systolic__result_chans__1_0_valid_reg;
    end
  end
  assign systolic__hor_chans__1_0_rdy = systolic__hor_chans__1_0_load_en;
  assign systolic__hor_chans__1_1 = __systolic__hor_chans__1_1_reg;
  assign systolic__hor_chans__1_1_vld = __systolic__hor_chans__1_1_valid_reg;
  assign systolic__result_chans__1_0 = __systolic__result_chans__1_0_reg;
  assign systolic__result_chans__1_0_vld = __systolic__result_chans__1_0_valid_reg;
  assign systolic__vert_chans__1_0_rdy = systolic__vert_chans__1_0_load_en;
  assign systolic__vert_chans__2_0 = __systolic__vert_chans__2_0_reg;
  assign systolic__vert_chans__2_0_vld = __systolic__vert_chans__2_0_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5446))) or_5446) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5446))) or_5446) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_4_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__1_1,
  input wire systolic__hor_chans__1_1_vld,
  input wire systolic__hor_chans__1_2_rdy,
  input wire systolic__result_chans__1_1_rdy,
  input wire [31:0] systolic__vert_chans__1_1,
  input wire systolic__vert_chans__1_1_vld,
  input wire systolic__vert_chans__2_1_rdy,
  output wire systolic__hor_chans__1_1_rdy,
  output wire [31:0] systolic__hor_chans__1_2,
  output wire systolic__hor_chans__1_2_vld,
  output wire [31:0] systolic__result_chans__1_1,
  output wire systolic__result_chans__1_1_vld,
  output wire systolic__vert_chans__1_1_rdy,
  output wire [31:0] systolic__vert_chans__2_1,
  output wire systolic__vert_chans__2_1_vld
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
  reg __systolic__hor_chans__1_2_has_been_sent_reg;
  reg __systolic__vert_chans__2_1_has_been_sent_reg;
  reg __systolic__result_chans__1_1_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__1_1_reg;
  reg __systolic__hor_chans__1_1_valid_reg;
  reg [31:0] __systolic__vert_chans__1_1_reg;
  reg __systolic__vert_chans__1_1_valid_reg;
  reg [31:0] __systolic__hor_chans__1_2_reg;
  reg __systolic__hor_chans__1_2_valid_reg;
  reg [31:0] __systolic__vert_chans__2_1_reg;
  reg __systolic__vert_chans__2_1_valid_reg;
  reg [31:0] __systolic__result_chans__1_1_reg;
  reg __systolic__result_chans__1_1_valid_reg;
  wire __systolic__result_chans__1_1_vld_buf;
  wire __systolic__result_chans__1_1_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_inv;
  wire __systolic__result_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_load_en;
  wire systolic__result_chans__1_1_load_en;
  wire or_5560;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__1_2_vld_buf;
  wire __systolic__hor_chans__1_2_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_inv;
  wire __systolic__vert_chans__2_1_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_inv;
  wire __systolic__hor_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire __systolic__vert_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire systolic__hor_chans__1_2_load_en;
  wire systolic__vert_chans__2_1_load_en;
  wire __systolic__hor_chans__1_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_1_has_sent_or_is_ready;
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
  wire [2:0] one_hot_3834;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_1_valid_inv;
  wire systolic__vert_chans__1_1_valid_inv;
  wire and_3907;
  wire and_3908;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_3909;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_360_1_case_1;
  wire unexpand_for_next_value_360_1_case_0;
  wire __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_1_valid_and_ready_txfr;
  wire __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_1_valid_and_ready_txfr;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire or_5450;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_3910;
  wire or_3911;
  wire one_hot_sel_3916;
  wire __systolic__hor_chans__1_2_not_stage_load;
  wire __systolic__hor_chans__1_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_1_not_stage_load;
  wire __systolic__result_chans__1_1_has_been_sent_reg_load_en;
  assign __systolic__result_chans__1_1_vld_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__1_1_not_has_been_sent = ~__systolic__result_chans__1_1_has_been_sent_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign __systolic__result_chans__1_1_valid_and_not_has_been_sent = __systolic__result_chans__1_1_vld_buf & __systolic__result_chans__1_1_not_has_been_sent;
  assign systolic__result_chans__1_1_valid_load_en = systolic__result_chans__1_1_rdy | systolic__result_chans__1_1_valid_inv;
  assign systolic__result_chans__1_1_load_en = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_valid_load_en;
  assign or_5560 = ~____state_1 | systolic__result_chans__1_1_load_en | __systolic__result_chans__1_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_5560;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__1_2_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__1_2_not_has_been_sent = ~__systolic__hor_chans__1_2_has_been_sent_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign __systolic__vert_chans__2_1_not_has_been_sent = ~__systolic__vert_chans__2_1_has_been_sent_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign __systolic__hor_chans__1_2_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_vld_buf & __systolic__hor_chans__1_2_not_has_been_sent;
  assign systolic__hor_chans__1_2_valid_load_en = systolic__hor_chans__1_2_rdy | systolic__hor_chans__1_2_valid_inv;
  assign __systolic__vert_chans__2_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_vld_buf & __systolic__vert_chans__2_1_not_has_been_sent;
  assign systolic__vert_chans__2_1_valid_load_en = systolic__vert_chans__2_1_rdy | systolic__vert_chans__2_1_valid_inv;
  assign systolic__hor_chans__1_2_load_en = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_valid_load_en;
  assign __systolic__hor_chans__1_2_has_sent_or_is_ready = systolic__hor_chans__1_2_load_en | __systolic__hor_chans__1_2_has_been_sent_reg;
  assign __systolic__vert_chans__2_1_has_sent_or_is_ready = systolic__vert_chans__2_1_load_en | __systolic__vert_chans__2_1_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__1_2_has_sent_or_is_ready & __systolic__vert_chans__2_1_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__1_1_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_3834 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_1_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign and_3907 = ~____state_1 & p3_stage_done;
  assign and_3908 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__1_1_valid_load_en = p0_load_en | systolic__hor_chans__1_1_valid_inv;
  assign systolic__vert_chans__1_1_valid_load_en = p1_load_en | systolic__vert_chans__1_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_3834[1] & ____state_1 == one_hot_3834[0];
  assign concat_3909 = {and_3907, and_3908};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_360_1_case_1 = 1'h0;
  assign unexpand_for_next_value_360_1_case_0 = 1'h1;
  assign __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_valid_and_ready_txfr = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_load_en;
  assign __systolic__vert_chans__2_1_valid_and_ready_txfr = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_load_en;
  assign __systolic__result_chans__1_1_valid_and_all_active_outputs_ready = __systolic__result_chans__1_1_vld_buf & or_5560;
  assign __systolic__result_chans__1_1_valid_and_ready_txfr = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_load_en;
  assign systolic__hor_chans__1_1_load_en = systolic__hor_chans__1_1_vld & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = systolic__vert_chans__1_1_vld & systolic__vert_chans__1_1_valid_load_en;
  assign or_5450 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_3910 = 32'h0000_0000 & {32{concat_3909[0]}} | new_accum & {32{concat_3909[1]}};
  assign or_3911 = and_3907 | and_3908;
  assign one_hot_sel_3916 = unexpand_for_next_value_360_1_case_1 & concat_3909[0] | unexpand_for_next_value_360_1_case_0 & concat_3909[1];
  assign __systolic__hor_chans__1_2_not_stage_load = ~__systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_has_been_sent_reg_load_en = __systolic__hor_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_1_has_been_sent_reg_load_en = __systolic__vert_chans__2_1_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_not_stage_load = ~__systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_has_been_sent_reg_load_en = __systolic__result_chans__1_1_valid_and_ready_txfr | __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_1_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__1_1_reg : p1_b;
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
      __systolic__hor_chans__1_2_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__2_1_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__1_1_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_1_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_1_valid_reg <= 1'h0;
      __systolic__vert_chans__1_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_1_valid_reg <= 1'h0;
      __systolic__hor_chans__1_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_2_valid_reg <= 1'h0;
      __systolic__vert_chans__2_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_1_valid_reg <= 1'h0;
      __systolic__result_chans__1_1_reg <= 32'h0000_0000;
      __systolic__result_chans__1_1_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_3911 ? one_hot_sel_3916 : ____state_1;
      ____state_0 <= or_3911 ? one_hot_sel_3910 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__1_1_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__1_2_has_been_sent_reg <= __systolic__hor_chans__1_2_has_been_sent_reg_load_en ? __systolic__hor_chans__1_2_not_stage_load : __systolic__hor_chans__1_2_has_been_sent_reg;
      __systolic__vert_chans__2_1_has_been_sent_reg <= __systolic__vert_chans__2_1_has_been_sent_reg_load_en ? __systolic__hor_chans__1_2_not_stage_load : __systolic__vert_chans__2_1_has_been_sent_reg;
      __systolic__result_chans__1_1_has_been_sent_reg <= __systolic__result_chans__1_1_has_been_sent_reg_load_en ? __systolic__result_chans__1_1_not_stage_load : __systolic__result_chans__1_1_has_been_sent_reg;
      __systolic__hor_chans__1_1_reg <= systolic__hor_chans__1_1_load_en ? systolic__hor_chans__1_1 : __systolic__hor_chans__1_1_reg;
      __systolic__hor_chans__1_1_valid_reg <= systolic__hor_chans__1_1_valid_load_en ? systolic__hor_chans__1_1_vld : __systolic__hor_chans__1_1_valid_reg;
      __systolic__vert_chans__1_1_reg <= systolic__vert_chans__1_1_load_en ? systolic__vert_chans__1_1 : __systolic__vert_chans__1_1_reg;
      __systolic__vert_chans__1_1_valid_reg <= systolic__vert_chans__1_1_valid_load_en ? systolic__vert_chans__1_1_vld : __systolic__vert_chans__1_1_valid_reg;
      __systolic__hor_chans__1_2_reg <= systolic__hor_chans__1_2_load_en ? p1_a : __systolic__hor_chans__1_2_reg;
      __systolic__hor_chans__1_2_valid_reg <= systolic__hor_chans__1_2_valid_load_en ? __systolic__hor_chans__1_2_valid_and_not_has_been_sent : __systolic__hor_chans__1_2_valid_reg;
      __systolic__vert_chans__2_1_reg <= systolic__vert_chans__2_1_load_en ? p1_b : __systolic__vert_chans__2_1_reg;
      __systolic__vert_chans__2_1_valid_reg <= systolic__vert_chans__2_1_valid_load_en ? __systolic__vert_chans__2_1_valid_and_not_has_been_sent : __systolic__vert_chans__2_1_valid_reg;
      __systolic__result_chans__1_1_reg <= systolic__result_chans__1_1_load_en ? new_accum : __systolic__result_chans__1_1_reg;
      __systolic__result_chans__1_1_valid_reg <= systolic__result_chans__1_1_valid_load_en ? __systolic__result_chans__1_1_valid_and_not_has_been_sent : __systolic__result_chans__1_1_valid_reg;
    end
  end
  assign systolic__hor_chans__1_1_rdy = systolic__hor_chans__1_1_load_en;
  assign systolic__hor_chans__1_2 = __systolic__hor_chans__1_2_reg;
  assign systolic__hor_chans__1_2_vld = __systolic__hor_chans__1_2_valid_reg;
  assign systolic__result_chans__1_1 = __systolic__result_chans__1_1_reg;
  assign systolic__result_chans__1_1_vld = __systolic__result_chans__1_1_valid_reg;
  assign systolic__vert_chans__1_1_rdy = systolic__vert_chans__1_1_load_en;
  assign systolic__vert_chans__2_1 = __systolic__vert_chans__2_1_reg;
  assign systolic__vert_chans__2_1_vld = __systolic__vert_chans__2_1_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5450))) or_5450) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5450))) or_5450) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_5_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__1_2,
  input wire systolic__hor_chans__1_2_vld,
  input wire systolic__hor_chans__1_3_rdy,
  input wire systolic__result_chans__1_2_rdy,
  input wire [31:0] systolic__vert_chans__1_2,
  input wire systolic__vert_chans__1_2_vld,
  input wire systolic__vert_chans__2_2_rdy,
  output wire systolic__hor_chans__1_2_rdy,
  output wire [31:0] systolic__hor_chans__1_3,
  output wire systolic__hor_chans__1_3_vld,
  output wire [31:0] systolic__result_chans__1_2,
  output wire systolic__result_chans__1_2_vld,
  output wire systolic__vert_chans__1_2_rdy,
  output wire [31:0] systolic__vert_chans__2_2,
  output wire systolic__vert_chans__2_2_vld
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
  reg __systolic__hor_chans__1_3_has_been_sent_reg;
  reg __systolic__vert_chans__2_2_has_been_sent_reg;
  reg __systolic__result_chans__1_2_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__1_2_reg;
  reg __systolic__hor_chans__1_2_valid_reg;
  reg [31:0] __systolic__vert_chans__1_2_reg;
  reg __systolic__vert_chans__1_2_valid_reg;
  reg [31:0] __systolic__hor_chans__1_3_reg;
  reg __systolic__hor_chans__1_3_valid_reg;
  reg [31:0] __systolic__vert_chans__2_2_reg;
  reg __systolic__vert_chans__2_2_valid_reg;
  reg [31:0] __systolic__result_chans__1_2_reg;
  reg __systolic__result_chans__1_2_valid_reg;
  wire __systolic__result_chans__1_2_vld_buf;
  wire __systolic__result_chans__1_2_not_has_been_sent;
  wire systolic__result_chans__1_2_valid_inv;
  wire __systolic__result_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_2_valid_load_en;
  wire systolic__result_chans__1_2_load_en;
  wire or_5577;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__1_3_vld_buf;
  wire __systolic__hor_chans__1_3_not_has_been_sent;
  wire systolic__hor_chans__1_3_valid_inv;
  wire __systolic__vert_chans__2_2_not_has_been_sent;
  wire systolic__vert_chans__2_2_valid_inv;
  wire __systolic__hor_chans__1_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_3_valid_load_en;
  wire __systolic__vert_chans__2_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_2_valid_load_en;
  wire systolic__hor_chans__1_3_load_en;
  wire systolic__vert_chans__2_2_load_en;
  wire __systolic__hor_chans__1_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_2_has_sent_or_is_ready;
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
  wire [2:0] one_hot_4072;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_2_valid_inv;
  wire systolic__vert_chans__1_2_valid_inv;
  wire and_4145;
  wire and_4146;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire systolic__vert_chans__1_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4147;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_390_1_case_1;
  wire unexpand_for_next_value_390_1_case_0;
  wire __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_3_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_2_valid_and_ready_txfr;
  wire __systolic__result_chans__1_2_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_2_valid_and_ready_txfr;
  wire systolic__hor_chans__1_2_load_en;
  wire systolic__vert_chans__1_2_load_en;
  wire or_5454;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_4148;
  wire or_4149;
  wire one_hot_sel_4154;
  wire __systolic__hor_chans__1_3_not_stage_load;
  wire __systolic__hor_chans__1_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_2_not_stage_load;
  wire __systolic__result_chans__1_2_has_been_sent_reg_load_en;
  assign __systolic__result_chans__1_2_vld_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__1_2_not_has_been_sent = ~__systolic__result_chans__1_2_has_been_sent_reg;
  assign systolic__result_chans__1_2_valid_inv = ~__systolic__result_chans__1_2_valid_reg;
  assign __systolic__result_chans__1_2_valid_and_not_has_been_sent = __systolic__result_chans__1_2_vld_buf & __systolic__result_chans__1_2_not_has_been_sent;
  assign systolic__result_chans__1_2_valid_load_en = systolic__result_chans__1_2_rdy | systolic__result_chans__1_2_valid_inv;
  assign systolic__result_chans__1_2_load_en = __systolic__result_chans__1_2_valid_and_not_has_been_sent & systolic__result_chans__1_2_valid_load_en;
  assign or_5577 = ~____state_1 | systolic__result_chans__1_2_load_en | __systolic__result_chans__1_2_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_5577;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__1_3_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__1_3_not_has_been_sent = ~__systolic__hor_chans__1_3_has_been_sent_reg;
  assign systolic__hor_chans__1_3_valid_inv = ~__systolic__hor_chans__1_3_valid_reg;
  assign __systolic__vert_chans__2_2_not_has_been_sent = ~__systolic__vert_chans__2_2_has_been_sent_reg;
  assign systolic__vert_chans__2_2_valid_inv = ~__systolic__vert_chans__2_2_valid_reg;
  assign __systolic__hor_chans__1_3_valid_and_not_has_been_sent = __systolic__hor_chans__1_3_vld_buf & __systolic__hor_chans__1_3_not_has_been_sent;
  assign systolic__hor_chans__1_3_valid_load_en = systolic__hor_chans__1_3_rdy | systolic__hor_chans__1_3_valid_inv;
  assign __systolic__vert_chans__2_2_valid_and_not_has_been_sent = __systolic__hor_chans__1_3_vld_buf & __systolic__vert_chans__2_2_not_has_been_sent;
  assign systolic__vert_chans__2_2_valid_load_en = systolic__vert_chans__2_2_rdy | systolic__vert_chans__2_2_valid_inv;
  assign systolic__hor_chans__1_3_load_en = __systolic__hor_chans__1_3_valid_and_not_has_been_sent & systolic__hor_chans__1_3_valid_load_en;
  assign systolic__vert_chans__2_2_load_en = __systolic__vert_chans__2_2_valid_and_not_has_been_sent & systolic__vert_chans__2_2_valid_load_en;
  assign __systolic__hor_chans__1_3_has_sent_or_is_ready = systolic__hor_chans__1_3_load_en | __systolic__hor_chans__1_3_has_been_sent_reg;
  assign __systolic__vert_chans__2_2_has_sent_or_is_ready = systolic__vert_chans__2_2_load_en | __systolic__vert_chans__2_2_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__1_3_has_sent_or_is_ready & __systolic__vert_chans__2_2_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__1_2_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_4072 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_2_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign systolic__vert_chans__1_2_valid_inv = ~__systolic__vert_chans__1_2_valid_reg;
  assign and_4145 = ~____state_1 & p3_stage_done;
  assign and_4146 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__1_2_valid_load_en = p0_load_en | systolic__hor_chans__1_2_valid_inv;
  assign systolic__vert_chans__1_2_valid_load_en = p1_load_en | systolic__vert_chans__1_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_4072[1] & ____state_1 == one_hot_4072[0];
  assign concat_4147 = {and_4145, and_4146};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_390_1_case_1 = 1'h0;
  assign unexpand_for_next_value_390_1_case_0 = 1'h1;
  assign __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_3_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_3_valid_and_ready_txfr = __systolic__hor_chans__1_3_valid_and_not_has_been_sent & systolic__hor_chans__1_3_load_en;
  assign __systolic__vert_chans__2_2_valid_and_ready_txfr = __systolic__vert_chans__2_2_valid_and_not_has_been_sent & systolic__vert_chans__2_2_load_en;
  assign __systolic__result_chans__1_2_valid_and_all_active_outputs_ready = __systolic__result_chans__1_2_vld_buf & or_5577;
  assign __systolic__result_chans__1_2_valid_and_ready_txfr = __systolic__result_chans__1_2_valid_and_not_has_been_sent & systolic__result_chans__1_2_load_en;
  assign systolic__hor_chans__1_2_load_en = systolic__hor_chans__1_2_vld & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__vert_chans__1_2_load_en = systolic__vert_chans__1_2_vld & systolic__vert_chans__1_2_valid_load_en;
  assign or_5454 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_4148 = 32'h0000_0000 & {32{concat_4147[0]}} | new_accum & {32{concat_4147[1]}};
  assign or_4149 = and_4145 | and_4146;
  assign one_hot_sel_4154 = unexpand_for_next_value_390_1_case_1 & concat_4147[0] | unexpand_for_next_value_390_1_case_0 & concat_4147[1];
  assign __systolic__hor_chans__1_3_not_stage_load = ~__systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_3_has_been_sent_reg_load_en = __systolic__hor_chans__1_3_valid_and_ready_txfr | __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_2_has_been_sent_reg_load_en = __systolic__vert_chans__2_2_valid_and_ready_txfr | __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_2_not_stage_load = ~__systolic__result_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_2_has_been_sent_reg_load_en = __systolic__result_chans__1_2_valid_and_ready_txfr | __systolic__result_chans__1_2_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_2_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__1_2_reg : p1_b;
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
      __systolic__hor_chans__1_3_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__2_2_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__1_2_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_2_valid_reg <= 1'h0;
      __systolic__vert_chans__1_2_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_2_valid_reg <= 1'h0;
      __systolic__hor_chans__1_3_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_3_valid_reg <= 1'h0;
      __systolic__vert_chans__2_2_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_2_valid_reg <= 1'h0;
      __systolic__result_chans__1_2_reg <= 32'h0000_0000;
      __systolic__result_chans__1_2_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_4149 ? one_hot_sel_4154 : ____state_1;
      ____state_0 <= or_4149 ? one_hot_sel_4148 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__1_2_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__1_3_has_been_sent_reg <= __systolic__hor_chans__1_3_has_been_sent_reg_load_en ? __systolic__hor_chans__1_3_not_stage_load : __systolic__hor_chans__1_3_has_been_sent_reg;
      __systolic__vert_chans__2_2_has_been_sent_reg <= __systolic__vert_chans__2_2_has_been_sent_reg_load_en ? __systolic__hor_chans__1_3_not_stage_load : __systolic__vert_chans__2_2_has_been_sent_reg;
      __systolic__result_chans__1_2_has_been_sent_reg <= __systolic__result_chans__1_2_has_been_sent_reg_load_en ? __systolic__result_chans__1_2_not_stage_load : __systolic__result_chans__1_2_has_been_sent_reg;
      __systolic__hor_chans__1_2_reg <= systolic__hor_chans__1_2_load_en ? systolic__hor_chans__1_2 : __systolic__hor_chans__1_2_reg;
      __systolic__hor_chans__1_2_valid_reg <= systolic__hor_chans__1_2_valid_load_en ? systolic__hor_chans__1_2_vld : __systolic__hor_chans__1_2_valid_reg;
      __systolic__vert_chans__1_2_reg <= systolic__vert_chans__1_2_load_en ? systolic__vert_chans__1_2 : __systolic__vert_chans__1_2_reg;
      __systolic__vert_chans__1_2_valid_reg <= systolic__vert_chans__1_2_valid_load_en ? systolic__vert_chans__1_2_vld : __systolic__vert_chans__1_2_valid_reg;
      __systolic__hor_chans__1_3_reg <= systolic__hor_chans__1_3_load_en ? p1_a : __systolic__hor_chans__1_3_reg;
      __systolic__hor_chans__1_3_valid_reg <= systolic__hor_chans__1_3_valid_load_en ? __systolic__hor_chans__1_3_valid_and_not_has_been_sent : __systolic__hor_chans__1_3_valid_reg;
      __systolic__vert_chans__2_2_reg <= systolic__vert_chans__2_2_load_en ? p1_b : __systolic__vert_chans__2_2_reg;
      __systolic__vert_chans__2_2_valid_reg <= systolic__vert_chans__2_2_valid_load_en ? __systolic__vert_chans__2_2_valid_and_not_has_been_sent : __systolic__vert_chans__2_2_valid_reg;
      __systolic__result_chans__1_2_reg <= systolic__result_chans__1_2_load_en ? new_accum : __systolic__result_chans__1_2_reg;
      __systolic__result_chans__1_2_valid_reg <= systolic__result_chans__1_2_valid_load_en ? __systolic__result_chans__1_2_valid_and_not_has_been_sent : __systolic__result_chans__1_2_valid_reg;
    end
  end
  assign systolic__hor_chans__1_2_rdy = systolic__hor_chans__1_2_load_en;
  assign systolic__hor_chans__1_3 = __systolic__hor_chans__1_3_reg;
  assign systolic__hor_chans__1_3_vld = __systolic__hor_chans__1_3_valid_reg;
  assign systolic__result_chans__1_2 = __systolic__result_chans__1_2_reg;
  assign systolic__result_chans__1_2_vld = __systolic__result_chans__1_2_valid_reg;
  assign systolic__vert_chans__1_2_rdy = systolic__vert_chans__1_2_load_en;
  assign systolic__vert_chans__2_2 = __systolic__vert_chans__2_2_reg;
  assign systolic__vert_chans__2_2_vld = __systolic__vert_chans__2_2_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5454))) or_5454) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5454))) or_5454) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_6_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__2_0,
  input wire systolic__hor_chans__2_0_vld,
  input wire systolic__hor_chans__2_1_rdy,
  input wire systolic__result_chans__2_0_rdy,
  input wire [31:0] systolic__vert_chans__2_0,
  input wire systolic__vert_chans__2_0_vld,
  input wire systolic__vert_chans__3_0_rdy,
  output wire systolic__hor_chans__2_0_rdy,
  output wire [31:0] systolic__hor_chans__2_1,
  output wire systolic__hor_chans__2_1_vld,
  output wire [31:0] systolic__result_chans__2_0,
  output wire systolic__result_chans__2_0_vld,
  output wire systolic__vert_chans__2_0_rdy,
  output wire [31:0] systolic__vert_chans__3_0,
  output wire systolic__vert_chans__3_0_vld
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
  reg __systolic__hor_chans__2_1_has_been_sent_reg;
  reg __systolic__vert_chans__3_0_has_been_sent_reg;
  reg __systolic__result_chans__2_0_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__2_0_reg;
  reg __systolic__hor_chans__2_0_valid_reg;
  reg [31:0] __systolic__vert_chans__2_0_reg;
  reg __systolic__vert_chans__2_0_valid_reg;
  reg [31:0] __systolic__hor_chans__2_1_reg;
  reg __systolic__hor_chans__2_1_valid_reg;
  reg [31:0] __systolic__vert_chans__3_0_reg;
  reg __systolic__vert_chans__3_0_valid_reg;
  reg [31:0] __systolic__result_chans__2_0_reg;
  reg __systolic__result_chans__2_0_valid_reg;
  wire __systolic__result_chans__2_0_vld_buf;
  wire __systolic__result_chans__2_0_not_has_been_sent;
  wire systolic__result_chans__2_0_valid_inv;
  wire __systolic__result_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_0_valid_load_en;
  wire systolic__result_chans__2_0_load_en;
  wire or_5594;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__2_1_vld_buf;
  wire __systolic__hor_chans__2_1_not_has_been_sent;
  wire systolic__hor_chans__2_1_valid_inv;
  wire __systolic__vert_chans__3_0_not_has_been_sent;
  wire systolic__vert_chans__3_0_valid_inv;
  wire __systolic__hor_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_1_valid_load_en;
  wire __systolic__vert_chans__3_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_0_valid_load_en;
  wire systolic__hor_chans__2_1_load_en;
  wire systolic__vert_chans__3_0_load_en;
  wire __systolic__hor_chans__2_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_0_has_sent_or_is_ready;
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
  wire [2:0] one_hot_4310;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__2_0_valid_inv;
  wire systolic__vert_chans__2_0_valid_inv;
  wire and_4383;
  wire and_4384;
  wire systolic__hor_chans__2_0_valid_load_en;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4385;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_420_1_case_1;
  wire unexpand_for_next_value_420_1_case_0;
  wire __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__2_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__3_0_valid_and_ready_txfr;
  wire __systolic__result_chans__2_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__2_0_valid_and_ready_txfr;
  wire systolic__hor_chans__2_0_load_en;
  wire systolic__vert_chans__2_0_load_en;
  wire or_5458;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_4386;
  wire or_4387;
  wire one_hot_sel_4392;
  wire __systolic__hor_chans__2_1_not_stage_load;
  wire __systolic__hor_chans__2_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_0_not_stage_load;
  wire __systolic__result_chans__2_0_has_been_sent_reg_load_en;
  assign __systolic__result_chans__2_0_vld_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__2_0_not_has_been_sent = ~__systolic__result_chans__2_0_has_been_sent_reg;
  assign systolic__result_chans__2_0_valid_inv = ~__systolic__result_chans__2_0_valid_reg;
  assign __systolic__result_chans__2_0_valid_and_not_has_been_sent = __systolic__result_chans__2_0_vld_buf & __systolic__result_chans__2_0_not_has_been_sent;
  assign systolic__result_chans__2_0_valid_load_en = systolic__result_chans__2_0_rdy | systolic__result_chans__2_0_valid_inv;
  assign systolic__result_chans__2_0_load_en = __systolic__result_chans__2_0_valid_and_not_has_been_sent & systolic__result_chans__2_0_valid_load_en;
  assign or_5594 = ~____state_1 | systolic__result_chans__2_0_load_en | __systolic__result_chans__2_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_5594;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__2_1_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__2_1_not_has_been_sent = ~__systolic__hor_chans__2_1_has_been_sent_reg;
  assign systolic__hor_chans__2_1_valid_inv = ~__systolic__hor_chans__2_1_valid_reg;
  assign __systolic__vert_chans__3_0_not_has_been_sent = ~__systolic__vert_chans__3_0_has_been_sent_reg;
  assign systolic__vert_chans__3_0_valid_inv = ~__systolic__vert_chans__3_0_valid_reg;
  assign __systolic__hor_chans__2_1_valid_and_not_has_been_sent = __systolic__hor_chans__2_1_vld_buf & __systolic__hor_chans__2_1_not_has_been_sent;
  assign systolic__hor_chans__2_1_valid_load_en = systolic__hor_chans__2_1_rdy | systolic__hor_chans__2_1_valid_inv;
  assign __systolic__vert_chans__3_0_valid_and_not_has_been_sent = __systolic__hor_chans__2_1_vld_buf & __systolic__vert_chans__3_0_not_has_been_sent;
  assign systolic__vert_chans__3_0_valid_load_en = systolic__vert_chans__3_0_rdy | systolic__vert_chans__3_0_valid_inv;
  assign systolic__hor_chans__2_1_load_en = __systolic__hor_chans__2_1_valid_and_not_has_been_sent & systolic__hor_chans__2_1_valid_load_en;
  assign systolic__vert_chans__3_0_load_en = __systolic__vert_chans__3_0_valid_and_not_has_been_sent & systolic__vert_chans__3_0_valid_load_en;
  assign __systolic__hor_chans__2_1_has_sent_or_is_ready = systolic__hor_chans__2_1_load_en | __systolic__hor_chans__2_1_has_been_sent_reg;
  assign __systolic__vert_chans__3_0_has_sent_or_is_ready = systolic__vert_chans__3_0_load_en | __systolic__vert_chans__3_0_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__2_1_has_sent_or_is_ready & __systolic__vert_chans__3_0_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__2_0_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_4310 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__2_0_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__2_0_valid_inv = ~__systolic__hor_chans__2_0_valid_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign and_4383 = ~____state_1 & p3_stage_done;
  assign and_4384 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__2_0_valid_load_en = p0_load_en | systolic__hor_chans__2_0_valid_inv;
  assign systolic__vert_chans__2_0_valid_load_en = p1_load_en | systolic__vert_chans__2_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_4310[1] & ____state_1 == one_hot_4310[0];
  assign concat_4385 = {and_4383, and_4384};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_420_1_case_1 = 1'h0;
  assign unexpand_for_next_value_420_1_case_0 = 1'h1;
  assign __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__2_1_valid_and_ready_txfr = __systolic__hor_chans__2_1_valid_and_not_has_been_sent & systolic__hor_chans__2_1_load_en;
  assign __systolic__vert_chans__3_0_valid_and_ready_txfr = __systolic__vert_chans__3_0_valid_and_not_has_been_sent & systolic__vert_chans__3_0_load_en;
  assign __systolic__result_chans__2_0_valid_and_all_active_outputs_ready = __systolic__result_chans__2_0_vld_buf & or_5594;
  assign __systolic__result_chans__2_0_valid_and_ready_txfr = __systolic__result_chans__2_0_valid_and_not_has_been_sent & systolic__result_chans__2_0_load_en;
  assign systolic__hor_chans__2_0_load_en = systolic__hor_chans__2_0_vld & systolic__hor_chans__2_0_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = systolic__vert_chans__2_0_vld & systolic__vert_chans__2_0_valid_load_en;
  assign or_5458 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_4386 = 32'h0000_0000 & {32{concat_4385[0]}} | new_accum & {32{concat_4385[1]}};
  assign or_4387 = and_4383 | and_4384;
  assign one_hot_sel_4392 = unexpand_for_next_value_420_1_case_1 & concat_4385[0] | unexpand_for_next_value_420_1_case_0 & concat_4385[1];
  assign __systolic__hor_chans__2_1_not_stage_load = ~__systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_1_has_been_sent_reg_load_en = __systolic__hor_chans__2_1_valid_and_ready_txfr | __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_0_has_been_sent_reg_load_en = __systolic__vert_chans__3_0_valid_and_ready_txfr | __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_0_not_stage_load = ~__systolic__result_chans__2_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_0_has_been_sent_reg_load_en = __systolic__result_chans__2_0_valid_and_ready_txfr | __systolic__result_chans__2_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__2_0_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__2_0_reg : p1_b;
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
      __systolic__hor_chans__2_1_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__3_0_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__2_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__2_0_reg <= 32'h0000_0000;
      __systolic__hor_chans__2_0_valid_reg <= 1'h0;
      __systolic__vert_chans__2_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_0_valid_reg <= 1'h0;
      __systolic__hor_chans__2_1_reg <= 32'h0000_0000;
      __systolic__hor_chans__2_1_valid_reg <= 1'h0;
      __systolic__vert_chans__3_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__3_0_valid_reg <= 1'h0;
      __systolic__result_chans__2_0_reg <= 32'h0000_0000;
      __systolic__result_chans__2_0_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_4387 ? one_hot_sel_4392 : ____state_1;
      ____state_0 <= or_4387 ? one_hot_sel_4386 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__2_0_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__2_1_has_been_sent_reg <= __systolic__hor_chans__2_1_has_been_sent_reg_load_en ? __systolic__hor_chans__2_1_not_stage_load : __systolic__hor_chans__2_1_has_been_sent_reg;
      __systolic__vert_chans__3_0_has_been_sent_reg <= __systolic__vert_chans__3_0_has_been_sent_reg_load_en ? __systolic__hor_chans__2_1_not_stage_load : __systolic__vert_chans__3_0_has_been_sent_reg;
      __systolic__result_chans__2_0_has_been_sent_reg <= __systolic__result_chans__2_0_has_been_sent_reg_load_en ? __systolic__result_chans__2_0_not_stage_load : __systolic__result_chans__2_0_has_been_sent_reg;
      __systolic__hor_chans__2_0_reg <= systolic__hor_chans__2_0_load_en ? systolic__hor_chans__2_0 : __systolic__hor_chans__2_0_reg;
      __systolic__hor_chans__2_0_valid_reg <= systolic__hor_chans__2_0_valid_load_en ? systolic__hor_chans__2_0_vld : __systolic__hor_chans__2_0_valid_reg;
      __systolic__vert_chans__2_0_reg <= systolic__vert_chans__2_0_load_en ? systolic__vert_chans__2_0 : __systolic__vert_chans__2_0_reg;
      __systolic__vert_chans__2_0_valid_reg <= systolic__vert_chans__2_0_valid_load_en ? systolic__vert_chans__2_0_vld : __systolic__vert_chans__2_0_valid_reg;
      __systolic__hor_chans__2_1_reg <= systolic__hor_chans__2_1_load_en ? p1_a : __systolic__hor_chans__2_1_reg;
      __systolic__hor_chans__2_1_valid_reg <= systolic__hor_chans__2_1_valid_load_en ? __systolic__hor_chans__2_1_valid_and_not_has_been_sent : __systolic__hor_chans__2_1_valid_reg;
      __systolic__vert_chans__3_0_reg <= systolic__vert_chans__3_0_load_en ? p1_b : __systolic__vert_chans__3_0_reg;
      __systolic__vert_chans__3_0_valid_reg <= systolic__vert_chans__3_0_valid_load_en ? __systolic__vert_chans__3_0_valid_and_not_has_been_sent : __systolic__vert_chans__3_0_valid_reg;
      __systolic__result_chans__2_0_reg <= systolic__result_chans__2_0_load_en ? new_accum : __systolic__result_chans__2_0_reg;
      __systolic__result_chans__2_0_valid_reg <= systolic__result_chans__2_0_valid_load_en ? __systolic__result_chans__2_0_valid_and_not_has_been_sent : __systolic__result_chans__2_0_valid_reg;
    end
  end
  assign systolic__hor_chans__2_0_rdy = systolic__hor_chans__2_0_load_en;
  assign systolic__hor_chans__2_1 = __systolic__hor_chans__2_1_reg;
  assign systolic__hor_chans__2_1_vld = __systolic__hor_chans__2_1_valid_reg;
  assign systolic__result_chans__2_0 = __systolic__result_chans__2_0_reg;
  assign systolic__result_chans__2_0_vld = __systolic__result_chans__2_0_valid_reg;
  assign systolic__vert_chans__2_0_rdy = systolic__vert_chans__2_0_load_en;
  assign systolic__vert_chans__3_0 = __systolic__vert_chans__3_0_reg;
  assign systolic__vert_chans__3_0_vld = __systolic__vert_chans__3_0_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5458))) or_5458) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5458))) or_5458) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_7_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__2_1,
  input wire systolic__hor_chans__2_1_vld,
  input wire systolic__hor_chans__2_2_rdy,
  input wire systolic__result_chans__2_1_rdy,
  input wire [31:0] systolic__vert_chans__2_1,
  input wire systolic__vert_chans__2_1_vld,
  input wire systolic__vert_chans__3_1_rdy,
  output wire systolic__hor_chans__2_1_rdy,
  output wire [31:0] systolic__hor_chans__2_2,
  output wire systolic__hor_chans__2_2_vld,
  output wire [31:0] systolic__result_chans__2_1,
  output wire systolic__result_chans__2_1_vld,
  output wire systolic__vert_chans__2_1_rdy,
  output wire [31:0] systolic__vert_chans__3_1,
  output wire systolic__vert_chans__3_1_vld
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
  reg __systolic__hor_chans__2_2_has_been_sent_reg;
  reg __systolic__vert_chans__3_1_has_been_sent_reg;
  reg __systolic__result_chans__2_1_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__2_1_reg;
  reg __systolic__hor_chans__2_1_valid_reg;
  reg [31:0] __systolic__vert_chans__2_1_reg;
  reg __systolic__vert_chans__2_1_valid_reg;
  reg [31:0] __systolic__hor_chans__2_2_reg;
  reg __systolic__hor_chans__2_2_valid_reg;
  reg [31:0] __systolic__vert_chans__3_1_reg;
  reg __systolic__vert_chans__3_1_valid_reg;
  reg [31:0] __systolic__result_chans__2_1_reg;
  reg __systolic__result_chans__2_1_valid_reg;
  wire __systolic__result_chans__2_1_vld_buf;
  wire __systolic__result_chans__2_1_not_has_been_sent;
  wire systolic__result_chans__2_1_valid_inv;
  wire __systolic__result_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_1_valid_load_en;
  wire systolic__result_chans__2_1_load_en;
  wire or_5611;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__2_2_vld_buf;
  wire __systolic__hor_chans__2_2_not_has_been_sent;
  wire systolic__hor_chans__2_2_valid_inv;
  wire __systolic__vert_chans__3_1_not_has_been_sent;
  wire systolic__vert_chans__3_1_valid_inv;
  wire __systolic__hor_chans__2_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_2_valid_load_en;
  wire __systolic__vert_chans__3_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_1_valid_load_en;
  wire systolic__hor_chans__2_2_load_en;
  wire systolic__vert_chans__3_1_load_en;
  wire __systolic__hor_chans__2_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_1_has_sent_or_is_ready;
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
  wire [2:0] one_hot_4548;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__2_1_valid_inv;
  wire systolic__vert_chans__2_1_valid_inv;
  wire and_4621;
  wire and_4622;
  wire systolic__hor_chans__2_1_valid_load_en;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4623;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_450_1_case_1;
  wire unexpand_for_next_value_450_1_case_0;
  wire __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__2_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__3_1_valid_and_ready_txfr;
  wire __systolic__result_chans__2_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__2_1_valid_and_ready_txfr;
  wire systolic__hor_chans__2_1_load_en;
  wire systolic__vert_chans__2_1_load_en;
  wire or_5462;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_4624;
  wire or_4625;
  wire one_hot_sel_4630;
  wire __systolic__hor_chans__2_2_not_stage_load;
  wire __systolic__hor_chans__2_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_1_not_stage_load;
  wire __systolic__result_chans__2_1_has_been_sent_reg_load_en;
  assign __systolic__result_chans__2_1_vld_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__2_1_not_has_been_sent = ~__systolic__result_chans__2_1_has_been_sent_reg;
  assign systolic__result_chans__2_1_valid_inv = ~__systolic__result_chans__2_1_valid_reg;
  assign __systolic__result_chans__2_1_valid_and_not_has_been_sent = __systolic__result_chans__2_1_vld_buf & __systolic__result_chans__2_1_not_has_been_sent;
  assign systolic__result_chans__2_1_valid_load_en = systolic__result_chans__2_1_rdy | systolic__result_chans__2_1_valid_inv;
  assign systolic__result_chans__2_1_load_en = __systolic__result_chans__2_1_valid_and_not_has_been_sent & systolic__result_chans__2_1_valid_load_en;
  assign or_5611 = ~____state_1 | systolic__result_chans__2_1_load_en | __systolic__result_chans__2_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_5611;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__2_2_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__2_2_not_has_been_sent = ~__systolic__hor_chans__2_2_has_been_sent_reg;
  assign systolic__hor_chans__2_2_valid_inv = ~__systolic__hor_chans__2_2_valid_reg;
  assign __systolic__vert_chans__3_1_not_has_been_sent = ~__systolic__vert_chans__3_1_has_been_sent_reg;
  assign systolic__vert_chans__3_1_valid_inv = ~__systolic__vert_chans__3_1_valid_reg;
  assign __systolic__hor_chans__2_2_valid_and_not_has_been_sent = __systolic__hor_chans__2_2_vld_buf & __systolic__hor_chans__2_2_not_has_been_sent;
  assign systolic__hor_chans__2_2_valid_load_en = systolic__hor_chans__2_2_rdy | systolic__hor_chans__2_2_valid_inv;
  assign __systolic__vert_chans__3_1_valid_and_not_has_been_sent = __systolic__hor_chans__2_2_vld_buf & __systolic__vert_chans__3_1_not_has_been_sent;
  assign systolic__vert_chans__3_1_valid_load_en = systolic__vert_chans__3_1_rdy | systolic__vert_chans__3_1_valid_inv;
  assign systolic__hor_chans__2_2_load_en = __systolic__hor_chans__2_2_valid_and_not_has_been_sent & systolic__hor_chans__2_2_valid_load_en;
  assign systolic__vert_chans__3_1_load_en = __systolic__vert_chans__3_1_valid_and_not_has_been_sent & systolic__vert_chans__3_1_valid_load_en;
  assign __systolic__hor_chans__2_2_has_sent_or_is_ready = systolic__hor_chans__2_2_load_en | __systolic__hor_chans__2_2_has_been_sent_reg;
  assign __systolic__vert_chans__3_1_has_sent_or_is_ready = systolic__vert_chans__3_1_load_en | __systolic__vert_chans__3_1_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__2_2_has_sent_or_is_ready & __systolic__vert_chans__3_1_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__2_1_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_4548 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__2_1_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__2_1_valid_inv = ~__systolic__hor_chans__2_1_valid_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign and_4621 = ~____state_1 & p3_stage_done;
  assign and_4622 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__2_1_valid_load_en = p0_load_en | systolic__hor_chans__2_1_valid_inv;
  assign systolic__vert_chans__2_1_valid_load_en = p1_load_en | systolic__vert_chans__2_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_4548[1] & ____state_1 == one_hot_4548[0];
  assign concat_4623 = {and_4621, and_4622};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_450_1_case_1 = 1'h0;
  assign unexpand_for_next_value_450_1_case_0 = 1'h1;
  assign __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__2_2_valid_and_ready_txfr = __systolic__hor_chans__2_2_valid_and_not_has_been_sent & systolic__hor_chans__2_2_load_en;
  assign __systolic__vert_chans__3_1_valid_and_ready_txfr = __systolic__vert_chans__3_1_valid_and_not_has_been_sent & systolic__vert_chans__3_1_load_en;
  assign __systolic__result_chans__2_1_valid_and_all_active_outputs_ready = __systolic__result_chans__2_1_vld_buf & or_5611;
  assign __systolic__result_chans__2_1_valid_and_ready_txfr = __systolic__result_chans__2_1_valid_and_not_has_been_sent & systolic__result_chans__2_1_load_en;
  assign systolic__hor_chans__2_1_load_en = systolic__hor_chans__2_1_vld & systolic__hor_chans__2_1_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = systolic__vert_chans__2_1_vld & systolic__vert_chans__2_1_valid_load_en;
  assign or_5462 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_4624 = 32'h0000_0000 & {32{concat_4623[0]}} | new_accum & {32{concat_4623[1]}};
  assign or_4625 = and_4621 | and_4622;
  assign one_hot_sel_4630 = unexpand_for_next_value_450_1_case_1 & concat_4623[0] | unexpand_for_next_value_450_1_case_0 & concat_4623[1];
  assign __systolic__hor_chans__2_2_not_stage_load = ~__systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_2_has_been_sent_reg_load_en = __systolic__hor_chans__2_2_valid_and_ready_txfr | __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_1_has_been_sent_reg_load_en = __systolic__vert_chans__3_1_valid_and_ready_txfr | __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_1_not_stage_load = ~__systolic__result_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_1_has_been_sent_reg_load_en = __systolic__result_chans__2_1_valid_and_ready_txfr | __systolic__result_chans__2_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__2_1_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__2_1_reg : p1_b;
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
      __systolic__hor_chans__2_2_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__3_1_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__2_1_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__2_1_reg <= 32'h0000_0000;
      __systolic__hor_chans__2_1_valid_reg <= 1'h0;
      __systolic__vert_chans__2_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_1_valid_reg <= 1'h0;
      __systolic__hor_chans__2_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__2_2_valid_reg <= 1'h0;
      __systolic__vert_chans__3_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__3_1_valid_reg <= 1'h0;
      __systolic__result_chans__2_1_reg <= 32'h0000_0000;
      __systolic__result_chans__2_1_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_4625 ? one_hot_sel_4630 : ____state_1;
      ____state_0 <= or_4625 ? one_hot_sel_4624 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__2_1_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__2_2_has_been_sent_reg <= __systolic__hor_chans__2_2_has_been_sent_reg_load_en ? __systolic__hor_chans__2_2_not_stage_load : __systolic__hor_chans__2_2_has_been_sent_reg;
      __systolic__vert_chans__3_1_has_been_sent_reg <= __systolic__vert_chans__3_1_has_been_sent_reg_load_en ? __systolic__hor_chans__2_2_not_stage_load : __systolic__vert_chans__3_1_has_been_sent_reg;
      __systolic__result_chans__2_1_has_been_sent_reg <= __systolic__result_chans__2_1_has_been_sent_reg_load_en ? __systolic__result_chans__2_1_not_stage_load : __systolic__result_chans__2_1_has_been_sent_reg;
      __systolic__hor_chans__2_1_reg <= systolic__hor_chans__2_1_load_en ? systolic__hor_chans__2_1 : __systolic__hor_chans__2_1_reg;
      __systolic__hor_chans__2_1_valid_reg <= systolic__hor_chans__2_1_valid_load_en ? systolic__hor_chans__2_1_vld : __systolic__hor_chans__2_1_valid_reg;
      __systolic__vert_chans__2_1_reg <= systolic__vert_chans__2_1_load_en ? systolic__vert_chans__2_1 : __systolic__vert_chans__2_1_reg;
      __systolic__vert_chans__2_1_valid_reg <= systolic__vert_chans__2_1_valid_load_en ? systolic__vert_chans__2_1_vld : __systolic__vert_chans__2_1_valid_reg;
      __systolic__hor_chans__2_2_reg <= systolic__hor_chans__2_2_load_en ? p1_a : __systolic__hor_chans__2_2_reg;
      __systolic__hor_chans__2_2_valid_reg <= systolic__hor_chans__2_2_valid_load_en ? __systolic__hor_chans__2_2_valid_and_not_has_been_sent : __systolic__hor_chans__2_2_valid_reg;
      __systolic__vert_chans__3_1_reg <= systolic__vert_chans__3_1_load_en ? p1_b : __systolic__vert_chans__3_1_reg;
      __systolic__vert_chans__3_1_valid_reg <= systolic__vert_chans__3_1_valid_load_en ? __systolic__vert_chans__3_1_valid_and_not_has_been_sent : __systolic__vert_chans__3_1_valid_reg;
      __systolic__result_chans__2_1_reg <= systolic__result_chans__2_1_load_en ? new_accum : __systolic__result_chans__2_1_reg;
      __systolic__result_chans__2_1_valid_reg <= systolic__result_chans__2_1_valid_load_en ? __systolic__result_chans__2_1_valid_and_not_has_been_sent : __systolic__result_chans__2_1_valid_reg;
    end
  end
  assign systolic__hor_chans__2_1_rdy = systolic__hor_chans__2_1_load_en;
  assign systolic__hor_chans__2_2 = __systolic__hor_chans__2_2_reg;
  assign systolic__hor_chans__2_2_vld = __systolic__hor_chans__2_2_valid_reg;
  assign systolic__result_chans__2_1 = __systolic__result_chans__2_1_reg;
  assign systolic__result_chans__2_1_vld = __systolic__result_chans__2_1_valid_reg;
  assign systolic__vert_chans__2_1_rdy = systolic__vert_chans__2_1_load_en;
  assign systolic__vert_chans__3_1 = __systolic__vert_chans__3_1_reg;
  assign systolic__vert_chans__3_1_vld = __systolic__vert_chans__3_1_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5462))) or_5462) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5462))) or_5462) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_8_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__2_2,
  input wire systolic__hor_chans__2_2_vld,
  input wire systolic__hor_chans__2_3_rdy,
  input wire systolic__result_chans__2_2_rdy,
  input wire [31:0] systolic__vert_chans__2_2,
  input wire systolic__vert_chans__2_2_vld,
  input wire systolic__vert_chans__3_2_rdy,
  output wire systolic__hor_chans__2_2_rdy,
  output wire [31:0] systolic__hor_chans__2_3,
  output wire systolic__hor_chans__2_3_vld,
  output wire [31:0] systolic__result_chans__2_2,
  output wire systolic__result_chans__2_2_vld,
  output wire systolic__vert_chans__2_2_rdy,
  output wire [31:0] systolic__vert_chans__3_2,
  output wire systolic__vert_chans__3_2_vld
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
  reg __systolic__hor_chans__2_3_has_been_sent_reg;
  reg __systolic__vert_chans__3_2_has_been_sent_reg;
  reg __systolic__result_chans__2_2_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__2_2_reg;
  reg __systolic__hor_chans__2_2_valid_reg;
  reg [31:0] __systolic__vert_chans__2_2_reg;
  reg __systolic__vert_chans__2_2_valid_reg;
  reg [31:0] __systolic__hor_chans__2_3_reg;
  reg __systolic__hor_chans__2_3_valid_reg;
  reg [31:0] __systolic__vert_chans__3_2_reg;
  reg __systolic__vert_chans__3_2_valid_reg;
  reg [31:0] __systolic__result_chans__2_2_reg;
  reg __systolic__result_chans__2_2_valid_reg;
  wire __systolic__result_chans__2_2_vld_buf;
  wire __systolic__result_chans__2_2_not_has_been_sent;
  wire systolic__result_chans__2_2_valid_inv;
  wire __systolic__result_chans__2_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_2_valid_load_en;
  wire systolic__result_chans__2_2_load_en;
  wire or_5628;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__2_3_vld_buf;
  wire __systolic__hor_chans__2_3_not_has_been_sent;
  wire systolic__hor_chans__2_3_valid_inv;
  wire __systolic__vert_chans__3_2_not_has_been_sent;
  wire systolic__vert_chans__3_2_valid_inv;
  wire __systolic__hor_chans__2_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_3_valid_load_en;
  wire __systolic__vert_chans__3_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_2_valid_load_en;
  wire systolic__hor_chans__2_3_load_en;
  wire systolic__vert_chans__3_2_load_en;
  wire __systolic__hor_chans__2_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_2_has_sent_or_is_ready;
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
  wire [2:0] one_hot_4786;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__2_2_valid_inv;
  wire systolic__vert_chans__2_2_valid_inv;
  wire and_4859;
  wire and_4860;
  wire systolic__hor_chans__2_2_valid_load_en;
  wire systolic__vert_chans__2_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4861;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_480_1_case_1;
  wire unexpand_for_next_value_480_1_case_0;
  wire __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__2_3_valid_and_ready_txfr;
  wire __systolic__vert_chans__3_2_valid_and_ready_txfr;
  wire __systolic__result_chans__2_2_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__2_2_valid_and_ready_txfr;
  wire systolic__hor_chans__2_2_load_en;
  wire systolic__vert_chans__2_2_load_en;
  wire or_5466;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_4862;
  wire or_4863;
  wire one_hot_sel_4868;
  wire __systolic__hor_chans__2_3_not_stage_load;
  wire __systolic__hor_chans__2_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_2_not_stage_load;
  wire __systolic__result_chans__2_2_has_been_sent_reg_load_en;
  assign __systolic__result_chans__2_2_vld_buf = p2_valid & ____state_1;
  assign __systolic__result_chans__2_2_not_has_been_sent = ~__systolic__result_chans__2_2_has_been_sent_reg;
  assign systolic__result_chans__2_2_valid_inv = ~__systolic__result_chans__2_2_valid_reg;
  assign __systolic__result_chans__2_2_valid_and_not_has_been_sent = __systolic__result_chans__2_2_vld_buf & __systolic__result_chans__2_2_not_has_been_sent;
  assign systolic__result_chans__2_2_valid_load_en = systolic__result_chans__2_2_rdy | systolic__result_chans__2_2_valid_inv;
  assign systolic__result_chans__2_2_load_en = __systolic__result_chans__2_2_valid_and_not_has_been_sent & systolic__result_chans__2_2_valid_load_en;
  assign or_5628 = ~____state_1 | systolic__result_chans__2_2_load_en | __systolic__result_chans__2_2_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_5628;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__2_3_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__2_3_not_has_been_sent = ~__systolic__hor_chans__2_3_has_been_sent_reg;
  assign systolic__hor_chans__2_3_valid_inv = ~__systolic__hor_chans__2_3_valid_reg;
  assign __systolic__vert_chans__3_2_not_has_been_sent = ~__systolic__vert_chans__3_2_has_been_sent_reg;
  assign systolic__vert_chans__3_2_valid_inv = ~__systolic__vert_chans__3_2_valid_reg;
  assign __systolic__hor_chans__2_3_valid_and_not_has_been_sent = __systolic__hor_chans__2_3_vld_buf & __systolic__hor_chans__2_3_not_has_been_sent;
  assign systolic__hor_chans__2_3_valid_load_en = systolic__hor_chans__2_3_rdy | systolic__hor_chans__2_3_valid_inv;
  assign __systolic__vert_chans__3_2_valid_and_not_has_been_sent = __systolic__hor_chans__2_3_vld_buf & __systolic__vert_chans__3_2_not_has_been_sent;
  assign systolic__vert_chans__3_2_valid_load_en = systolic__vert_chans__3_2_rdy | systolic__vert_chans__3_2_valid_inv;
  assign systolic__hor_chans__2_3_load_en = __systolic__hor_chans__2_3_valid_and_not_has_been_sent & systolic__hor_chans__2_3_valid_load_en;
  assign systolic__vert_chans__3_2_load_en = __systolic__vert_chans__3_2_valid_and_not_has_been_sent & systolic__vert_chans__3_2_valid_load_en;
  assign __systolic__hor_chans__2_3_has_sent_or_is_ready = systolic__hor_chans__2_3_load_en | __systolic__hor_chans__2_3_has_been_sent_reg;
  assign __systolic__vert_chans__3_2_has_sent_or_is_ready = systolic__vert_chans__3_2_load_en | __systolic__vert_chans__3_2_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__2_3_has_sent_or_is_ready & __systolic__vert_chans__3_2_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__2_2_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_4786 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__2_2_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__2_2_valid_inv = ~__systolic__hor_chans__2_2_valid_reg;
  assign systolic__vert_chans__2_2_valid_inv = ~__systolic__vert_chans__2_2_valid_reg;
  assign and_4859 = ~____state_1 & p3_stage_done;
  assign and_4860 = ____state_1 & p3_stage_done;
  assign systolic__hor_chans__2_2_valid_load_en = p0_load_en | systolic__hor_chans__2_2_valid_inv;
  assign systolic__vert_chans__2_2_valid_load_en = p1_load_en | systolic__vert_chans__2_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_4786[1] & ____state_1 == one_hot_4786[0];
  assign concat_4861 = {and_4859, and_4860};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_480_1_case_1 = 1'h0;
  assign unexpand_for_next_value_480_1_case_0 = 1'h1;
  assign __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_3_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__2_3_valid_and_ready_txfr = __systolic__hor_chans__2_3_valid_and_not_has_been_sent & systolic__hor_chans__2_3_load_en;
  assign __systolic__vert_chans__3_2_valid_and_ready_txfr = __systolic__vert_chans__3_2_valid_and_not_has_been_sent & systolic__vert_chans__3_2_load_en;
  assign __systolic__result_chans__2_2_valid_and_all_active_outputs_ready = __systolic__result_chans__2_2_vld_buf & or_5628;
  assign __systolic__result_chans__2_2_valid_and_ready_txfr = __systolic__result_chans__2_2_valid_and_not_has_been_sent & systolic__result_chans__2_2_load_en;
  assign systolic__hor_chans__2_2_load_en = systolic__hor_chans__2_2_vld & systolic__hor_chans__2_2_valid_load_en;
  assign systolic__vert_chans__2_2_load_en = systolic__vert_chans__2_2_vld & systolic__vert_chans__2_2_valid_load_en;
  assign or_5466 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_4862 = 32'h0000_0000 & {32{concat_4861[0]}} | new_accum & {32{concat_4861[1]}};
  assign or_4863 = and_4859 | and_4860;
  assign one_hot_sel_4868 = unexpand_for_next_value_480_1_case_1 & concat_4861[0] | unexpand_for_next_value_480_1_case_0 & concat_4861[1];
  assign __systolic__hor_chans__2_3_not_stage_load = ~__systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_3_has_been_sent_reg_load_en = __systolic__hor_chans__2_3_valid_and_ready_txfr | __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_2_has_been_sent_reg_load_en = __systolic__vert_chans__3_2_valid_and_ready_txfr | __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_2_not_stage_load = ~__systolic__result_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_2_has_been_sent_reg_load_en = __systolic__result_chans__2_2_valid_and_ready_txfr | __systolic__result_chans__2_2_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__2_2_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__2_2_reg : p1_b;
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
      __systolic__hor_chans__2_3_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__3_2_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__2_2_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__2_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__2_2_valid_reg <= 1'h0;
      __systolic__vert_chans__2_2_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_2_valid_reg <= 1'h0;
      __systolic__hor_chans__2_3_reg <= 32'h0000_0000;
      __systolic__hor_chans__2_3_valid_reg <= 1'h0;
      __systolic__vert_chans__3_2_reg <= 32'h0000_0000;
      __systolic__vert_chans__3_2_valid_reg <= 1'h0;
      __systolic__result_chans__2_2_reg <= 32'h0000_0000;
      __systolic__result_chans__2_2_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_4863 ? one_hot_sel_4868 : ____state_1;
      ____state_0 <= or_4863 ? one_hot_sel_4862 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__2_2_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__2_3_has_been_sent_reg <= __systolic__hor_chans__2_3_has_been_sent_reg_load_en ? __systolic__hor_chans__2_3_not_stage_load : __systolic__hor_chans__2_3_has_been_sent_reg;
      __systolic__vert_chans__3_2_has_been_sent_reg <= __systolic__vert_chans__3_2_has_been_sent_reg_load_en ? __systolic__hor_chans__2_3_not_stage_load : __systolic__vert_chans__3_2_has_been_sent_reg;
      __systolic__result_chans__2_2_has_been_sent_reg <= __systolic__result_chans__2_2_has_been_sent_reg_load_en ? __systolic__result_chans__2_2_not_stage_load : __systolic__result_chans__2_2_has_been_sent_reg;
      __systolic__hor_chans__2_2_reg <= systolic__hor_chans__2_2_load_en ? systolic__hor_chans__2_2 : __systolic__hor_chans__2_2_reg;
      __systolic__hor_chans__2_2_valid_reg <= systolic__hor_chans__2_2_valid_load_en ? systolic__hor_chans__2_2_vld : __systolic__hor_chans__2_2_valid_reg;
      __systolic__vert_chans__2_2_reg <= systolic__vert_chans__2_2_load_en ? systolic__vert_chans__2_2 : __systolic__vert_chans__2_2_reg;
      __systolic__vert_chans__2_2_valid_reg <= systolic__vert_chans__2_2_valid_load_en ? systolic__vert_chans__2_2_vld : __systolic__vert_chans__2_2_valid_reg;
      __systolic__hor_chans__2_3_reg <= systolic__hor_chans__2_3_load_en ? p1_a : __systolic__hor_chans__2_3_reg;
      __systolic__hor_chans__2_3_valid_reg <= systolic__hor_chans__2_3_valid_load_en ? __systolic__hor_chans__2_3_valid_and_not_has_been_sent : __systolic__hor_chans__2_3_valid_reg;
      __systolic__vert_chans__3_2_reg <= systolic__vert_chans__3_2_load_en ? p1_b : __systolic__vert_chans__3_2_reg;
      __systolic__vert_chans__3_2_valid_reg <= systolic__vert_chans__3_2_valid_load_en ? __systolic__vert_chans__3_2_valid_and_not_has_been_sent : __systolic__vert_chans__3_2_valid_reg;
      __systolic__result_chans__2_2_reg <= systolic__result_chans__2_2_load_en ? new_accum : __systolic__result_chans__2_2_reg;
      __systolic__result_chans__2_2_valid_reg <= systolic__result_chans__2_2_valid_load_en ? __systolic__result_chans__2_2_valid_and_not_has_been_sent : __systolic__result_chans__2_2_valid_reg;
    end
  end
  assign systolic__hor_chans__2_2_rdy = systolic__hor_chans__2_2_load_en;
  assign systolic__hor_chans__2_3 = __systolic__hor_chans__2_3_reg;
  assign systolic__hor_chans__2_3_vld = __systolic__hor_chans__2_3_valid_reg;
  assign systolic__result_chans__2_2 = __systolic__result_chans__2_2_reg;
  assign systolic__result_chans__2_2_vld = __systolic__result_chans__2_2_valid_reg;
  assign systolic__vert_chans__2_2_rdy = systolic__vert_chans__2_2_load_en;
  assign systolic__vert_chans__3_2 = __systolic__vert_chans__3_2_reg;
  assign systolic__vert_chans__3_2_vld = __systolic__vert_chans__3_2_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5466))) or_5466) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_5466))) or_5466) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray_0_next(
  input wire clk,
  input wire rst,
  input wire [191:0] systolic__arg0,
  input wire systolic__arg0_vld,
  input wire [191:0] systolic__arg1,
  input wire systolic__arg1_vld,
  input wire systolic__out0_rdy,
  output wire systolic__arg0_rdy,
  output wire systolic__arg1_rdy,
  output wire [287:0] systolic__out0,
  output wire systolic__out0_vld
);
  wire [31:0] systolic__arg0_unflattened[3][2];
  assign systolic__arg0_unflattened[0][0] = systolic__arg0[31:0];
  assign systolic__arg0_unflattened[0][1] = systolic__arg0[63:32];
  assign systolic__arg0_unflattened[1][0] = systolic__arg0[95:64];
  assign systolic__arg0_unflattened[1][1] = systolic__arg0[127:96];
  assign systolic__arg0_unflattened[2][0] = systolic__arg0[159:128];
  assign systolic__arg0_unflattened[2][1] = systolic__arg0[191:160];
  wire [31:0] systolic__arg1_unflattened[2][3];
  assign systolic__arg1_unflattened[0][0] = systolic__arg1[31:0];
  assign systolic__arg1_unflattened[0][1] = systolic__arg1[63:32];
  assign systolic__arg1_unflattened[0][2] = systolic__arg1[95:64];
  assign systolic__arg1_unflattened[1][0] = systolic__arg1[127:96];
  assign systolic__arg1_unflattened[1][1] = systolic__arg1[159:128];
  assign systolic__arg1_unflattened[1][2] = systolic__arg1[191:160];
  wire instantiation_output_4980;
  wire instantiation_output_4986;
  wire [31:0] instantiation_output_4991;
  wire instantiation_output_4992;
  wire instantiation_output_5038;
  wire [31:0] instantiation_output_5043;
  wire instantiation_output_5044;
  wire instantiation_output_5090;
  wire [31:0] instantiation_output_5095;
  wire instantiation_output_5096;
  wire instantiation_output_5142;
  wire [31:0] instantiation_output_5146[3][3];
  wire instantiation_output_5147;
  wire instantiation_output_5161;
  wire instantiation_output_5174;
  wire instantiation_output_5187;
  wire instantiation_output_5200;
  wire instantiation_output_5213;
  wire instantiation_output_5226;
  wire instantiation_output_5239;
  wire instantiation_output_5252;
  wire instantiation_output_5265;
  wire [31:0] instantiation_output_5270;
  wire instantiation_output_5271;
  wire [31:0] instantiation_output_5283;
  wire instantiation_output_5284;
  wire [31:0] instantiation_output_5296;
  wire instantiation_output_5297;
  wire instantiation_output_5395;
  wire instantiation_output_5408;
  wire instantiation_output_5421;
  wire instantiation_output_4999;
  wire [31:0] instantiation_output_5004;
  wire instantiation_output_5005;
  wire [31:0] instantiation_output_5153;
  wire instantiation_output_5154;
  wire instantiation_output_5278;
  wire [31:0] instantiation_output_5309;
  wire instantiation_output_5310;
  wire instantiation_output_5012;
  wire [31:0] instantiation_output_5017;
  wire instantiation_output_5018;
  wire [31:0] instantiation_output_5166;
  wire instantiation_output_5167;
  wire instantiation_output_5291;
  wire [31:0] instantiation_output_5322;
  wire instantiation_output_5323;
  wire instantiation_output_5025;
  wire [31:0] instantiation_output_5030;
  wire instantiation_output_5031;
  wire [31:0] instantiation_output_5179;
  wire instantiation_output_5180;
  wire instantiation_output_5304;
  wire [31:0] instantiation_output_5335;
  wire instantiation_output_5336;
  wire instantiation_output_5051;
  wire [31:0] instantiation_output_5056;
  wire instantiation_output_5057;
  wire [31:0] instantiation_output_5192;
  wire instantiation_output_5193;
  wire instantiation_output_5317;
  wire [31:0] instantiation_output_5348;
  wire instantiation_output_5349;
  wire instantiation_output_5064;
  wire [31:0] instantiation_output_5069;
  wire instantiation_output_5070;
  wire [31:0] instantiation_output_5205;
  wire instantiation_output_5206;
  wire instantiation_output_5330;
  wire [31:0] instantiation_output_5361;
  wire instantiation_output_5362;
  wire instantiation_output_5077;
  wire [31:0] instantiation_output_5082;
  wire instantiation_output_5083;
  wire [31:0] instantiation_output_5218;
  wire instantiation_output_5219;
  wire instantiation_output_5343;
  wire [31:0] instantiation_output_5374;
  wire instantiation_output_5375;
  wire instantiation_output_5103;
  wire [31:0] instantiation_output_5108;
  wire instantiation_output_5109;
  wire [31:0] instantiation_output_5231;
  wire instantiation_output_5232;
  wire instantiation_output_5356;
  wire [31:0] instantiation_output_5387;
  wire instantiation_output_5388;
  wire instantiation_output_5116;
  wire [31:0] instantiation_output_5121;
  wire instantiation_output_5122;
  wire [31:0] instantiation_output_5244;
  wire instantiation_output_5245;
  wire instantiation_output_5369;
  wire [31:0] instantiation_output_5400;
  wire instantiation_output_5401;
  wire instantiation_output_5129;
  wire [31:0] instantiation_output_5134;
  wire instantiation_output_5135;
  wire [31:0] instantiation_output_5257;
  wire instantiation_output_5258;
  wire instantiation_output_5382;
  wire [31:0] instantiation_output_5413;
  wire instantiation_output_5414;
  wire instantiation_output_4993;
  wire [31:0] instantiation_output_4997;
  wire instantiation_output_4998;
  wire instantiation_output_5006;
  wire [31:0] instantiation_output_5010;
  wire instantiation_output_5011;
  wire instantiation_output_5019;
  wire [31:0] instantiation_output_5023;
  wire instantiation_output_5024;
  wire instantiation_output_5032;
  wire [31:0] instantiation_output_5036;
  wire instantiation_output_5037;
  wire instantiation_output_5045;
  wire [31:0] instantiation_output_5049;
  wire instantiation_output_5050;
  wire instantiation_output_5058;
  wire [31:0] instantiation_output_5062;
  wire instantiation_output_5063;
  wire instantiation_output_5071;
  wire [31:0] instantiation_output_5075;
  wire instantiation_output_5076;
  wire instantiation_output_5084;
  wire [31:0] instantiation_output_5088;
  wire instantiation_output_5089;
  wire instantiation_output_5097;
  wire [31:0] instantiation_output_5101;
  wire instantiation_output_5102;
  wire instantiation_output_5110;
  wire [31:0] instantiation_output_5114;
  wire instantiation_output_5115;
  wire instantiation_output_5123;
  wire [31:0] instantiation_output_5127;
  wire instantiation_output_5128;
  wire instantiation_output_5136;
  wire [31:0] instantiation_output_5140;
  wire instantiation_output_5141;
  wire instantiation_output_5155;
  wire [31:0] instantiation_output_5159;
  wire instantiation_output_5160;
  wire instantiation_output_5168;
  wire [31:0] instantiation_output_5172;
  wire instantiation_output_5173;
  wire instantiation_output_5181;
  wire [31:0] instantiation_output_5185;
  wire instantiation_output_5186;
  wire instantiation_output_5194;
  wire [31:0] instantiation_output_5198;
  wire instantiation_output_5199;
  wire instantiation_output_5207;
  wire [31:0] instantiation_output_5211;
  wire instantiation_output_5212;
  wire instantiation_output_5220;
  wire [31:0] instantiation_output_5224;
  wire instantiation_output_5225;
  wire instantiation_output_5233;
  wire [31:0] instantiation_output_5237;
  wire instantiation_output_5238;
  wire instantiation_output_5246;
  wire [31:0] instantiation_output_5250;
  wire instantiation_output_5251;
  wire instantiation_output_5259;
  wire [31:0] instantiation_output_5263;
  wire instantiation_output_5264;
  wire instantiation_output_5272;
  wire [31:0] instantiation_output_5276;
  wire instantiation_output_5277;
  wire instantiation_output_5285;
  wire [31:0] instantiation_output_5289;
  wire instantiation_output_5290;
  wire instantiation_output_5298;
  wire [31:0] instantiation_output_5302;
  wire instantiation_output_5303;
  wire instantiation_output_5311;
  wire [31:0] instantiation_output_5315;
  wire instantiation_output_5316;
  wire instantiation_output_5324;
  wire [31:0] instantiation_output_5328;
  wire instantiation_output_5329;
  wire instantiation_output_5337;
  wire [31:0] instantiation_output_5341;
  wire instantiation_output_5342;
  wire instantiation_output_5350;
  wire [31:0] instantiation_output_5354;
  wire instantiation_output_5355;
  wire instantiation_output_5363;
  wire [31:0] instantiation_output_5367;
  wire instantiation_output_5368;
  wire instantiation_output_5376;
  wire [31:0] instantiation_output_5380;
  wire instantiation_output_5381;
  wire instantiation_output_5389;
  wire [31:0] instantiation_output_5393;
  wire instantiation_output_5394;
  wire instantiation_output_5402;
  wire [31:0] instantiation_output_5406;
  wire instantiation_output_5407;
  wire instantiation_output_5415;
  wire [31:0] instantiation_output_5419;
  wire instantiation_output_5420;

  // ===== Instantiations
  __systolic__SystolicArray_0_next__1 __systolic__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .systolic__arg0({{systolic__arg0_unflattened[2][1], systolic__arg0_unflattened[2][0]}, {systolic__arg0_unflattened[1][1], systolic__arg0_unflattened[1][0]}, {systolic__arg0_unflattened[0][1], systolic__arg0_unflattened[0][0]}}),
    .systolic__arg0_vld(systolic__arg0_vld),
    .systolic__arg1({{systolic__arg1_unflattened[1][2], systolic__arg1_unflattened[1][1], systolic__arg1_unflattened[1][0]}, {systolic__arg1_unflattened[0][2], systolic__arg1_unflattened[0][1], systolic__arg1_unflattened[0][0]}}),
    .systolic__arg1_vld(systolic__arg1_vld),
    .systolic__hor_chans__0_0_rdy(instantiation_output_4993),
    .systolic__hor_chans__0_3(instantiation_output_5036),
    .systolic__hor_chans__0_3_vld(instantiation_output_5037),
    .systolic__hor_chans__1_0_rdy(instantiation_output_5045),
    .systolic__hor_chans__1_3(instantiation_output_5088),
    .systolic__hor_chans__1_3_vld(instantiation_output_5089),
    .systolic__hor_chans__2_0_rdy(instantiation_output_5097),
    .systolic__hor_chans__2_3(instantiation_output_5140),
    .systolic__hor_chans__2_3_vld(instantiation_output_5141),
    .systolic__out0_rdy(systolic__out0_rdy),
    .systolic__result_chans__0_0(instantiation_output_5159),
    .systolic__result_chans__0_0_vld(instantiation_output_5160),
    .systolic__result_chans__0_1(instantiation_output_5172),
    .systolic__result_chans__0_1_vld(instantiation_output_5173),
    .systolic__result_chans__0_2(instantiation_output_5185),
    .systolic__result_chans__0_2_vld(instantiation_output_5186),
    .systolic__result_chans__1_0(instantiation_output_5198),
    .systolic__result_chans__1_0_vld(instantiation_output_5199),
    .systolic__result_chans__1_1(instantiation_output_5211),
    .systolic__result_chans__1_1_vld(instantiation_output_5212),
    .systolic__result_chans__1_2(instantiation_output_5224),
    .systolic__result_chans__1_2_vld(instantiation_output_5225),
    .systolic__result_chans__2_0(instantiation_output_5237),
    .systolic__result_chans__2_0_vld(instantiation_output_5238),
    .systolic__result_chans__2_1(instantiation_output_5250),
    .systolic__result_chans__2_1_vld(instantiation_output_5251),
    .systolic__result_chans__2_2(instantiation_output_5263),
    .systolic__result_chans__2_2_vld(instantiation_output_5264),
    .systolic__vert_chans__0_0_rdy(instantiation_output_5272),
    .systolic__vert_chans__0_1_rdy(instantiation_output_5285),
    .systolic__vert_chans__0_2_rdy(instantiation_output_5298),
    .systolic__vert_chans__3_0(instantiation_output_5393),
    .systolic__vert_chans__3_0_vld(instantiation_output_5394),
    .systolic__vert_chans__3_1(instantiation_output_5406),
    .systolic__vert_chans__3_1_vld(instantiation_output_5407),
    .systolic__vert_chans__3_2(instantiation_output_5419),
    .systolic__vert_chans__3_2_vld(instantiation_output_5420),
    .systolic__arg0_rdy(instantiation_output_4980),
    .systolic__arg1_rdy(instantiation_output_4986),
    .systolic__hor_chans__0_0(instantiation_output_4991),
    .systolic__hor_chans__0_0_vld(instantiation_output_4992),
    .systolic__hor_chans__0_3_rdy(instantiation_output_5038),
    .systolic__hor_chans__1_0(instantiation_output_5043),
    .systolic__hor_chans__1_0_vld(instantiation_output_5044),
    .systolic__hor_chans__1_3_rdy(instantiation_output_5090),
    .systolic__hor_chans__2_0(instantiation_output_5095),
    .systolic__hor_chans__2_0_vld(instantiation_output_5096),
    .systolic__hor_chans__2_3_rdy(instantiation_output_5142),
    .systolic__out0({{instantiation_output_5146[2][2], instantiation_output_5146[2][1], instantiation_output_5146[2][0]}, {instantiation_output_5146[1][2], instantiation_output_5146[1][1], instantiation_output_5146[1][0]}, {instantiation_output_5146[0][2], instantiation_output_5146[0][1], instantiation_output_5146[0][0]}}),
    .systolic__out0_vld(instantiation_output_5147),
    .systolic__result_chans__0_0_rdy(instantiation_output_5161),
    .systolic__result_chans__0_1_rdy(instantiation_output_5174),
    .systolic__result_chans__0_2_rdy(instantiation_output_5187),
    .systolic__result_chans__1_0_rdy(instantiation_output_5200),
    .systolic__result_chans__1_1_rdy(instantiation_output_5213),
    .systolic__result_chans__1_2_rdy(instantiation_output_5226),
    .systolic__result_chans__2_0_rdy(instantiation_output_5239),
    .systolic__result_chans__2_1_rdy(instantiation_output_5252),
    .systolic__result_chans__2_2_rdy(instantiation_output_5265),
    .systolic__vert_chans__0_0(instantiation_output_5270),
    .systolic__vert_chans__0_0_vld(instantiation_output_5271),
    .systolic__vert_chans__0_1(instantiation_output_5283),
    .systolic__vert_chans__0_1_vld(instantiation_output_5284),
    .systolic__vert_chans__0_2(instantiation_output_5296),
    .systolic__vert_chans__0_2_vld(instantiation_output_5297),
    .systolic__vert_chans__3_0_rdy(instantiation_output_5395),
    .systolic__vert_chans__3_1_rdy(instantiation_output_5408),
    .systolic__vert_chans__3_2_rdy(instantiation_output_5421),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_0_next __systolic__SystolicArray__PE_0_next_inst1 (
    .rst(rst),
    .systolic__hor_chans__0_0(instantiation_output_4997),
    .systolic__hor_chans__0_0_vld(instantiation_output_4998),
    .systolic__hor_chans__0_1_rdy(instantiation_output_5006),
    .systolic__result_chans__0_0_rdy(instantiation_output_5155),
    .systolic__vert_chans__0_0(instantiation_output_5276),
    .systolic__vert_chans__0_0_vld(instantiation_output_5277),
    .systolic__vert_chans__1_0_rdy(instantiation_output_5311),
    .systolic__hor_chans__0_0_rdy(instantiation_output_4999),
    .systolic__hor_chans__0_1(instantiation_output_5004),
    .systolic__hor_chans__0_1_vld(instantiation_output_5005),
    .systolic__result_chans__0_0(instantiation_output_5153),
    .systolic__result_chans__0_0_vld(instantiation_output_5154),
    .systolic__vert_chans__0_0_rdy(instantiation_output_5278),
    .systolic__vert_chans__1_0(instantiation_output_5309),
    .systolic__vert_chans__1_0_vld(instantiation_output_5310),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_1_next __systolic__SystolicArray__PE_1_next_inst2 (
    .rst(rst),
    .systolic__hor_chans__0_1(instantiation_output_5010),
    .systolic__hor_chans__0_1_vld(instantiation_output_5011),
    .systolic__hor_chans__0_2_rdy(instantiation_output_5019),
    .systolic__result_chans__0_1_rdy(instantiation_output_5168),
    .systolic__vert_chans__0_1(instantiation_output_5289),
    .systolic__vert_chans__0_1_vld(instantiation_output_5290),
    .systolic__vert_chans__1_1_rdy(instantiation_output_5324),
    .systolic__hor_chans__0_1_rdy(instantiation_output_5012),
    .systolic__hor_chans__0_2(instantiation_output_5017),
    .systolic__hor_chans__0_2_vld(instantiation_output_5018),
    .systolic__result_chans__0_1(instantiation_output_5166),
    .systolic__result_chans__0_1_vld(instantiation_output_5167),
    .systolic__vert_chans__0_1_rdy(instantiation_output_5291),
    .systolic__vert_chans__1_1(instantiation_output_5322),
    .systolic__vert_chans__1_1_vld(instantiation_output_5323),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_2_next __systolic__SystolicArray__PE_2_next_inst3 (
    .rst(rst),
    .systolic__hor_chans__0_2(instantiation_output_5023),
    .systolic__hor_chans__0_2_vld(instantiation_output_5024),
    .systolic__hor_chans__0_3_rdy(instantiation_output_5032),
    .systolic__result_chans__0_2_rdy(instantiation_output_5181),
    .systolic__vert_chans__0_2(instantiation_output_5302),
    .systolic__vert_chans__0_2_vld(instantiation_output_5303),
    .systolic__vert_chans__1_2_rdy(instantiation_output_5337),
    .systolic__hor_chans__0_2_rdy(instantiation_output_5025),
    .systolic__hor_chans__0_3(instantiation_output_5030),
    .systolic__hor_chans__0_3_vld(instantiation_output_5031),
    .systolic__result_chans__0_2(instantiation_output_5179),
    .systolic__result_chans__0_2_vld(instantiation_output_5180),
    .systolic__vert_chans__0_2_rdy(instantiation_output_5304),
    .systolic__vert_chans__1_2(instantiation_output_5335),
    .systolic__vert_chans__1_2_vld(instantiation_output_5336),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_3_next __systolic__SystolicArray__PE_3_next_inst4 (
    .rst(rst),
    .systolic__hor_chans__1_0(instantiation_output_5049),
    .systolic__hor_chans__1_0_vld(instantiation_output_5050),
    .systolic__hor_chans__1_1_rdy(instantiation_output_5058),
    .systolic__result_chans__1_0_rdy(instantiation_output_5194),
    .systolic__vert_chans__1_0(instantiation_output_5315),
    .systolic__vert_chans__1_0_vld(instantiation_output_5316),
    .systolic__vert_chans__2_0_rdy(instantiation_output_5350),
    .systolic__hor_chans__1_0_rdy(instantiation_output_5051),
    .systolic__hor_chans__1_1(instantiation_output_5056),
    .systolic__hor_chans__1_1_vld(instantiation_output_5057),
    .systolic__result_chans__1_0(instantiation_output_5192),
    .systolic__result_chans__1_0_vld(instantiation_output_5193),
    .systolic__vert_chans__1_0_rdy(instantiation_output_5317),
    .systolic__vert_chans__2_0(instantiation_output_5348),
    .systolic__vert_chans__2_0_vld(instantiation_output_5349),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_4_next __systolic__SystolicArray__PE_4_next_inst5 (
    .rst(rst),
    .systolic__hor_chans__1_1(instantiation_output_5062),
    .systolic__hor_chans__1_1_vld(instantiation_output_5063),
    .systolic__hor_chans__1_2_rdy(instantiation_output_5071),
    .systolic__result_chans__1_1_rdy(instantiation_output_5207),
    .systolic__vert_chans__1_1(instantiation_output_5328),
    .systolic__vert_chans__1_1_vld(instantiation_output_5329),
    .systolic__vert_chans__2_1_rdy(instantiation_output_5363),
    .systolic__hor_chans__1_1_rdy(instantiation_output_5064),
    .systolic__hor_chans__1_2(instantiation_output_5069),
    .systolic__hor_chans__1_2_vld(instantiation_output_5070),
    .systolic__result_chans__1_1(instantiation_output_5205),
    .systolic__result_chans__1_1_vld(instantiation_output_5206),
    .systolic__vert_chans__1_1_rdy(instantiation_output_5330),
    .systolic__vert_chans__2_1(instantiation_output_5361),
    .systolic__vert_chans__2_1_vld(instantiation_output_5362),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_5_next __systolic__SystolicArray__PE_5_next_inst6 (
    .rst(rst),
    .systolic__hor_chans__1_2(instantiation_output_5075),
    .systolic__hor_chans__1_2_vld(instantiation_output_5076),
    .systolic__hor_chans__1_3_rdy(instantiation_output_5084),
    .systolic__result_chans__1_2_rdy(instantiation_output_5220),
    .systolic__vert_chans__1_2(instantiation_output_5341),
    .systolic__vert_chans__1_2_vld(instantiation_output_5342),
    .systolic__vert_chans__2_2_rdy(instantiation_output_5376),
    .systolic__hor_chans__1_2_rdy(instantiation_output_5077),
    .systolic__hor_chans__1_3(instantiation_output_5082),
    .systolic__hor_chans__1_3_vld(instantiation_output_5083),
    .systolic__result_chans__1_2(instantiation_output_5218),
    .systolic__result_chans__1_2_vld(instantiation_output_5219),
    .systolic__vert_chans__1_2_rdy(instantiation_output_5343),
    .systolic__vert_chans__2_2(instantiation_output_5374),
    .systolic__vert_chans__2_2_vld(instantiation_output_5375),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_6_next __systolic__SystolicArray__PE_6_next_inst7 (
    .rst(rst),
    .systolic__hor_chans__2_0(instantiation_output_5101),
    .systolic__hor_chans__2_0_vld(instantiation_output_5102),
    .systolic__hor_chans__2_1_rdy(instantiation_output_5110),
    .systolic__result_chans__2_0_rdy(instantiation_output_5233),
    .systolic__vert_chans__2_0(instantiation_output_5354),
    .systolic__vert_chans__2_0_vld(instantiation_output_5355),
    .systolic__vert_chans__3_0_rdy(instantiation_output_5389),
    .systolic__hor_chans__2_0_rdy(instantiation_output_5103),
    .systolic__hor_chans__2_1(instantiation_output_5108),
    .systolic__hor_chans__2_1_vld(instantiation_output_5109),
    .systolic__result_chans__2_0(instantiation_output_5231),
    .systolic__result_chans__2_0_vld(instantiation_output_5232),
    .systolic__vert_chans__2_0_rdy(instantiation_output_5356),
    .systolic__vert_chans__3_0(instantiation_output_5387),
    .systolic__vert_chans__3_0_vld(instantiation_output_5388),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_7_next __systolic__SystolicArray__PE_7_next_inst8 (
    .rst(rst),
    .systolic__hor_chans__2_1(instantiation_output_5114),
    .systolic__hor_chans__2_1_vld(instantiation_output_5115),
    .systolic__hor_chans__2_2_rdy(instantiation_output_5123),
    .systolic__result_chans__2_1_rdy(instantiation_output_5246),
    .systolic__vert_chans__2_1(instantiation_output_5367),
    .systolic__vert_chans__2_1_vld(instantiation_output_5368),
    .systolic__vert_chans__3_1_rdy(instantiation_output_5402),
    .systolic__hor_chans__2_1_rdy(instantiation_output_5116),
    .systolic__hor_chans__2_2(instantiation_output_5121),
    .systolic__hor_chans__2_2_vld(instantiation_output_5122),
    .systolic__result_chans__2_1(instantiation_output_5244),
    .systolic__result_chans__2_1_vld(instantiation_output_5245),
    .systolic__vert_chans__2_1_rdy(instantiation_output_5369),
    .systolic__vert_chans__3_1(instantiation_output_5400),
    .systolic__vert_chans__3_1_vld(instantiation_output_5401),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_8_next __systolic__SystolicArray__PE_8_next_inst9 (
    .rst(rst),
    .systolic__hor_chans__2_2(instantiation_output_5127),
    .systolic__hor_chans__2_2_vld(instantiation_output_5128),
    .systolic__hor_chans__2_3_rdy(instantiation_output_5136),
    .systolic__result_chans__2_2_rdy(instantiation_output_5259),
    .systolic__vert_chans__2_2(instantiation_output_5380),
    .systolic__vert_chans__2_2_vld(instantiation_output_5381),
    .systolic__vert_chans__3_2_rdy(instantiation_output_5415),
    .systolic__hor_chans__2_2_rdy(instantiation_output_5129),
    .systolic__hor_chans__2_3(instantiation_output_5134),
    .systolic__hor_chans__2_3_vld(instantiation_output_5135),
    .systolic__result_chans__2_2(instantiation_output_5257),
    .systolic__result_chans__2_2_vld(instantiation_output_5258),
    .systolic__vert_chans__2_2_rdy(instantiation_output_5382),
    .systolic__vert_chans__3_2(instantiation_output_5413),
    .systolic__vert_chans__3_2_vld(instantiation_output_5414),
    .clk(clk)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__0_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_4991),
    .push_valid(instantiation_output_4992),
    .pop_ready(instantiation_output_4999),
    .push_ready(instantiation_output_4993),
    .pop_data(instantiation_output_4997),
    .pop_valid(instantiation_output_4998)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__0_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5004),
    .push_valid(instantiation_output_5005),
    .pop_ready(instantiation_output_5012),
    .push_ready(instantiation_output_5006),
    .pop_data(instantiation_output_5010),
    .pop_valid(instantiation_output_5011)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__0_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5017),
    .push_valid(instantiation_output_5018),
    .pop_ready(instantiation_output_5025),
    .push_ready(instantiation_output_5019),
    .pop_data(instantiation_output_5023),
    .pop_valid(instantiation_output_5024)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__0_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5030),
    .push_valid(instantiation_output_5031),
    .pop_ready(instantiation_output_5038),
    .push_ready(instantiation_output_5032),
    .pop_data(instantiation_output_5036),
    .pop_valid(instantiation_output_5037)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__1_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5043),
    .push_valid(instantiation_output_5044),
    .pop_ready(instantiation_output_5051),
    .push_ready(instantiation_output_5045),
    .pop_data(instantiation_output_5049),
    .pop_valid(instantiation_output_5050)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__1_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5056),
    .push_valid(instantiation_output_5057),
    .pop_ready(instantiation_output_5064),
    .push_ready(instantiation_output_5058),
    .pop_data(instantiation_output_5062),
    .pop_valid(instantiation_output_5063)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__1_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5069),
    .push_valid(instantiation_output_5070),
    .pop_ready(instantiation_output_5077),
    .push_ready(instantiation_output_5071),
    .pop_data(instantiation_output_5075),
    .pop_valid(instantiation_output_5076)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__1_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5082),
    .push_valid(instantiation_output_5083),
    .pop_ready(instantiation_output_5090),
    .push_ready(instantiation_output_5084),
    .pop_data(instantiation_output_5088),
    .pop_valid(instantiation_output_5089)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__2_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5095),
    .push_valid(instantiation_output_5096),
    .pop_ready(instantiation_output_5103),
    .push_ready(instantiation_output_5097),
    .pop_data(instantiation_output_5101),
    .pop_valid(instantiation_output_5102)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__2_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5108),
    .push_valid(instantiation_output_5109),
    .pop_ready(instantiation_output_5116),
    .push_ready(instantiation_output_5110),
    .pop_data(instantiation_output_5114),
    .pop_valid(instantiation_output_5115)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__2_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5121),
    .push_valid(instantiation_output_5122),
    .pop_ready(instantiation_output_5129),
    .push_ready(instantiation_output_5123),
    .pop_data(instantiation_output_5127),
    .pop_valid(instantiation_output_5128)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__2_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5134),
    .push_valid(instantiation_output_5135),
    .pop_ready(instantiation_output_5142),
    .push_ready(instantiation_output_5136),
    .pop_data(instantiation_output_5140),
    .pop_valid(instantiation_output_5141)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__0_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5153),
    .push_valid(instantiation_output_5154),
    .pop_ready(instantiation_output_5161),
    .push_ready(instantiation_output_5155),
    .pop_data(instantiation_output_5159),
    .pop_valid(instantiation_output_5160)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__0_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5166),
    .push_valid(instantiation_output_5167),
    .pop_ready(instantiation_output_5174),
    .push_ready(instantiation_output_5168),
    .pop_data(instantiation_output_5172),
    .pop_valid(instantiation_output_5173)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__0_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5179),
    .push_valid(instantiation_output_5180),
    .pop_ready(instantiation_output_5187),
    .push_ready(instantiation_output_5181),
    .pop_data(instantiation_output_5185),
    .pop_valid(instantiation_output_5186)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__1_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5192),
    .push_valid(instantiation_output_5193),
    .pop_ready(instantiation_output_5200),
    .push_ready(instantiation_output_5194),
    .pop_data(instantiation_output_5198),
    .pop_valid(instantiation_output_5199)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__1_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5205),
    .push_valid(instantiation_output_5206),
    .pop_ready(instantiation_output_5213),
    .push_ready(instantiation_output_5207),
    .pop_data(instantiation_output_5211),
    .pop_valid(instantiation_output_5212)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__1_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5218),
    .push_valid(instantiation_output_5219),
    .pop_ready(instantiation_output_5226),
    .push_ready(instantiation_output_5220),
    .pop_data(instantiation_output_5224),
    .pop_valid(instantiation_output_5225)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__2_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5231),
    .push_valid(instantiation_output_5232),
    .pop_ready(instantiation_output_5239),
    .push_ready(instantiation_output_5233),
    .pop_data(instantiation_output_5237),
    .pop_valid(instantiation_output_5238)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__2_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5244),
    .push_valid(instantiation_output_5245),
    .pop_ready(instantiation_output_5252),
    .push_ready(instantiation_output_5246),
    .pop_data(instantiation_output_5250),
    .pop_valid(instantiation_output_5251)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__2_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5257),
    .push_valid(instantiation_output_5258),
    .pop_ready(instantiation_output_5265),
    .push_ready(instantiation_output_5259),
    .pop_data(instantiation_output_5263),
    .pop_valid(instantiation_output_5264)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__0_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5270),
    .push_valid(instantiation_output_5271),
    .pop_ready(instantiation_output_5278),
    .push_ready(instantiation_output_5272),
    .pop_data(instantiation_output_5276),
    .pop_valid(instantiation_output_5277)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__0_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5283),
    .push_valid(instantiation_output_5284),
    .pop_ready(instantiation_output_5291),
    .push_ready(instantiation_output_5285),
    .pop_data(instantiation_output_5289),
    .pop_valid(instantiation_output_5290)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__0_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5296),
    .push_valid(instantiation_output_5297),
    .pop_ready(instantiation_output_5304),
    .push_ready(instantiation_output_5298),
    .pop_data(instantiation_output_5302),
    .pop_valid(instantiation_output_5303)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__1_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5309),
    .push_valid(instantiation_output_5310),
    .pop_ready(instantiation_output_5317),
    .push_ready(instantiation_output_5311),
    .pop_data(instantiation_output_5315),
    .pop_valid(instantiation_output_5316)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__1_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5322),
    .push_valid(instantiation_output_5323),
    .pop_ready(instantiation_output_5330),
    .push_ready(instantiation_output_5324),
    .pop_data(instantiation_output_5328),
    .pop_valid(instantiation_output_5329)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__1_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5335),
    .push_valid(instantiation_output_5336),
    .pop_ready(instantiation_output_5343),
    .push_ready(instantiation_output_5337),
    .pop_data(instantiation_output_5341),
    .pop_valid(instantiation_output_5342)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__2_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5348),
    .push_valid(instantiation_output_5349),
    .pop_ready(instantiation_output_5356),
    .push_ready(instantiation_output_5350),
    .pop_data(instantiation_output_5354),
    .pop_valid(instantiation_output_5355)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__2_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5361),
    .push_valid(instantiation_output_5362),
    .pop_ready(instantiation_output_5369),
    .push_ready(instantiation_output_5363),
    .pop_data(instantiation_output_5367),
    .pop_valid(instantiation_output_5368)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__2_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5374),
    .push_valid(instantiation_output_5375),
    .pop_ready(instantiation_output_5382),
    .push_ready(instantiation_output_5376),
    .pop_data(instantiation_output_5380),
    .pop_valid(instantiation_output_5381)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__3_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5387),
    .push_valid(instantiation_output_5388),
    .pop_ready(instantiation_output_5395),
    .push_ready(instantiation_output_5389),
    .pop_data(instantiation_output_5393),
    .pop_valid(instantiation_output_5394)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__3_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5400),
    .push_valid(instantiation_output_5401),
    .pop_ready(instantiation_output_5408),
    .push_ready(instantiation_output_5402),
    .pop_data(instantiation_output_5406),
    .pop_valid(instantiation_output_5407)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__3_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_5413),
    .push_valid(instantiation_output_5414),
    .pop_ready(instantiation_output_5421),
    .push_ready(instantiation_output_5415),
    .pop_data(instantiation_output_5419),
    .pop_valid(instantiation_output_5420)
  );
  assign systolic__arg0_rdy = instantiation_output_4980;
  assign systolic__arg1_rdy = instantiation_output_4986;
  assign systolic__out0 = {{instantiation_output_5146[2][2], instantiation_output_5146[2][1], instantiation_output_5146[2][0]}, {instantiation_output_5146[1][2], instantiation_output_5146[1][1], instantiation_output_5146[1][0]}, {instantiation_output_5146[0][2], instantiation_output_5146[0][1], instantiation_output_5146[0][0]}};
  assign systolic__out0_vld = instantiation_output_5147;
endmodule
