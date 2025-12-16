module __systolic__SystolicArray_0_next__1(
  input wire clk,
  input wire rst,
  input wire [127:0] systolic__arg0,
  input wire systolic__arg0_vld,
  input wire [127:0] systolic__arg1,
  input wire systolic__arg1_vld,
  input wire systolic__hor_chans__0_0_rdy,
  input wire [31:0] systolic__hor_chans__0_2,
  input wire systolic__hor_chans__0_2_vld,
  input wire systolic__hor_chans__1_0_rdy,
  input wire [31:0] systolic__hor_chans__1_2,
  input wire systolic__hor_chans__1_2_vld,
  input wire systolic__out0_rdy,
  input wire [31:0] systolic__result_chans__0_0,
  input wire systolic__result_chans__0_0_vld,
  input wire [31:0] systolic__result_chans__0_1,
  input wire systolic__result_chans__0_1_vld,
  input wire [31:0] systolic__result_chans__1_0,
  input wire systolic__result_chans__1_0_vld,
  input wire [31:0] systolic__result_chans__1_1,
  input wire systolic__result_chans__1_1_vld,
  input wire systolic__vert_chans__0_0_rdy,
  input wire systolic__vert_chans__0_1_rdy,
  input wire [31:0] systolic__vert_chans__2_0,
  input wire systolic__vert_chans__2_0_vld,
  input wire [31:0] systolic__vert_chans__2_1,
  input wire systolic__vert_chans__2_1_vld,
  output wire systolic__arg0_rdy,
  output wire systolic__arg1_rdy,
  output wire [31:0] systolic__hor_chans__0_0,
  output wire systolic__hor_chans__0_0_vld,
  output wire systolic__hor_chans__0_2_rdy,
  output wire [31:0] systolic__hor_chans__1_0,
  output wire systolic__hor_chans__1_0_vld,
  output wire systolic__hor_chans__1_2_rdy,
  output wire [127:0] systolic__out0,
  output wire systolic__out0_vld,
  output wire systolic__result_chans__0_0_rdy,
  output wire systolic__result_chans__0_1_rdy,
  output wire systolic__result_chans__1_0_rdy,
  output wire systolic__result_chans__1_1_rdy,
  output wire [31:0] systolic__vert_chans__0_0,
  output wire systolic__vert_chans__0_0_vld,
  output wire [31:0] systolic__vert_chans__0_1,
  output wire systolic__vert_chans__0_1_vld,
  output wire systolic__vert_chans__2_0_rdy,
  output wire systolic__vert_chans__2_1_rdy
);
  wire [31:0] __systolic__arg0_reg_init[2][2];
  assign __systolic__arg0_reg_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] __systolic__arg1_reg_init[2][2];
  assign __systolic__arg1_reg_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] __systolic__out0_reg_init[2][2];
  assign __systolic__out0_reg_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_1438[2][2];
  assign literal_1438 = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_1442[2][2];
  assign literal_1442 = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  wire [31:0] systolic__arg0_unflattened[2][2];
  assign systolic__arg0_unflattened[0][0] = systolic__arg0[31:0];
  assign systolic__arg0_unflattened[0][1] = systolic__arg0[63:32];
  assign systolic__arg0_unflattened[1][0] = systolic__arg0[95:64];
  assign systolic__arg0_unflattened[1][1] = systolic__arg0[127:96];
  wire [31:0] systolic__arg1_unflattened[2][2];
  assign systolic__arg1_unflattened[0][0] = systolic__arg1[31:0];
  assign systolic__arg1_unflattened[0][1] = systolic__arg1[63:32];
  assign systolic__arg1_unflattened[1][0] = systolic__arg1[95:64];
  assign systolic__arg1_unflattened[1][1] = systolic__arg1[127:96];
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
  reg __systolic__hor_chans__0_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_0_has_been_sent_reg;
  reg __systolic__hor_chans__1_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_1_has_been_sent_reg;
  reg __systolic__out0_has_been_sent_reg;
  reg [31:0] __systolic__arg0_reg[2][2];
  reg __systolic__arg0_valid_reg;
  reg [31:0] __systolic__arg1_reg[2][2];
  reg __systolic__arg1_valid_reg;
  reg [31:0] __systolic__hor_chans__0_2_reg;
  reg __systolic__hor_chans__0_2_valid_reg;
  reg [31:0] __systolic__hor_chans__1_2_reg;
  reg __systolic__hor_chans__1_2_valid_reg;
  reg [31:0] __systolic__vert_chans__2_0_reg;
  reg __systolic__vert_chans__2_0_valid_reg;
  reg [31:0] __systolic__vert_chans__2_1_reg;
  reg __systolic__vert_chans__2_1_valid_reg;
  reg [31:0] __systolic__result_chans__0_0_reg;
  reg __systolic__result_chans__0_0_valid_reg;
  reg [31:0] __systolic__result_chans__0_1_reg;
  reg __systolic__result_chans__0_1_valid_reg;
  reg [31:0] __systolic__result_chans__1_0_reg;
  reg __systolic__result_chans__1_0_valid_reg;
  reg [31:0] __systolic__result_chans__1_1_reg;
  reg __systolic__result_chans__1_1_valid_reg;
  reg [31:0] __systolic__hor_chans__0_0_reg;
  reg __systolic__hor_chans__0_0_valid_reg;
  reg [31:0] __systolic__vert_chans__0_0_reg;
  reg __systolic__vert_chans__0_0_valid_reg;
  reg [31:0] __systolic__hor_chans__1_0_reg;
  reg __systolic__hor_chans__1_0_valid_reg;
  reg [31:0] __systolic__vert_chans__0_1_reg;
  reg __systolic__vert_chans__0_1_valid_reg;
  reg [31:0] __systolic__out0_reg[2][2];
  reg __systolic__out0_valid_reg;
  wire p1_all_active_inputs_valid;
  wire __systolic__out0_vld_buf;
  wire __systolic__out0_not_has_been_sent;
  wire systolic__out0_valid_inv;
  wire systolic__hor_chans__0_0_not_pred;
  wire __systolic__out0_valid_and_not_has_been_sent;
  wire systolic__out0_valid_load_en;
  wire nor_1436;
  wire systolic__out0_load_en;
  wire systolic__arg0_not_pred;
  wire or_2862;
  wire p1_stage_done;
  wire p1_not_valid;
  wire p0_all_active_inputs_valid;
  wire p0_enable;
  wire __systolic__hor_chans__0_0_vld_buf;
  wire __systolic__hor_chans__0_0_not_has_been_sent;
  wire systolic__hor_chans__0_0_valid_inv;
  wire __systolic__vert_chans__0_0_not_has_been_sent;
  wire systolic__vert_chans__0_0_valid_inv;
  wire __systolic__hor_chans__1_0_not_has_been_sent;
  wire systolic__hor_chans__1_0_valid_inv;
  wire __systolic__vert_chans__0_1_not_has_been_sent;
  wire systolic__vert_chans__0_1_valid_inv;
  wire __systolic__hor_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_0_valid_load_en;
  wire __systolic__vert_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__0_0_valid_load_en;
  wire __systolic__hor_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_0_valid_load_en;
  wire __systolic__vert_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__0_1_valid_load_en;
  wire systolic__hor_chans__0_0_load_en;
  wire systolic__vert_chans__0_0_load_en;
  wire systolic__hor_chans__1_0_load_en;
  wire systolic__vert_chans__0_1_load_en;
  wire eq_1473;
  wire p0_all_active_outputs_ready;
  wire p0_stage_done;
  wire [1:0] ____state_2__next_value_predicates;
  wire p0_data_enable;
  wire [2:0] one_hot_1476;
  wire p0_load_en;
  wire [31:0] systolic__arg0_select[2][2];
  wire [31:0] systolic__arg1_select[2][2];
  wire and_1626;
  wire systolic__arg0_valid_inv;
  wire systolic__arg1_valid_inv;
  wire systolic__hor_chans__0_2_valid_inv;
  wire systolic__hor_chans__1_2_valid_inv;
  wire and_1628;
  wire systolic__result_chans__0_0_valid_inv;
  wire systolic__result_chans__0_1_valid_inv;
  wire systolic__result_chans__1_0_valid_inv;
  wire systolic__result_chans__1_1_valid_inv;
  wire systolic__vert_chans__2_0_valid_inv;
  wire systolic__vert_chans__2_1_valid_inv;
  wire [31:0] array_index_1451;
  wire [31:0] array_index_1460;
  wire [31:0] array_index_1453;
  wire [31:0] array_index_1463;
  wire and_1615;
  wire and_1616;
  wire [31:0] systolic__result_chans__0_0_select;
  wire [31:0] systolic__result_chans__0_1_select;
  wire [31:0] systolic__result_chans__1_0_select;
  wire [31:0] systolic__result_chans__1_1_select;
  wire systolic__arg0_valid_load_en;
  wire systolic__arg1_valid_load_en;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire systolic__result_chans__0_0_valid_load_en;
  wire systolic__result_chans__0_1_valid_load_en;
  wire systolic__result_chans__1_0_valid_load_en;
  wire systolic__result_chans__1_1_valid_load_en;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire ____state_2__at_most_one_next_value;
  wire [31:0] sign_ext_1488;
  wire [1:0] concat_1617;
  wire [1:0] unexpand_for_next_value_147_2__4_case_1;
  wire [1:0] unexpand_for_next_value_147_2__4_case_0;
  wire __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_0_valid_and_ready_txfr;
  wire __systolic__hor_chans__1_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_1_valid_and_ready_txfr;
  wire __systolic__out0_valid_and_all_active_outputs_ready;
  wire __systolic__out0_valid_and_ready_txfr;
  wire [31:0] array_1561[2];
  wire [31:0] array_1562[2];
  wire systolic__arg0_load_en;
  wire systolic__arg1_load_en;
  wire systolic__hor_chans__0_2_load_en;
  wire systolic__hor_chans__1_2_load_en;
  wire systolic__result_chans__0_0_load_en;
  wire systolic__result_chans__0_1_load_en;
  wire systolic__result_chans__1_0_load_en;
  wire systolic__result_chans__1_1_load_en;
  wire systolic__vert_chans__2_0_load_en;
  wire systolic__vert_chans__2_1_load_en;
  wire or_2840;
  wire [31:0] and_1498;
  wire [31:0] and_1499;
  wire [31:0] and_1500;
  wire [31:0] and_1501;
  wire [31:0] and_1502;
  wire [31:0] and_1503;
  wire [31:0] and_1504;
  wire [31:0] and_1505;
  wire [1:0] one_hot_sel_1618;
  wire or_1619;
  wire __systolic__hor_chans__0_0_not_stage_load;
  wire __systolic__hor_chans__0_0_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__0_0_has_been_sent_reg_load_en;
  wire __systolic__hor_chans__1_0_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__0_1_has_been_sent_reg_load_en;
  wire __systolic__out0_not_stage_load;
  wire __systolic__out0_has_been_sent_reg_load_en;
  wire [31:0] __systolic__hor_chans__0_0_buf;
  wire [31:0] __systolic__vert_chans__0_0_buf;
  wire [31:0] __systolic__hor_chans__1_0_buf;
  wire [31:0] __systolic__vert_chans__0_1_buf;
  wire [31:0] c[2][2];
  assign p1_all_active_inputs_valid = (~p0_eq_1473 | __systolic__result_chans__0_0_valid_reg) & (~p0_eq_1473 | __systolic__result_chans__0_1_valid_reg) & (~p0_eq_1473 | __systolic__result_chans__1_0_valid_reg) & (~p0_eq_1473 | __systolic__result_chans__1_1_valid_reg);
  assign __systolic__out0_vld_buf = p1_all_active_inputs_valid & p0_valid & p0_eq_1473;
  assign __systolic__out0_not_has_been_sent = ~__systolic__out0_has_been_sent_reg;
  assign systolic__out0_valid_inv = ~__systolic__out0_valid_reg;
  assign systolic__hor_chans__0_0_not_pred = ____state_2[1];
  assign __systolic__out0_valid_and_not_has_been_sent = __systolic__out0_vld_buf & __systolic__out0_not_has_been_sent;
  assign systolic__out0_valid_load_en = systolic__out0_rdy | systolic__out0_valid_inv;
  assign nor_1436 = ~(____state_2[0] | systolic__hor_chans__0_0_not_pred);
  assign systolic__out0_load_en = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_valid_load_en;
  assign systolic__arg0_not_pred = ~nor_1436;
  assign or_2862 = ~p0_eq_1473 | systolic__out0_load_en | __systolic__out0_has_been_sent_reg;
  assign p1_stage_done = p0_valid & p1_all_active_inputs_valid & or_2862;
  assign p1_not_valid = ~p0_valid;
  assign p0_all_active_inputs_valid = (systolic__arg0_not_pred | __systolic__arg0_valid_reg) & (systolic__arg0_not_pred | __systolic__arg1_valid_reg);
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign __systolic__hor_chans__0_0_vld_buf = p0_all_active_inputs_valid & p0_enable & ~systolic__hor_chans__0_0_not_pred;
  assign __systolic__hor_chans__0_0_not_has_been_sent = ~__systolic__hor_chans__0_0_has_been_sent_reg;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign __systolic__vert_chans__0_0_not_has_been_sent = ~__systolic__vert_chans__0_0_has_been_sent_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign __systolic__hor_chans__1_0_not_has_been_sent = ~__systolic__hor_chans__1_0_has_been_sent_reg;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign __systolic__vert_chans__0_1_not_has_been_sent = ~__systolic__vert_chans__0_1_has_been_sent_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign __systolic__hor_chans__0_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__hor_chans__0_0_not_has_been_sent;
  assign systolic__hor_chans__0_0_valid_load_en = systolic__hor_chans__0_0_rdy | systolic__hor_chans__0_0_valid_inv;
  assign __systolic__vert_chans__0_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__vert_chans__0_0_not_has_been_sent;
  assign systolic__vert_chans__0_0_valid_load_en = systolic__vert_chans__0_0_rdy | systolic__vert_chans__0_0_valid_inv;
  assign __systolic__hor_chans__1_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__hor_chans__1_0_not_has_been_sent;
  assign systolic__hor_chans__1_0_valid_load_en = systolic__hor_chans__1_0_rdy | systolic__hor_chans__1_0_valid_inv;
  assign __systolic__vert_chans__0_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__vert_chans__0_1_not_has_been_sent;
  assign systolic__vert_chans__0_1_valid_load_en = systolic__vert_chans__0_1_rdy | systolic__vert_chans__0_1_valid_inv;
  assign systolic__hor_chans__0_0_load_en = __systolic__hor_chans__0_0_valid_and_not_has_been_sent & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = __systolic__vert_chans__0_0_valid_and_not_has_been_sent & systolic__vert_chans__0_0_valid_load_en;
  assign systolic__hor_chans__1_0_load_en = __systolic__hor_chans__1_0_valid_and_not_has_been_sent & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = __systolic__vert_chans__0_1_valid_and_not_has_been_sent & systolic__vert_chans__0_1_valid_load_en;
  assign eq_1473 = ____state_2 == 2'h2;
  assign p0_all_active_outputs_ready = (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__0_0_load_en | __systolic__hor_chans__0_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_0_load_en | __systolic__vert_chans__0_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__1_0_load_en | __systolic__hor_chans__1_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_1_load_en | __systolic__vert_chans__0_1_has_been_sent_reg);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign ____state_2__next_value_predicates = {~eq_1473, eq_1473};
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign one_hot_1476 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__arg0_select = nor_1436 == 1'h0 ? literal_1438 : __systolic__arg0_reg;
  assign systolic__arg1_select = nor_1436 == 1'h0 ? literal_1442 : __systolic__arg1_reg;
  assign and_1626 = p0_load_en & nor_1436;
  assign systolic__arg0_valid_inv = ~__systolic__arg0_valid_reg;
  assign systolic__arg1_valid_inv = ~__systolic__arg1_valid_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign and_1628 = p1_stage_done & p0_eq_1473;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign array_index_1451 = systolic__arg0_select[1'h0][1'h0];
  assign array_index_1460 = systolic__arg0_select[1'h1][1'h0];
  assign array_index_1453 = systolic__arg1_select[1'h0][1'h0];
  assign array_index_1463 = systolic__arg1_select[1'h0][1'h1];
  assign and_1615 = ~eq_1473 & p0_data_enable;
  assign and_1616 = eq_1473 & p0_data_enable;
  assign systolic__result_chans__0_0_select = p0_eq_1473 ? __systolic__result_chans__0_0_reg : 32'h0000_0000;
  assign systolic__result_chans__0_1_select = p0_eq_1473 ? __systolic__result_chans__0_1_reg : 32'h0000_0000;
  assign systolic__result_chans__1_0_select = p0_eq_1473 ? __systolic__result_chans__1_0_reg : 32'h0000_0000;
  assign systolic__result_chans__1_1_select = p0_eq_1473 ? __systolic__result_chans__1_1_reg : 32'h0000_0000;
  assign systolic__arg0_valid_load_en = and_1626 | systolic__arg0_valid_inv;
  assign systolic__arg1_valid_load_en = and_1626 | systolic__arg1_valid_inv;
  assign systolic__hor_chans__0_2_valid_load_en = p0_load_en | systolic__hor_chans__0_2_valid_inv;
  assign systolic__hor_chans__1_2_valid_load_en = p0_load_en | systolic__hor_chans__1_2_valid_inv;
  assign systolic__result_chans__0_0_valid_load_en = and_1628 | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_1_valid_load_en = and_1628 | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__1_0_valid_load_en = and_1628 | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_1_valid_load_en = and_1628 | systolic__result_chans__1_1_valid_inv;
  assign systolic__vert_chans__2_0_valid_load_en = p0_load_en | systolic__vert_chans__2_0_valid_inv;
  assign systolic__vert_chans__2_1_valid_load_en = p0_load_en | systolic__vert_chans__2_1_valid_inv;
  assign ____state_2__at_most_one_next_value = ~eq_1473 == one_hot_1476[1] & eq_1473 == one_hot_1476[0];
  assign sign_ext_1488 = {32{~eq_1473}};
  assign concat_1617 = {and_1615, and_1616};
  assign unexpand_for_next_value_147_2__4_case_1 = 2'h0;
  assign unexpand_for_next_value_147_2__4_case_0 = ____state_2 + 2'h1;
  assign __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_0_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_valid_and_ready_txfr = __systolic__hor_chans__0_0_valid_and_not_has_been_sent & systolic__hor_chans__0_0_load_en;
  assign __systolic__vert_chans__0_0_valid_and_ready_txfr = __systolic__vert_chans__0_0_valid_and_not_has_been_sent & systolic__vert_chans__0_0_load_en;
  assign __systolic__hor_chans__1_0_valid_and_ready_txfr = __systolic__hor_chans__1_0_valid_and_not_has_been_sent & systolic__hor_chans__1_0_load_en;
  assign __systolic__vert_chans__0_1_valid_and_ready_txfr = __systolic__vert_chans__0_1_valid_and_not_has_been_sent & systolic__vert_chans__0_1_load_en;
  assign __systolic__out0_valid_and_all_active_outputs_ready = __systolic__out0_vld_buf & or_2862;
  assign __systolic__out0_valid_and_ready_txfr = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_load_en;
  assign array_1561[0] = systolic__result_chans__0_0_select;
  assign array_1561[1] = systolic__result_chans__0_1_select;
  assign array_1562[0] = systolic__result_chans__1_0_select;
  assign array_1562[1] = systolic__result_chans__1_1_select;
  assign systolic__arg0_load_en = systolic__arg0_vld & systolic__arg0_valid_load_en;
  assign systolic__arg1_load_en = systolic__arg1_vld & systolic__arg1_valid_load_en;
  assign systolic__hor_chans__0_2_load_en = systolic__hor_chans__0_2_vld & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__hor_chans__1_2_load_en = systolic__hor_chans__1_2_vld & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__result_chans__0_0_load_en = systolic__result_chans__0_0_vld & systolic__result_chans__0_0_valid_load_en;
  assign systolic__result_chans__0_1_load_en = systolic__result_chans__0_1_vld & systolic__result_chans__0_1_valid_load_en;
  assign systolic__result_chans__1_0_load_en = systolic__result_chans__1_0_vld & systolic__result_chans__1_0_valid_load_en;
  assign systolic__result_chans__1_1_load_en = systolic__result_chans__1_1_vld & systolic__result_chans__1_1_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = systolic__vert_chans__2_0_vld & systolic__vert_chans__2_0_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = systolic__vert_chans__2_1_vld & systolic__vert_chans__2_1_valid_load_en;
  assign or_2840 = ~p0_stage_done | ____state_2__at_most_one_next_value | rst;
  assign and_1498 = (nor_1436 ? array_index_1451 : ____state_0_0_0) & sign_ext_1488;
  assign and_1499 = (nor_1436 ? systolic__arg0_select[1'h0][1'h1] : ____state_0_0_1) & sign_ext_1488;
  assign and_1500 = (nor_1436 ? array_index_1460 : ____state_0_1_0) & sign_ext_1488;
  assign and_1501 = (nor_1436 ? systolic__arg0_select[1'h1][1'h1] : ____state_0_1_1) & sign_ext_1488;
  assign and_1502 = (nor_1436 ? systolic__arg1_select[1'h1][1'h0] : ____state_1_1_0) & sign_ext_1488;
  assign and_1503 = (nor_1436 ? systolic__arg1_select[1'h1][1'h1] : ____state_1_1_1) & sign_ext_1488;
  assign and_1504 = (nor_1436 ? array_index_1453 : ____state_1_0_0) & sign_ext_1488;
  assign and_1505 = (nor_1436 ? array_index_1463 : ____state_1_0_1) & sign_ext_1488;
  assign one_hot_sel_1618 = unexpand_for_next_value_147_2__4_case_1 & {2{concat_1617[0]}} | unexpand_for_next_value_147_2__4_case_0 & {2{concat_1617[1]}};
  assign or_1619 = and_1615 | and_1616;
  assign __systolic__hor_chans__0_0_not_stage_load = ~__systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_has_been_sent_reg_load_en = __systolic__hor_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_0_has_been_sent_reg_load_en = __systolic__vert_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_0_has_been_sent_reg_load_en = __systolic__hor_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_1_has_been_sent_reg_load_en = __systolic__vert_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_not_stage_load = ~__systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_has_been_sent_reg_load_en = __systolic__out0_valid_and_ready_txfr | __systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_buf = nor_1436 ? array_index_1451 : ____state_0_0_1;
  assign __systolic__vert_chans__0_0_buf = nor_1436 ? array_index_1453 : ____state_1_1_0;
  assign __systolic__hor_chans__1_0_buf = nor_1436 ? array_index_1460 : ____state_0_1_1;
  assign __systolic__vert_chans__0_1_buf = nor_1436 ? array_index_1463 : ____state_1_1_1;
  assign c[0] = array_1561;
  assign c[1] = array_1562;
  always_ff @ (posedge clk) begin
    p0_eq_1473 <= p0_load_en ? eq_1473 : p0_eq_1473;
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
      __systolic__hor_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_1_has_been_sent_reg <= 1'h0;
      __systolic__out0_has_been_sent_reg <= 1'h0;
      __systolic__arg0_reg <= __systolic__arg0_reg_init;
      __systolic__arg0_valid_reg <= 1'h0;
      __systolic__arg1_reg <= __systolic__arg1_reg_init;
      __systolic__arg1_valid_reg <= 1'h0;
      __systolic__hor_chans__0_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_2_valid_reg <= 1'h0;
      __systolic__hor_chans__1_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_2_valid_reg <= 1'h0;
      __systolic__vert_chans__2_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_0_valid_reg <= 1'h0;
      __systolic__vert_chans__2_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_1_valid_reg <= 1'h0;
      __systolic__result_chans__0_0_reg <= 32'h0000_0000;
      __systolic__result_chans__0_0_valid_reg <= 1'h0;
      __systolic__result_chans__0_1_reg <= 32'h0000_0000;
      __systolic__result_chans__0_1_valid_reg <= 1'h0;
      __systolic__result_chans__1_0_reg <= 32'h0000_0000;
      __systolic__result_chans__1_0_valid_reg <= 1'h0;
      __systolic__result_chans__1_1_reg <= 32'h0000_0000;
      __systolic__result_chans__1_1_valid_reg <= 1'h0;
      __systolic__hor_chans__0_0_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_0_valid_reg <= 1'h0;
      __systolic__hor_chans__1_0_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_1_valid_reg <= 1'h0;
      __systolic__out0_reg <= __systolic__out0_reg_init;
      __systolic__out0_valid_reg <= 1'h0;
    end else begin
      ____state_2 <= or_1619 ? one_hot_sel_1618 : ____state_2;
      ____state_0_0_1 <= p0_data_enable ? and_1499 : ____state_0_0_1;
      ____state_1_1_0 <= p0_data_enable ? and_1502 : ____state_1_1_0;
      ____state_0_1_1 <= p0_data_enable ? and_1501 : ____state_0_1_1;
      ____state_1_1_1 <= p0_data_enable ? and_1503 : ____state_1_1_1;
      ____state_0_0_0 <= p0_data_enable ? and_1498 : ____state_0_0_0;
      ____state_0_1_0 <= p0_data_enable ? and_1500 : ____state_0_1_0;
      ____state_1_0_0 <= p0_data_enable ? and_1504 : ____state_1_0_0;
      ____state_1_0_1 <= p0_data_enable ? and_1505 : ____state_1_0_1;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      __systolic__hor_chans__0_0_has_been_sent_reg <= __systolic__hor_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__0_0_has_been_sent_reg;
      __systolic__vert_chans__0_0_has_been_sent_reg <= __systolic__vert_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_0_has_been_sent_reg;
      __systolic__hor_chans__1_0_has_been_sent_reg <= __systolic__hor_chans__1_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__1_0_has_been_sent_reg;
      __systolic__vert_chans__0_1_has_been_sent_reg <= __systolic__vert_chans__0_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_1_has_been_sent_reg;
      __systolic__out0_has_been_sent_reg <= __systolic__out0_has_been_sent_reg_load_en ? __systolic__out0_not_stage_load : __systolic__out0_has_been_sent_reg;
      __systolic__arg0_reg <= systolic__arg0_load_en ? systolic__arg0_unflattened : __systolic__arg0_reg;
      __systolic__arg0_valid_reg <= systolic__arg0_valid_load_en ? systolic__arg0_vld : __systolic__arg0_valid_reg;
      __systolic__arg1_reg <= systolic__arg1_load_en ? systolic__arg1_unflattened : __systolic__arg1_reg;
      __systolic__arg1_valid_reg <= systolic__arg1_valid_load_en ? systolic__arg1_vld : __systolic__arg1_valid_reg;
      __systolic__hor_chans__0_2_reg <= systolic__hor_chans__0_2_load_en ? systolic__hor_chans__0_2 : __systolic__hor_chans__0_2_reg;
      __systolic__hor_chans__0_2_valid_reg <= systolic__hor_chans__0_2_valid_load_en ? systolic__hor_chans__0_2_vld : __systolic__hor_chans__0_2_valid_reg;
      __systolic__hor_chans__1_2_reg <= systolic__hor_chans__1_2_load_en ? systolic__hor_chans__1_2 : __systolic__hor_chans__1_2_reg;
      __systolic__hor_chans__1_2_valid_reg <= systolic__hor_chans__1_2_valid_load_en ? systolic__hor_chans__1_2_vld : __systolic__hor_chans__1_2_valid_reg;
      __systolic__vert_chans__2_0_reg <= systolic__vert_chans__2_0_load_en ? systolic__vert_chans__2_0 : __systolic__vert_chans__2_0_reg;
      __systolic__vert_chans__2_0_valid_reg <= systolic__vert_chans__2_0_valid_load_en ? systolic__vert_chans__2_0_vld : __systolic__vert_chans__2_0_valid_reg;
      __systolic__vert_chans__2_1_reg <= systolic__vert_chans__2_1_load_en ? systolic__vert_chans__2_1 : __systolic__vert_chans__2_1_reg;
      __systolic__vert_chans__2_1_valid_reg <= systolic__vert_chans__2_1_valid_load_en ? systolic__vert_chans__2_1_vld : __systolic__vert_chans__2_1_valid_reg;
      __systolic__result_chans__0_0_reg <= systolic__result_chans__0_0_load_en ? systolic__result_chans__0_0 : __systolic__result_chans__0_0_reg;
      __systolic__result_chans__0_0_valid_reg <= systolic__result_chans__0_0_valid_load_en ? systolic__result_chans__0_0_vld : __systolic__result_chans__0_0_valid_reg;
      __systolic__result_chans__0_1_reg <= systolic__result_chans__0_1_load_en ? systolic__result_chans__0_1 : __systolic__result_chans__0_1_reg;
      __systolic__result_chans__0_1_valid_reg <= systolic__result_chans__0_1_valid_load_en ? systolic__result_chans__0_1_vld : __systolic__result_chans__0_1_valid_reg;
      __systolic__result_chans__1_0_reg <= systolic__result_chans__1_0_load_en ? systolic__result_chans__1_0 : __systolic__result_chans__1_0_reg;
      __systolic__result_chans__1_0_valid_reg <= systolic__result_chans__1_0_valid_load_en ? systolic__result_chans__1_0_vld : __systolic__result_chans__1_0_valid_reg;
      __systolic__result_chans__1_1_reg <= systolic__result_chans__1_1_load_en ? systolic__result_chans__1_1 : __systolic__result_chans__1_1_reg;
      __systolic__result_chans__1_1_valid_reg <= systolic__result_chans__1_1_valid_load_en ? systolic__result_chans__1_1_vld : __systolic__result_chans__1_1_valid_reg;
      __systolic__hor_chans__0_0_reg <= systolic__hor_chans__0_0_load_en ? __systolic__hor_chans__0_0_buf : __systolic__hor_chans__0_0_reg;
      __systolic__hor_chans__0_0_valid_reg <= systolic__hor_chans__0_0_valid_load_en ? __systolic__hor_chans__0_0_valid_and_not_has_been_sent : __systolic__hor_chans__0_0_valid_reg;
      __systolic__vert_chans__0_0_reg <= systolic__vert_chans__0_0_load_en ? __systolic__vert_chans__0_0_buf : __systolic__vert_chans__0_0_reg;
      __systolic__vert_chans__0_0_valid_reg <= systolic__vert_chans__0_0_valid_load_en ? __systolic__vert_chans__0_0_valid_and_not_has_been_sent : __systolic__vert_chans__0_0_valid_reg;
      __systolic__hor_chans__1_0_reg <= systolic__hor_chans__1_0_load_en ? __systolic__hor_chans__1_0_buf : __systolic__hor_chans__1_0_reg;
      __systolic__hor_chans__1_0_valid_reg <= systolic__hor_chans__1_0_valid_load_en ? __systolic__hor_chans__1_0_valid_and_not_has_been_sent : __systolic__hor_chans__1_0_valid_reg;
      __systolic__vert_chans__0_1_reg <= systolic__vert_chans__0_1_load_en ? __systolic__vert_chans__0_1_buf : __systolic__vert_chans__0_1_reg;
      __systolic__vert_chans__0_1_valid_reg <= systolic__vert_chans__0_1_valid_load_en ? __systolic__vert_chans__0_1_valid_and_not_has_been_sent : __systolic__vert_chans__0_1_valid_reg;
      __systolic__out0_reg <= systolic__out0_load_en ? c : __systolic__out0_reg;
      __systolic__out0_valid_reg <= systolic__out0_valid_load_en ? __systolic__out0_valid_and_not_has_been_sent : __systolic__out0_valid_reg;
    end
  end
  assign systolic__arg0_rdy = systolic__arg0_load_en;
  assign systolic__arg1_rdy = systolic__arg1_load_en;
  assign systolic__hor_chans__0_0 = __systolic__hor_chans__0_0_reg;
  assign systolic__hor_chans__0_0_vld = __systolic__hor_chans__0_0_valid_reg;
  assign systolic__hor_chans__0_2_rdy = systolic__hor_chans__0_2_load_en;
  assign systolic__hor_chans__1_0 = __systolic__hor_chans__1_0_reg;
  assign systolic__hor_chans__1_0_vld = __systolic__hor_chans__1_0_valid_reg;
  assign systolic__hor_chans__1_2_rdy = systolic__hor_chans__1_2_load_en;
  assign systolic__out0 = {{__systolic__out0_reg[1][1], __systolic__out0_reg[1][0]}, {__systolic__out0_reg[0][1], __systolic__out0_reg[0][0]}};
  assign systolic__out0_vld = __systolic__out0_valid_reg;
  assign systolic__result_chans__0_0_rdy = systolic__result_chans__0_0_load_en;
  assign systolic__result_chans__0_1_rdy = systolic__result_chans__0_1_load_en;
  assign systolic__result_chans__1_0_rdy = systolic__result_chans__1_0_load_en;
  assign systolic__result_chans__1_1_rdy = systolic__result_chans__1_1_load_en;
  assign systolic__vert_chans__0_0 = __systolic__vert_chans__0_0_reg;
  assign systolic__vert_chans__0_0_vld = __systolic__vert_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_1 = __systolic__vert_chans__0_1_reg;
  assign systolic__vert_chans__0_1_vld = __systolic__vert_chans__0_1_valid_reg;
  assign systolic__vert_chans__2_0_rdy = systolic__vert_chans__2_0_load_en;
  assign systolic__vert_chans__2_1_rdy = systolic__vert_chans__2_1_load_en;
  `ifdef ASSERT_ON
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2840))) or_2840) else $fatal(0, "More than one next_value fired for state element: __state_2");
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
  reg [31:0] p0_b;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__0_1_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_inv;
  wire __systolic__vert_chans__1_0_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_inv;
  wire __systolic__result_chans__0_0_vld_buf;
  wire __systolic__result_chans__0_0_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_inv;
  wire __systolic__hor_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire __systolic__vert_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire __systolic__result_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_load_en;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire systolic__result_chans__0_0_load_en;
  wire __systolic__hor_chans__0_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_0_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_1889;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_0_valid_inv;
  wire systolic__vert_chans__0_0_valid_inv;
  wire and_1928;
  wire and_1929;
  wire [31:0] prod;
  wire systolic__hor_chans__0_0_valid_load_en;
  wire systolic__vert_chans__0_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_1930;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_177_1_case_1;
  wire unexpand_for_next_value_177_1_case_0;
  wire __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_0_valid_and_ready_txfr;
  wire __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_0_valid_and_ready_txfr;
  wire systolic__hor_chans__0_0_load_en;
  wire systolic__vert_chans__0_0_load_en;
  wire or_2842;
  wire [31:0] one_hot_sel_1931;
  wire or_1932;
  wire one_hot_sel_1937;
  wire __systolic__hor_chans__0_1_not_stage_load;
  wire __systolic__hor_chans__0_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_0_not_stage_load;
  wire __systolic__result_chans__0_0_has_been_sent_reg_load_en;
  assign __systolic__hor_chans__0_1_not_has_been_sent = ~__systolic__hor_chans__0_1_has_been_sent_reg;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign __systolic__vert_chans__1_0_not_has_been_sent = ~__systolic__vert_chans__1_0_has_been_sent_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign __systolic__result_chans__0_0_vld_buf = p0_valid & ____state_1;
  assign __systolic__result_chans__0_0_not_has_been_sent = ~__systolic__result_chans__0_0_has_been_sent_reg;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign __systolic__hor_chans__0_1_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__0_1_not_has_been_sent;
  assign systolic__hor_chans__0_1_valid_load_en = systolic__hor_chans__0_1_rdy | systolic__hor_chans__0_1_valid_inv;
  assign __systolic__vert_chans__1_0_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__1_0_not_has_been_sent;
  assign systolic__vert_chans__1_0_valid_load_en = systolic__vert_chans__1_0_rdy | systolic__vert_chans__1_0_valid_inv;
  assign __systolic__result_chans__0_0_valid_and_not_has_been_sent = __systolic__result_chans__0_0_vld_buf & __systolic__result_chans__0_0_not_has_been_sent;
  assign systolic__result_chans__0_0_valid_load_en = systolic__result_chans__0_0_rdy | systolic__result_chans__0_0_valid_inv;
  assign systolic__hor_chans__0_1_load_en = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_valid_load_en;
  assign systolic__result_chans__0_0_load_en = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_valid_load_en;
  assign __systolic__hor_chans__0_1_has_sent_or_is_ready = systolic__hor_chans__0_1_load_en | __systolic__hor_chans__0_1_has_been_sent_reg;
  assign __systolic__vert_chans__1_0_has_sent_or_is_ready = systolic__vert_chans__1_0_load_en | __systolic__vert_chans__1_0_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__0_1_has_sent_or_is_ready & __systolic__vert_chans__1_0_has_sent_or_is_ready & (~____state_1 | systolic__result_chans__0_0_load_en | __systolic__result_chans__0_0_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_0_valid_reg & __systolic__vert_chans__0_0_valid_reg;
  assign one_hot_1889 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign and_1928 = ~____state_1 & p1_stage_done;
  assign and_1929 = ____state_1 & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__0_0_valid_load_en = p0_load_en | systolic__hor_chans__0_0_valid_inv;
  assign systolic__vert_chans__0_0_valid_load_en = p0_load_en | systolic__vert_chans__0_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_1889[1] & ____state_1 == one_hot_1889[0];
  assign concat_1930 = {and_1928, and_1929};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_177_1_case_1 = 1'h0;
  assign unexpand_for_next_value_177_1_case_0 = 1'h1;
  assign __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_valid_and_ready_txfr = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_load_en;
  assign __systolic__vert_chans__1_0_valid_and_ready_txfr = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_load_en;
  assign __systolic__result_chans__0_0_valid_and_all_active_outputs_ready = __systolic__result_chans__0_0_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_valid_and_ready_txfr = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_load_en;
  assign systolic__hor_chans__0_0_load_en = systolic__hor_chans__0_0_vld & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = systolic__vert_chans__0_0_vld & systolic__vert_chans__0_0_valid_load_en;
  assign or_2842 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_1931 = 32'h0000_0000 & {32{concat_1930[0]}} | new_accum & {32{concat_1930[1]}};
  assign or_1932 = and_1928 | and_1929;
  assign one_hot_sel_1937 = unexpand_for_next_value_177_1_case_1 & concat_1930[0] | unexpand_for_next_value_177_1_case_0 & concat_1930[1];
  assign __systolic__hor_chans__0_1_not_stage_load = ~__systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_has_been_sent_reg_load_en = __systolic__hor_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_0_has_been_sent_reg_load_en = __systolic__vert_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_not_stage_load = ~__systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_has_been_sent_reg_load_en = __systolic__result_chans__0_0_valid_and_ready_txfr | __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_0_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__0_0_reg : p0_b;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_1932 ? one_hot_sel_1937 : ____state_1;
      ____state_0 <= or_1932 ? one_hot_sel_1931 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__0_1_has_been_sent_reg <= __systolic__hor_chans__0_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_1_not_stage_load : __systolic__hor_chans__0_1_has_been_sent_reg;
      __systolic__vert_chans__1_0_has_been_sent_reg <= __systolic__vert_chans__1_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_1_not_stage_load : __systolic__vert_chans__1_0_has_been_sent_reg;
      __systolic__result_chans__0_0_has_been_sent_reg <= __systolic__result_chans__0_0_has_been_sent_reg_load_en ? __systolic__result_chans__0_0_not_stage_load : __systolic__result_chans__0_0_has_been_sent_reg;
      __systolic__hor_chans__0_0_reg <= systolic__hor_chans__0_0_load_en ? systolic__hor_chans__0_0 : __systolic__hor_chans__0_0_reg;
      __systolic__hor_chans__0_0_valid_reg <= systolic__hor_chans__0_0_valid_load_en ? systolic__hor_chans__0_0_vld : __systolic__hor_chans__0_0_valid_reg;
      __systolic__vert_chans__0_0_reg <= systolic__vert_chans__0_0_load_en ? systolic__vert_chans__0_0 : __systolic__vert_chans__0_0_reg;
      __systolic__vert_chans__0_0_valid_reg <= systolic__vert_chans__0_0_valid_load_en ? systolic__vert_chans__0_0_vld : __systolic__vert_chans__0_0_valid_reg;
      __systolic__hor_chans__0_1_reg <= systolic__hor_chans__0_1_load_en ? p0_a : __systolic__hor_chans__0_1_reg;
      __systolic__hor_chans__0_1_valid_reg <= systolic__hor_chans__0_1_valid_load_en ? __systolic__hor_chans__0_1_valid_and_not_has_been_sent : __systolic__hor_chans__0_1_valid_reg;
      __systolic__vert_chans__1_0_reg <= systolic__vert_chans__1_0_load_en ? p0_b : __systolic__vert_chans__1_0_reg;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2842))) or_2842) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2842))) or_2842) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  reg [31:0] p0_b;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__0_2_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_inv;
  wire __systolic__vert_chans__1_1_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_inv;
  wire __systolic__result_chans__0_1_vld_buf;
  wire __systolic__result_chans__0_1_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_inv;
  wire __systolic__hor_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire __systolic__vert_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire __systolic__result_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_load_en;
  wire systolic__hor_chans__0_2_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire systolic__result_chans__0_1_load_en;
  wire __systolic__hor_chans__0_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_1_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_2080;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_1_valid_inv;
  wire systolic__vert_chans__0_1_valid_inv;
  wire and_2119;
  wire and_2120;
  wire [31:0] prod;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire systolic__vert_chans__0_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2121;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_207_1_case_1;
  wire unexpand_for_next_value_207_1_case_0;
  wire __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_1_valid_and_ready_txfr;
  wire __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_1_valid_and_ready_txfr;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__0_1_load_en;
  wire or_2846;
  wire [31:0] one_hot_sel_2122;
  wire or_2123;
  wire one_hot_sel_2128;
  wire __systolic__hor_chans__0_2_not_stage_load;
  wire __systolic__hor_chans__0_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_1_not_stage_load;
  wire __systolic__result_chans__0_1_has_been_sent_reg_load_en;
  assign __systolic__hor_chans__0_2_not_has_been_sent = ~__systolic__hor_chans__0_2_has_been_sent_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign __systolic__vert_chans__1_1_not_has_been_sent = ~__systolic__vert_chans__1_1_has_been_sent_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign __systolic__result_chans__0_1_vld_buf = p0_valid & ____state_1;
  assign __systolic__result_chans__0_1_not_has_been_sent = ~__systolic__result_chans__0_1_has_been_sent_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign __systolic__hor_chans__0_2_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__0_2_not_has_been_sent;
  assign systolic__hor_chans__0_2_valid_load_en = systolic__hor_chans__0_2_rdy | systolic__hor_chans__0_2_valid_inv;
  assign __systolic__vert_chans__1_1_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__1_1_not_has_been_sent;
  assign systolic__vert_chans__1_1_valid_load_en = systolic__vert_chans__1_1_rdy | systolic__vert_chans__1_1_valid_inv;
  assign __systolic__result_chans__0_1_valid_and_not_has_been_sent = __systolic__result_chans__0_1_vld_buf & __systolic__result_chans__0_1_not_has_been_sent;
  assign systolic__result_chans__0_1_valid_load_en = systolic__result_chans__0_1_rdy | systolic__result_chans__0_1_valid_inv;
  assign systolic__hor_chans__0_2_load_en = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_valid_load_en;
  assign systolic__result_chans__0_1_load_en = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_valid_load_en;
  assign __systolic__hor_chans__0_2_has_sent_or_is_ready = systolic__hor_chans__0_2_load_en | __systolic__hor_chans__0_2_has_been_sent_reg;
  assign __systolic__vert_chans__1_1_has_sent_or_is_ready = systolic__vert_chans__1_1_load_en | __systolic__vert_chans__1_1_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__0_2_has_sent_or_is_ready & __systolic__vert_chans__1_1_has_sent_or_is_ready & (~____state_1 | systolic__result_chans__0_1_load_en | __systolic__result_chans__0_1_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_1_valid_reg & __systolic__vert_chans__0_1_valid_reg;
  assign one_hot_2080 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign and_2119 = ~____state_1 & p1_stage_done;
  assign and_2120 = ____state_1 & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__0_1_valid_load_en = p0_load_en | systolic__hor_chans__0_1_valid_inv;
  assign systolic__vert_chans__0_1_valid_load_en = p0_load_en | systolic__vert_chans__0_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2080[1] & ____state_1 == one_hot_2080[0];
  assign concat_2121 = {and_2119, and_2120};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_207_1_case_1 = 1'h0;
  assign unexpand_for_next_value_207_1_case_0 = 1'h1;
  assign __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_valid_and_ready_txfr = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_load_en;
  assign __systolic__vert_chans__1_1_valid_and_ready_txfr = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_load_en;
  assign __systolic__result_chans__0_1_valid_and_all_active_outputs_ready = __systolic__result_chans__0_1_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_valid_and_ready_txfr = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_load_en;
  assign systolic__hor_chans__0_1_load_en = systolic__hor_chans__0_1_vld & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = systolic__vert_chans__0_1_vld & systolic__vert_chans__0_1_valid_load_en;
  assign or_2846 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_2122 = 32'h0000_0000 & {32{concat_2121[0]}} | new_accum & {32{concat_2121[1]}};
  assign or_2123 = and_2119 | and_2120;
  assign one_hot_sel_2128 = unexpand_for_next_value_207_1_case_1 & concat_2121[0] | unexpand_for_next_value_207_1_case_0 & concat_2121[1];
  assign __systolic__hor_chans__0_2_not_stage_load = ~__systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_has_been_sent_reg_load_en = __systolic__hor_chans__0_2_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_1_has_been_sent_reg_load_en = __systolic__vert_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_not_stage_load = ~__systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_has_been_sent_reg_load_en = __systolic__result_chans__0_1_valid_and_ready_txfr | __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_1_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__0_1_reg : p0_b;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_2123 ? one_hot_sel_2128 : ____state_1;
      ____state_0 <= or_2123 ? one_hot_sel_2122 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__0_2_has_been_sent_reg <= __systolic__hor_chans__0_2_has_been_sent_reg_load_en ? __systolic__hor_chans__0_2_not_stage_load : __systolic__hor_chans__0_2_has_been_sent_reg;
      __systolic__vert_chans__1_1_has_been_sent_reg <= __systolic__vert_chans__1_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_2_not_stage_load : __systolic__vert_chans__1_1_has_been_sent_reg;
      __systolic__result_chans__0_1_has_been_sent_reg <= __systolic__result_chans__0_1_has_been_sent_reg_load_en ? __systolic__result_chans__0_1_not_stage_load : __systolic__result_chans__0_1_has_been_sent_reg;
      __systolic__hor_chans__0_1_reg <= systolic__hor_chans__0_1_load_en ? systolic__hor_chans__0_1 : __systolic__hor_chans__0_1_reg;
      __systolic__hor_chans__0_1_valid_reg <= systolic__hor_chans__0_1_valid_load_en ? systolic__hor_chans__0_1_vld : __systolic__hor_chans__0_1_valid_reg;
      __systolic__vert_chans__0_1_reg <= systolic__vert_chans__0_1_load_en ? systolic__vert_chans__0_1 : __systolic__vert_chans__0_1_reg;
      __systolic__vert_chans__0_1_valid_reg <= systolic__vert_chans__0_1_valid_load_en ? systolic__vert_chans__0_1_vld : __systolic__vert_chans__0_1_valid_reg;
      __systolic__hor_chans__0_2_reg <= systolic__hor_chans__0_2_load_en ? p0_a : __systolic__hor_chans__0_2_reg;
      __systolic__hor_chans__0_2_valid_reg <= systolic__hor_chans__0_2_valid_load_en ? __systolic__hor_chans__0_2_valid_and_not_has_been_sent : __systolic__hor_chans__0_2_valid_reg;
      __systolic__vert_chans__1_1_reg <= systolic__vert_chans__1_1_load_en ? p0_b : __systolic__vert_chans__1_1_reg;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2846))) or_2846) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2846))) or_2846) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_2_next(
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
  reg [31:0] p0_b;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__1_1_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_inv;
  wire __systolic__vert_chans__2_0_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_inv;
  wire __systolic__result_chans__1_0_vld_buf;
  wire __systolic__result_chans__1_0_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_inv;
  wire __systolic__hor_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire __systolic__vert_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire __systolic__result_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_load_en;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__2_0_load_en;
  wire systolic__result_chans__1_0_load_en;
  wire __systolic__hor_chans__1_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_0_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_2271;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_0_valid_inv;
  wire systolic__vert_chans__1_0_valid_inv;
  wire and_2310;
  wire and_2311;
  wire [31:0] prod;
  wire systolic__hor_chans__1_0_valid_load_en;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2312;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_237_1_case_1;
  wire unexpand_for_next_value_237_1_case_0;
  wire __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_0_valid_and_ready_txfr;
  wire __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_0_valid_and_ready_txfr;
  wire systolic__hor_chans__1_0_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire or_2850;
  wire [31:0] one_hot_sel_2313;
  wire or_2314;
  wire one_hot_sel_2319;
  wire __systolic__hor_chans__1_1_not_stage_load;
  wire __systolic__hor_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_0_not_stage_load;
  wire __systolic__result_chans__1_0_has_been_sent_reg_load_en;
  assign __systolic__hor_chans__1_1_not_has_been_sent = ~__systolic__hor_chans__1_1_has_been_sent_reg;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign __systolic__vert_chans__2_0_not_has_been_sent = ~__systolic__vert_chans__2_0_has_been_sent_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign __systolic__result_chans__1_0_vld_buf = p0_valid & ____state_1;
  assign __systolic__result_chans__1_0_not_has_been_sent = ~__systolic__result_chans__1_0_has_been_sent_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign __systolic__hor_chans__1_1_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__1_1_not_has_been_sent;
  assign systolic__hor_chans__1_1_valid_load_en = systolic__hor_chans__1_1_rdy | systolic__hor_chans__1_1_valid_inv;
  assign __systolic__vert_chans__2_0_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__2_0_not_has_been_sent;
  assign systolic__vert_chans__2_0_valid_load_en = systolic__vert_chans__2_0_rdy | systolic__vert_chans__2_0_valid_inv;
  assign __systolic__result_chans__1_0_valid_and_not_has_been_sent = __systolic__result_chans__1_0_vld_buf & __systolic__result_chans__1_0_not_has_been_sent;
  assign systolic__result_chans__1_0_valid_load_en = systolic__result_chans__1_0_rdy | systolic__result_chans__1_0_valid_inv;
  assign systolic__hor_chans__1_1_load_en = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_valid_load_en;
  assign systolic__result_chans__1_0_load_en = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_valid_load_en;
  assign __systolic__hor_chans__1_1_has_sent_or_is_ready = systolic__hor_chans__1_1_load_en | __systolic__hor_chans__1_1_has_been_sent_reg;
  assign __systolic__vert_chans__2_0_has_sent_or_is_ready = systolic__vert_chans__2_0_load_en | __systolic__vert_chans__2_0_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__1_1_has_sent_or_is_ready & __systolic__vert_chans__2_0_has_sent_or_is_ready & (~____state_1 | systolic__result_chans__1_0_load_en | __systolic__result_chans__1_0_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_0_valid_reg & __systolic__vert_chans__1_0_valid_reg;
  assign one_hot_2271 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign and_2310 = ~____state_1 & p1_stage_done;
  assign and_2311 = ____state_1 & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__1_0_valid_load_en = p0_load_en | systolic__hor_chans__1_0_valid_inv;
  assign systolic__vert_chans__1_0_valid_load_en = p0_load_en | systolic__vert_chans__1_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2271[1] & ____state_1 == one_hot_2271[0];
  assign concat_2312 = {and_2310, and_2311};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_237_1_case_1 = 1'h0;
  assign unexpand_for_next_value_237_1_case_0 = 1'h1;
  assign __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_valid_and_ready_txfr = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_load_en;
  assign __systolic__vert_chans__2_0_valid_and_ready_txfr = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_load_en;
  assign __systolic__result_chans__1_0_valid_and_all_active_outputs_ready = __systolic__result_chans__1_0_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_valid_and_ready_txfr = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_load_en;
  assign systolic__hor_chans__1_0_load_en = systolic__hor_chans__1_0_vld & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = systolic__vert_chans__1_0_vld & systolic__vert_chans__1_0_valid_load_en;
  assign or_2850 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_2313 = 32'h0000_0000 & {32{concat_2312[0]}} | new_accum & {32{concat_2312[1]}};
  assign or_2314 = and_2310 | and_2311;
  assign one_hot_sel_2319 = unexpand_for_next_value_237_1_case_1 & concat_2312[0] | unexpand_for_next_value_237_1_case_0 & concat_2312[1];
  assign __systolic__hor_chans__1_1_not_stage_load = ~__systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_has_been_sent_reg_load_en = __systolic__hor_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_0_has_been_sent_reg_load_en = __systolic__vert_chans__2_0_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_not_stage_load = ~__systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_has_been_sent_reg_load_en = __systolic__result_chans__1_0_valid_and_ready_txfr | __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_0_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__1_0_reg : p0_b;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_2314 ? one_hot_sel_2319 : ____state_1;
      ____state_0 <= or_2314 ? one_hot_sel_2313 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__1_1_has_been_sent_reg <= __systolic__hor_chans__1_1_has_been_sent_reg_load_en ? __systolic__hor_chans__1_1_not_stage_load : __systolic__hor_chans__1_1_has_been_sent_reg;
      __systolic__vert_chans__2_0_has_been_sent_reg <= __systolic__vert_chans__2_0_has_been_sent_reg_load_en ? __systolic__hor_chans__1_1_not_stage_load : __systolic__vert_chans__2_0_has_been_sent_reg;
      __systolic__result_chans__1_0_has_been_sent_reg <= __systolic__result_chans__1_0_has_been_sent_reg_load_en ? __systolic__result_chans__1_0_not_stage_load : __systolic__result_chans__1_0_has_been_sent_reg;
      __systolic__hor_chans__1_0_reg <= systolic__hor_chans__1_0_load_en ? systolic__hor_chans__1_0 : __systolic__hor_chans__1_0_reg;
      __systolic__hor_chans__1_0_valid_reg <= systolic__hor_chans__1_0_valid_load_en ? systolic__hor_chans__1_0_vld : __systolic__hor_chans__1_0_valid_reg;
      __systolic__vert_chans__1_0_reg <= systolic__vert_chans__1_0_load_en ? systolic__vert_chans__1_0 : __systolic__vert_chans__1_0_reg;
      __systolic__vert_chans__1_0_valid_reg <= systolic__vert_chans__1_0_valid_load_en ? systolic__vert_chans__1_0_vld : __systolic__vert_chans__1_0_valid_reg;
      __systolic__hor_chans__1_1_reg <= systolic__hor_chans__1_1_load_en ? p0_a : __systolic__hor_chans__1_1_reg;
      __systolic__hor_chans__1_1_valid_reg <= systolic__hor_chans__1_1_valid_load_en ? __systolic__hor_chans__1_1_valid_and_not_has_been_sent : __systolic__hor_chans__1_1_valid_reg;
      __systolic__vert_chans__2_0_reg <= systolic__vert_chans__2_0_load_en ? p0_b : __systolic__vert_chans__2_0_reg;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2850))) or_2850) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2850))) or_2850) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_3_next(
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
  reg [31:0] p0_b;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__1_2_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_inv;
  wire __systolic__vert_chans__2_1_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_inv;
  wire __systolic__result_chans__1_1_vld_buf;
  wire __systolic__result_chans__1_1_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_inv;
  wire __systolic__hor_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire __systolic__vert_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire __systolic__result_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_load_en;
  wire systolic__hor_chans__1_2_load_en;
  wire systolic__vert_chans__2_1_load_en;
  wire systolic__result_chans__1_1_load_en;
  wire __systolic__hor_chans__1_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_1_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_2462;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_1_valid_inv;
  wire systolic__vert_chans__1_1_valid_inv;
  wire and_2501;
  wire and_2502;
  wire [31:0] prod;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2503;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_267_1_case_1;
  wire unexpand_for_next_value_267_1_case_0;
  wire __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_1_valid_and_ready_txfr;
  wire __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_1_valid_and_ready_txfr;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire or_2854;
  wire [31:0] one_hot_sel_2504;
  wire or_2505;
  wire one_hot_sel_2510;
  wire __systolic__hor_chans__1_2_not_stage_load;
  wire __systolic__hor_chans__1_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_1_not_stage_load;
  wire __systolic__result_chans__1_1_has_been_sent_reg_load_en;
  assign __systolic__hor_chans__1_2_not_has_been_sent = ~__systolic__hor_chans__1_2_has_been_sent_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign __systolic__vert_chans__2_1_not_has_been_sent = ~__systolic__vert_chans__2_1_has_been_sent_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign __systolic__result_chans__1_1_vld_buf = p0_valid & ____state_1;
  assign __systolic__result_chans__1_1_not_has_been_sent = ~__systolic__result_chans__1_1_has_been_sent_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign __systolic__hor_chans__1_2_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__1_2_not_has_been_sent;
  assign systolic__hor_chans__1_2_valid_load_en = systolic__hor_chans__1_2_rdy | systolic__hor_chans__1_2_valid_inv;
  assign __systolic__vert_chans__2_1_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__2_1_not_has_been_sent;
  assign systolic__vert_chans__2_1_valid_load_en = systolic__vert_chans__2_1_rdy | systolic__vert_chans__2_1_valid_inv;
  assign __systolic__result_chans__1_1_valid_and_not_has_been_sent = __systolic__result_chans__1_1_vld_buf & __systolic__result_chans__1_1_not_has_been_sent;
  assign systolic__result_chans__1_1_valid_load_en = systolic__result_chans__1_1_rdy | systolic__result_chans__1_1_valid_inv;
  assign systolic__hor_chans__1_2_load_en = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_valid_load_en;
  assign systolic__result_chans__1_1_load_en = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_valid_load_en;
  assign __systolic__hor_chans__1_2_has_sent_or_is_ready = systolic__hor_chans__1_2_load_en | __systolic__hor_chans__1_2_has_been_sent_reg;
  assign __systolic__vert_chans__2_1_has_sent_or_is_ready = systolic__vert_chans__2_1_load_en | __systolic__vert_chans__2_1_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__1_2_has_sent_or_is_ready & __systolic__vert_chans__2_1_has_sent_or_is_ready & (~____state_1 | systolic__result_chans__1_1_load_en | __systolic__result_chans__1_1_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_1_valid_reg & __systolic__vert_chans__1_1_valid_reg;
  assign one_hot_2462 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign and_2501 = ~____state_1 & p1_stage_done;
  assign and_2502 = ____state_1 & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__1_1_valid_load_en = p0_load_en | systolic__hor_chans__1_1_valid_inv;
  assign systolic__vert_chans__1_1_valid_load_en = p0_load_en | systolic__vert_chans__1_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2462[1] & ____state_1 == one_hot_2462[0];
  assign concat_2503 = {and_2501, and_2502};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_267_1_case_1 = 1'h0;
  assign unexpand_for_next_value_267_1_case_0 = 1'h1;
  assign __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_valid_and_ready_txfr = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_load_en;
  assign __systolic__vert_chans__2_1_valid_and_ready_txfr = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_load_en;
  assign __systolic__result_chans__1_1_valid_and_all_active_outputs_ready = __systolic__result_chans__1_1_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_valid_and_ready_txfr = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_load_en;
  assign systolic__hor_chans__1_1_load_en = systolic__hor_chans__1_1_vld & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = systolic__vert_chans__1_1_vld & systolic__vert_chans__1_1_valid_load_en;
  assign or_2854 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_2504 = 32'h0000_0000 & {32{concat_2503[0]}} | new_accum & {32{concat_2503[1]}};
  assign or_2505 = and_2501 | and_2502;
  assign one_hot_sel_2510 = unexpand_for_next_value_267_1_case_1 & concat_2503[0] | unexpand_for_next_value_267_1_case_0 & concat_2503[1];
  assign __systolic__hor_chans__1_2_not_stage_load = ~__systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_has_been_sent_reg_load_en = __systolic__hor_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_1_has_been_sent_reg_load_en = __systolic__vert_chans__2_1_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_not_stage_load = ~__systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_has_been_sent_reg_load_en = __systolic__result_chans__1_1_valid_and_ready_txfr | __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_1_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__1_1_reg : p0_b;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_2505 ? one_hot_sel_2510 : ____state_1;
      ____state_0 <= or_2505 ? one_hot_sel_2504 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__1_2_has_been_sent_reg <= __systolic__hor_chans__1_2_has_been_sent_reg_load_en ? __systolic__hor_chans__1_2_not_stage_load : __systolic__hor_chans__1_2_has_been_sent_reg;
      __systolic__vert_chans__2_1_has_been_sent_reg <= __systolic__vert_chans__2_1_has_been_sent_reg_load_en ? __systolic__hor_chans__1_2_not_stage_load : __systolic__vert_chans__2_1_has_been_sent_reg;
      __systolic__result_chans__1_1_has_been_sent_reg <= __systolic__result_chans__1_1_has_been_sent_reg_load_en ? __systolic__result_chans__1_1_not_stage_load : __systolic__result_chans__1_1_has_been_sent_reg;
      __systolic__hor_chans__1_1_reg <= systolic__hor_chans__1_1_load_en ? systolic__hor_chans__1_1 : __systolic__hor_chans__1_1_reg;
      __systolic__hor_chans__1_1_valid_reg <= systolic__hor_chans__1_1_valid_load_en ? systolic__hor_chans__1_1_vld : __systolic__hor_chans__1_1_valid_reg;
      __systolic__vert_chans__1_1_reg <= systolic__vert_chans__1_1_load_en ? systolic__vert_chans__1_1 : __systolic__vert_chans__1_1_reg;
      __systolic__vert_chans__1_1_valid_reg <= systolic__vert_chans__1_1_valid_load_en ? systolic__vert_chans__1_1_vld : __systolic__vert_chans__1_1_valid_reg;
      __systolic__hor_chans__1_2_reg <= systolic__hor_chans__1_2_load_en ? p0_a : __systolic__hor_chans__1_2_reg;
      __systolic__hor_chans__1_2_valid_reg <= systolic__hor_chans__1_2_valid_load_en ? __systolic__hor_chans__1_2_valid_and_not_has_been_sent : __systolic__hor_chans__1_2_valid_reg;
      __systolic__vert_chans__2_1_reg <= systolic__vert_chans__2_1_load_en ? p0_b : __systolic__vert_chans__2_1_reg;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2854))) or_2854) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_2854))) or_2854) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray_0_next(
  input wire clk,
  input wire rst,
  input wire [127:0] systolic__arg0,
  input wire systolic__arg0_vld,
  input wire [127:0] systolic__arg1,
  input wire systolic__arg1_vld,
  input wire systolic__out0_rdy,
  output wire systolic__arg0_rdy,
  output wire systolic__arg1_rdy,
  output wire [127:0] systolic__out0,
  output wire systolic__out0_vld
);
  wire [31:0] systolic__arg0_unflattened[2][2];
  assign systolic__arg0_unflattened[0][0] = systolic__arg0[31:0];
  assign systolic__arg0_unflattened[0][1] = systolic__arg0[63:32];
  assign systolic__arg0_unflattened[1][0] = systolic__arg0[95:64];
  assign systolic__arg0_unflattened[1][1] = systolic__arg0[127:96];
  wire [31:0] systolic__arg1_unflattened[2][2];
  assign systolic__arg1_unflattened[0][0] = systolic__arg1[31:0];
  assign systolic__arg1_unflattened[0][1] = systolic__arg1[63:32];
  assign systolic__arg1_unflattened[1][0] = systolic__arg1[95:64];
  assign systolic__arg1_unflattened[1][1] = systolic__arg1[127:96];
  wire instantiation_output_2615;
  wire instantiation_output_2621;
  wire [31:0] instantiation_output_2626;
  wire instantiation_output_2627;
  wire instantiation_output_2660;
  wire [31:0] instantiation_output_2665;
  wire instantiation_output_2666;
  wire instantiation_output_2699;
  wire [31:0] instantiation_output_2703[2][2];
  wire instantiation_output_2704;
  wire instantiation_output_2718;
  wire instantiation_output_2731;
  wire instantiation_output_2744;
  wire instantiation_output_2757;
  wire [31:0] instantiation_output_2762;
  wire instantiation_output_2763;
  wire [31:0] instantiation_output_2775;
  wire instantiation_output_2776;
  wire instantiation_output_2822;
  wire instantiation_output_2835;
  wire instantiation_output_2634;
  wire [31:0] instantiation_output_2639;
  wire instantiation_output_2640;
  wire [31:0] instantiation_output_2710;
  wire instantiation_output_2711;
  wire instantiation_output_2770;
  wire [31:0] instantiation_output_2788;
  wire instantiation_output_2789;
  wire instantiation_output_2647;
  wire [31:0] instantiation_output_2652;
  wire instantiation_output_2653;
  wire [31:0] instantiation_output_2723;
  wire instantiation_output_2724;
  wire instantiation_output_2783;
  wire [31:0] instantiation_output_2801;
  wire instantiation_output_2802;
  wire instantiation_output_2673;
  wire [31:0] instantiation_output_2678;
  wire instantiation_output_2679;
  wire [31:0] instantiation_output_2736;
  wire instantiation_output_2737;
  wire instantiation_output_2796;
  wire [31:0] instantiation_output_2814;
  wire instantiation_output_2815;
  wire instantiation_output_2686;
  wire [31:0] instantiation_output_2691;
  wire instantiation_output_2692;
  wire [31:0] instantiation_output_2749;
  wire instantiation_output_2750;
  wire instantiation_output_2809;
  wire [31:0] instantiation_output_2827;
  wire instantiation_output_2828;
  wire instantiation_output_2628;
  wire [31:0] instantiation_output_2632;
  wire instantiation_output_2633;
  wire instantiation_output_2641;
  wire [31:0] instantiation_output_2645;
  wire instantiation_output_2646;
  wire instantiation_output_2654;
  wire [31:0] instantiation_output_2658;
  wire instantiation_output_2659;
  wire instantiation_output_2667;
  wire [31:0] instantiation_output_2671;
  wire instantiation_output_2672;
  wire instantiation_output_2680;
  wire [31:0] instantiation_output_2684;
  wire instantiation_output_2685;
  wire instantiation_output_2693;
  wire [31:0] instantiation_output_2697;
  wire instantiation_output_2698;
  wire instantiation_output_2712;
  wire [31:0] instantiation_output_2716;
  wire instantiation_output_2717;
  wire instantiation_output_2725;
  wire [31:0] instantiation_output_2729;
  wire instantiation_output_2730;
  wire instantiation_output_2738;
  wire [31:0] instantiation_output_2742;
  wire instantiation_output_2743;
  wire instantiation_output_2751;
  wire [31:0] instantiation_output_2755;
  wire instantiation_output_2756;
  wire instantiation_output_2764;
  wire [31:0] instantiation_output_2768;
  wire instantiation_output_2769;
  wire instantiation_output_2777;
  wire [31:0] instantiation_output_2781;
  wire instantiation_output_2782;
  wire instantiation_output_2790;
  wire [31:0] instantiation_output_2794;
  wire instantiation_output_2795;
  wire instantiation_output_2803;
  wire [31:0] instantiation_output_2807;
  wire instantiation_output_2808;
  wire instantiation_output_2816;
  wire [31:0] instantiation_output_2820;
  wire instantiation_output_2821;
  wire instantiation_output_2829;
  wire [31:0] instantiation_output_2833;
  wire instantiation_output_2834;

  // ===== Instantiations
  __systolic__SystolicArray_0_next__1 __systolic__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .systolic__arg0({{systolic__arg0_unflattened[1][1], systolic__arg0_unflattened[1][0]}, {systolic__arg0_unflattened[0][1], systolic__arg0_unflattened[0][0]}}),
    .systolic__arg0_vld(systolic__arg0_vld),
    .systolic__arg1({{systolic__arg1_unflattened[1][1], systolic__arg1_unflattened[1][0]}, {systolic__arg1_unflattened[0][1], systolic__arg1_unflattened[0][0]}}),
    .systolic__arg1_vld(systolic__arg1_vld),
    .systolic__hor_chans__0_0_rdy(instantiation_output_2628),
    .systolic__hor_chans__0_2(instantiation_output_2658),
    .systolic__hor_chans__0_2_vld(instantiation_output_2659),
    .systolic__hor_chans__1_0_rdy(instantiation_output_2667),
    .systolic__hor_chans__1_2(instantiation_output_2697),
    .systolic__hor_chans__1_2_vld(instantiation_output_2698),
    .systolic__out0_rdy(systolic__out0_rdy),
    .systolic__result_chans__0_0(instantiation_output_2716),
    .systolic__result_chans__0_0_vld(instantiation_output_2717),
    .systolic__result_chans__0_1(instantiation_output_2729),
    .systolic__result_chans__0_1_vld(instantiation_output_2730),
    .systolic__result_chans__1_0(instantiation_output_2742),
    .systolic__result_chans__1_0_vld(instantiation_output_2743),
    .systolic__result_chans__1_1(instantiation_output_2755),
    .systolic__result_chans__1_1_vld(instantiation_output_2756),
    .systolic__vert_chans__0_0_rdy(instantiation_output_2764),
    .systolic__vert_chans__0_1_rdy(instantiation_output_2777),
    .systolic__vert_chans__2_0(instantiation_output_2820),
    .systolic__vert_chans__2_0_vld(instantiation_output_2821),
    .systolic__vert_chans__2_1(instantiation_output_2833),
    .systolic__vert_chans__2_1_vld(instantiation_output_2834),
    .systolic__arg0_rdy(instantiation_output_2615),
    .systolic__arg1_rdy(instantiation_output_2621),
    .systolic__hor_chans__0_0(instantiation_output_2626),
    .systolic__hor_chans__0_0_vld(instantiation_output_2627),
    .systolic__hor_chans__0_2_rdy(instantiation_output_2660),
    .systolic__hor_chans__1_0(instantiation_output_2665),
    .systolic__hor_chans__1_0_vld(instantiation_output_2666),
    .systolic__hor_chans__1_2_rdy(instantiation_output_2699),
    .systolic__out0({{instantiation_output_2703[1][1], instantiation_output_2703[1][0]}, {instantiation_output_2703[0][1], instantiation_output_2703[0][0]}}),
    .systolic__out0_vld(instantiation_output_2704),
    .systolic__result_chans__0_0_rdy(instantiation_output_2718),
    .systolic__result_chans__0_1_rdy(instantiation_output_2731),
    .systolic__result_chans__1_0_rdy(instantiation_output_2744),
    .systolic__result_chans__1_1_rdy(instantiation_output_2757),
    .systolic__vert_chans__0_0(instantiation_output_2762),
    .systolic__vert_chans__0_0_vld(instantiation_output_2763),
    .systolic__vert_chans__0_1(instantiation_output_2775),
    .systolic__vert_chans__0_1_vld(instantiation_output_2776),
    .systolic__vert_chans__2_0_rdy(instantiation_output_2822),
    .systolic__vert_chans__2_1_rdy(instantiation_output_2835),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_0_next __systolic__SystolicArray__PE_0_next_inst1 (
    .rst(rst),
    .systolic__hor_chans__0_0(instantiation_output_2632),
    .systolic__hor_chans__0_0_vld(instantiation_output_2633),
    .systolic__hor_chans__0_1_rdy(instantiation_output_2641),
    .systolic__result_chans__0_0_rdy(instantiation_output_2712),
    .systolic__vert_chans__0_0(instantiation_output_2768),
    .systolic__vert_chans__0_0_vld(instantiation_output_2769),
    .systolic__vert_chans__1_0_rdy(instantiation_output_2790),
    .systolic__hor_chans__0_0_rdy(instantiation_output_2634),
    .systolic__hor_chans__0_1(instantiation_output_2639),
    .systolic__hor_chans__0_1_vld(instantiation_output_2640),
    .systolic__result_chans__0_0(instantiation_output_2710),
    .systolic__result_chans__0_0_vld(instantiation_output_2711),
    .systolic__vert_chans__0_0_rdy(instantiation_output_2770),
    .systolic__vert_chans__1_0(instantiation_output_2788),
    .systolic__vert_chans__1_0_vld(instantiation_output_2789),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_1_next __systolic__SystolicArray__PE_1_next_inst2 (
    .rst(rst),
    .systolic__hor_chans__0_1(instantiation_output_2645),
    .systolic__hor_chans__0_1_vld(instantiation_output_2646),
    .systolic__hor_chans__0_2_rdy(instantiation_output_2654),
    .systolic__result_chans__0_1_rdy(instantiation_output_2725),
    .systolic__vert_chans__0_1(instantiation_output_2781),
    .systolic__vert_chans__0_1_vld(instantiation_output_2782),
    .systolic__vert_chans__1_1_rdy(instantiation_output_2803),
    .systolic__hor_chans__0_1_rdy(instantiation_output_2647),
    .systolic__hor_chans__0_2(instantiation_output_2652),
    .systolic__hor_chans__0_2_vld(instantiation_output_2653),
    .systolic__result_chans__0_1(instantiation_output_2723),
    .systolic__result_chans__0_1_vld(instantiation_output_2724),
    .systolic__vert_chans__0_1_rdy(instantiation_output_2783),
    .systolic__vert_chans__1_1(instantiation_output_2801),
    .systolic__vert_chans__1_1_vld(instantiation_output_2802),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_2_next __systolic__SystolicArray__PE_2_next_inst3 (
    .rst(rst),
    .systolic__hor_chans__1_0(instantiation_output_2671),
    .systolic__hor_chans__1_0_vld(instantiation_output_2672),
    .systolic__hor_chans__1_1_rdy(instantiation_output_2680),
    .systolic__result_chans__1_0_rdy(instantiation_output_2738),
    .systolic__vert_chans__1_0(instantiation_output_2794),
    .systolic__vert_chans__1_0_vld(instantiation_output_2795),
    .systolic__vert_chans__2_0_rdy(instantiation_output_2816),
    .systolic__hor_chans__1_0_rdy(instantiation_output_2673),
    .systolic__hor_chans__1_1(instantiation_output_2678),
    .systolic__hor_chans__1_1_vld(instantiation_output_2679),
    .systolic__result_chans__1_0(instantiation_output_2736),
    .systolic__result_chans__1_0_vld(instantiation_output_2737),
    .systolic__vert_chans__1_0_rdy(instantiation_output_2796),
    .systolic__vert_chans__2_0(instantiation_output_2814),
    .systolic__vert_chans__2_0_vld(instantiation_output_2815),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_3_next __systolic__SystolicArray__PE_3_next_inst4 (
    .rst(rst),
    .systolic__hor_chans__1_1(instantiation_output_2684),
    .systolic__hor_chans__1_1_vld(instantiation_output_2685),
    .systolic__hor_chans__1_2_rdy(instantiation_output_2693),
    .systolic__result_chans__1_1_rdy(instantiation_output_2751),
    .systolic__vert_chans__1_1(instantiation_output_2807),
    .systolic__vert_chans__1_1_vld(instantiation_output_2808),
    .systolic__vert_chans__2_1_rdy(instantiation_output_2829),
    .systolic__hor_chans__1_1_rdy(instantiation_output_2686),
    .systolic__hor_chans__1_2(instantiation_output_2691),
    .systolic__hor_chans__1_2_vld(instantiation_output_2692),
    .systolic__result_chans__1_1(instantiation_output_2749),
    .systolic__result_chans__1_1_vld(instantiation_output_2750),
    .systolic__vert_chans__1_1_rdy(instantiation_output_2809),
    .systolic__vert_chans__2_1(instantiation_output_2827),
    .systolic__vert_chans__2_1_vld(instantiation_output_2828),
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
    .push_data(instantiation_output_2626),
    .push_valid(instantiation_output_2627),
    .pop_ready(instantiation_output_2634),
    .push_ready(instantiation_output_2628),
    .pop_data(instantiation_output_2632),
    .pop_valid(instantiation_output_2633)
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
    .push_data(instantiation_output_2639),
    .push_valid(instantiation_output_2640),
    .pop_ready(instantiation_output_2647),
    .push_ready(instantiation_output_2641),
    .pop_data(instantiation_output_2645),
    .pop_valid(instantiation_output_2646)
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
    .push_data(instantiation_output_2652),
    .push_valid(instantiation_output_2653),
    .pop_ready(instantiation_output_2660),
    .push_ready(instantiation_output_2654),
    .pop_data(instantiation_output_2658),
    .pop_valid(instantiation_output_2659)
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
    .push_data(instantiation_output_2665),
    .push_valid(instantiation_output_2666),
    .pop_ready(instantiation_output_2673),
    .push_ready(instantiation_output_2667),
    .pop_data(instantiation_output_2671),
    .pop_valid(instantiation_output_2672)
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
    .push_data(instantiation_output_2678),
    .push_valid(instantiation_output_2679),
    .pop_ready(instantiation_output_2686),
    .push_ready(instantiation_output_2680),
    .pop_data(instantiation_output_2684),
    .pop_valid(instantiation_output_2685)
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
    .push_data(instantiation_output_2691),
    .push_valid(instantiation_output_2692),
    .pop_ready(instantiation_output_2699),
    .push_ready(instantiation_output_2693),
    .pop_data(instantiation_output_2697),
    .pop_valid(instantiation_output_2698)
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
    .push_data(instantiation_output_2710),
    .push_valid(instantiation_output_2711),
    .pop_ready(instantiation_output_2718),
    .push_ready(instantiation_output_2712),
    .pop_data(instantiation_output_2716),
    .pop_valid(instantiation_output_2717)
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
    .push_data(instantiation_output_2723),
    .push_valid(instantiation_output_2724),
    .pop_ready(instantiation_output_2731),
    .push_ready(instantiation_output_2725),
    .pop_data(instantiation_output_2729),
    .pop_valid(instantiation_output_2730)
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
    .push_data(instantiation_output_2736),
    .push_valid(instantiation_output_2737),
    .pop_ready(instantiation_output_2744),
    .push_ready(instantiation_output_2738),
    .pop_data(instantiation_output_2742),
    .pop_valid(instantiation_output_2743)
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
    .push_data(instantiation_output_2749),
    .push_valid(instantiation_output_2750),
    .pop_ready(instantiation_output_2757),
    .push_ready(instantiation_output_2751),
    .pop_data(instantiation_output_2755),
    .pop_valid(instantiation_output_2756)
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
    .push_data(instantiation_output_2762),
    .push_valid(instantiation_output_2763),
    .pop_ready(instantiation_output_2770),
    .push_ready(instantiation_output_2764),
    .pop_data(instantiation_output_2768),
    .pop_valid(instantiation_output_2769)
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
    .push_data(instantiation_output_2775),
    .push_valid(instantiation_output_2776),
    .pop_ready(instantiation_output_2783),
    .push_ready(instantiation_output_2777),
    .pop_data(instantiation_output_2781),
    .pop_valid(instantiation_output_2782)
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
    .push_data(instantiation_output_2788),
    .push_valid(instantiation_output_2789),
    .pop_ready(instantiation_output_2796),
    .push_ready(instantiation_output_2790),
    .pop_data(instantiation_output_2794),
    .pop_valid(instantiation_output_2795)
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
    .push_data(instantiation_output_2801),
    .push_valid(instantiation_output_2802),
    .pop_ready(instantiation_output_2809),
    .push_ready(instantiation_output_2803),
    .pop_data(instantiation_output_2807),
    .pop_valid(instantiation_output_2808)
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
    .push_data(instantiation_output_2814),
    .push_valid(instantiation_output_2815),
    .pop_ready(instantiation_output_2822),
    .push_ready(instantiation_output_2816),
    .pop_data(instantiation_output_2820),
    .pop_valid(instantiation_output_2821)
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
    .push_data(instantiation_output_2827),
    .push_valid(instantiation_output_2828),
    .pop_ready(instantiation_output_2835),
    .push_ready(instantiation_output_2829),
    .pop_data(instantiation_output_2833),
    .pop_valid(instantiation_output_2834)
  );
  assign systolic__arg0_rdy = instantiation_output_2615;
  assign systolic__arg1_rdy = instantiation_output_2621;
  assign systolic__out0 = {{instantiation_output_2703[1][1], instantiation_output_2703[1][0]}, {instantiation_output_2703[0][1], instantiation_output_2703[0][0]}};
  assign systolic__out0_vld = instantiation_output_2704;
endmodule
