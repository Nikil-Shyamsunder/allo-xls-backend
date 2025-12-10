module __xls_concrete_2x2_k2__SystolicArray_0_next__1(
  input wire clk,
  input wire rst,
  input wire [127:0] xls_concrete_2x2_k2__arg0,
  input wire xls_concrete_2x2_k2__arg0_vld,
  input wire [127:0] xls_concrete_2x2_k2__arg1,
  input wire xls_concrete_2x2_k2__arg1_vld,
  input wire xls_concrete_2x2_k2__hor_chans__0_0_rdy,
  input wire [31:0] xls_concrete_2x2_k2__hor_chans__0_2,
  input wire xls_concrete_2x2_k2__hor_chans__0_2_vld,
  input wire xls_concrete_2x2_k2__hor_chans__1_0_rdy,
  input wire [31:0] xls_concrete_2x2_k2__hor_chans__1_2,
  input wire xls_concrete_2x2_k2__hor_chans__1_2_vld,
  input wire xls_concrete_2x2_k2__out0_rdy,
  input wire [31:0] xls_concrete_2x2_k2__result_chans__0_0,
  input wire xls_concrete_2x2_k2__result_chans__0_0_vld,
  input wire [31:0] xls_concrete_2x2_k2__result_chans__0_1,
  input wire xls_concrete_2x2_k2__result_chans__0_1_vld,
  input wire [31:0] xls_concrete_2x2_k2__result_chans__1_0,
  input wire xls_concrete_2x2_k2__result_chans__1_0_vld,
  input wire [31:0] xls_concrete_2x2_k2__result_chans__1_1,
  input wire xls_concrete_2x2_k2__result_chans__1_1_vld,
  input wire xls_concrete_2x2_k2__vert_chans__0_0_rdy,
  input wire xls_concrete_2x2_k2__vert_chans__0_1_rdy,
  input wire [31:0] xls_concrete_2x2_k2__vert_chans__2_0,
  input wire xls_concrete_2x2_k2__vert_chans__2_0_vld,
  input wire [31:0] xls_concrete_2x2_k2__vert_chans__2_1,
  input wire xls_concrete_2x2_k2__vert_chans__2_1_vld,
  output wire xls_concrete_2x2_k2__arg0_rdy,
  output wire xls_concrete_2x2_k2__arg1_rdy,
  output wire [31:0] xls_concrete_2x2_k2__hor_chans__0_0,
  output wire xls_concrete_2x2_k2__hor_chans__0_0_vld,
  output wire xls_concrete_2x2_k2__hor_chans__0_2_rdy,
  output wire [31:0] xls_concrete_2x2_k2__hor_chans__1_0,
  output wire xls_concrete_2x2_k2__hor_chans__1_0_vld,
  output wire xls_concrete_2x2_k2__hor_chans__1_2_rdy,
  output wire [127:0] xls_concrete_2x2_k2__out0,
  output wire xls_concrete_2x2_k2__out0_vld,
  output wire xls_concrete_2x2_k2__result_chans__0_0_rdy,
  output wire xls_concrete_2x2_k2__result_chans__0_1_rdy,
  output wire xls_concrete_2x2_k2__result_chans__1_0_rdy,
  output wire xls_concrete_2x2_k2__result_chans__1_1_rdy,
  output wire [31:0] xls_concrete_2x2_k2__vert_chans__0_0,
  output wire xls_concrete_2x2_k2__vert_chans__0_0_vld,
  output wire [31:0] xls_concrete_2x2_k2__vert_chans__0_1,
  output wire xls_concrete_2x2_k2__vert_chans__0_1_vld,
  output wire xls_concrete_2x2_k2__vert_chans__2_0_rdy,
  output wire xls_concrete_2x2_k2__vert_chans__2_1_rdy
);
  wire [31:0] __xls_concrete_2x2_k2__arg0_reg_init[2][2];
  assign __xls_concrete_2x2_k2__arg0_reg_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] __xls_concrete_2x2_k2__arg1_reg_init[2][2];
  assign __xls_concrete_2x2_k2__arg1_reg_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] __xls_concrete_2x2_k2__out0_reg_init[2][2];
  assign __xls_concrete_2x2_k2__out0_reg_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_1438[2][2];
  assign literal_1438 = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_1442[2][2];
  assign literal_1442 = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] xls_concrete_2x2_k2__arg0_unflattened[2][2];
  assign xls_concrete_2x2_k2__arg0_unflattened[0][0] = xls_concrete_2x2_k2__arg0[31:0];
  assign xls_concrete_2x2_k2__arg0_unflattened[0][1] = xls_concrete_2x2_k2__arg0[63:32];
  assign xls_concrete_2x2_k2__arg0_unflattened[1][0] = xls_concrete_2x2_k2__arg0[95:64];
  assign xls_concrete_2x2_k2__arg0_unflattened[1][1] = xls_concrete_2x2_k2__arg0[127:96];
  wire [31:0] xls_concrete_2x2_k2__arg1_unflattened[2][2];
  assign xls_concrete_2x2_k2__arg1_unflattened[0][0] = xls_concrete_2x2_k2__arg1[31:0];
  assign xls_concrete_2x2_k2__arg1_unflattened[0][1] = xls_concrete_2x2_k2__arg1[63:32];
  assign xls_concrete_2x2_k2__arg1_unflattened[1][0] = xls_concrete_2x2_k2__arg1[95:64];
  assign xls_concrete_2x2_k2__arg1_unflattened[1][1] = xls_concrete_2x2_k2__arg1[127:96];
  reg [1:0] ____state_2;
  reg [31:0] ____state_0_0_1;
  reg [31:0] ____state_1_1_0;
  reg [31:0] ____state_0_1_1;
  reg [31:0] ____state_1_1_1;
  reg [31:0] ____state_0_0_0;
  reg [31:0] ____state_0_1_0;
  reg [31:0] ____state_1_0_0;
  reg [31:0] ____state_1_0_1;
  reg p0_eq_1473;
  reg p0_valid;
  reg __xls_concrete_2x2_k2__hor_chans__0_0_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__vert_chans__0_0_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__hor_chans__1_0_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__vert_chans__0_1_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__out0_has_been_sent_reg;
  reg [31:0] __xls_concrete_2x2_k2__arg0_reg[2][2];
  reg __xls_concrete_2x2_k2__arg0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__arg1_reg[2][2];
  reg __xls_concrete_2x2_k2__arg1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__0_2_reg;
  reg __xls_concrete_2x2_k2__hor_chans__0_2_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__1_2_reg;
  reg __xls_concrete_2x2_k2__hor_chans__1_2_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__2_0_reg;
  reg __xls_concrete_2x2_k2__vert_chans__2_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__2_1_reg;
  reg __xls_concrete_2x2_k2__vert_chans__2_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__result_chans__0_0_reg;
  reg __xls_concrete_2x2_k2__result_chans__0_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__result_chans__0_1_reg;
  reg __xls_concrete_2x2_k2__result_chans__0_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__result_chans__1_0_reg;
  reg __xls_concrete_2x2_k2__result_chans__1_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__result_chans__1_1_reg;
  reg __xls_concrete_2x2_k2__result_chans__1_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__0_0_reg;
  reg __xls_concrete_2x2_k2__hor_chans__0_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__0_0_reg;
  reg __xls_concrete_2x2_k2__vert_chans__0_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__1_0_reg;
  reg __xls_concrete_2x2_k2__hor_chans__1_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__0_1_reg;
  reg __xls_concrete_2x2_k2__vert_chans__0_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__out0_reg[2][2];
  reg __xls_concrete_2x2_k2__out0_valid_reg;
  wire p1_all_active_inputs_valid;
  wire __xls_concrete_2x2_k2__out0_vld_buf;
  wire __xls_concrete_2x2_k2__out0_not_has_been_sent;
  wire xls_concrete_2x2_k2__out0_valid_inv;
  wire xls_concrete_2x2_k2__hor_chans__0_0_not_pred;
  wire __xls_concrete_2x2_k2__out0_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__out0_valid_load_en;
  wire nor_1436;
  wire xls_concrete_2x2_k2__out0_load_en;
  wire xls_concrete_2x2_k2__arg0_not_pred;
  wire or_2857;
  wire p1_stage_done;
  wire p1_not_valid;
  wire p0_all_active_inputs_valid;
  wire p0_enable;
  wire __xls_concrete_2x2_k2__hor_chans__0_0_vld_buf;
  wire __xls_concrete_2x2_k2__hor_chans__0_0_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__0_0_valid_inv;
  wire __xls_concrete_2x2_k2__vert_chans__0_0_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__0_0_valid_inv;
  wire __xls_concrete_2x2_k2__hor_chans__1_0_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__1_0_valid_inv;
  wire __xls_concrete_2x2_k2__vert_chans__0_1_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__0_1_valid_inv;
  wire __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__0_0_valid_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__0_0_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__0_0_valid_load_en;
  wire __xls_concrete_2x2_k2__hor_chans__1_0_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__1_0_valid_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__0_1_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__0_1_valid_load_en;
  wire xls_concrete_2x2_k2__hor_chans__0_0_load_en;
  wire xls_concrete_2x2_k2__vert_chans__0_0_load_en;
  wire xls_concrete_2x2_k2__hor_chans__1_0_load_en;
  wire xls_concrete_2x2_k2__vert_chans__0_1_load_en;
  wire eq_1473;
  wire p0_all_active_outputs_ready;
  wire [1:0] ____state_2__next_value_predicates;
  wire p0_stage_done;
  wire [2:0] one_hot_1476;
  wire p0_data_enable;
  wire [31:0] xls_concrete_2x2_k2__arg0_select[2][2];
  wire [31:0] xls_concrete_2x2_k2__arg1_select[2][2];
  wire and_1625;
  wire xls_concrete_2x2_k2__arg0_valid_inv;
  wire xls_concrete_2x2_k2__arg1_valid_inv;
  wire xls_concrete_2x2_k2__hor_chans__0_2_valid_inv;
  wire xls_concrete_2x2_k2__hor_chans__1_2_valid_inv;
  wire and_1627;
  wire xls_concrete_2x2_k2__result_chans__0_0_valid_inv;
  wire xls_concrete_2x2_k2__result_chans__0_1_valid_inv;
  wire xls_concrete_2x2_k2__result_chans__1_0_valid_inv;
  wire xls_concrete_2x2_k2__result_chans__1_1_valid_inv;
  wire xls_concrete_2x2_k2__vert_chans__2_0_valid_inv;
  wire xls_concrete_2x2_k2__vert_chans__2_1_valid_inv;
  wire [31:0] array_index_1451;
  wire [31:0] array_index_1460;
  wire [31:0] array_index_1453;
  wire [31:0] array_index_1463;
  wire and_1614;
  wire and_1615;
  wire [31:0] xls_concrete_2x2_k2__result_chans__0_0_select;
  wire [31:0] xls_concrete_2x2_k2__result_chans__0_1_select;
  wire [31:0] xls_concrete_2x2_k2__result_chans__1_0_select;
  wire [31:0] xls_concrete_2x2_k2__result_chans__1_1_select;
  wire xls_concrete_2x2_k2__arg0_valid_load_en;
  wire xls_concrete_2x2_k2__arg1_valid_load_en;
  wire xls_concrete_2x2_k2__hor_chans__0_2_valid_load_en;
  wire xls_concrete_2x2_k2__hor_chans__1_2_valid_load_en;
  wire xls_concrete_2x2_k2__result_chans__0_0_valid_load_en;
  wire xls_concrete_2x2_k2__result_chans__0_1_valid_load_en;
  wire xls_concrete_2x2_k2__result_chans__1_0_valid_load_en;
  wire xls_concrete_2x2_k2__result_chans__1_1_valid_load_en;
  wire xls_concrete_2x2_k2__vert_chans__2_0_valid_load_en;
  wire xls_concrete_2x2_k2__vert_chans__2_1_valid_load_en;
  wire ____state_2__at_most_one_next_value;
  wire [31:0] sign_ext_1488;
  wire [1:0] concat_1616;
  wire [1:0] unexpand_for_next_value_147_2__4_case_1;
  wire [1:0] unexpand_for_next_value_147_2__4_case_0;
  wire __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_all_active_outputs_ready;
  wire __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__vert_chans__0_0_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__hor_chans__1_0_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__vert_chans__0_1_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__out0_valid_and_all_active_outputs_ready;
  wire __xls_concrete_2x2_k2__out0_valid_and_ready_txfr;
  wire [31:0] array_1561[2];
  wire [31:0] array_1562[2];
  wire xls_concrete_2x2_k2__arg0_load_en;
  wire xls_concrete_2x2_k2__arg1_load_en;
  wire xls_concrete_2x2_k2__hor_chans__0_2_load_en;
  wire xls_concrete_2x2_k2__hor_chans__1_2_load_en;
  wire xls_concrete_2x2_k2__result_chans__0_0_load_en;
  wire xls_concrete_2x2_k2__result_chans__0_1_load_en;
  wire xls_concrete_2x2_k2__result_chans__1_0_load_en;
  wire xls_concrete_2x2_k2__result_chans__1_1_load_en;
  wire xls_concrete_2x2_k2__vert_chans__2_0_load_en;
  wire xls_concrete_2x2_k2__vert_chans__2_1_load_en;
  wire or_2835;
  wire [31:0] and_1498;
  wire [31:0] and_1499;
  wire [31:0] and_1500;
  wire [31:0] and_1501;
  wire [31:0] and_1502;
  wire [31:0] and_1503;
  wire [31:0] and_1504;
  wire [31:0] and_1505;
  wire [1:0] one_hot_sel_1617;
  wire or_1618;
  wire __xls_concrete_2x2_k2__hor_chans__0_0_not_stage_load;
  wire __xls_concrete_2x2_k2__hor_chans__0_0_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__0_0_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__hor_chans__1_0_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__0_1_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__out0_not_stage_load;
  wire __xls_concrete_2x2_k2__out0_has_been_sent_reg_load_en;
  wire [31:0] __xls_concrete_2x2_k2__hor_chans__0_0_buf;
  wire [31:0] __xls_concrete_2x2_k2__vert_chans__0_0_buf;
  wire [31:0] __xls_concrete_2x2_k2__hor_chans__1_0_buf;
  wire [31:0] __xls_concrete_2x2_k2__vert_chans__0_1_buf;
  wire [31:0] c[2][2];
  assign p1_all_active_inputs_valid = (~p0_eq_1473 | __xls_concrete_2x2_k2__result_chans__0_0_valid_reg) & (~p0_eq_1473 | __xls_concrete_2x2_k2__result_chans__0_1_valid_reg) & (~p0_eq_1473 | __xls_concrete_2x2_k2__result_chans__1_0_valid_reg) & (~p0_eq_1473 | __xls_concrete_2x2_k2__result_chans__1_1_valid_reg);
  assign __xls_concrete_2x2_k2__out0_vld_buf = p1_all_active_inputs_valid & p0_valid & p0_eq_1473;
  assign __xls_concrete_2x2_k2__out0_not_has_been_sent = ~__xls_concrete_2x2_k2__out0_has_been_sent_reg;
  assign xls_concrete_2x2_k2__out0_valid_inv = ~__xls_concrete_2x2_k2__out0_valid_reg;
  assign xls_concrete_2x2_k2__hor_chans__0_0_not_pred = ____state_2[1];
  assign __xls_concrete_2x2_k2__out0_valid_and_not_has_been_sent = __xls_concrete_2x2_k2__out0_vld_buf & __xls_concrete_2x2_k2__out0_not_has_been_sent;
  assign xls_concrete_2x2_k2__out0_valid_load_en = xls_concrete_2x2_k2__out0_rdy | xls_concrete_2x2_k2__out0_valid_inv;
  assign nor_1436 = ~(____state_2[0] | xls_concrete_2x2_k2__hor_chans__0_0_not_pred);
  assign xls_concrete_2x2_k2__out0_load_en = __xls_concrete_2x2_k2__out0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__out0_valid_load_en;
  assign xls_concrete_2x2_k2__arg0_not_pred = ~nor_1436;
  assign or_2857 = ~p0_eq_1473 | xls_concrete_2x2_k2__out0_load_en | __xls_concrete_2x2_k2__out0_has_been_sent_reg;
  assign p1_stage_done = p0_valid & p1_all_active_inputs_valid & or_2857;
  assign p1_not_valid = ~p0_valid;
  assign p0_all_active_inputs_valid = (xls_concrete_2x2_k2__arg0_not_pred | __xls_concrete_2x2_k2__arg0_valid_reg) & (xls_concrete_2x2_k2__arg0_not_pred | __xls_concrete_2x2_k2__arg1_valid_reg);
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign __xls_concrete_2x2_k2__hor_chans__0_0_vld_buf = p0_all_active_inputs_valid & p0_enable & ~xls_concrete_2x2_k2__hor_chans__0_0_not_pred;
  assign __xls_concrete_2x2_k2__hor_chans__0_0_not_has_been_sent = ~__xls_concrete_2x2_k2__hor_chans__0_0_has_been_sent_reg;
  assign xls_concrete_2x2_k2__hor_chans__0_0_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__0_0_valid_reg;
  assign __xls_concrete_2x2_k2__vert_chans__0_0_not_has_been_sent = ~__xls_concrete_2x2_k2__vert_chans__0_0_has_been_sent_reg;
  assign xls_concrete_2x2_k2__vert_chans__0_0_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__0_0_valid_reg;
  assign __xls_concrete_2x2_k2__hor_chans__1_0_not_has_been_sent = ~__xls_concrete_2x2_k2__hor_chans__1_0_has_been_sent_reg;
  assign xls_concrete_2x2_k2__hor_chans__1_0_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__1_0_valid_reg;
  assign __xls_concrete_2x2_k2__vert_chans__0_1_not_has_been_sent = ~__xls_concrete_2x2_k2__vert_chans__0_1_has_been_sent_reg;
  assign xls_concrete_2x2_k2__vert_chans__0_1_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__0_1_valid_reg;
  assign __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_not_has_been_sent = __xls_concrete_2x2_k2__hor_chans__0_0_vld_buf & __xls_concrete_2x2_k2__hor_chans__0_0_not_has_been_sent;
  assign xls_concrete_2x2_k2__hor_chans__0_0_valid_load_en = xls_concrete_2x2_k2__hor_chans__0_0_rdy | xls_concrete_2x2_k2__hor_chans__0_0_valid_inv;
  assign __xls_concrete_2x2_k2__vert_chans__0_0_valid_and_not_has_been_sent = __xls_concrete_2x2_k2__hor_chans__0_0_vld_buf & __xls_concrete_2x2_k2__vert_chans__0_0_not_has_been_sent;
  assign xls_concrete_2x2_k2__vert_chans__0_0_valid_load_en = xls_concrete_2x2_k2__vert_chans__0_0_rdy | xls_concrete_2x2_k2__vert_chans__0_0_valid_inv;
  assign __xls_concrete_2x2_k2__hor_chans__1_0_valid_and_not_has_been_sent = __xls_concrete_2x2_k2__hor_chans__0_0_vld_buf & __xls_concrete_2x2_k2__hor_chans__1_0_not_has_been_sent;
  assign xls_concrete_2x2_k2__hor_chans__1_0_valid_load_en = xls_concrete_2x2_k2__hor_chans__1_0_rdy | xls_concrete_2x2_k2__hor_chans__1_0_valid_inv;
  assign __xls_concrete_2x2_k2__vert_chans__0_1_valid_and_not_has_been_sent = __xls_concrete_2x2_k2__hor_chans__0_0_vld_buf & __xls_concrete_2x2_k2__vert_chans__0_1_not_has_been_sent;
  assign xls_concrete_2x2_k2__vert_chans__0_1_valid_load_en = xls_concrete_2x2_k2__vert_chans__0_1_rdy | xls_concrete_2x2_k2__vert_chans__0_1_valid_inv;
  assign xls_concrete_2x2_k2__hor_chans__0_0_load_en = __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__0_0_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__0_0_load_en = __xls_concrete_2x2_k2__vert_chans__0_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__0_0_valid_load_en;
  assign xls_concrete_2x2_k2__hor_chans__1_0_load_en = __xls_concrete_2x2_k2__hor_chans__1_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__1_0_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__0_1_load_en = __xls_concrete_2x2_k2__vert_chans__0_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__0_1_valid_load_en;
  assign eq_1473 = ____state_2 == 2'h2;
  assign p0_all_active_outputs_ready = (xls_concrete_2x2_k2__hor_chans__0_0_not_pred | xls_concrete_2x2_k2__hor_chans__0_0_load_en | __xls_concrete_2x2_k2__hor_chans__0_0_has_been_sent_reg) & (xls_concrete_2x2_k2__hor_chans__0_0_not_pred | xls_concrete_2x2_k2__vert_chans__0_0_load_en | __xls_concrete_2x2_k2__vert_chans__0_0_has_been_sent_reg) & (xls_concrete_2x2_k2__hor_chans__0_0_not_pred | xls_concrete_2x2_k2__hor_chans__1_0_load_en | __xls_concrete_2x2_k2__hor_chans__1_0_has_been_sent_reg) & (xls_concrete_2x2_k2__hor_chans__0_0_not_pred | xls_concrete_2x2_k2__vert_chans__0_1_load_en | __xls_concrete_2x2_k2__vert_chans__0_1_has_been_sent_reg);
  assign ____state_2__next_value_predicates = {~eq_1473, eq_1473};
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign one_hot_1476 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign xls_concrete_2x2_k2__arg0_select = nor_1436 == 1'h0 ? literal_1438 : __xls_concrete_2x2_k2__arg0_reg;
  assign xls_concrete_2x2_k2__arg1_select = nor_1436 == 1'h0 ? literal_1442 : __xls_concrete_2x2_k2__arg1_reg;
  assign and_1625 = p0_data_enable & nor_1436;
  assign xls_concrete_2x2_k2__arg0_valid_inv = ~__xls_concrete_2x2_k2__arg0_valid_reg;
  assign xls_concrete_2x2_k2__arg1_valid_inv = ~__xls_concrete_2x2_k2__arg1_valid_reg;
  assign xls_concrete_2x2_k2__hor_chans__0_2_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__0_2_valid_reg;
  assign xls_concrete_2x2_k2__hor_chans__1_2_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__1_2_valid_reg;
  assign and_1627 = p1_stage_done & p0_eq_1473;
  assign xls_concrete_2x2_k2__result_chans__0_0_valid_inv = ~__xls_concrete_2x2_k2__result_chans__0_0_valid_reg;
  assign xls_concrete_2x2_k2__result_chans__0_1_valid_inv = ~__xls_concrete_2x2_k2__result_chans__0_1_valid_reg;
  assign xls_concrete_2x2_k2__result_chans__1_0_valid_inv = ~__xls_concrete_2x2_k2__result_chans__1_0_valid_reg;
  assign xls_concrete_2x2_k2__result_chans__1_1_valid_inv = ~__xls_concrete_2x2_k2__result_chans__1_1_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__2_0_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__2_0_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__2_1_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__2_1_valid_reg;
  assign array_index_1451 = xls_concrete_2x2_k2__arg0_select[1'h0][1'h0];
  assign array_index_1460 = xls_concrete_2x2_k2__arg0_select[1'h1][1'h0];
  assign array_index_1453 = xls_concrete_2x2_k2__arg1_select[1'h0][1'h0];
  assign array_index_1463 = xls_concrete_2x2_k2__arg1_select[1'h0][1'h1];
  assign and_1614 = ~eq_1473 & p0_data_enable;
  assign and_1615 = eq_1473 & p0_data_enable;
  assign xls_concrete_2x2_k2__result_chans__0_0_select = p0_eq_1473 ? __xls_concrete_2x2_k2__result_chans__0_0_reg : 32'h0000_0000;
  assign xls_concrete_2x2_k2__result_chans__0_1_select = p0_eq_1473 ? __xls_concrete_2x2_k2__result_chans__0_1_reg : 32'h0000_0000;
  assign xls_concrete_2x2_k2__result_chans__1_0_select = p0_eq_1473 ? __xls_concrete_2x2_k2__result_chans__1_0_reg : 32'h0000_0000;
  assign xls_concrete_2x2_k2__result_chans__1_1_select = p0_eq_1473 ? __xls_concrete_2x2_k2__result_chans__1_1_reg : 32'h0000_0000;
  assign xls_concrete_2x2_k2__arg0_valid_load_en = and_1625 | xls_concrete_2x2_k2__arg0_valid_inv;
  assign xls_concrete_2x2_k2__arg1_valid_load_en = and_1625 | xls_concrete_2x2_k2__arg1_valid_inv;
  assign xls_concrete_2x2_k2__hor_chans__0_2_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__hor_chans__0_2_valid_inv;
  assign xls_concrete_2x2_k2__hor_chans__1_2_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__hor_chans__1_2_valid_inv;
  assign xls_concrete_2x2_k2__result_chans__0_0_valid_load_en = and_1627 | xls_concrete_2x2_k2__result_chans__0_0_valid_inv;
  assign xls_concrete_2x2_k2__result_chans__0_1_valid_load_en = and_1627 | xls_concrete_2x2_k2__result_chans__0_1_valid_inv;
  assign xls_concrete_2x2_k2__result_chans__1_0_valid_load_en = and_1627 | xls_concrete_2x2_k2__result_chans__1_0_valid_inv;
  assign xls_concrete_2x2_k2__result_chans__1_1_valid_load_en = and_1627 | xls_concrete_2x2_k2__result_chans__1_1_valid_inv;
  assign xls_concrete_2x2_k2__vert_chans__2_0_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__vert_chans__2_0_valid_inv;
  assign xls_concrete_2x2_k2__vert_chans__2_1_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__vert_chans__2_1_valid_inv;
  assign ____state_2__at_most_one_next_value = ~eq_1473 == one_hot_1476[1] & eq_1473 == one_hot_1476[0];
  assign sign_ext_1488 = {32{~eq_1473}};
  assign concat_1616 = {and_1614, and_1615};
  assign unexpand_for_next_value_147_2__4_case_1 = 2'h0;
  assign unexpand_for_next_value_147_2__4_case_0 = ____state_2 + 2'h1;
  assign __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_all_active_outputs_ready = __xls_concrete_2x2_k2__hor_chans__0_0_vld_buf & p0_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_ready_txfr = __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__0_0_load_en;
  assign __xls_concrete_2x2_k2__vert_chans__0_0_valid_and_ready_txfr = __xls_concrete_2x2_k2__vert_chans__0_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__0_0_load_en;
  assign __xls_concrete_2x2_k2__hor_chans__1_0_valid_and_ready_txfr = __xls_concrete_2x2_k2__hor_chans__1_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__1_0_load_en;
  assign __xls_concrete_2x2_k2__vert_chans__0_1_valid_and_ready_txfr = __xls_concrete_2x2_k2__vert_chans__0_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__0_1_load_en;
  assign __xls_concrete_2x2_k2__out0_valid_and_all_active_outputs_ready = __xls_concrete_2x2_k2__out0_vld_buf & or_2857;
  assign __xls_concrete_2x2_k2__out0_valid_and_ready_txfr = __xls_concrete_2x2_k2__out0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__out0_load_en;
  assign array_1561[0] = xls_concrete_2x2_k2__result_chans__0_0_select;
  assign array_1561[1] = xls_concrete_2x2_k2__result_chans__0_1_select;
  assign array_1562[0] = xls_concrete_2x2_k2__result_chans__1_0_select;
  assign array_1562[1] = xls_concrete_2x2_k2__result_chans__1_1_select;
  assign xls_concrete_2x2_k2__arg0_load_en = xls_concrete_2x2_k2__arg0_vld & xls_concrete_2x2_k2__arg0_valid_load_en;
  assign xls_concrete_2x2_k2__arg1_load_en = xls_concrete_2x2_k2__arg1_vld & xls_concrete_2x2_k2__arg1_valid_load_en;
  assign xls_concrete_2x2_k2__hor_chans__0_2_load_en = xls_concrete_2x2_k2__hor_chans__0_2_vld & xls_concrete_2x2_k2__hor_chans__0_2_valid_load_en;
  assign xls_concrete_2x2_k2__hor_chans__1_2_load_en = xls_concrete_2x2_k2__hor_chans__1_2_vld & xls_concrete_2x2_k2__hor_chans__1_2_valid_load_en;
  assign xls_concrete_2x2_k2__result_chans__0_0_load_en = xls_concrete_2x2_k2__result_chans__0_0_vld & xls_concrete_2x2_k2__result_chans__0_0_valid_load_en;
  assign xls_concrete_2x2_k2__result_chans__0_1_load_en = xls_concrete_2x2_k2__result_chans__0_1_vld & xls_concrete_2x2_k2__result_chans__0_1_valid_load_en;
  assign xls_concrete_2x2_k2__result_chans__1_0_load_en = xls_concrete_2x2_k2__result_chans__1_0_vld & xls_concrete_2x2_k2__result_chans__1_0_valid_load_en;
  assign xls_concrete_2x2_k2__result_chans__1_1_load_en = xls_concrete_2x2_k2__result_chans__1_1_vld & xls_concrete_2x2_k2__result_chans__1_1_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__2_0_load_en = xls_concrete_2x2_k2__vert_chans__2_0_vld & xls_concrete_2x2_k2__vert_chans__2_0_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__2_1_load_en = xls_concrete_2x2_k2__vert_chans__2_1_vld & xls_concrete_2x2_k2__vert_chans__2_1_valid_load_en;
  assign or_2835 = ~p0_stage_done | ____state_2__at_most_one_next_value | rst;
  assign and_1498 = (nor_1436 ? array_index_1451 : ____state_0_0_0) & sign_ext_1488;
  assign and_1499 = (nor_1436 ? xls_concrete_2x2_k2__arg0_select[1'h0][1'h1] : ____state_0_0_1) & sign_ext_1488;
  assign and_1500 = (nor_1436 ? array_index_1460 : ____state_0_1_0) & sign_ext_1488;
  assign and_1501 = (nor_1436 ? xls_concrete_2x2_k2__arg0_select[1'h1][1'h1] : ____state_0_1_1) & sign_ext_1488;
  assign and_1502 = (nor_1436 ? xls_concrete_2x2_k2__arg1_select[1'h1][1'h0] : ____state_1_1_0) & sign_ext_1488;
  assign and_1503 = (nor_1436 ? xls_concrete_2x2_k2__arg1_select[1'h1][1'h1] : ____state_1_1_1) & sign_ext_1488;
  assign and_1504 = (nor_1436 ? array_index_1453 : ____state_1_0_0) & sign_ext_1488;
  assign and_1505 = (nor_1436 ? array_index_1463 : ____state_1_0_1) & sign_ext_1488;
  assign one_hot_sel_1617 = unexpand_for_next_value_147_2__4_case_1 & {2{concat_1616[0]}} | unexpand_for_next_value_147_2__4_case_0 & {2{concat_1616[1]}};
  assign or_1618 = and_1614 | and_1615;
  assign __xls_concrete_2x2_k2__hor_chans__0_0_not_stage_load = ~__xls_concrete_2x2_k2__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__0_0_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__vert_chans__0_0_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__vert_chans__0_0_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__1_0_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__hor_chans__1_0_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__vert_chans__0_1_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__vert_chans__0_1_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__out0_not_stage_load = ~__xls_concrete_2x2_k2__out0_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__out0_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__out0_valid_and_ready_txfr | __xls_concrete_2x2_k2__out0_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__0_0_buf = nor_1436 ? array_index_1451 : ____state_0_0_1;
  assign __xls_concrete_2x2_k2__vert_chans__0_0_buf = nor_1436 ? array_index_1453 : ____state_1_1_0;
  assign __xls_concrete_2x2_k2__hor_chans__1_0_buf = nor_1436 ? array_index_1460 : ____state_0_1_1;
  assign __xls_concrete_2x2_k2__vert_chans__0_1_buf = nor_1436 ? array_index_1463 : ____state_1_1_1;
  assign c[0] = array_1561;
  assign c[1] = array_1562;
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
      p0_eq_1473 <= 1'h0;
      p0_valid <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__0_0_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__0_0_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__1_0_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__0_1_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__out0_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__arg0_reg <= __xls_concrete_2x2_k2__arg0_reg_init;
      __xls_concrete_2x2_k2__arg0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__arg1_reg <= __xls_concrete_2x2_k2__arg1_reg_init;
      __xls_concrete_2x2_k2__arg1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__0_2_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__0_2_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__1_2_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__1_2_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__2_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__2_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__2_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__2_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__0_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__result_chans__0_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__0_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__result_chans__0_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__1_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__result_chans__1_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__1_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__result_chans__1_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__0_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__0_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__0_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__0_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__1_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__1_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__0_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__0_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__out0_reg <= __xls_concrete_2x2_k2__out0_reg_init;
      __xls_concrete_2x2_k2__out0_valid_reg <= 1'h0;
    end else begin
      ____state_2 <= or_1618 ? one_hot_sel_1617 : ____state_2;
      ____state_0_0_1 <= p0_data_enable ? and_1499 : ____state_0_0_1;
      ____state_1_1_0 <= p0_data_enable ? and_1502 : ____state_1_1_0;
      ____state_0_1_1 <= p0_data_enable ? and_1501 : ____state_0_1_1;
      ____state_1_1_1 <= p0_data_enable ? and_1503 : ____state_1_1_1;
      ____state_0_0_0 <= p0_data_enable ? and_1498 : ____state_0_0_0;
      ____state_0_1_0 <= p0_data_enable ? and_1500 : ____state_0_1_0;
      ____state_1_0_0 <= p0_data_enable ? and_1504 : ____state_1_0_0;
      ____state_1_0_1 <= p0_data_enable ? and_1505 : ____state_1_0_1;
      p0_eq_1473 <= p0_data_enable ? eq_1473 : p0_eq_1473;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      __xls_concrete_2x2_k2__hor_chans__0_0_has_been_sent_reg <= __xls_concrete_2x2_k2__hor_chans__0_0_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__0_0_not_stage_load : __xls_concrete_2x2_k2__hor_chans__0_0_has_been_sent_reg;
      __xls_concrete_2x2_k2__vert_chans__0_0_has_been_sent_reg <= __xls_concrete_2x2_k2__vert_chans__0_0_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__0_0_not_stage_load : __xls_concrete_2x2_k2__vert_chans__0_0_has_been_sent_reg;
      __xls_concrete_2x2_k2__hor_chans__1_0_has_been_sent_reg <= __xls_concrete_2x2_k2__hor_chans__1_0_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__0_0_not_stage_load : __xls_concrete_2x2_k2__hor_chans__1_0_has_been_sent_reg;
      __xls_concrete_2x2_k2__vert_chans__0_1_has_been_sent_reg <= __xls_concrete_2x2_k2__vert_chans__0_1_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__0_0_not_stage_load : __xls_concrete_2x2_k2__vert_chans__0_1_has_been_sent_reg;
      __xls_concrete_2x2_k2__out0_has_been_sent_reg <= __xls_concrete_2x2_k2__out0_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__out0_not_stage_load : __xls_concrete_2x2_k2__out0_has_been_sent_reg;
      __xls_concrete_2x2_k2__arg0_reg <= xls_concrete_2x2_k2__arg0_load_en ? xls_concrete_2x2_k2__arg0_unflattened : __xls_concrete_2x2_k2__arg0_reg;
      __xls_concrete_2x2_k2__arg0_valid_reg <= xls_concrete_2x2_k2__arg0_valid_load_en ? xls_concrete_2x2_k2__arg0_vld : __xls_concrete_2x2_k2__arg0_valid_reg;
      __xls_concrete_2x2_k2__arg1_reg <= xls_concrete_2x2_k2__arg1_load_en ? xls_concrete_2x2_k2__arg1_unflattened : __xls_concrete_2x2_k2__arg1_reg;
      __xls_concrete_2x2_k2__arg1_valid_reg <= xls_concrete_2x2_k2__arg1_valid_load_en ? xls_concrete_2x2_k2__arg1_vld : __xls_concrete_2x2_k2__arg1_valid_reg;
      __xls_concrete_2x2_k2__hor_chans__0_2_reg <= xls_concrete_2x2_k2__hor_chans__0_2_load_en ? xls_concrete_2x2_k2__hor_chans__0_2 : __xls_concrete_2x2_k2__hor_chans__0_2_reg;
      __xls_concrete_2x2_k2__hor_chans__0_2_valid_reg <= xls_concrete_2x2_k2__hor_chans__0_2_valid_load_en ? xls_concrete_2x2_k2__hor_chans__0_2_vld : __xls_concrete_2x2_k2__hor_chans__0_2_valid_reg;
      __xls_concrete_2x2_k2__hor_chans__1_2_reg <= xls_concrete_2x2_k2__hor_chans__1_2_load_en ? xls_concrete_2x2_k2__hor_chans__1_2 : __xls_concrete_2x2_k2__hor_chans__1_2_reg;
      __xls_concrete_2x2_k2__hor_chans__1_2_valid_reg <= xls_concrete_2x2_k2__hor_chans__1_2_valid_load_en ? xls_concrete_2x2_k2__hor_chans__1_2_vld : __xls_concrete_2x2_k2__hor_chans__1_2_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__2_0_reg <= xls_concrete_2x2_k2__vert_chans__2_0_load_en ? xls_concrete_2x2_k2__vert_chans__2_0 : __xls_concrete_2x2_k2__vert_chans__2_0_reg;
      __xls_concrete_2x2_k2__vert_chans__2_0_valid_reg <= xls_concrete_2x2_k2__vert_chans__2_0_valid_load_en ? xls_concrete_2x2_k2__vert_chans__2_0_vld : __xls_concrete_2x2_k2__vert_chans__2_0_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__2_1_reg <= xls_concrete_2x2_k2__vert_chans__2_1_load_en ? xls_concrete_2x2_k2__vert_chans__2_1 : __xls_concrete_2x2_k2__vert_chans__2_1_reg;
      __xls_concrete_2x2_k2__vert_chans__2_1_valid_reg <= xls_concrete_2x2_k2__vert_chans__2_1_valid_load_en ? xls_concrete_2x2_k2__vert_chans__2_1_vld : __xls_concrete_2x2_k2__vert_chans__2_1_valid_reg;
      __xls_concrete_2x2_k2__result_chans__0_0_reg <= xls_concrete_2x2_k2__result_chans__0_0_load_en ? xls_concrete_2x2_k2__result_chans__0_0 : __xls_concrete_2x2_k2__result_chans__0_0_reg;
      __xls_concrete_2x2_k2__result_chans__0_0_valid_reg <= xls_concrete_2x2_k2__result_chans__0_0_valid_load_en ? xls_concrete_2x2_k2__result_chans__0_0_vld : __xls_concrete_2x2_k2__result_chans__0_0_valid_reg;
      __xls_concrete_2x2_k2__result_chans__0_1_reg <= xls_concrete_2x2_k2__result_chans__0_1_load_en ? xls_concrete_2x2_k2__result_chans__0_1 : __xls_concrete_2x2_k2__result_chans__0_1_reg;
      __xls_concrete_2x2_k2__result_chans__0_1_valid_reg <= xls_concrete_2x2_k2__result_chans__0_1_valid_load_en ? xls_concrete_2x2_k2__result_chans__0_1_vld : __xls_concrete_2x2_k2__result_chans__0_1_valid_reg;
      __xls_concrete_2x2_k2__result_chans__1_0_reg <= xls_concrete_2x2_k2__result_chans__1_0_load_en ? xls_concrete_2x2_k2__result_chans__1_0 : __xls_concrete_2x2_k2__result_chans__1_0_reg;
      __xls_concrete_2x2_k2__result_chans__1_0_valid_reg <= xls_concrete_2x2_k2__result_chans__1_0_valid_load_en ? xls_concrete_2x2_k2__result_chans__1_0_vld : __xls_concrete_2x2_k2__result_chans__1_0_valid_reg;
      __xls_concrete_2x2_k2__result_chans__1_1_reg <= xls_concrete_2x2_k2__result_chans__1_1_load_en ? xls_concrete_2x2_k2__result_chans__1_1 : __xls_concrete_2x2_k2__result_chans__1_1_reg;
      __xls_concrete_2x2_k2__result_chans__1_1_valid_reg <= xls_concrete_2x2_k2__result_chans__1_1_valid_load_en ? xls_concrete_2x2_k2__result_chans__1_1_vld : __xls_concrete_2x2_k2__result_chans__1_1_valid_reg;
      __xls_concrete_2x2_k2__hor_chans__0_0_reg <= xls_concrete_2x2_k2__hor_chans__0_0_load_en ? __xls_concrete_2x2_k2__hor_chans__0_0_buf : __xls_concrete_2x2_k2__hor_chans__0_0_reg;
      __xls_concrete_2x2_k2__hor_chans__0_0_valid_reg <= xls_concrete_2x2_k2__hor_chans__0_0_valid_load_en ? __xls_concrete_2x2_k2__hor_chans__0_0_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__hor_chans__0_0_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__0_0_reg <= xls_concrete_2x2_k2__vert_chans__0_0_load_en ? __xls_concrete_2x2_k2__vert_chans__0_0_buf : __xls_concrete_2x2_k2__vert_chans__0_0_reg;
      __xls_concrete_2x2_k2__vert_chans__0_0_valid_reg <= xls_concrete_2x2_k2__vert_chans__0_0_valid_load_en ? __xls_concrete_2x2_k2__vert_chans__0_0_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__vert_chans__0_0_valid_reg;
      __xls_concrete_2x2_k2__hor_chans__1_0_reg <= xls_concrete_2x2_k2__hor_chans__1_0_load_en ? __xls_concrete_2x2_k2__hor_chans__1_0_buf : __xls_concrete_2x2_k2__hor_chans__1_0_reg;
      __xls_concrete_2x2_k2__hor_chans__1_0_valid_reg <= xls_concrete_2x2_k2__hor_chans__1_0_valid_load_en ? __xls_concrete_2x2_k2__hor_chans__1_0_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__hor_chans__1_0_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__0_1_reg <= xls_concrete_2x2_k2__vert_chans__0_1_load_en ? __xls_concrete_2x2_k2__vert_chans__0_1_buf : __xls_concrete_2x2_k2__vert_chans__0_1_reg;
      __xls_concrete_2x2_k2__vert_chans__0_1_valid_reg <= xls_concrete_2x2_k2__vert_chans__0_1_valid_load_en ? __xls_concrete_2x2_k2__vert_chans__0_1_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__vert_chans__0_1_valid_reg;
      __xls_concrete_2x2_k2__out0_reg <= xls_concrete_2x2_k2__out0_load_en ? c : __xls_concrete_2x2_k2__out0_reg;
      __xls_concrete_2x2_k2__out0_valid_reg <= xls_concrete_2x2_k2__out0_valid_load_en ? __xls_concrete_2x2_k2__out0_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__out0_valid_reg;
    end
  end
  assign xls_concrete_2x2_k2__arg0_rdy = xls_concrete_2x2_k2__arg0_load_en;
  assign xls_concrete_2x2_k2__arg1_rdy = xls_concrete_2x2_k2__arg1_load_en;
  assign xls_concrete_2x2_k2__hor_chans__0_0 = __xls_concrete_2x2_k2__hor_chans__0_0_reg;
  assign xls_concrete_2x2_k2__hor_chans__0_0_vld = __xls_concrete_2x2_k2__hor_chans__0_0_valid_reg;
  assign xls_concrete_2x2_k2__hor_chans__0_2_rdy = xls_concrete_2x2_k2__hor_chans__0_2_load_en;
  assign xls_concrete_2x2_k2__hor_chans__1_0 = __xls_concrete_2x2_k2__hor_chans__1_0_reg;
  assign xls_concrete_2x2_k2__hor_chans__1_0_vld = __xls_concrete_2x2_k2__hor_chans__1_0_valid_reg;
  assign xls_concrete_2x2_k2__hor_chans__1_2_rdy = xls_concrete_2x2_k2__hor_chans__1_2_load_en;
  assign xls_concrete_2x2_k2__out0 = {{__xls_concrete_2x2_k2__out0_reg[1][1], __xls_concrete_2x2_k2__out0_reg[1][0]}, {__xls_concrete_2x2_k2__out0_reg[0][1], __xls_concrete_2x2_k2__out0_reg[0][0]}};
  assign xls_concrete_2x2_k2__out0_vld = __xls_concrete_2x2_k2__out0_valid_reg;
  assign xls_concrete_2x2_k2__result_chans__0_0_rdy = xls_concrete_2x2_k2__result_chans__0_0_load_en;
  assign xls_concrete_2x2_k2__result_chans__0_1_rdy = xls_concrete_2x2_k2__result_chans__0_1_load_en;
  assign xls_concrete_2x2_k2__result_chans__1_0_rdy = xls_concrete_2x2_k2__result_chans__1_0_load_en;
  assign xls_concrete_2x2_k2__result_chans__1_1_rdy = xls_concrete_2x2_k2__result_chans__1_1_load_en;
  assign xls_concrete_2x2_k2__vert_chans__0_0 = __xls_concrete_2x2_k2__vert_chans__0_0_reg;
  assign xls_concrete_2x2_k2__vert_chans__0_0_vld = __xls_concrete_2x2_k2__vert_chans__0_0_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__0_1 = __xls_concrete_2x2_k2__vert_chans__0_1_reg;
  assign xls_concrete_2x2_k2__vert_chans__0_1_vld = __xls_concrete_2x2_k2__vert_chans__0_1_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__2_0_rdy = xls_concrete_2x2_k2__vert_chans__2_0_load_en;
  assign xls_concrete_2x2_k2__vert_chans__2_1_rdy = xls_concrete_2x2_k2__vert_chans__2_1_load_en;
  `ifdef ASSERT_ON
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2835))) or_2835) else $fatal(0, "More than one next_value fired for state element: __state_2");
  `endif  // ASSERT_ON
endmodule


module __xls_concrete_2x2_k2__SystolicArray__PE_0_next(
  input wire clk,
  input wire rst,
  input wire [31:0] xls_concrete_2x2_k2__hor_chans__0_0,
  input wire xls_concrete_2x2_k2__hor_chans__0_0_vld,
  input wire xls_concrete_2x2_k2__hor_chans__0_1_rdy,
  input wire xls_concrete_2x2_k2__result_chans__0_0_rdy,
  input wire [31:0] xls_concrete_2x2_k2__vert_chans__0_0,
  input wire xls_concrete_2x2_k2__vert_chans__0_0_vld,
  input wire xls_concrete_2x2_k2__vert_chans__1_0_rdy,
  output wire xls_concrete_2x2_k2__hor_chans__0_0_rdy,
  output wire [31:0] xls_concrete_2x2_k2__hor_chans__0_1,
  output wire xls_concrete_2x2_k2__hor_chans__0_1_vld,
  output wire [31:0] xls_concrete_2x2_k2__result_chans__0_0,
  output wire xls_concrete_2x2_k2__result_chans__0_0_vld,
  output wire xls_concrete_2x2_k2__vert_chans__0_0_rdy,
  output wire [31:0] xls_concrete_2x2_k2__vert_chans__1_0,
  output wire xls_concrete_2x2_k2__vert_chans__1_0_vld
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    begin
      umul32b_32b_x_32b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  reg [31:0] p0_a;
  reg [31:0] p0_b;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg __xls_concrete_2x2_k2__hor_chans__0_1_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__vert_chans__1_0_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__result_chans__0_0_has_been_sent_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__0_0_reg;
  reg __xls_concrete_2x2_k2__hor_chans__0_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__0_0_reg;
  reg __xls_concrete_2x2_k2__vert_chans__0_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__0_1_reg;
  reg __xls_concrete_2x2_k2__hor_chans__0_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__1_0_reg;
  reg __xls_concrete_2x2_k2__vert_chans__1_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__result_chans__0_0_reg;
  reg __xls_concrete_2x2_k2__result_chans__0_0_valid_reg;
  wire __xls_concrete_2x2_k2__hor_chans__0_1_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__0_1_valid_inv;
  wire __xls_concrete_2x2_k2__vert_chans__1_0_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__1_0_valid_inv;
  wire __xls_concrete_2x2_k2__result_chans__0_0_vld_buf;
  wire __xls_concrete_2x2_k2__result_chans__0_0_not_has_been_sent;
  wire xls_concrete_2x2_k2__result_chans__0_0_valid_inv;
  wire __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__0_1_valid_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__1_0_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__1_0_valid_load_en;
  wire __xls_concrete_2x2_k2__result_chans__0_0_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__result_chans__0_0_valid_load_en;
  wire xls_concrete_2x2_k2__hor_chans__0_1_load_en;
  wire xls_concrete_2x2_k2__vert_chans__1_0_load_en;
  wire xls_concrete_2x2_k2__result_chans__0_0_load_en;
  wire __xls_concrete_2x2_k2__hor_chans__0_1_has_sent_or_is_ready;
  wire __xls_concrete_2x2_k2__vert_chans__1_0_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [2:0] one_hot_1888;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire p0_data_enable;
  wire xls_concrete_2x2_k2__hor_chans__0_0_valid_inv;
  wire xls_concrete_2x2_k2__vert_chans__0_0_valid_inv;
  wire and_1926;
  wire and_1927;
  wire [31:0] prod;
  wire xls_concrete_2x2_k2__hor_chans__0_0_valid_load_en;
  wire xls_concrete_2x2_k2__vert_chans__0_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_1928;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_177_1_case_1;
  wire unexpand_for_next_value_177_1_case_0;
  wire __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_all_active_outputs_ready;
  wire __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__vert_chans__1_0_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__result_chans__0_0_valid_and_all_active_outputs_ready;
  wire __xls_concrete_2x2_k2__result_chans__0_0_valid_and_ready_txfr;
  wire xls_concrete_2x2_k2__hor_chans__0_0_load_en;
  wire xls_concrete_2x2_k2__vert_chans__0_0_load_en;
  wire or_2837;
  wire [31:0] one_hot_sel_1929;
  wire or_1930;
  wire one_hot_sel_1935;
  wire __xls_concrete_2x2_k2__hor_chans__0_1_not_stage_load;
  wire __xls_concrete_2x2_k2__hor_chans__0_1_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__1_0_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__result_chans__0_0_not_stage_load;
  wire __xls_concrete_2x2_k2__result_chans__0_0_has_been_sent_reg_load_en;
  assign __xls_concrete_2x2_k2__hor_chans__0_1_not_has_been_sent = ~__xls_concrete_2x2_k2__hor_chans__0_1_has_been_sent_reg;
  assign xls_concrete_2x2_k2__hor_chans__0_1_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__0_1_valid_reg;
  assign __xls_concrete_2x2_k2__vert_chans__1_0_not_has_been_sent = ~__xls_concrete_2x2_k2__vert_chans__1_0_has_been_sent_reg;
  assign xls_concrete_2x2_k2__vert_chans__1_0_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__1_0_valid_reg;
  assign __xls_concrete_2x2_k2__result_chans__0_0_vld_buf = p0_valid & ____state_1;
  assign __xls_concrete_2x2_k2__result_chans__0_0_not_has_been_sent = ~__xls_concrete_2x2_k2__result_chans__0_0_has_been_sent_reg;
  assign xls_concrete_2x2_k2__result_chans__0_0_valid_inv = ~__xls_concrete_2x2_k2__result_chans__0_0_valid_reg;
  assign __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_not_has_been_sent = p0_valid & __xls_concrete_2x2_k2__hor_chans__0_1_not_has_been_sent;
  assign xls_concrete_2x2_k2__hor_chans__0_1_valid_load_en = xls_concrete_2x2_k2__hor_chans__0_1_rdy | xls_concrete_2x2_k2__hor_chans__0_1_valid_inv;
  assign __xls_concrete_2x2_k2__vert_chans__1_0_valid_and_not_has_been_sent = p0_valid & __xls_concrete_2x2_k2__vert_chans__1_0_not_has_been_sent;
  assign xls_concrete_2x2_k2__vert_chans__1_0_valid_load_en = xls_concrete_2x2_k2__vert_chans__1_0_rdy | xls_concrete_2x2_k2__vert_chans__1_0_valid_inv;
  assign __xls_concrete_2x2_k2__result_chans__0_0_valid_and_not_has_been_sent = __xls_concrete_2x2_k2__result_chans__0_0_vld_buf & __xls_concrete_2x2_k2__result_chans__0_0_not_has_been_sent;
  assign xls_concrete_2x2_k2__result_chans__0_0_valid_load_en = xls_concrete_2x2_k2__result_chans__0_0_rdy | xls_concrete_2x2_k2__result_chans__0_0_valid_inv;
  assign xls_concrete_2x2_k2__hor_chans__0_1_load_en = __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__0_1_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__1_0_load_en = __xls_concrete_2x2_k2__vert_chans__1_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__1_0_valid_load_en;
  assign xls_concrete_2x2_k2__result_chans__0_0_load_en = __xls_concrete_2x2_k2__result_chans__0_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__result_chans__0_0_valid_load_en;
  assign __xls_concrete_2x2_k2__hor_chans__0_1_has_sent_or_is_ready = xls_concrete_2x2_k2__hor_chans__0_1_load_en | __xls_concrete_2x2_k2__hor_chans__0_1_has_been_sent_reg;
  assign __xls_concrete_2x2_k2__vert_chans__1_0_has_sent_or_is_ready = xls_concrete_2x2_k2__vert_chans__1_0_load_en | __xls_concrete_2x2_k2__vert_chans__1_0_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __xls_concrete_2x2_k2__hor_chans__0_1_has_sent_or_is_ready & __xls_concrete_2x2_k2__vert_chans__1_0_has_sent_or_is_ready & (~____state_1 | xls_concrete_2x2_k2__result_chans__0_0_load_en | __xls_concrete_2x2_k2__result_chans__0_0_has_been_sent_reg);
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_1888 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __xls_concrete_2x2_k2__hor_chans__0_0_valid_reg & __xls_concrete_2x2_k2__vert_chans__0_0_valid_reg;
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign xls_concrete_2x2_k2__hor_chans__0_0_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__0_0_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__0_0_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__0_0_valid_reg;
  assign and_1926 = ~____state_1 & p1_stage_done;
  assign and_1927 = ____state_1 & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign xls_concrete_2x2_k2__hor_chans__0_0_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__hor_chans__0_0_valid_inv;
  assign xls_concrete_2x2_k2__vert_chans__0_0_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__vert_chans__0_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_1888[1] & ____state_1 == one_hot_1888[0];
  assign concat_1928 = {and_1926, and_1927};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_177_1_case_1 = 1'h0;
  assign unexpand_for_next_value_177_1_case_0 = 1'h1;
  assign __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_ready_txfr = __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__0_1_load_en;
  assign __xls_concrete_2x2_k2__vert_chans__1_0_valid_and_ready_txfr = __xls_concrete_2x2_k2__vert_chans__1_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__1_0_load_en;
  assign __xls_concrete_2x2_k2__result_chans__0_0_valid_and_all_active_outputs_ready = __xls_concrete_2x2_k2__result_chans__0_0_vld_buf & p1_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__0_0_valid_and_ready_txfr = __xls_concrete_2x2_k2__result_chans__0_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__result_chans__0_0_load_en;
  assign xls_concrete_2x2_k2__hor_chans__0_0_load_en = xls_concrete_2x2_k2__hor_chans__0_0_vld & xls_concrete_2x2_k2__hor_chans__0_0_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__0_0_load_en = xls_concrete_2x2_k2__vert_chans__0_0_vld & xls_concrete_2x2_k2__vert_chans__0_0_valid_load_en;
  assign or_2837 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_1929 = 32'h0000_0000 & {32{concat_1928[0]}} | new_accum & {32{concat_1928[1]}};
  assign or_1930 = and_1926 | and_1927;
  assign one_hot_sel_1935 = unexpand_for_next_value_177_1_case_1 & concat_1928[0] | unexpand_for_next_value_177_1_case_0 & concat_1928[1];
  assign __xls_concrete_2x2_k2__hor_chans__0_1_not_stage_load = ~__xls_concrete_2x2_k2__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__0_1_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__vert_chans__1_0_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__vert_chans__1_0_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__0_0_not_stage_load = ~__xls_concrete_2x2_k2__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__0_0_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__result_chans__0_0_valid_and_ready_txfr | __xls_concrete_2x2_k2__result_chans__0_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p0_b <= 32'h0000_0000;
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__0_1_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__1_0_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__0_0_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__0_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__0_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__0_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__0_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__0_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__0_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__1_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__1_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__0_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__result_chans__0_0_valid_reg <= 1'h0;
    end else begin
      p0_a <= p0_data_enable ? __xls_concrete_2x2_k2__hor_chans__0_0_reg : p0_a;
      p0_b <= p0_data_enable ? __xls_concrete_2x2_k2__vert_chans__0_0_reg : p0_b;
      ____state_1 <= or_1930 ? one_hot_sel_1935 : ____state_1;
      ____state_0 <= or_1930 ? one_hot_sel_1929 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __xls_concrete_2x2_k2__hor_chans__0_1_has_been_sent_reg <= __xls_concrete_2x2_k2__hor_chans__0_1_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__0_1_not_stage_load : __xls_concrete_2x2_k2__hor_chans__0_1_has_been_sent_reg;
      __xls_concrete_2x2_k2__vert_chans__1_0_has_been_sent_reg <= __xls_concrete_2x2_k2__vert_chans__1_0_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__0_1_not_stage_load : __xls_concrete_2x2_k2__vert_chans__1_0_has_been_sent_reg;
      __xls_concrete_2x2_k2__result_chans__0_0_has_been_sent_reg <= __xls_concrete_2x2_k2__result_chans__0_0_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__result_chans__0_0_not_stage_load : __xls_concrete_2x2_k2__result_chans__0_0_has_been_sent_reg;
      __xls_concrete_2x2_k2__hor_chans__0_0_reg <= xls_concrete_2x2_k2__hor_chans__0_0_load_en ? xls_concrete_2x2_k2__hor_chans__0_0 : __xls_concrete_2x2_k2__hor_chans__0_0_reg;
      __xls_concrete_2x2_k2__hor_chans__0_0_valid_reg <= xls_concrete_2x2_k2__hor_chans__0_0_valid_load_en ? xls_concrete_2x2_k2__hor_chans__0_0_vld : __xls_concrete_2x2_k2__hor_chans__0_0_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__0_0_reg <= xls_concrete_2x2_k2__vert_chans__0_0_load_en ? xls_concrete_2x2_k2__vert_chans__0_0 : __xls_concrete_2x2_k2__vert_chans__0_0_reg;
      __xls_concrete_2x2_k2__vert_chans__0_0_valid_reg <= xls_concrete_2x2_k2__vert_chans__0_0_valid_load_en ? xls_concrete_2x2_k2__vert_chans__0_0_vld : __xls_concrete_2x2_k2__vert_chans__0_0_valid_reg;
      __xls_concrete_2x2_k2__hor_chans__0_1_reg <= xls_concrete_2x2_k2__hor_chans__0_1_load_en ? p0_a : __xls_concrete_2x2_k2__hor_chans__0_1_reg;
      __xls_concrete_2x2_k2__hor_chans__0_1_valid_reg <= xls_concrete_2x2_k2__hor_chans__0_1_valid_load_en ? __xls_concrete_2x2_k2__hor_chans__0_1_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__hor_chans__0_1_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__1_0_reg <= xls_concrete_2x2_k2__vert_chans__1_0_load_en ? p0_b : __xls_concrete_2x2_k2__vert_chans__1_0_reg;
      __xls_concrete_2x2_k2__vert_chans__1_0_valid_reg <= xls_concrete_2x2_k2__vert_chans__1_0_valid_load_en ? __xls_concrete_2x2_k2__vert_chans__1_0_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__vert_chans__1_0_valid_reg;
      __xls_concrete_2x2_k2__result_chans__0_0_reg <= xls_concrete_2x2_k2__result_chans__0_0_load_en ? new_accum : __xls_concrete_2x2_k2__result_chans__0_0_reg;
      __xls_concrete_2x2_k2__result_chans__0_0_valid_reg <= xls_concrete_2x2_k2__result_chans__0_0_valid_load_en ? __xls_concrete_2x2_k2__result_chans__0_0_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__result_chans__0_0_valid_reg;
    end
  end
  assign xls_concrete_2x2_k2__hor_chans__0_0_rdy = xls_concrete_2x2_k2__hor_chans__0_0_load_en;
  assign xls_concrete_2x2_k2__hor_chans__0_1 = __xls_concrete_2x2_k2__hor_chans__0_1_reg;
  assign xls_concrete_2x2_k2__hor_chans__0_1_vld = __xls_concrete_2x2_k2__hor_chans__0_1_valid_reg;
  assign xls_concrete_2x2_k2__result_chans__0_0 = __xls_concrete_2x2_k2__result_chans__0_0_reg;
  assign xls_concrete_2x2_k2__result_chans__0_0_vld = __xls_concrete_2x2_k2__result_chans__0_0_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__0_0_rdy = xls_concrete_2x2_k2__vert_chans__0_0_load_en;
  assign xls_concrete_2x2_k2__vert_chans__1_0 = __xls_concrete_2x2_k2__vert_chans__1_0_reg;
  assign xls_concrete_2x2_k2__vert_chans__1_0_vld = __xls_concrete_2x2_k2__vert_chans__1_0_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2837))) or_2837) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2837))) or_2837) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __xls_concrete_2x2_k2__SystolicArray__PE_1_next(
  input wire clk,
  input wire rst,
  input wire [31:0] xls_concrete_2x2_k2__hor_chans__0_1,
  input wire xls_concrete_2x2_k2__hor_chans__0_1_vld,
  input wire xls_concrete_2x2_k2__hor_chans__0_2_rdy,
  input wire xls_concrete_2x2_k2__result_chans__0_1_rdy,
  input wire [31:0] xls_concrete_2x2_k2__vert_chans__0_1,
  input wire xls_concrete_2x2_k2__vert_chans__0_1_vld,
  input wire xls_concrete_2x2_k2__vert_chans__1_1_rdy,
  output wire xls_concrete_2x2_k2__hor_chans__0_1_rdy,
  output wire [31:0] xls_concrete_2x2_k2__hor_chans__0_2,
  output wire xls_concrete_2x2_k2__hor_chans__0_2_vld,
  output wire [31:0] xls_concrete_2x2_k2__result_chans__0_1,
  output wire xls_concrete_2x2_k2__result_chans__0_1_vld,
  output wire xls_concrete_2x2_k2__vert_chans__0_1_rdy,
  output wire [31:0] xls_concrete_2x2_k2__vert_chans__1_1,
  output wire xls_concrete_2x2_k2__vert_chans__1_1_vld
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    begin
      umul32b_32b_x_32b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  reg [31:0] p0_a;
  reg [31:0] p0_b;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg __xls_concrete_2x2_k2__hor_chans__0_2_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__vert_chans__1_1_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__result_chans__0_1_has_been_sent_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__0_1_reg;
  reg __xls_concrete_2x2_k2__hor_chans__0_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__0_1_reg;
  reg __xls_concrete_2x2_k2__vert_chans__0_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__0_2_reg;
  reg __xls_concrete_2x2_k2__hor_chans__0_2_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__1_1_reg;
  reg __xls_concrete_2x2_k2__vert_chans__1_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__result_chans__0_1_reg;
  reg __xls_concrete_2x2_k2__result_chans__0_1_valid_reg;
  wire __xls_concrete_2x2_k2__hor_chans__0_2_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__0_2_valid_inv;
  wire __xls_concrete_2x2_k2__vert_chans__1_1_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__1_1_valid_inv;
  wire __xls_concrete_2x2_k2__result_chans__0_1_vld_buf;
  wire __xls_concrete_2x2_k2__result_chans__0_1_not_has_been_sent;
  wire xls_concrete_2x2_k2__result_chans__0_1_valid_inv;
  wire __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__0_2_valid_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__1_1_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__1_1_valid_load_en;
  wire __xls_concrete_2x2_k2__result_chans__0_1_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__result_chans__0_1_valid_load_en;
  wire xls_concrete_2x2_k2__hor_chans__0_2_load_en;
  wire xls_concrete_2x2_k2__vert_chans__1_1_load_en;
  wire xls_concrete_2x2_k2__result_chans__0_1_load_en;
  wire __xls_concrete_2x2_k2__hor_chans__0_2_has_sent_or_is_ready;
  wire __xls_concrete_2x2_k2__vert_chans__1_1_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [2:0] one_hot_2078;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire p0_data_enable;
  wire xls_concrete_2x2_k2__hor_chans__0_1_valid_inv;
  wire xls_concrete_2x2_k2__vert_chans__0_1_valid_inv;
  wire and_2116;
  wire and_2117;
  wire [31:0] prod;
  wire xls_concrete_2x2_k2__hor_chans__0_1_valid_load_en;
  wire xls_concrete_2x2_k2__vert_chans__0_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2118;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_207_1_case_1;
  wire unexpand_for_next_value_207_1_case_0;
  wire __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_all_active_outputs_ready;
  wire __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__vert_chans__1_1_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__result_chans__0_1_valid_and_all_active_outputs_ready;
  wire __xls_concrete_2x2_k2__result_chans__0_1_valid_and_ready_txfr;
  wire xls_concrete_2x2_k2__hor_chans__0_1_load_en;
  wire xls_concrete_2x2_k2__vert_chans__0_1_load_en;
  wire or_2841;
  wire [31:0] one_hot_sel_2119;
  wire or_2120;
  wire one_hot_sel_2125;
  wire __xls_concrete_2x2_k2__hor_chans__0_2_not_stage_load;
  wire __xls_concrete_2x2_k2__hor_chans__0_2_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__1_1_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__result_chans__0_1_not_stage_load;
  wire __xls_concrete_2x2_k2__result_chans__0_1_has_been_sent_reg_load_en;
  assign __xls_concrete_2x2_k2__hor_chans__0_2_not_has_been_sent = ~__xls_concrete_2x2_k2__hor_chans__0_2_has_been_sent_reg;
  assign xls_concrete_2x2_k2__hor_chans__0_2_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__0_2_valid_reg;
  assign __xls_concrete_2x2_k2__vert_chans__1_1_not_has_been_sent = ~__xls_concrete_2x2_k2__vert_chans__1_1_has_been_sent_reg;
  assign xls_concrete_2x2_k2__vert_chans__1_1_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__1_1_valid_reg;
  assign __xls_concrete_2x2_k2__result_chans__0_1_vld_buf = p0_valid & ____state_1;
  assign __xls_concrete_2x2_k2__result_chans__0_1_not_has_been_sent = ~__xls_concrete_2x2_k2__result_chans__0_1_has_been_sent_reg;
  assign xls_concrete_2x2_k2__result_chans__0_1_valid_inv = ~__xls_concrete_2x2_k2__result_chans__0_1_valid_reg;
  assign __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_not_has_been_sent = p0_valid & __xls_concrete_2x2_k2__hor_chans__0_2_not_has_been_sent;
  assign xls_concrete_2x2_k2__hor_chans__0_2_valid_load_en = xls_concrete_2x2_k2__hor_chans__0_2_rdy | xls_concrete_2x2_k2__hor_chans__0_2_valid_inv;
  assign __xls_concrete_2x2_k2__vert_chans__1_1_valid_and_not_has_been_sent = p0_valid & __xls_concrete_2x2_k2__vert_chans__1_1_not_has_been_sent;
  assign xls_concrete_2x2_k2__vert_chans__1_1_valid_load_en = xls_concrete_2x2_k2__vert_chans__1_1_rdy | xls_concrete_2x2_k2__vert_chans__1_1_valid_inv;
  assign __xls_concrete_2x2_k2__result_chans__0_1_valid_and_not_has_been_sent = __xls_concrete_2x2_k2__result_chans__0_1_vld_buf & __xls_concrete_2x2_k2__result_chans__0_1_not_has_been_sent;
  assign xls_concrete_2x2_k2__result_chans__0_1_valid_load_en = xls_concrete_2x2_k2__result_chans__0_1_rdy | xls_concrete_2x2_k2__result_chans__0_1_valid_inv;
  assign xls_concrete_2x2_k2__hor_chans__0_2_load_en = __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__0_2_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__1_1_load_en = __xls_concrete_2x2_k2__vert_chans__1_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__1_1_valid_load_en;
  assign xls_concrete_2x2_k2__result_chans__0_1_load_en = __xls_concrete_2x2_k2__result_chans__0_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__result_chans__0_1_valid_load_en;
  assign __xls_concrete_2x2_k2__hor_chans__0_2_has_sent_or_is_ready = xls_concrete_2x2_k2__hor_chans__0_2_load_en | __xls_concrete_2x2_k2__hor_chans__0_2_has_been_sent_reg;
  assign __xls_concrete_2x2_k2__vert_chans__1_1_has_sent_or_is_ready = xls_concrete_2x2_k2__vert_chans__1_1_load_en | __xls_concrete_2x2_k2__vert_chans__1_1_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __xls_concrete_2x2_k2__hor_chans__0_2_has_sent_or_is_ready & __xls_concrete_2x2_k2__vert_chans__1_1_has_sent_or_is_ready & (~____state_1 | xls_concrete_2x2_k2__result_chans__0_1_load_en | __xls_concrete_2x2_k2__result_chans__0_1_has_been_sent_reg);
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_2078 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __xls_concrete_2x2_k2__hor_chans__0_1_valid_reg & __xls_concrete_2x2_k2__vert_chans__0_1_valid_reg;
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign xls_concrete_2x2_k2__hor_chans__0_1_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__0_1_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__0_1_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__0_1_valid_reg;
  assign and_2116 = ~____state_1 & p1_stage_done;
  assign and_2117 = ____state_1 & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign xls_concrete_2x2_k2__hor_chans__0_1_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__hor_chans__0_1_valid_inv;
  assign xls_concrete_2x2_k2__vert_chans__0_1_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__vert_chans__0_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2078[1] & ____state_1 == one_hot_2078[0];
  assign concat_2118 = {and_2116, and_2117};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_207_1_case_1 = 1'h0;
  assign unexpand_for_next_value_207_1_case_0 = 1'h1;
  assign __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_ready_txfr = __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__0_2_load_en;
  assign __xls_concrete_2x2_k2__vert_chans__1_1_valid_and_ready_txfr = __xls_concrete_2x2_k2__vert_chans__1_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__1_1_load_en;
  assign __xls_concrete_2x2_k2__result_chans__0_1_valid_and_all_active_outputs_ready = __xls_concrete_2x2_k2__result_chans__0_1_vld_buf & p1_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__0_1_valid_and_ready_txfr = __xls_concrete_2x2_k2__result_chans__0_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__result_chans__0_1_load_en;
  assign xls_concrete_2x2_k2__hor_chans__0_1_load_en = xls_concrete_2x2_k2__hor_chans__0_1_vld & xls_concrete_2x2_k2__hor_chans__0_1_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__0_1_load_en = xls_concrete_2x2_k2__vert_chans__0_1_vld & xls_concrete_2x2_k2__vert_chans__0_1_valid_load_en;
  assign or_2841 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_2119 = 32'h0000_0000 & {32{concat_2118[0]}} | new_accum & {32{concat_2118[1]}};
  assign or_2120 = and_2116 | and_2117;
  assign one_hot_sel_2125 = unexpand_for_next_value_207_1_case_1 & concat_2118[0] | unexpand_for_next_value_207_1_case_0 & concat_2118[1];
  assign __xls_concrete_2x2_k2__hor_chans__0_2_not_stage_load = ~__xls_concrete_2x2_k2__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__0_2_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__vert_chans__1_1_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__vert_chans__1_1_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__0_1_not_stage_load = ~__xls_concrete_2x2_k2__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__0_1_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__result_chans__0_1_valid_and_ready_txfr | __xls_concrete_2x2_k2__result_chans__0_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p0_b <= 32'h0000_0000;
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__0_2_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__1_1_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__0_1_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__0_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__0_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__0_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__0_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__0_2_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__0_2_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__1_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__1_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__0_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__result_chans__0_1_valid_reg <= 1'h0;
    end else begin
      p0_a <= p0_data_enable ? __xls_concrete_2x2_k2__hor_chans__0_1_reg : p0_a;
      p0_b <= p0_data_enable ? __xls_concrete_2x2_k2__vert_chans__0_1_reg : p0_b;
      ____state_1 <= or_2120 ? one_hot_sel_2125 : ____state_1;
      ____state_0 <= or_2120 ? one_hot_sel_2119 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __xls_concrete_2x2_k2__hor_chans__0_2_has_been_sent_reg <= __xls_concrete_2x2_k2__hor_chans__0_2_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__0_2_not_stage_load : __xls_concrete_2x2_k2__hor_chans__0_2_has_been_sent_reg;
      __xls_concrete_2x2_k2__vert_chans__1_1_has_been_sent_reg <= __xls_concrete_2x2_k2__vert_chans__1_1_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__0_2_not_stage_load : __xls_concrete_2x2_k2__vert_chans__1_1_has_been_sent_reg;
      __xls_concrete_2x2_k2__result_chans__0_1_has_been_sent_reg <= __xls_concrete_2x2_k2__result_chans__0_1_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__result_chans__0_1_not_stage_load : __xls_concrete_2x2_k2__result_chans__0_1_has_been_sent_reg;
      __xls_concrete_2x2_k2__hor_chans__0_1_reg <= xls_concrete_2x2_k2__hor_chans__0_1_load_en ? xls_concrete_2x2_k2__hor_chans__0_1 : __xls_concrete_2x2_k2__hor_chans__0_1_reg;
      __xls_concrete_2x2_k2__hor_chans__0_1_valid_reg <= xls_concrete_2x2_k2__hor_chans__0_1_valid_load_en ? xls_concrete_2x2_k2__hor_chans__0_1_vld : __xls_concrete_2x2_k2__hor_chans__0_1_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__0_1_reg <= xls_concrete_2x2_k2__vert_chans__0_1_load_en ? xls_concrete_2x2_k2__vert_chans__0_1 : __xls_concrete_2x2_k2__vert_chans__0_1_reg;
      __xls_concrete_2x2_k2__vert_chans__0_1_valid_reg <= xls_concrete_2x2_k2__vert_chans__0_1_valid_load_en ? xls_concrete_2x2_k2__vert_chans__0_1_vld : __xls_concrete_2x2_k2__vert_chans__0_1_valid_reg;
      __xls_concrete_2x2_k2__hor_chans__0_2_reg <= xls_concrete_2x2_k2__hor_chans__0_2_load_en ? p0_a : __xls_concrete_2x2_k2__hor_chans__0_2_reg;
      __xls_concrete_2x2_k2__hor_chans__0_2_valid_reg <= xls_concrete_2x2_k2__hor_chans__0_2_valid_load_en ? __xls_concrete_2x2_k2__hor_chans__0_2_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__hor_chans__0_2_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__1_1_reg <= xls_concrete_2x2_k2__vert_chans__1_1_load_en ? p0_b : __xls_concrete_2x2_k2__vert_chans__1_1_reg;
      __xls_concrete_2x2_k2__vert_chans__1_1_valid_reg <= xls_concrete_2x2_k2__vert_chans__1_1_valid_load_en ? __xls_concrete_2x2_k2__vert_chans__1_1_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__vert_chans__1_1_valid_reg;
      __xls_concrete_2x2_k2__result_chans__0_1_reg <= xls_concrete_2x2_k2__result_chans__0_1_load_en ? new_accum : __xls_concrete_2x2_k2__result_chans__0_1_reg;
      __xls_concrete_2x2_k2__result_chans__0_1_valid_reg <= xls_concrete_2x2_k2__result_chans__0_1_valid_load_en ? __xls_concrete_2x2_k2__result_chans__0_1_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__result_chans__0_1_valid_reg;
    end
  end
  assign xls_concrete_2x2_k2__hor_chans__0_1_rdy = xls_concrete_2x2_k2__hor_chans__0_1_load_en;
  assign xls_concrete_2x2_k2__hor_chans__0_2 = __xls_concrete_2x2_k2__hor_chans__0_2_reg;
  assign xls_concrete_2x2_k2__hor_chans__0_2_vld = __xls_concrete_2x2_k2__hor_chans__0_2_valid_reg;
  assign xls_concrete_2x2_k2__result_chans__0_1 = __xls_concrete_2x2_k2__result_chans__0_1_reg;
  assign xls_concrete_2x2_k2__result_chans__0_1_vld = __xls_concrete_2x2_k2__result_chans__0_1_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__0_1_rdy = xls_concrete_2x2_k2__vert_chans__0_1_load_en;
  assign xls_concrete_2x2_k2__vert_chans__1_1 = __xls_concrete_2x2_k2__vert_chans__1_1_reg;
  assign xls_concrete_2x2_k2__vert_chans__1_1_vld = __xls_concrete_2x2_k2__vert_chans__1_1_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2841))) or_2841) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2841))) or_2841) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __xls_concrete_2x2_k2__SystolicArray__PE_2_next(
  input wire clk,
  input wire rst,
  input wire [31:0] xls_concrete_2x2_k2__hor_chans__1_0,
  input wire xls_concrete_2x2_k2__hor_chans__1_0_vld,
  input wire xls_concrete_2x2_k2__hor_chans__1_1_rdy,
  input wire xls_concrete_2x2_k2__result_chans__1_0_rdy,
  input wire [31:0] xls_concrete_2x2_k2__vert_chans__1_0,
  input wire xls_concrete_2x2_k2__vert_chans__1_0_vld,
  input wire xls_concrete_2x2_k2__vert_chans__2_0_rdy,
  output wire xls_concrete_2x2_k2__hor_chans__1_0_rdy,
  output wire [31:0] xls_concrete_2x2_k2__hor_chans__1_1,
  output wire xls_concrete_2x2_k2__hor_chans__1_1_vld,
  output wire [31:0] xls_concrete_2x2_k2__result_chans__1_0,
  output wire xls_concrete_2x2_k2__result_chans__1_0_vld,
  output wire xls_concrete_2x2_k2__vert_chans__1_0_rdy,
  output wire [31:0] xls_concrete_2x2_k2__vert_chans__2_0,
  output wire xls_concrete_2x2_k2__vert_chans__2_0_vld
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    begin
      umul32b_32b_x_32b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  reg [31:0] p0_a;
  reg [31:0] p0_b;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg __xls_concrete_2x2_k2__hor_chans__1_1_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__vert_chans__2_0_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__result_chans__1_0_has_been_sent_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__1_0_reg;
  reg __xls_concrete_2x2_k2__hor_chans__1_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__1_0_reg;
  reg __xls_concrete_2x2_k2__vert_chans__1_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__1_1_reg;
  reg __xls_concrete_2x2_k2__hor_chans__1_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__2_0_reg;
  reg __xls_concrete_2x2_k2__vert_chans__2_0_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__result_chans__1_0_reg;
  reg __xls_concrete_2x2_k2__result_chans__1_0_valid_reg;
  wire __xls_concrete_2x2_k2__hor_chans__1_1_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__1_1_valid_inv;
  wire __xls_concrete_2x2_k2__vert_chans__2_0_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__2_0_valid_inv;
  wire __xls_concrete_2x2_k2__result_chans__1_0_vld_buf;
  wire __xls_concrete_2x2_k2__result_chans__1_0_not_has_been_sent;
  wire xls_concrete_2x2_k2__result_chans__1_0_valid_inv;
  wire __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__1_1_valid_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__2_0_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__2_0_valid_load_en;
  wire __xls_concrete_2x2_k2__result_chans__1_0_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__result_chans__1_0_valid_load_en;
  wire xls_concrete_2x2_k2__hor_chans__1_1_load_en;
  wire xls_concrete_2x2_k2__vert_chans__2_0_load_en;
  wire xls_concrete_2x2_k2__result_chans__1_0_load_en;
  wire __xls_concrete_2x2_k2__hor_chans__1_1_has_sent_or_is_ready;
  wire __xls_concrete_2x2_k2__vert_chans__2_0_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [2:0] one_hot_2268;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire p0_data_enable;
  wire xls_concrete_2x2_k2__hor_chans__1_0_valid_inv;
  wire xls_concrete_2x2_k2__vert_chans__1_0_valid_inv;
  wire and_2306;
  wire and_2307;
  wire [31:0] prod;
  wire xls_concrete_2x2_k2__hor_chans__1_0_valid_load_en;
  wire xls_concrete_2x2_k2__vert_chans__1_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2308;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_237_1_case_1;
  wire unexpand_for_next_value_237_1_case_0;
  wire __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_all_active_outputs_ready;
  wire __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__vert_chans__2_0_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__result_chans__1_0_valid_and_all_active_outputs_ready;
  wire __xls_concrete_2x2_k2__result_chans__1_0_valid_and_ready_txfr;
  wire xls_concrete_2x2_k2__hor_chans__1_0_load_en;
  wire xls_concrete_2x2_k2__vert_chans__1_0_load_en;
  wire or_2845;
  wire [31:0] one_hot_sel_2309;
  wire or_2310;
  wire one_hot_sel_2315;
  wire __xls_concrete_2x2_k2__hor_chans__1_1_not_stage_load;
  wire __xls_concrete_2x2_k2__hor_chans__1_1_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__2_0_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__result_chans__1_0_not_stage_load;
  wire __xls_concrete_2x2_k2__result_chans__1_0_has_been_sent_reg_load_en;
  assign __xls_concrete_2x2_k2__hor_chans__1_1_not_has_been_sent = ~__xls_concrete_2x2_k2__hor_chans__1_1_has_been_sent_reg;
  assign xls_concrete_2x2_k2__hor_chans__1_1_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__1_1_valid_reg;
  assign __xls_concrete_2x2_k2__vert_chans__2_0_not_has_been_sent = ~__xls_concrete_2x2_k2__vert_chans__2_0_has_been_sent_reg;
  assign xls_concrete_2x2_k2__vert_chans__2_0_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__2_0_valid_reg;
  assign __xls_concrete_2x2_k2__result_chans__1_0_vld_buf = p0_valid & ____state_1;
  assign __xls_concrete_2x2_k2__result_chans__1_0_not_has_been_sent = ~__xls_concrete_2x2_k2__result_chans__1_0_has_been_sent_reg;
  assign xls_concrete_2x2_k2__result_chans__1_0_valid_inv = ~__xls_concrete_2x2_k2__result_chans__1_0_valid_reg;
  assign __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_not_has_been_sent = p0_valid & __xls_concrete_2x2_k2__hor_chans__1_1_not_has_been_sent;
  assign xls_concrete_2x2_k2__hor_chans__1_1_valid_load_en = xls_concrete_2x2_k2__hor_chans__1_1_rdy | xls_concrete_2x2_k2__hor_chans__1_1_valid_inv;
  assign __xls_concrete_2x2_k2__vert_chans__2_0_valid_and_not_has_been_sent = p0_valid & __xls_concrete_2x2_k2__vert_chans__2_0_not_has_been_sent;
  assign xls_concrete_2x2_k2__vert_chans__2_0_valid_load_en = xls_concrete_2x2_k2__vert_chans__2_0_rdy | xls_concrete_2x2_k2__vert_chans__2_0_valid_inv;
  assign __xls_concrete_2x2_k2__result_chans__1_0_valid_and_not_has_been_sent = __xls_concrete_2x2_k2__result_chans__1_0_vld_buf & __xls_concrete_2x2_k2__result_chans__1_0_not_has_been_sent;
  assign xls_concrete_2x2_k2__result_chans__1_0_valid_load_en = xls_concrete_2x2_k2__result_chans__1_0_rdy | xls_concrete_2x2_k2__result_chans__1_0_valid_inv;
  assign xls_concrete_2x2_k2__hor_chans__1_1_load_en = __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__1_1_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__2_0_load_en = __xls_concrete_2x2_k2__vert_chans__2_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__2_0_valid_load_en;
  assign xls_concrete_2x2_k2__result_chans__1_0_load_en = __xls_concrete_2x2_k2__result_chans__1_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__result_chans__1_0_valid_load_en;
  assign __xls_concrete_2x2_k2__hor_chans__1_1_has_sent_or_is_ready = xls_concrete_2x2_k2__hor_chans__1_1_load_en | __xls_concrete_2x2_k2__hor_chans__1_1_has_been_sent_reg;
  assign __xls_concrete_2x2_k2__vert_chans__2_0_has_sent_or_is_ready = xls_concrete_2x2_k2__vert_chans__2_0_load_en | __xls_concrete_2x2_k2__vert_chans__2_0_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __xls_concrete_2x2_k2__hor_chans__1_1_has_sent_or_is_ready & __xls_concrete_2x2_k2__vert_chans__2_0_has_sent_or_is_ready & (~____state_1 | xls_concrete_2x2_k2__result_chans__1_0_load_en | __xls_concrete_2x2_k2__result_chans__1_0_has_been_sent_reg);
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_2268 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __xls_concrete_2x2_k2__hor_chans__1_0_valid_reg & __xls_concrete_2x2_k2__vert_chans__1_0_valid_reg;
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign xls_concrete_2x2_k2__hor_chans__1_0_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__1_0_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__1_0_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__1_0_valid_reg;
  assign and_2306 = ~____state_1 & p1_stage_done;
  assign and_2307 = ____state_1 & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign xls_concrete_2x2_k2__hor_chans__1_0_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__hor_chans__1_0_valid_inv;
  assign xls_concrete_2x2_k2__vert_chans__1_0_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__vert_chans__1_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2268[1] & ____state_1 == one_hot_2268[0];
  assign concat_2308 = {and_2306, and_2307};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_237_1_case_1 = 1'h0;
  assign unexpand_for_next_value_237_1_case_0 = 1'h1;
  assign __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_ready_txfr = __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__1_1_load_en;
  assign __xls_concrete_2x2_k2__vert_chans__2_0_valid_and_ready_txfr = __xls_concrete_2x2_k2__vert_chans__2_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__2_0_load_en;
  assign __xls_concrete_2x2_k2__result_chans__1_0_valid_and_all_active_outputs_ready = __xls_concrete_2x2_k2__result_chans__1_0_vld_buf & p1_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__1_0_valid_and_ready_txfr = __xls_concrete_2x2_k2__result_chans__1_0_valid_and_not_has_been_sent & xls_concrete_2x2_k2__result_chans__1_0_load_en;
  assign xls_concrete_2x2_k2__hor_chans__1_0_load_en = xls_concrete_2x2_k2__hor_chans__1_0_vld & xls_concrete_2x2_k2__hor_chans__1_0_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__1_0_load_en = xls_concrete_2x2_k2__vert_chans__1_0_vld & xls_concrete_2x2_k2__vert_chans__1_0_valid_load_en;
  assign or_2845 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_2309 = 32'h0000_0000 & {32{concat_2308[0]}} | new_accum & {32{concat_2308[1]}};
  assign or_2310 = and_2306 | and_2307;
  assign one_hot_sel_2315 = unexpand_for_next_value_237_1_case_1 & concat_2308[0] | unexpand_for_next_value_237_1_case_0 & concat_2308[1];
  assign __xls_concrete_2x2_k2__hor_chans__1_1_not_stage_load = ~__xls_concrete_2x2_k2__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__1_1_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__vert_chans__2_0_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__vert_chans__2_0_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__1_0_not_stage_load = ~__xls_concrete_2x2_k2__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__1_0_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__result_chans__1_0_valid_and_ready_txfr | __xls_concrete_2x2_k2__result_chans__1_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p0_b <= 32'h0000_0000;
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__1_1_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__2_0_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__1_0_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__1_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__1_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__1_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__1_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__1_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__1_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__2_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__2_0_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__1_0_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__result_chans__1_0_valid_reg <= 1'h0;
    end else begin
      p0_a <= p0_data_enable ? __xls_concrete_2x2_k2__hor_chans__1_0_reg : p0_a;
      p0_b <= p0_data_enable ? __xls_concrete_2x2_k2__vert_chans__1_0_reg : p0_b;
      ____state_1 <= or_2310 ? one_hot_sel_2315 : ____state_1;
      ____state_0 <= or_2310 ? one_hot_sel_2309 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __xls_concrete_2x2_k2__hor_chans__1_1_has_been_sent_reg <= __xls_concrete_2x2_k2__hor_chans__1_1_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__1_1_not_stage_load : __xls_concrete_2x2_k2__hor_chans__1_1_has_been_sent_reg;
      __xls_concrete_2x2_k2__vert_chans__2_0_has_been_sent_reg <= __xls_concrete_2x2_k2__vert_chans__2_0_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__1_1_not_stage_load : __xls_concrete_2x2_k2__vert_chans__2_0_has_been_sent_reg;
      __xls_concrete_2x2_k2__result_chans__1_0_has_been_sent_reg <= __xls_concrete_2x2_k2__result_chans__1_0_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__result_chans__1_0_not_stage_load : __xls_concrete_2x2_k2__result_chans__1_0_has_been_sent_reg;
      __xls_concrete_2x2_k2__hor_chans__1_0_reg <= xls_concrete_2x2_k2__hor_chans__1_0_load_en ? xls_concrete_2x2_k2__hor_chans__1_0 : __xls_concrete_2x2_k2__hor_chans__1_0_reg;
      __xls_concrete_2x2_k2__hor_chans__1_0_valid_reg <= xls_concrete_2x2_k2__hor_chans__1_0_valid_load_en ? xls_concrete_2x2_k2__hor_chans__1_0_vld : __xls_concrete_2x2_k2__hor_chans__1_0_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__1_0_reg <= xls_concrete_2x2_k2__vert_chans__1_0_load_en ? xls_concrete_2x2_k2__vert_chans__1_0 : __xls_concrete_2x2_k2__vert_chans__1_0_reg;
      __xls_concrete_2x2_k2__vert_chans__1_0_valid_reg <= xls_concrete_2x2_k2__vert_chans__1_0_valid_load_en ? xls_concrete_2x2_k2__vert_chans__1_0_vld : __xls_concrete_2x2_k2__vert_chans__1_0_valid_reg;
      __xls_concrete_2x2_k2__hor_chans__1_1_reg <= xls_concrete_2x2_k2__hor_chans__1_1_load_en ? p0_a : __xls_concrete_2x2_k2__hor_chans__1_1_reg;
      __xls_concrete_2x2_k2__hor_chans__1_1_valid_reg <= xls_concrete_2x2_k2__hor_chans__1_1_valid_load_en ? __xls_concrete_2x2_k2__hor_chans__1_1_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__hor_chans__1_1_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__2_0_reg <= xls_concrete_2x2_k2__vert_chans__2_0_load_en ? p0_b : __xls_concrete_2x2_k2__vert_chans__2_0_reg;
      __xls_concrete_2x2_k2__vert_chans__2_0_valid_reg <= xls_concrete_2x2_k2__vert_chans__2_0_valid_load_en ? __xls_concrete_2x2_k2__vert_chans__2_0_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__vert_chans__2_0_valid_reg;
      __xls_concrete_2x2_k2__result_chans__1_0_reg <= xls_concrete_2x2_k2__result_chans__1_0_load_en ? new_accum : __xls_concrete_2x2_k2__result_chans__1_0_reg;
      __xls_concrete_2x2_k2__result_chans__1_0_valid_reg <= xls_concrete_2x2_k2__result_chans__1_0_valid_load_en ? __xls_concrete_2x2_k2__result_chans__1_0_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__result_chans__1_0_valid_reg;
    end
  end
  assign xls_concrete_2x2_k2__hor_chans__1_0_rdy = xls_concrete_2x2_k2__hor_chans__1_0_load_en;
  assign xls_concrete_2x2_k2__hor_chans__1_1 = __xls_concrete_2x2_k2__hor_chans__1_1_reg;
  assign xls_concrete_2x2_k2__hor_chans__1_1_vld = __xls_concrete_2x2_k2__hor_chans__1_1_valid_reg;
  assign xls_concrete_2x2_k2__result_chans__1_0 = __xls_concrete_2x2_k2__result_chans__1_0_reg;
  assign xls_concrete_2x2_k2__result_chans__1_0_vld = __xls_concrete_2x2_k2__result_chans__1_0_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__1_0_rdy = xls_concrete_2x2_k2__vert_chans__1_0_load_en;
  assign xls_concrete_2x2_k2__vert_chans__2_0 = __xls_concrete_2x2_k2__vert_chans__2_0_reg;
  assign xls_concrete_2x2_k2__vert_chans__2_0_vld = __xls_concrete_2x2_k2__vert_chans__2_0_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2845))) or_2845) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2845))) or_2845) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __xls_concrete_2x2_k2__SystolicArray__PE_3_next(
  input wire clk,
  input wire rst,
  input wire [31:0] xls_concrete_2x2_k2__hor_chans__1_1,
  input wire xls_concrete_2x2_k2__hor_chans__1_1_vld,
  input wire xls_concrete_2x2_k2__hor_chans__1_2_rdy,
  input wire xls_concrete_2x2_k2__result_chans__1_1_rdy,
  input wire [31:0] xls_concrete_2x2_k2__vert_chans__1_1,
  input wire xls_concrete_2x2_k2__vert_chans__1_1_vld,
  input wire xls_concrete_2x2_k2__vert_chans__2_1_rdy,
  output wire xls_concrete_2x2_k2__hor_chans__1_1_rdy,
  output wire [31:0] xls_concrete_2x2_k2__hor_chans__1_2,
  output wire xls_concrete_2x2_k2__hor_chans__1_2_vld,
  output wire [31:0] xls_concrete_2x2_k2__result_chans__1_1,
  output wire xls_concrete_2x2_k2__result_chans__1_1_vld,
  output wire xls_concrete_2x2_k2__vert_chans__1_1_rdy,
  output wire [31:0] xls_concrete_2x2_k2__vert_chans__2_1,
  output wire xls_concrete_2x2_k2__vert_chans__2_1_vld
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    begin
      umul32b_32b_x_32b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  reg [31:0] p0_a;
  reg [31:0] p0_b;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg __xls_concrete_2x2_k2__hor_chans__1_2_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__vert_chans__2_1_has_been_sent_reg;
  reg __xls_concrete_2x2_k2__result_chans__1_1_has_been_sent_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__1_1_reg;
  reg __xls_concrete_2x2_k2__hor_chans__1_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__1_1_reg;
  reg __xls_concrete_2x2_k2__vert_chans__1_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__hor_chans__1_2_reg;
  reg __xls_concrete_2x2_k2__hor_chans__1_2_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__vert_chans__2_1_reg;
  reg __xls_concrete_2x2_k2__vert_chans__2_1_valid_reg;
  reg [31:0] __xls_concrete_2x2_k2__result_chans__1_1_reg;
  reg __xls_concrete_2x2_k2__result_chans__1_1_valid_reg;
  wire __xls_concrete_2x2_k2__hor_chans__1_2_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__1_2_valid_inv;
  wire __xls_concrete_2x2_k2__vert_chans__2_1_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__2_1_valid_inv;
  wire __xls_concrete_2x2_k2__result_chans__1_1_vld_buf;
  wire __xls_concrete_2x2_k2__result_chans__1_1_not_has_been_sent;
  wire xls_concrete_2x2_k2__result_chans__1_1_valid_inv;
  wire __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__hor_chans__1_2_valid_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__2_1_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__vert_chans__2_1_valid_load_en;
  wire __xls_concrete_2x2_k2__result_chans__1_1_valid_and_not_has_been_sent;
  wire xls_concrete_2x2_k2__result_chans__1_1_valid_load_en;
  wire xls_concrete_2x2_k2__hor_chans__1_2_load_en;
  wire xls_concrete_2x2_k2__vert_chans__2_1_load_en;
  wire xls_concrete_2x2_k2__result_chans__1_1_load_en;
  wire __xls_concrete_2x2_k2__hor_chans__1_2_has_sent_or_is_ready;
  wire __xls_concrete_2x2_k2__vert_chans__2_1_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [2:0] one_hot_2458;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire p0_data_enable;
  wire xls_concrete_2x2_k2__hor_chans__1_1_valid_inv;
  wire xls_concrete_2x2_k2__vert_chans__1_1_valid_inv;
  wire and_2496;
  wire and_2497;
  wire [31:0] prod;
  wire xls_concrete_2x2_k2__hor_chans__1_1_valid_load_en;
  wire xls_concrete_2x2_k2__vert_chans__1_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2498;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_267_1_case_1;
  wire unexpand_for_next_value_267_1_case_0;
  wire __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_all_active_outputs_ready;
  wire __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__vert_chans__2_1_valid_and_ready_txfr;
  wire __xls_concrete_2x2_k2__result_chans__1_1_valid_and_all_active_outputs_ready;
  wire __xls_concrete_2x2_k2__result_chans__1_1_valid_and_ready_txfr;
  wire xls_concrete_2x2_k2__hor_chans__1_1_load_en;
  wire xls_concrete_2x2_k2__vert_chans__1_1_load_en;
  wire or_2849;
  wire [31:0] one_hot_sel_2499;
  wire or_2500;
  wire one_hot_sel_2505;
  wire __xls_concrete_2x2_k2__hor_chans__1_2_not_stage_load;
  wire __xls_concrete_2x2_k2__hor_chans__1_2_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__vert_chans__2_1_has_been_sent_reg_load_en;
  wire __xls_concrete_2x2_k2__result_chans__1_1_not_stage_load;
  wire __xls_concrete_2x2_k2__result_chans__1_1_has_been_sent_reg_load_en;
  assign __xls_concrete_2x2_k2__hor_chans__1_2_not_has_been_sent = ~__xls_concrete_2x2_k2__hor_chans__1_2_has_been_sent_reg;
  assign xls_concrete_2x2_k2__hor_chans__1_2_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__1_2_valid_reg;
  assign __xls_concrete_2x2_k2__vert_chans__2_1_not_has_been_sent = ~__xls_concrete_2x2_k2__vert_chans__2_1_has_been_sent_reg;
  assign xls_concrete_2x2_k2__vert_chans__2_1_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__2_1_valid_reg;
  assign __xls_concrete_2x2_k2__result_chans__1_1_vld_buf = p0_valid & ____state_1;
  assign __xls_concrete_2x2_k2__result_chans__1_1_not_has_been_sent = ~__xls_concrete_2x2_k2__result_chans__1_1_has_been_sent_reg;
  assign xls_concrete_2x2_k2__result_chans__1_1_valid_inv = ~__xls_concrete_2x2_k2__result_chans__1_1_valid_reg;
  assign __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_not_has_been_sent = p0_valid & __xls_concrete_2x2_k2__hor_chans__1_2_not_has_been_sent;
  assign xls_concrete_2x2_k2__hor_chans__1_2_valid_load_en = xls_concrete_2x2_k2__hor_chans__1_2_rdy | xls_concrete_2x2_k2__hor_chans__1_2_valid_inv;
  assign __xls_concrete_2x2_k2__vert_chans__2_1_valid_and_not_has_been_sent = p0_valid & __xls_concrete_2x2_k2__vert_chans__2_1_not_has_been_sent;
  assign xls_concrete_2x2_k2__vert_chans__2_1_valid_load_en = xls_concrete_2x2_k2__vert_chans__2_1_rdy | xls_concrete_2x2_k2__vert_chans__2_1_valid_inv;
  assign __xls_concrete_2x2_k2__result_chans__1_1_valid_and_not_has_been_sent = __xls_concrete_2x2_k2__result_chans__1_1_vld_buf & __xls_concrete_2x2_k2__result_chans__1_1_not_has_been_sent;
  assign xls_concrete_2x2_k2__result_chans__1_1_valid_load_en = xls_concrete_2x2_k2__result_chans__1_1_rdy | xls_concrete_2x2_k2__result_chans__1_1_valid_inv;
  assign xls_concrete_2x2_k2__hor_chans__1_2_load_en = __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__1_2_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__2_1_load_en = __xls_concrete_2x2_k2__vert_chans__2_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__2_1_valid_load_en;
  assign xls_concrete_2x2_k2__result_chans__1_1_load_en = __xls_concrete_2x2_k2__result_chans__1_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__result_chans__1_1_valid_load_en;
  assign __xls_concrete_2x2_k2__hor_chans__1_2_has_sent_or_is_ready = xls_concrete_2x2_k2__hor_chans__1_2_load_en | __xls_concrete_2x2_k2__hor_chans__1_2_has_been_sent_reg;
  assign __xls_concrete_2x2_k2__vert_chans__2_1_has_sent_or_is_ready = xls_concrete_2x2_k2__vert_chans__2_1_load_en | __xls_concrete_2x2_k2__vert_chans__2_1_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __xls_concrete_2x2_k2__hor_chans__1_2_has_sent_or_is_ready & __xls_concrete_2x2_k2__vert_chans__2_1_has_sent_or_is_ready & (~____state_1 | xls_concrete_2x2_k2__result_chans__1_1_load_en | __xls_concrete_2x2_k2__result_chans__1_1_has_been_sent_reg);
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_2458 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __xls_concrete_2x2_k2__hor_chans__1_1_valid_reg & __xls_concrete_2x2_k2__vert_chans__1_1_valid_reg;
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign xls_concrete_2x2_k2__hor_chans__1_1_valid_inv = ~__xls_concrete_2x2_k2__hor_chans__1_1_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__1_1_valid_inv = ~__xls_concrete_2x2_k2__vert_chans__1_1_valid_reg;
  assign and_2496 = ~____state_1 & p1_stage_done;
  assign and_2497 = ____state_1 & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign xls_concrete_2x2_k2__hor_chans__1_1_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__hor_chans__1_1_valid_inv;
  assign xls_concrete_2x2_k2__vert_chans__1_1_valid_load_en = p0_data_enable | xls_concrete_2x2_k2__vert_chans__1_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2458[1] & ____state_1 == one_hot_2458[0];
  assign concat_2498 = {and_2496, and_2497};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_267_1_case_1 = 1'h0;
  assign unexpand_for_next_value_267_1_case_0 = 1'h1;
  assign __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_ready_txfr = __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_not_has_been_sent & xls_concrete_2x2_k2__hor_chans__1_2_load_en;
  assign __xls_concrete_2x2_k2__vert_chans__2_1_valid_and_ready_txfr = __xls_concrete_2x2_k2__vert_chans__2_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__vert_chans__2_1_load_en;
  assign __xls_concrete_2x2_k2__result_chans__1_1_valid_and_all_active_outputs_ready = __xls_concrete_2x2_k2__result_chans__1_1_vld_buf & p1_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__1_1_valid_and_ready_txfr = __xls_concrete_2x2_k2__result_chans__1_1_valid_and_not_has_been_sent & xls_concrete_2x2_k2__result_chans__1_1_load_en;
  assign xls_concrete_2x2_k2__hor_chans__1_1_load_en = xls_concrete_2x2_k2__hor_chans__1_1_vld & xls_concrete_2x2_k2__hor_chans__1_1_valid_load_en;
  assign xls_concrete_2x2_k2__vert_chans__1_1_load_en = xls_concrete_2x2_k2__vert_chans__1_1_vld & xls_concrete_2x2_k2__vert_chans__1_1_valid_load_en;
  assign or_2849 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_2499 = 32'h0000_0000 & {32{concat_2498[0]}} | new_accum & {32{concat_2498[1]}};
  assign or_2500 = and_2496 | and_2497;
  assign one_hot_sel_2505 = unexpand_for_next_value_267_1_case_1 & concat_2498[0] | unexpand_for_next_value_267_1_case_0 & concat_2498[1];
  assign __xls_concrete_2x2_k2__hor_chans__1_2_not_stage_load = ~__xls_concrete_2x2_k2__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__hor_chans__1_2_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__vert_chans__2_1_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__vert_chans__2_1_valid_and_ready_txfr | __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__1_1_not_stage_load = ~__xls_concrete_2x2_k2__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign __xls_concrete_2x2_k2__result_chans__1_1_has_been_sent_reg_load_en = __xls_concrete_2x2_k2__result_chans__1_1_valid_and_ready_txfr | __xls_concrete_2x2_k2__result_chans__1_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p0_b <= 32'h0000_0000;
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__1_2_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__2_1_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__1_1_has_been_sent_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__1_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__1_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__1_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__1_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__hor_chans__1_2_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__hor_chans__1_2_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__vert_chans__2_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__vert_chans__2_1_valid_reg <= 1'h0;
      __xls_concrete_2x2_k2__result_chans__1_1_reg <= 32'h0000_0000;
      __xls_concrete_2x2_k2__result_chans__1_1_valid_reg <= 1'h0;
    end else begin
      p0_a <= p0_data_enable ? __xls_concrete_2x2_k2__hor_chans__1_1_reg : p0_a;
      p0_b <= p0_data_enable ? __xls_concrete_2x2_k2__vert_chans__1_1_reg : p0_b;
      ____state_1 <= or_2500 ? one_hot_sel_2505 : ____state_1;
      ____state_0 <= or_2500 ? one_hot_sel_2499 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __xls_concrete_2x2_k2__hor_chans__1_2_has_been_sent_reg <= __xls_concrete_2x2_k2__hor_chans__1_2_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__1_2_not_stage_load : __xls_concrete_2x2_k2__hor_chans__1_2_has_been_sent_reg;
      __xls_concrete_2x2_k2__vert_chans__2_1_has_been_sent_reg <= __xls_concrete_2x2_k2__vert_chans__2_1_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__hor_chans__1_2_not_stage_load : __xls_concrete_2x2_k2__vert_chans__2_1_has_been_sent_reg;
      __xls_concrete_2x2_k2__result_chans__1_1_has_been_sent_reg <= __xls_concrete_2x2_k2__result_chans__1_1_has_been_sent_reg_load_en ? __xls_concrete_2x2_k2__result_chans__1_1_not_stage_load : __xls_concrete_2x2_k2__result_chans__1_1_has_been_sent_reg;
      __xls_concrete_2x2_k2__hor_chans__1_1_reg <= xls_concrete_2x2_k2__hor_chans__1_1_load_en ? xls_concrete_2x2_k2__hor_chans__1_1 : __xls_concrete_2x2_k2__hor_chans__1_1_reg;
      __xls_concrete_2x2_k2__hor_chans__1_1_valid_reg <= xls_concrete_2x2_k2__hor_chans__1_1_valid_load_en ? xls_concrete_2x2_k2__hor_chans__1_1_vld : __xls_concrete_2x2_k2__hor_chans__1_1_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__1_1_reg <= xls_concrete_2x2_k2__vert_chans__1_1_load_en ? xls_concrete_2x2_k2__vert_chans__1_1 : __xls_concrete_2x2_k2__vert_chans__1_1_reg;
      __xls_concrete_2x2_k2__vert_chans__1_1_valid_reg <= xls_concrete_2x2_k2__vert_chans__1_1_valid_load_en ? xls_concrete_2x2_k2__vert_chans__1_1_vld : __xls_concrete_2x2_k2__vert_chans__1_1_valid_reg;
      __xls_concrete_2x2_k2__hor_chans__1_2_reg <= xls_concrete_2x2_k2__hor_chans__1_2_load_en ? p0_a : __xls_concrete_2x2_k2__hor_chans__1_2_reg;
      __xls_concrete_2x2_k2__hor_chans__1_2_valid_reg <= xls_concrete_2x2_k2__hor_chans__1_2_valid_load_en ? __xls_concrete_2x2_k2__hor_chans__1_2_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__hor_chans__1_2_valid_reg;
      __xls_concrete_2x2_k2__vert_chans__2_1_reg <= xls_concrete_2x2_k2__vert_chans__2_1_load_en ? p0_b : __xls_concrete_2x2_k2__vert_chans__2_1_reg;
      __xls_concrete_2x2_k2__vert_chans__2_1_valid_reg <= xls_concrete_2x2_k2__vert_chans__2_1_valid_load_en ? __xls_concrete_2x2_k2__vert_chans__2_1_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__vert_chans__2_1_valid_reg;
      __xls_concrete_2x2_k2__result_chans__1_1_reg <= xls_concrete_2x2_k2__result_chans__1_1_load_en ? new_accum : __xls_concrete_2x2_k2__result_chans__1_1_reg;
      __xls_concrete_2x2_k2__result_chans__1_1_valid_reg <= xls_concrete_2x2_k2__result_chans__1_1_valid_load_en ? __xls_concrete_2x2_k2__result_chans__1_1_valid_and_not_has_been_sent : __xls_concrete_2x2_k2__result_chans__1_1_valid_reg;
    end
  end
  assign xls_concrete_2x2_k2__hor_chans__1_1_rdy = xls_concrete_2x2_k2__hor_chans__1_1_load_en;
  assign xls_concrete_2x2_k2__hor_chans__1_2 = __xls_concrete_2x2_k2__hor_chans__1_2_reg;
  assign xls_concrete_2x2_k2__hor_chans__1_2_vld = __xls_concrete_2x2_k2__hor_chans__1_2_valid_reg;
  assign xls_concrete_2x2_k2__result_chans__1_1 = __xls_concrete_2x2_k2__result_chans__1_1_reg;
  assign xls_concrete_2x2_k2__result_chans__1_1_vld = __xls_concrete_2x2_k2__result_chans__1_1_valid_reg;
  assign xls_concrete_2x2_k2__vert_chans__1_1_rdy = xls_concrete_2x2_k2__vert_chans__1_1_load_en;
  assign xls_concrete_2x2_k2__vert_chans__2_1 = __xls_concrete_2x2_k2__vert_chans__2_1_reg;
  assign xls_concrete_2x2_k2__vert_chans__2_1_vld = __xls_concrete_2x2_k2__vert_chans__2_1_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2849))) or_2849) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2849))) or_2849) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __xls_concrete_2x2_k2__SystolicArray_0_next(
  input wire clk,
  input wire rst,
  input wire [127:0] xls_concrete_2x2_k2__arg0,
  input wire xls_concrete_2x2_k2__arg0_vld,
  input wire [127:0] xls_concrete_2x2_k2__arg1,
  input wire xls_concrete_2x2_k2__arg1_vld,
  input wire xls_concrete_2x2_k2__out0_rdy,
  output wire xls_concrete_2x2_k2__arg0_rdy,
  output wire xls_concrete_2x2_k2__arg1_rdy,
  output wire [127:0] xls_concrete_2x2_k2__out0,
  output wire xls_concrete_2x2_k2__out0_vld
);
  wire [31:0] xls_concrete_2x2_k2__arg0_unflattened[2][2];
  assign xls_concrete_2x2_k2__arg0_unflattened[0][0] = xls_concrete_2x2_k2__arg0[31:0];
  assign xls_concrete_2x2_k2__arg0_unflattened[0][1] = xls_concrete_2x2_k2__arg0[63:32];
  assign xls_concrete_2x2_k2__arg0_unflattened[1][0] = xls_concrete_2x2_k2__arg0[95:64];
  assign xls_concrete_2x2_k2__arg0_unflattened[1][1] = xls_concrete_2x2_k2__arg0[127:96];
  wire [31:0] xls_concrete_2x2_k2__arg1_unflattened[2][2];
  assign xls_concrete_2x2_k2__arg1_unflattened[0][0] = xls_concrete_2x2_k2__arg1[31:0];
  assign xls_concrete_2x2_k2__arg1_unflattened[0][1] = xls_concrete_2x2_k2__arg1[63:32];
  assign xls_concrete_2x2_k2__arg1_unflattened[1][0] = xls_concrete_2x2_k2__arg1[95:64];
  assign xls_concrete_2x2_k2__arg1_unflattened[1][1] = xls_concrete_2x2_k2__arg1[127:96];
  wire instantiation_output_2610;
  wire instantiation_output_2616;
  wire [31:0] instantiation_output_2621;
  wire instantiation_output_2622;
  wire instantiation_output_2655;
  wire [31:0] instantiation_output_2660;
  wire instantiation_output_2661;
  wire instantiation_output_2694;
  wire [31:0] instantiation_output_2698[2][2];
  wire instantiation_output_2699;
  wire instantiation_output_2713;
  wire instantiation_output_2726;
  wire instantiation_output_2739;
  wire instantiation_output_2752;
  wire [31:0] instantiation_output_2757;
  wire instantiation_output_2758;
  wire [31:0] instantiation_output_2770;
  wire instantiation_output_2771;
  wire instantiation_output_2817;
  wire instantiation_output_2830;
  wire instantiation_output_2629;
  wire [31:0] instantiation_output_2634;
  wire instantiation_output_2635;
  wire [31:0] instantiation_output_2705;
  wire instantiation_output_2706;
  wire instantiation_output_2765;
  wire [31:0] instantiation_output_2783;
  wire instantiation_output_2784;
  wire instantiation_output_2642;
  wire [31:0] instantiation_output_2647;
  wire instantiation_output_2648;
  wire [31:0] instantiation_output_2718;
  wire instantiation_output_2719;
  wire instantiation_output_2778;
  wire [31:0] instantiation_output_2796;
  wire instantiation_output_2797;
  wire instantiation_output_2668;
  wire [31:0] instantiation_output_2673;
  wire instantiation_output_2674;
  wire [31:0] instantiation_output_2731;
  wire instantiation_output_2732;
  wire instantiation_output_2791;
  wire [31:0] instantiation_output_2809;
  wire instantiation_output_2810;
  wire instantiation_output_2681;
  wire [31:0] instantiation_output_2686;
  wire instantiation_output_2687;
  wire [31:0] instantiation_output_2744;
  wire instantiation_output_2745;
  wire instantiation_output_2804;
  wire [31:0] instantiation_output_2822;
  wire instantiation_output_2823;
  wire instantiation_output_2623;
  wire [31:0] instantiation_output_2627;
  wire instantiation_output_2628;
  wire instantiation_output_2636;
  wire [31:0] instantiation_output_2640;
  wire instantiation_output_2641;
  wire instantiation_output_2649;
  wire [31:0] instantiation_output_2653;
  wire instantiation_output_2654;
  wire instantiation_output_2662;
  wire [31:0] instantiation_output_2666;
  wire instantiation_output_2667;
  wire instantiation_output_2675;
  wire [31:0] instantiation_output_2679;
  wire instantiation_output_2680;
  wire instantiation_output_2688;
  wire [31:0] instantiation_output_2692;
  wire instantiation_output_2693;
  wire instantiation_output_2707;
  wire [31:0] instantiation_output_2711;
  wire instantiation_output_2712;
  wire instantiation_output_2720;
  wire [31:0] instantiation_output_2724;
  wire instantiation_output_2725;
  wire instantiation_output_2733;
  wire [31:0] instantiation_output_2737;
  wire instantiation_output_2738;
  wire instantiation_output_2746;
  wire [31:0] instantiation_output_2750;
  wire instantiation_output_2751;
  wire instantiation_output_2759;
  wire [31:0] instantiation_output_2763;
  wire instantiation_output_2764;
  wire instantiation_output_2772;
  wire [31:0] instantiation_output_2776;
  wire instantiation_output_2777;
  wire instantiation_output_2785;
  wire [31:0] instantiation_output_2789;
  wire instantiation_output_2790;
  wire instantiation_output_2798;
  wire [31:0] instantiation_output_2802;
  wire instantiation_output_2803;
  wire instantiation_output_2811;
  wire [31:0] instantiation_output_2815;
  wire instantiation_output_2816;
  wire instantiation_output_2824;
  wire [31:0] instantiation_output_2828;
  wire instantiation_output_2829;

  // ===== Instantiations
  __xls_concrete_2x2_k2__SystolicArray_0_next__1 __xls_concrete_2x2_k2__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .xls_concrete_2x2_k2__arg0({{xls_concrete_2x2_k2__arg0_unflattened[1][1], xls_concrete_2x2_k2__arg0_unflattened[1][0]}, {xls_concrete_2x2_k2__arg0_unflattened[0][1], xls_concrete_2x2_k2__arg0_unflattened[0][0]}}),
    .xls_concrete_2x2_k2__arg0_vld(xls_concrete_2x2_k2__arg0_vld),
    .xls_concrete_2x2_k2__arg1({{xls_concrete_2x2_k2__arg1_unflattened[1][1], xls_concrete_2x2_k2__arg1_unflattened[1][0]}, {xls_concrete_2x2_k2__arg1_unflattened[0][1], xls_concrete_2x2_k2__arg1_unflattened[0][0]}}),
    .xls_concrete_2x2_k2__arg1_vld(xls_concrete_2x2_k2__arg1_vld),
    .xls_concrete_2x2_k2__hor_chans__0_0_rdy(instantiation_output_2623),
    .xls_concrete_2x2_k2__hor_chans__0_2(instantiation_output_2653),
    .xls_concrete_2x2_k2__hor_chans__0_2_vld(instantiation_output_2654),
    .xls_concrete_2x2_k2__hor_chans__1_0_rdy(instantiation_output_2662),
    .xls_concrete_2x2_k2__hor_chans__1_2(instantiation_output_2692),
    .xls_concrete_2x2_k2__hor_chans__1_2_vld(instantiation_output_2693),
    .xls_concrete_2x2_k2__out0_rdy(xls_concrete_2x2_k2__out0_rdy),
    .xls_concrete_2x2_k2__result_chans__0_0(instantiation_output_2711),
    .xls_concrete_2x2_k2__result_chans__0_0_vld(instantiation_output_2712),
    .xls_concrete_2x2_k2__result_chans__0_1(instantiation_output_2724),
    .xls_concrete_2x2_k2__result_chans__0_1_vld(instantiation_output_2725),
    .xls_concrete_2x2_k2__result_chans__1_0(instantiation_output_2737),
    .xls_concrete_2x2_k2__result_chans__1_0_vld(instantiation_output_2738),
    .xls_concrete_2x2_k2__result_chans__1_1(instantiation_output_2750),
    .xls_concrete_2x2_k2__result_chans__1_1_vld(instantiation_output_2751),
    .xls_concrete_2x2_k2__vert_chans__0_0_rdy(instantiation_output_2759),
    .xls_concrete_2x2_k2__vert_chans__0_1_rdy(instantiation_output_2772),
    .xls_concrete_2x2_k2__vert_chans__2_0(instantiation_output_2815),
    .xls_concrete_2x2_k2__vert_chans__2_0_vld(instantiation_output_2816),
    .xls_concrete_2x2_k2__vert_chans__2_1(instantiation_output_2828),
    .xls_concrete_2x2_k2__vert_chans__2_1_vld(instantiation_output_2829),
    .xls_concrete_2x2_k2__arg0_rdy(instantiation_output_2610),
    .xls_concrete_2x2_k2__arg1_rdy(instantiation_output_2616),
    .xls_concrete_2x2_k2__hor_chans__0_0(instantiation_output_2621),
    .xls_concrete_2x2_k2__hor_chans__0_0_vld(instantiation_output_2622),
    .xls_concrete_2x2_k2__hor_chans__0_2_rdy(instantiation_output_2655),
    .xls_concrete_2x2_k2__hor_chans__1_0(instantiation_output_2660),
    .xls_concrete_2x2_k2__hor_chans__1_0_vld(instantiation_output_2661),
    .xls_concrete_2x2_k2__hor_chans__1_2_rdy(instantiation_output_2694),
    .xls_concrete_2x2_k2__out0({{instantiation_output_2698[1][1], instantiation_output_2698[1][0]}, {instantiation_output_2698[0][1], instantiation_output_2698[0][0]}}),
    .xls_concrete_2x2_k2__out0_vld(instantiation_output_2699),
    .xls_concrete_2x2_k2__result_chans__0_0_rdy(instantiation_output_2713),
    .xls_concrete_2x2_k2__result_chans__0_1_rdy(instantiation_output_2726),
    .xls_concrete_2x2_k2__result_chans__1_0_rdy(instantiation_output_2739),
    .xls_concrete_2x2_k2__result_chans__1_1_rdy(instantiation_output_2752),
    .xls_concrete_2x2_k2__vert_chans__0_0(instantiation_output_2757),
    .xls_concrete_2x2_k2__vert_chans__0_0_vld(instantiation_output_2758),
    .xls_concrete_2x2_k2__vert_chans__0_1(instantiation_output_2770),
    .xls_concrete_2x2_k2__vert_chans__0_1_vld(instantiation_output_2771),
    .xls_concrete_2x2_k2__vert_chans__2_0_rdy(instantiation_output_2817),
    .xls_concrete_2x2_k2__vert_chans__2_1_rdy(instantiation_output_2830),
    .clk(clk)
  );
  __xls_concrete_2x2_k2__SystolicArray__PE_0_next __xls_concrete_2x2_k2__SystolicArray__PE_0_next_inst1 (
    .rst(rst),
    .xls_concrete_2x2_k2__hor_chans__0_0(instantiation_output_2627),
    .xls_concrete_2x2_k2__hor_chans__0_0_vld(instantiation_output_2628),
    .xls_concrete_2x2_k2__hor_chans__0_1_rdy(instantiation_output_2636),
    .xls_concrete_2x2_k2__result_chans__0_0_rdy(instantiation_output_2707),
    .xls_concrete_2x2_k2__vert_chans__0_0(instantiation_output_2763),
    .xls_concrete_2x2_k2__vert_chans__0_0_vld(instantiation_output_2764),
    .xls_concrete_2x2_k2__vert_chans__1_0_rdy(instantiation_output_2785),
    .xls_concrete_2x2_k2__hor_chans__0_0_rdy(instantiation_output_2629),
    .xls_concrete_2x2_k2__hor_chans__0_1(instantiation_output_2634),
    .xls_concrete_2x2_k2__hor_chans__0_1_vld(instantiation_output_2635),
    .xls_concrete_2x2_k2__result_chans__0_0(instantiation_output_2705),
    .xls_concrete_2x2_k2__result_chans__0_0_vld(instantiation_output_2706),
    .xls_concrete_2x2_k2__vert_chans__0_0_rdy(instantiation_output_2765),
    .xls_concrete_2x2_k2__vert_chans__1_0(instantiation_output_2783),
    .xls_concrete_2x2_k2__vert_chans__1_0_vld(instantiation_output_2784),
    .clk(clk)
  );
  __xls_concrete_2x2_k2__SystolicArray__PE_1_next __xls_concrete_2x2_k2__SystolicArray__PE_1_next_inst2 (
    .rst(rst),
    .xls_concrete_2x2_k2__hor_chans__0_1(instantiation_output_2640),
    .xls_concrete_2x2_k2__hor_chans__0_1_vld(instantiation_output_2641),
    .xls_concrete_2x2_k2__hor_chans__0_2_rdy(instantiation_output_2649),
    .xls_concrete_2x2_k2__result_chans__0_1_rdy(instantiation_output_2720),
    .xls_concrete_2x2_k2__vert_chans__0_1(instantiation_output_2776),
    .xls_concrete_2x2_k2__vert_chans__0_1_vld(instantiation_output_2777),
    .xls_concrete_2x2_k2__vert_chans__1_1_rdy(instantiation_output_2798),
    .xls_concrete_2x2_k2__hor_chans__0_1_rdy(instantiation_output_2642),
    .xls_concrete_2x2_k2__hor_chans__0_2(instantiation_output_2647),
    .xls_concrete_2x2_k2__hor_chans__0_2_vld(instantiation_output_2648),
    .xls_concrete_2x2_k2__result_chans__0_1(instantiation_output_2718),
    .xls_concrete_2x2_k2__result_chans__0_1_vld(instantiation_output_2719),
    .xls_concrete_2x2_k2__vert_chans__0_1_rdy(instantiation_output_2778),
    .xls_concrete_2x2_k2__vert_chans__1_1(instantiation_output_2796),
    .xls_concrete_2x2_k2__vert_chans__1_1_vld(instantiation_output_2797),
    .clk(clk)
  );
  __xls_concrete_2x2_k2__SystolicArray__PE_2_next __xls_concrete_2x2_k2__SystolicArray__PE_2_next_inst3 (
    .rst(rst),
    .xls_concrete_2x2_k2__hor_chans__1_0(instantiation_output_2666),
    .xls_concrete_2x2_k2__hor_chans__1_0_vld(instantiation_output_2667),
    .xls_concrete_2x2_k2__hor_chans__1_1_rdy(instantiation_output_2675),
    .xls_concrete_2x2_k2__result_chans__1_0_rdy(instantiation_output_2733),
    .xls_concrete_2x2_k2__vert_chans__1_0(instantiation_output_2789),
    .xls_concrete_2x2_k2__vert_chans__1_0_vld(instantiation_output_2790),
    .xls_concrete_2x2_k2__vert_chans__2_0_rdy(instantiation_output_2811),
    .xls_concrete_2x2_k2__hor_chans__1_0_rdy(instantiation_output_2668),
    .xls_concrete_2x2_k2__hor_chans__1_1(instantiation_output_2673),
    .xls_concrete_2x2_k2__hor_chans__1_1_vld(instantiation_output_2674),
    .xls_concrete_2x2_k2__result_chans__1_0(instantiation_output_2731),
    .xls_concrete_2x2_k2__result_chans__1_0_vld(instantiation_output_2732),
    .xls_concrete_2x2_k2__vert_chans__1_0_rdy(instantiation_output_2791),
    .xls_concrete_2x2_k2__vert_chans__2_0(instantiation_output_2809),
    .xls_concrete_2x2_k2__vert_chans__2_0_vld(instantiation_output_2810),
    .clk(clk)
  );
  __xls_concrete_2x2_k2__SystolicArray__PE_3_next __xls_concrete_2x2_k2__SystolicArray__PE_3_next_inst4 (
    .rst(rst),
    .xls_concrete_2x2_k2__hor_chans__1_1(instantiation_output_2679),
    .xls_concrete_2x2_k2__hor_chans__1_1_vld(instantiation_output_2680),
    .xls_concrete_2x2_k2__hor_chans__1_2_rdy(instantiation_output_2688),
    .xls_concrete_2x2_k2__result_chans__1_1_rdy(instantiation_output_2746),
    .xls_concrete_2x2_k2__vert_chans__1_1(instantiation_output_2802),
    .xls_concrete_2x2_k2__vert_chans__1_1_vld(instantiation_output_2803),
    .xls_concrete_2x2_k2__vert_chans__2_1_rdy(instantiation_output_2824),
    .xls_concrete_2x2_k2__hor_chans__1_1_rdy(instantiation_output_2681),
    .xls_concrete_2x2_k2__hor_chans__1_2(instantiation_output_2686),
    .xls_concrete_2x2_k2__hor_chans__1_2_vld(instantiation_output_2687),
    .xls_concrete_2x2_k2__result_chans__1_1(instantiation_output_2744),
    .xls_concrete_2x2_k2__result_chans__1_1_vld(instantiation_output_2745),
    .xls_concrete_2x2_k2__vert_chans__1_1_rdy(instantiation_output_2804),
    .xls_concrete_2x2_k2__vert_chans__2_1(instantiation_output_2822),
    .xls_concrete_2x2_k2__vert_chans__2_1_vld(instantiation_output_2823),
    .clk(clk)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__hor_chans__0_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2621),
    .push_valid(instantiation_output_2622),
    .pop_ready(instantiation_output_2629),
    .push_ready(instantiation_output_2623),
    .pop_data(instantiation_output_2627),
    .pop_valid(instantiation_output_2628)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__hor_chans__0_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2634),
    .push_valid(instantiation_output_2635),
    .pop_ready(instantiation_output_2642),
    .push_ready(instantiation_output_2636),
    .pop_data(instantiation_output_2640),
    .pop_valid(instantiation_output_2641)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__hor_chans__0_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2647),
    .push_valid(instantiation_output_2648),
    .pop_ready(instantiation_output_2655),
    .push_ready(instantiation_output_2649),
    .pop_data(instantiation_output_2653),
    .pop_valid(instantiation_output_2654)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__hor_chans__1_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2660),
    .push_valid(instantiation_output_2661),
    .pop_ready(instantiation_output_2668),
    .push_ready(instantiation_output_2662),
    .pop_data(instantiation_output_2666),
    .pop_valid(instantiation_output_2667)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__hor_chans__1_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2673),
    .push_valid(instantiation_output_2674),
    .pop_ready(instantiation_output_2681),
    .push_ready(instantiation_output_2675),
    .pop_data(instantiation_output_2679),
    .pop_valid(instantiation_output_2680)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__hor_chans__1_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2686),
    .push_valid(instantiation_output_2687),
    .pop_ready(instantiation_output_2694),
    .push_ready(instantiation_output_2688),
    .pop_data(instantiation_output_2692),
    .pop_valid(instantiation_output_2693)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__result_chans__0_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2705),
    .push_valid(instantiation_output_2706),
    .pop_ready(instantiation_output_2713),
    .push_ready(instantiation_output_2707),
    .pop_data(instantiation_output_2711),
    .pop_valid(instantiation_output_2712)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__result_chans__0_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2718),
    .push_valid(instantiation_output_2719),
    .pop_ready(instantiation_output_2726),
    .push_ready(instantiation_output_2720),
    .pop_data(instantiation_output_2724),
    .pop_valid(instantiation_output_2725)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__result_chans__1_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2731),
    .push_valid(instantiation_output_2732),
    .pop_ready(instantiation_output_2739),
    .push_ready(instantiation_output_2733),
    .pop_data(instantiation_output_2737),
    .pop_valid(instantiation_output_2738)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__result_chans__1_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2744),
    .push_valid(instantiation_output_2745),
    .pop_ready(instantiation_output_2752),
    .push_ready(instantiation_output_2746),
    .pop_data(instantiation_output_2750),
    .pop_valid(instantiation_output_2751)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__vert_chans__0_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2757),
    .push_valid(instantiation_output_2758),
    .pop_ready(instantiation_output_2765),
    .push_ready(instantiation_output_2759),
    .pop_data(instantiation_output_2763),
    .pop_valid(instantiation_output_2764)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__vert_chans__0_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2770),
    .push_valid(instantiation_output_2771),
    .pop_ready(instantiation_output_2778),
    .push_ready(instantiation_output_2772),
    .pop_data(instantiation_output_2776),
    .pop_valid(instantiation_output_2777)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__vert_chans__1_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2783),
    .push_valid(instantiation_output_2784),
    .pop_ready(instantiation_output_2791),
    .push_ready(instantiation_output_2785),
    .pop_data(instantiation_output_2789),
    .pop_valid(instantiation_output_2790)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__vert_chans__1_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2796),
    .push_valid(instantiation_output_2797),
    .pop_ready(instantiation_output_2804),
    .push_ready(instantiation_output_2798),
    .pop_data(instantiation_output_2802),
    .pop_valid(instantiation_output_2803)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__vert_chans__2_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2809),
    .push_valid(instantiation_output_2810),
    .pop_ready(instantiation_output_2817),
    .push_ready(instantiation_output_2811),
    .pop_data(instantiation_output_2815),
    .pop_valid(instantiation_output_2816)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_xls_concrete_2x2_k2__vert_chans__2_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_2822),
    .push_valid(instantiation_output_2823),
    .pop_ready(instantiation_output_2830),
    .push_ready(instantiation_output_2824),
    .pop_data(instantiation_output_2828),
    .pop_valid(instantiation_output_2829)
  );
  assign xls_concrete_2x2_k2__arg0_rdy = instantiation_output_2610;
  assign xls_concrete_2x2_k2__arg1_rdy = instantiation_output_2616;
  assign xls_concrete_2x2_k2__out0 = {{instantiation_output_2698[1][1], instantiation_output_2698[1][0]}, {instantiation_output_2698[0][1], instantiation_output_2698[0][0]}};
  assign xls_concrete_2x2_k2__out0_vld = instantiation_output_2699;
endmodule
