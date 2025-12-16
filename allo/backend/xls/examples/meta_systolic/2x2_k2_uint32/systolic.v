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
  wire [31:0] __systolic__arg0_reg_init[0:1][0:1];
  assign __systolic__arg0_reg_init[0][0] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[0][1] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[1][0] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[1][1] = 32'h0000_0000;
  wire [31:0] __systolic__arg1_reg_init[0:1][0:1];
  assign __systolic__arg1_reg_init[0][0] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[0][1] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[1][0] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[1][1] = 32'h0000_0000;
  wire [31:0] __systolic__out0_reg_init[0:1][0:1];
  assign __systolic__out0_reg_init[0][0] = 32'h0000_0000;
  assign __systolic__out0_reg_init[0][1] = 32'h0000_0000;
  assign __systolic__out0_reg_init[1][0] = 32'h0000_0000;
  assign __systolic__out0_reg_init[1][1] = 32'h0000_0000;
  wire [31:0] literal_1474[0:1][0:1];
  assign literal_1474[0][0] = 32'h0000_0000;
  assign literal_1474[0][1] = 32'h0000_0000;
  assign literal_1474[1][0] = 32'h0000_0000;
  assign literal_1474[1][1] = 32'h0000_0000;
  wire [31:0] literal_1478[0:1][0:1];
  assign literal_1478[0][0] = 32'h0000_0000;
  assign literal_1478[0][1] = 32'h0000_0000;
  assign literal_1478[1][0] = 32'h0000_0000;
  assign literal_1478[1][1] = 32'h0000_0000;
  wire [31:0] systolic__arg0_unflattened[0:1][0:1];
  assign systolic__arg0_unflattened[0][0] = systolic__arg0[31:0];
  assign systolic__arg0_unflattened[0][1] = systolic__arg0[63:32];
  assign systolic__arg0_unflattened[1][0] = systolic__arg0[95:64];
  assign systolic__arg0_unflattened[1][1] = systolic__arg0[127:96];
  wire [31:0] systolic__arg1_unflattened[0:1][0:1];
  assign systolic__arg1_unflattened[0][0] = systolic__arg1[31:0];
  assign systolic__arg1_unflattened[0][1] = systolic__arg1[63:32];
  assign systolic__arg1_unflattened[1][0] = systolic__arg1[95:64];
  assign systolic__arg1_unflattened[1][1] = systolic__arg1[127:96];
  reg [1:0] ____state_2;
  reg p0_bit_slice_1435;
  reg p0_nor_1436;
  reg p0_eq_1437;
  reg p0_not_1438;
  reg p1_bit_slice_1435;
  reg p1_nor_1436;
  reg [31:0] p1_array_index_1486;
  reg [31:0] p1_array_index_1487;
  reg [31:0] p1_array_index_1489;
  reg [31:0] p1_array_index_1490;
  reg p1_eq_1437;
  reg p1_not_1438;
  reg [31:0] p1_array_index_1491;
  reg [31:0] p1_array_index_1492;
  reg [31:0] p1_array_index_1493;
  reg [31:0] p1_array_index_1494;
  reg [31:0] ____state_0_0_1;
  reg [31:0] ____state_1_1_0;
  reg [31:0] ____state_0_1_1;
  reg [31:0] ____state_1_1_1;
  reg [31:0] ____state_0_0_0;
  reg [31:0] ____state_0_1_0;
  reg [31:0] ____state_1_0_0;
  reg [31:0] ____state_1_0_1;
  reg p2_bit_slice_1435;
  reg p2_eq_1437;
  reg p3_eq_1437;
  reg [31:0] p3_tuple_1584_index1;
  reg [31:0] p3_c00;
  reg p4_eq_1437;
  reg [31:0] p4_tuple_1606_index1;
  reg [31:0] p4_c10;
  reg [31:0] p4_array_1609[0:1];
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg p4_valid;
  reg p5_valid;
  reg __systolic__hor_chans__0_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_0_has_been_sent_reg;
  reg __systolic__hor_chans__1_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_1_has_been_sent_reg;
  reg __systolic__out0_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__0_2_reg;
  reg __systolic__hor_chans__0_2_valid_reg;
  reg [31:0] __systolic__hor_chans__1_2_reg;
  reg __systolic__hor_chans__1_2_valid_reg;
  reg [31:0] __systolic__vert_chans__2_0_reg;
  reg __systolic__vert_chans__2_0_valid_reg;
  reg [31:0] __systolic__vert_chans__2_1_reg;
  reg __systolic__vert_chans__2_1_valid_reg;
  reg [31:0] __systolic__arg0_reg[0:1][0:1];
  reg __systolic__arg0_valid_reg;
  reg [31:0] __systolic__arg1_reg[0:1][0:1];
  reg __systolic__arg1_valid_reg;
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
  reg [31:0] __systolic__out0_reg[0:1][0:1];
  reg __systolic__out0_valid_reg;
  wire __systolic__out0_vld_buf;
  wire __systolic__out0_not_has_been_sent;
  wire systolic__out0_valid_inv;
  wire __systolic__out0_valid_and_not_has_been_sent;
  wire systolic__out0_valid_load_en;
  wire systolic__out0_load_en;
  wire or_3436;
  wire p5_stage_done;
  wire p5_not_valid;
  wire p4_all_active_inputs_valid;
  wire p4_enable;
  wire p4_stage_done;
  wire p4_data_enable;
  wire p4_load_en;
  wire p4_not_valid;
  wire p3_all_active_inputs_valid;
  wire p3_enable;
  wire p3_stage_done;
  wire p3_data_enable;
  wire p3_load_en;
  wire p3_not_valid;
  wire p2_enable;
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
  wire p2_all_active_outputs_ready;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_all_active_inputs_valid;
  wire eq_1437;
  wire p1_enable;
  wire p1_stage_done;
  wire not_1438;
  wire p1_data_enable;
  wire [1:0] ____state_2__next_value_predicates;
  wire p1_load_en;
  wire p1_not_valid;
  wire [2:0] one_hot_1440;
  wire p0_enable;
  wire and_1776;
  wire systolic__arg0_valid_inv;
  wire systolic__arg1_valid_inv;
  wire p0_load_en;
  wire systolic__hor_chans__0_2_valid_inv;
  wire systolic__hor_chans__1_2_valid_inv;
  wire and_1778;
  wire systolic__result_chans__0_0_valid_inv;
  wire systolic__result_chans__0_1_valid_inv;
  wire and_1780;
  wire systolic__result_chans__1_0_valid_inv;
  wire systolic__result_chans__1_1_valid_inv;
  wire systolic__vert_chans__2_0_valid_inv;
  wire systolic__vert_chans__2_1_valid_inv;
  wire p0_stage_done;
  wire and_1765;
  wire and_1766;
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
  wire [31:0] systolic__arg0_select[0:1][0:1];
  wire [31:0] systolic__arg1_select[0:1][0:1];
  wire bit_slice_1435;
  wire [31:0] sign_ext_1541;
  wire [1:0] concat_1767;
  wire [1:0] unexpand_for_next_value_147_2__4_case_1;
  wire [1:0] unexpand_for_next_value_147_2__4_case_0;
  wire __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_0_valid_and_ready_txfr;
  wire __systolic__hor_chans__1_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_1_valid_and_ready_txfr;
  wire __systolic__out0_valid_and_all_active_outputs_ready;
  wire __systolic__out0_valid_and_ready_txfr;
  wire [31:0] array_1624[0:1];
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
  wire or_3414;
  wire p5_enable;
  wire [31:0] systolic__result_chans__1_1_select;
  wire [31:0] systolic__result_chans__1_0_select;
  wire [31:0] array_1609[0:1];
  wire [31:0] systolic__result_chans__0_1_select;
  wire [31:0] systolic__result_chans__0_0_select;
  wire [31:0] array_index_1486;
  wire [31:0] array_index_1487;
  wire [31:0] array_index_1489;
  wire [31:0] array_index_1490;
  wire [31:0] array_index_1491;
  wire [31:0] array_index_1492;
  wire [31:0] array_index_1493;
  wire [31:0] array_index_1494;
  wire nor_1436;
  wire [31:0] and_1549;
  wire [31:0] and_1550;
  wire [31:0] and_1551;
  wire [31:0] and_1552;
  wire [31:0] and_1553;
  wire [31:0] and_1554;
  wire [31:0] and_1555;
  wire [31:0] and_1556;
  wire [1:0] one_hot_sel_1768;
  wire or_1769;
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
  wire [31:0] c[0:1][0:1];
  assign __systolic__out0_vld_buf = p4_valid & p4_eq_1437;
  assign __systolic__out0_not_has_been_sent = ~__systolic__out0_has_been_sent_reg;
  assign systolic__out0_valid_inv = ~__systolic__out0_valid_reg;
  assign __systolic__out0_valid_and_not_has_been_sent = __systolic__out0_vld_buf & __systolic__out0_not_has_been_sent;
  assign systolic__out0_valid_load_en = systolic__out0_rdy | systolic__out0_valid_inv;
  assign systolic__out0_load_en = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_valid_load_en;
  assign or_3436 = ~p4_eq_1437 | systolic__out0_load_en | __systolic__out0_has_been_sent_reg;
  assign p5_stage_done = p4_valid & or_3436;
  assign p5_not_valid = ~p4_valid;
  assign p4_all_active_inputs_valid = (~p3_eq_1437 | __systolic__result_chans__1_0_valid_reg) & (~p3_eq_1437 | __systolic__result_chans__1_1_valid_reg);
  assign p4_enable = p5_stage_done | rst | p5_not_valid;
  assign p4_stage_done = p3_valid & p4_all_active_inputs_valid;
  assign p4_data_enable = p4_enable & p4_stage_done;
  assign p4_load_en = p4_data_enable | rst;
  assign p4_not_valid = ~p3_valid;
  assign p3_all_active_inputs_valid = (~p2_eq_1437 | __systolic__result_chans__0_0_valid_reg) & (~p2_eq_1437 | __systolic__result_chans__0_1_valid_reg);
  assign p3_enable = p4_load_en | p4_not_valid;
  assign p3_stage_done = p2_valid & p3_all_active_inputs_valid;
  assign p3_data_enable = p3_enable & p3_stage_done;
  assign p3_load_en = p3_data_enable | rst;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_load_en | p3_not_valid;
  assign __systolic__hor_chans__0_0_vld_buf = p1_valid & p2_enable & ~p1_bit_slice_1435;
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
  assign p2_all_active_outputs_ready = (p1_bit_slice_1435 | systolic__hor_chans__0_0_load_en | __systolic__hor_chans__0_0_has_been_sent_reg) & (p1_bit_slice_1435 | systolic__vert_chans__0_0_load_en | __systolic__vert_chans__0_0_has_been_sent_reg) & (p1_bit_slice_1435 | systolic__hor_chans__1_0_load_en | __systolic__hor_chans__1_0_has_been_sent_reg) & (p1_bit_slice_1435 | systolic__vert_chans__0_1_load_en | __systolic__vert_chans__0_1_has_been_sent_reg);
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_all_active_inputs_valid = (~p0_nor_1436 | __systolic__arg0_valid_reg) & (~p0_nor_1436 | __systolic__arg1_valid_reg);
  assign eq_1437 = ____state_2 == 2'h2;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & p1_all_active_inputs_valid;
  assign not_1438 = ~eq_1437;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign ____state_2__next_value_predicates = {not_1438, eq_1437};
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_1440 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign and_1776 = p1_load_en & p0_nor_1436;
  assign systolic__arg0_valid_inv = ~__systolic__arg0_valid_reg;
  assign systolic__arg1_valid_inv = ~__systolic__arg1_valid_reg;
  assign p0_load_en = p0_enable | rst;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign and_1778 = p3_load_en & p2_eq_1437;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign and_1780 = p4_load_en & p3_eq_1437;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign p0_stage_done = 1'h1;
  assign and_1765 = not_1438 & p0_enable;
  assign and_1766 = eq_1437 & p0_enable;
  assign systolic__arg0_valid_load_en = and_1776 | systolic__arg0_valid_inv;
  assign systolic__arg1_valid_load_en = and_1776 | systolic__arg1_valid_inv;
  assign systolic__hor_chans__0_2_valid_load_en = p0_load_en | systolic__hor_chans__0_2_valid_inv;
  assign systolic__hor_chans__1_2_valid_load_en = p0_load_en | systolic__hor_chans__1_2_valid_inv;
  assign systolic__result_chans__0_0_valid_load_en = and_1778 | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_1_valid_load_en = and_1778 | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__1_0_valid_load_en = and_1780 | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_1_valid_load_en = and_1780 | systolic__result_chans__1_1_valid_inv;
  assign systolic__vert_chans__2_0_valid_load_en = p0_load_en | systolic__vert_chans__2_0_valid_inv;
  assign systolic__vert_chans__2_1_valid_load_en = p0_load_en | systolic__vert_chans__2_1_valid_inv;
  assign ____state_2__at_most_one_next_value = not_1438 == one_hot_1440[1] & eq_1437 == one_hot_1440[0];
  assign systolic__arg0_select[0][0] = p0_nor_1436 == 1'h0 ? literal_1474[0][0] : __systolic__arg0_reg[0][0];
  assign systolic__arg0_select[0][1] = p0_nor_1436 == 1'h0 ? literal_1474[0][1] : __systolic__arg0_reg[0][1];
  assign systolic__arg0_select[1][0] = p0_nor_1436 == 1'h0 ? literal_1474[1][0] : __systolic__arg0_reg[1][0];
  assign systolic__arg0_select[1][1] = p0_nor_1436 == 1'h0 ? literal_1474[1][1] : __systolic__arg0_reg[1][1];
  assign systolic__arg1_select[0][0] = p0_nor_1436 == 1'h0 ? literal_1478[0][0] : __systolic__arg1_reg[0][0];
  assign systolic__arg1_select[0][1] = p0_nor_1436 == 1'h0 ? literal_1478[0][1] : __systolic__arg1_reg[0][1];
  assign systolic__arg1_select[1][0] = p0_nor_1436 == 1'h0 ? literal_1478[1][0] : __systolic__arg1_reg[1][0];
  assign systolic__arg1_select[1][1] = p0_nor_1436 == 1'h0 ? literal_1478[1][1] : __systolic__arg1_reg[1][1];
  assign bit_slice_1435 = ____state_2[1];
  assign sign_ext_1541 = {32{p1_not_1438}};
  assign concat_1767 = {and_1765, and_1766};
  assign unexpand_for_next_value_147_2__4_case_1 = 2'h0;
  assign unexpand_for_next_value_147_2__4_case_0 = ____state_2 + 2'h1;
  assign __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_0_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_valid_and_ready_txfr = __systolic__hor_chans__0_0_valid_and_not_has_been_sent & systolic__hor_chans__0_0_load_en;
  assign __systolic__vert_chans__0_0_valid_and_ready_txfr = __systolic__vert_chans__0_0_valid_and_not_has_been_sent & systolic__vert_chans__0_0_load_en;
  assign __systolic__hor_chans__1_0_valid_and_ready_txfr = __systolic__hor_chans__1_0_valid_and_not_has_been_sent & systolic__hor_chans__1_0_load_en;
  assign __systolic__vert_chans__0_1_valid_and_ready_txfr = __systolic__vert_chans__0_1_valid_and_not_has_been_sent & systolic__vert_chans__0_1_load_en;
  assign __systolic__out0_valid_and_all_active_outputs_ready = __systolic__out0_vld_buf & or_3436;
  assign __systolic__out0_valid_and_ready_txfr = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_load_en;
  assign array_1624[0] = p4_c10;
  assign array_1624[1] = p4_tuple_1606_index1;
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
  assign or_3414 = ~p0_stage_done | ____state_2__at_most_one_next_value | rst;
  assign p5_enable = 1'h1;
  assign systolic__result_chans__1_1_select = p3_eq_1437 ? __systolic__result_chans__1_1_reg : 32'h0000_0000;
  assign systolic__result_chans__1_0_select = p3_eq_1437 ? __systolic__result_chans__1_0_reg : 32'h0000_0000;
  assign array_1609[0] = p3_c00;
  assign array_1609[1] = p3_tuple_1584_index1;
  assign systolic__result_chans__0_1_select = p2_eq_1437 ? __systolic__result_chans__0_1_reg : 32'h0000_0000;
  assign systolic__result_chans__0_0_select = p2_eq_1437 ? __systolic__result_chans__0_0_reg : 32'h0000_0000;
  assign array_index_1486 = systolic__arg0_select[1'h0][1'h0];
  assign array_index_1487 = systolic__arg1_select[1'h0][1'h0];
  assign array_index_1489 = systolic__arg0_select[1'h1][1'h0];
  assign array_index_1490 = systolic__arg1_select[1'h0][1'h1];
  assign array_index_1491 = systolic__arg0_select[1'h0][1'h1];
  assign array_index_1492 = systolic__arg0_select[1'h1][1'h1];
  assign array_index_1493 = systolic__arg1_select[1'h1][1'h0];
  assign array_index_1494 = systolic__arg1_select[1'h1][1'h1];
  assign nor_1436 = ~(____state_2[0] | bit_slice_1435);
  assign and_1549 = (p1_nor_1436 ? p1_array_index_1486 : ____state_0_0_0) & sign_ext_1541;
  assign and_1550 = (p1_nor_1436 ? p1_array_index_1491 : ____state_0_0_1) & sign_ext_1541;
  assign and_1551 = (p1_nor_1436 ? p1_array_index_1489 : ____state_0_1_0) & sign_ext_1541;
  assign and_1552 = (p1_nor_1436 ? p1_array_index_1492 : ____state_0_1_1) & sign_ext_1541;
  assign and_1553 = (p1_nor_1436 ? p1_array_index_1493 : ____state_1_1_0) & sign_ext_1541;
  assign and_1554 = (p1_nor_1436 ? p1_array_index_1494 : ____state_1_1_1) & sign_ext_1541;
  assign and_1555 = (p1_nor_1436 ? p1_array_index_1487 : ____state_1_0_0) & sign_ext_1541;
  assign and_1556 = (p1_nor_1436 ? p1_array_index_1490 : ____state_1_0_1) & sign_ext_1541;
  assign one_hot_sel_1768 = unexpand_for_next_value_147_2__4_case_1 & {2{concat_1767[0]}} | unexpand_for_next_value_147_2__4_case_0 & {2{concat_1767[1]}};
  assign or_1769 = and_1765 | and_1766;
  assign __systolic__hor_chans__0_0_not_stage_load = ~__systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_has_been_sent_reg_load_en = __systolic__hor_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_0_has_been_sent_reg_load_en = __systolic__vert_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_0_has_been_sent_reg_load_en = __systolic__hor_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_1_has_been_sent_reg_load_en = __systolic__vert_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_not_stage_load = ~__systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_has_been_sent_reg_load_en = __systolic__out0_valid_and_ready_txfr | __systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_buf = p1_nor_1436 ? p1_array_index_1486 : ____state_0_0_1;
  assign __systolic__vert_chans__0_0_buf = p1_nor_1436 ? p1_array_index_1487 : ____state_1_1_0;
  assign __systolic__hor_chans__1_0_buf = p1_nor_1436 ? p1_array_index_1489 : ____state_0_1_1;
  assign __systolic__vert_chans__0_1_buf = p1_nor_1436 ? p1_array_index_1490 : ____state_1_1_1;
  assign c[0][0] = p4_array_1609[0];
  assign c[0][1] = p4_array_1609[1];
  assign c[1][0] = array_1624[0];
  assign c[1][1] = array_1624[1];
  always @ (posedge clk) begin
    p0_bit_slice_1435 <= p0_load_en ? bit_slice_1435 : p0_bit_slice_1435;
    p0_nor_1436 <= p0_load_en ? nor_1436 : p0_nor_1436;
    p0_eq_1437 <= p0_load_en ? eq_1437 : p0_eq_1437;
    p0_not_1438 <= p0_load_en ? not_1438 : p0_not_1438;
    p1_bit_slice_1435 <= p1_load_en ? p0_bit_slice_1435 : p1_bit_slice_1435;
    p1_nor_1436 <= p1_load_en ? p0_nor_1436 : p1_nor_1436;
    p1_array_index_1486 <= p1_load_en ? array_index_1486 : p1_array_index_1486;
    p1_array_index_1487 <= p1_load_en ? array_index_1487 : p1_array_index_1487;
    p1_array_index_1489 <= p1_load_en ? array_index_1489 : p1_array_index_1489;
    p1_array_index_1490 <= p1_load_en ? array_index_1490 : p1_array_index_1490;
    p1_eq_1437 <= p1_load_en ? p0_eq_1437 : p1_eq_1437;
    p1_not_1438 <= p1_load_en ? p0_not_1438 : p1_not_1438;
    p1_array_index_1491 <= p1_load_en ? array_index_1491 : p1_array_index_1491;
    p1_array_index_1492 <= p1_load_en ? array_index_1492 : p1_array_index_1492;
    p1_array_index_1493 <= p1_load_en ? array_index_1493 : p1_array_index_1493;
    p1_array_index_1494 <= p1_load_en ? array_index_1494 : p1_array_index_1494;
    p2_bit_slice_1435 <= p2_load_en ? p1_bit_slice_1435 : p2_bit_slice_1435;
    p2_eq_1437 <= p2_load_en ? p1_eq_1437 : p2_eq_1437;
    p3_eq_1437 <= p3_load_en ? p2_eq_1437 : p3_eq_1437;
    p3_tuple_1584_index1 <= p3_load_en ? systolic__result_chans__0_1_select : p3_tuple_1584_index1;
    p3_c00 <= p3_load_en ? systolic__result_chans__0_0_select : p3_c00;
    p4_eq_1437 <= p4_load_en ? p3_eq_1437 : p4_eq_1437;
    p4_tuple_1606_index1 <= p4_load_en ? systolic__result_chans__1_1_select : p4_tuple_1606_index1;
    p4_c10 <= p4_load_en ? systolic__result_chans__1_0_select : p4_c10;
    p4_array_1609[0] <= p4_load_en ? array_1609[0] : p4_array_1609[0];
    p4_array_1609[1] <= p4_load_en ? array_1609[1] : p4_array_1609[1];
  end
  always @ (posedge clk) begin
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
      p4_valid <= 1'h0;
      p5_valid <= 1'h0;
      __systolic__hor_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_1_has_been_sent_reg <= 1'h0;
      __systolic__out0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_2_valid_reg <= 1'h0;
      __systolic__hor_chans__1_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_2_valid_reg <= 1'h0;
      __systolic__vert_chans__2_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_0_valid_reg <= 1'h0;
      __systolic__vert_chans__2_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_1_valid_reg <= 1'h0;
      __systolic__arg0_reg[0][0] <= __systolic__arg0_reg_init[0][0];
      __systolic__arg0_reg[0][1] <= __systolic__arg0_reg_init[0][1];
      __systolic__arg0_reg[1][0] <= __systolic__arg0_reg_init[1][0];
      __systolic__arg0_reg[1][1] <= __systolic__arg0_reg_init[1][1];
      __systolic__arg0_valid_reg <= 1'h0;
      __systolic__arg1_reg[0][0] <= __systolic__arg1_reg_init[0][0];
      __systolic__arg1_reg[0][1] <= __systolic__arg1_reg_init[0][1];
      __systolic__arg1_reg[1][0] <= __systolic__arg1_reg_init[1][0];
      __systolic__arg1_reg[1][1] <= __systolic__arg1_reg_init[1][1];
      __systolic__arg1_valid_reg <= 1'h0;
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
      __systolic__out0_reg[0][0] <= __systolic__out0_reg_init[0][0];
      __systolic__out0_reg[0][1] <= __systolic__out0_reg_init[0][1];
      __systolic__out0_reg[1][0] <= __systolic__out0_reg_init[1][0];
      __systolic__out0_reg[1][1] <= __systolic__out0_reg_init[1][1];
      __systolic__out0_valid_reg <= 1'h0;
    end else begin
      ____state_2 <= or_1769 ? one_hot_sel_1768 : ____state_2;
      ____state_0_0_1 <= p2_data_enable ? and_1550 : ____state_0_0_1;
      ____state_1_1_0 <= p2_data_enable ? and_1553 : ____state_1_1_0;
      ____state_0_1_1 <= p2_data_enable ? and_1552 : ____state_0_1_1;
      ____state_1_1_1 <= p2_data_enable ? and_1554 : ____state_1_1_1;
      ____state_0_0_0 <= p2_data_enable ? and_1549 : ____state_0_0_0;
      ____state_0_1_0 <= p2_data_enable ? and_1551 : ____state_0_1_0;
      ____state_1_0_0 <= p2_data_enable ? and_1555 : ____state_1_0_0;
      ____state_1_0_1 <= p2_data_enable ? and_1556 : ____state_1_0_1;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      p4_valid <= p4_enable ? p4_stage_done : p4_valid;
      p5_valid <= p5_enable ? p5_stage_done : p5_valid;
      __systolic__hor_chans__0_0_has_been_sent_reg <= __systolic__hor_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__0_0_has_been_sent_reg;
      __systolic__vert_chans__0_0_has_been_sent_reg <= __systolic__vert_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_0_has_been_sent_reg;
      __systolic__hor_chans__1_0_has_been_sent_reg <= __systolic__hor_chans__1_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__1_0_has_been_sent_reg;
      __systolic__vert_chans__0_1_has_been_sent_reg <= __systolic__vert_chans__0_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_1_has_been_sent_reg;
      __systolic__out0_has_been_sent_reg <= __systolic__out0_has_been_sent_reg_load_en ? __systolic__out0_not_stage_load : __systolic__out0_has_been_sent_reg;
      __systolic__hor_chans__0_2_reg <= systolic__hor_chans__0_2_load_en ? systolic__hor_chans__0_2 : __systolic__hor_chans__0_2_reg;
      __systolic__hor_chans__0_2_valid_reg <= systolic__hor_chans__0_2_valid_load_en ? systolic__hor_chans__0_2_vld : __systolic__hor_chans__0_2_valid_reg;
      __systolic__hor_chans__1_2_reg <= systolic__hor_chans__1_2_load_en ? systolic__hor_chans__1_2 : __systolic__hor_chans__1_2_reg;
      __systolic__hor_chans__1_2_valid_reg <= systolic__hor_chans__1_2_valid_load_en ? systolic__hor_chans__1_2_vld : __systolic__hor_chans__1_2_valid_reg;
      __systolic__vert_chans__2_0_reg <= systolic__vert_chans__2_0_load_en ? systolic__vert_chans__2_0 : __systolic__vert_chans__2_0_reg;
      __systolic__vert_chans__2_0_valid_reg <= systolic__vert_chans__2_0_valid_load_en ? systolic__vert_chans__2_0_vld : __systolic__vert_chans__2_0_valid_reg;
      __systolic__vert_chans__2_1_reg <= systolic__vert_chans__2_1_load_en ? systolic__vert_chans__2_1 : __systolic__vert_chans__2_1_reg;
      __systolic__vert_chans__2_1_valid_reg <= systolic__vert_chans__2_1_valid_load_en ? systolic__vert_chans__2_1_vld : __systolic__vert_chans__2_1_valid_reg;
      __systolic__arg0_reg[0][0] <= systolic__arg0_load_en ? systolic__arg0_unflattened[0][0] : __systolic__arg0_reg[0][0];
      __systolic__arg0_reg[0][1] <= systolic__arg0_load_en ? systolic__arg0_unflattened[0][1] : __systolic__arg0_reg[0][1];
      __systolic__arg0_reg[1][0] <= systolic__arg0_load_en ? systolic__arg0_unflattened[1][0] : __systolic__arg0_reg[1][0];
      __systolic__arg0_reg[1][1] <= systolic__arg0_load_en ? systolic__arg0_unflattened[1][1] : __systolic__arg0_reg[1][1];
      __systolic__arg0_valid_reg <= systolic__arg0_valid_load_en ? systolic__arg0_vld : __systolic__arg0_valid_reg;
      __systolic__arg1_reg[0][0] <= systolic__arg1_load_en ? systolic__arg1_unflattened[0][0] : __systolic__arg1_reg[0][0];
      __systolic__arg1_reg[0][1] <= systolic__arg1_load_en ? systolic__arg1_unflattened[0][1] : __systolic__arg1_reg[0][1];
      __systolic__arg1_reg[1][0] <= systolic__arg1_load_en ? systolic__arg1_unflattened[1][0] : __systolic__arg1_reg[1][0];
      __systolic__arg1_reg[1][1] <= systolic__arg1_load_en ? systolic__arg1_unflattened[1][1] : __systolic__arg1_reg[1][1];
      __systolic__arg1_valid_reg <= systolic__arg1_valid_load_en ? systolic__arg1_vld : __systolic__arg1_valid_reg;
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
      __systolic__out0_reg[0][0] <= systolic__out0_load_en ? c[0][0] : __systolic__out0_reg[0][0];
      __systolic__out0_reg[0][1] <= systolic__out0_load_en ? c[0][1] : __systolic__out0_reg[0][1];
      __systolic__out0_reg[1][0] <= systolic__out0_load_en ? c[1][0] : __systolic__out0_reg[1][0];
      __systolic__out0_reg[1][1] <= systolic__out0_load_en ? c[1][1] : __systolic__out0_reg[1][1];
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
  reg [31:0] p0_tuple_2027_index1;
  reg [31:0] p1_a;
  reg [31:0] p2_tuple_2042_index1;
  reg [31:0] p2_a;
  reg [31:0] p3_a;
  reg [31:0] p3_b;
  reg [31:0] p4_b;
  reg [31:0] p4_prod;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p5_____state_1__1;
  reg [31:0] p5_new_accum;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg p4_valid;
  reg p5_valid;
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
  wire or_3460;
  wire p6_stage_done;
  wire p6_not_valid;
  wire p5_enable;
  wire __systolic__vert_chans__1_0_vld_buf;
  wire __systolic__vert_chans__1_0_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_inv;
  wire __systolic__vert_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire __systolic__vert_chans__1_0_has_sent_or_is_ready;
  wire p5_stage_done;
  wire p5_data_enable;
  wire p5_load_en;
  wire p5_not_valid;
  wire p4_enable;
  wire __systolic__hor_chans__0_1_vld_buf;
  wire __systolic__hor_chans__0_1_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_inv;
  wire __systolic__hor_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire systolic__hor_chans__0_1_load_en;
  wire __systolic__hor_chans__0_1_has_sent_or_is_ready;
  wire p4_stage_done;
  wire p4_data_enable;
  wire p4_load_en;
  wire p4_not_valid;
  wire p3_enable;
  wire p3_data_enable;
  wire p3_load_en;
  wire p3_not_valid;
  wire p2_enable;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_data_enable;
  wire p1_load_en;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire [2:0] one_hot_2071;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_0_valid_inv;
  wire systolic__vert_chans__0_0_valid_inv;
  wire and_2182;
  wire and_2183;
  wire systolic__hor_chans__0_0_valid_load_en;
  wire systolic__vert_chans__0_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2184;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_177_1_case_1;
  wire unexpand_for_next_value_177_1_case_0;
  wire __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_0_valid_and_all_active_outputs_ready;
  wire __systolic__vert_chans__1_0_valid_and_ready_txfr;
  wire __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_0_valid_and_ready_txfr;
  wire systolic__hor_chans__0_0_load_en;
  wire systolic__vert_chans__0_0_load_en;
  wire or_3416;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_2185;
  wire or_2186;
  wire one_hot_sel_2191;
  wire __systolic__hor_chans__0_1_not_stage_load;
  wire __systolic__hor_chans__0_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_0_not_stage_load;
  wire __systolic__vert_chans__1_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_0_not_stage_load;
  wire __systolic__result_chans__0_0_has_been_sent_reg_load_en;
  assign __systolic__result_chans__0_0_vld_buf = p5_valid & p5_____state_1__1;
  assign __systolic__result_chans__0_0_not_has_been_sent = ~__systolic__result_chans__0_0_has_been_sent_reg;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign __systolic__result_chans__0_0_valid_and_not_has_been_sent = __systolic__result_chans__0_0_vld_buf & __systolic__result_chans__0_0_not_has_been_sent;
  assign systolic__result_chans__0_0_valid_load_en = systolic__result_chans__0_0_rdy | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_0_load_en = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_valid_load_en;
  assign or_3460 = ~p5_____state_1__1 | systolic__result_chans__0_0_load_en | __systolic__result_chans__0_0_has_been_sent_reg;
  assign p6_stage_done = p5_valid & or_3460;
  assign p6_not_valid = ~p5_valid;
  assign p5_enable = p6_stage_done | p6_not_valid;
  assign __systolic__vert_chans__1_0_vld_buf = p4_valid & p5_enable;
  assign __systolic__vert_chans__1_0_not_has_been_sent = ~__systolic__vert_chans__1_0_has_been_sent_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign __systolic__vert_chans__1_0_valid_and_not_has_been_sent = __systolic__vert_chans__1_0_vld_buf & __systolic__vert_chans__1_0_not_has_been_sent;
  assign systolic__vert_chans__1_0_valid_load_en = systolic__vert_chans__1_0_rdy | systolic__vert_chans__1_0_valid_inv;
  assign systolic__vert_chans__1_0_load_en = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_valid_load_en;
  assign __systolic__vert_chans__1_0_has_sent_or_is_ready = systolic__vert_chans__1_0_load_en | __systolic__vert_chans__1_0_has_been_sent_reg;
  assign p5_stage_done = p4_valid & __systolic__vert_chans__1_0_has_sent_or_is_ready;
  assign p5_data_enable = p5_enable & p5_stage_done;
  assign p5_load_en = p5_data_enable | rst;
  assign p5_not_valid = ~p4_valid;
  assign p4_enable = p5_load_en | p5_not_valid;
  assign __systolic__hor_chans__0_1_vld_buf = p3_valid & p4_enable;
  assign __systolic__hor_chans__0_1_not_has_been_sent = ~__systolic__hor_chans__0_1_has_been_sent_reg;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign __systolic__hor_chans__0_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_vld_buf & __systolic__hor_chans__0_1_not_has_been_sent;
  assign systolic__hor_chans__0_1_valid_load_en = systolic__hor_chans__0_1_rdy | systolic__hor_chans__0_1_valid_inv;
  assign systolic__hor_chans__0_1_load_en = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_valid_load_en;
  assign __systolic__hor_chans__0_1_has_sent_or_is_ready = systolic__hor_chans__0_1_load_en | __systolic__hor_chans__0_1_has_been_sent_reg;
  assign p4_stage_done = p3_valid & __systolic__hor_chans__0_1_has_sent_or_is_ready;
  assign p4_data_enable = p4_enable & p4_stage_done;
  assign p4_load_en = p4_data_enable | rst;
  assign p4_not_valid = ~p3_valid;
  assign p3_enable = p4_load_en | p4_not_valid;
  assign p3_data_enable = p3_enable & p2_valid;
  assign p3_load_en = p3_data_enable | rst;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_load_en | p3_not_valid;
  assign p2_stage_done = p1_valid & __systolic__vert_chans__0_0_valid_reg;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_2071 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_0_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign and_2182 = ~____state_1 & p5_data_enable;
  assign and_2183 = ____state_1 & p5_data_enable;
  assign systolic__hor_chans__0_0_valid_load_en = p0_load_en | systolic__hor_chans__0_0_valid_inv;
  assign systolic__vert_chans__0_0_valid_load_en = p2_load_en | systolic__vert_chans__0_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2071[1] & ____state_1 == one_hot_2071[0];
  assign concat_2184 = {and_2182, and_2183};
  assign new_accum = ____state_0 + p4_prod;
  assign unexpand_for_next_value_177_1_case_1 = 1'h0;
  assign unexpand_for_next_value_177_1_case_0 = 1'h1;
  assign __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_1_vld_buf & systolic__hor_chans__0_1_load_en;
  assign __systolic__hor_chans__0_1_valid_and_ready_txfr = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_load_en;
  assign __systolic__vert_chans__1_0_valid_and_all_active_outputs_ready = __systolic__vert_chans__1_0_vld_buf & systolic__vert_chans__1_0_load_en;
  assign __systolic__vert_chans__1_0_valid_and_ready_txfr = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_load_en;
  assign __systolic__result_chans__0_0_valid_and_all_active_outputs_ready = __systolic__result_chans__0_0_vld_buf & or_3460;
  assign __systolic__result_chans__0_0_valid_and_ready_txfr = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_load_en;
  assign systolic__hor_chans__0_0_load_en = systolic__hor_chans__0_0_vld & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = systolic__vert_chans__0_0_vld & systolic__vert_chans__0_0_valid_load_en;
  assign or_3416 = ~p5_stage_done | ____state_0__at_most_one_next_value | rst;
  assign prod = umul32b_32b_x_32b(p3_a, p3_b);
  assign one_hot_sel_2185 = 32'h0000_0000 & {32{concat_2184[0]}} | new_accum & {32{concat_2184[1]}};
  assign or_2186 = and_2182 | and_2183;
  assign one_hot_sel_2191 = unexpand_for_next_value_177_1_case_1 & concat_2184[0] | unexpand_for_next_value_177_1_case_0 & concat_2184[1];
  assign __systolic__hor_chans__0_1_not_stage_load = ~__systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_has_been_sent_reg_load_en = __systolic__hor_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_0_not_stage_load = ~__systolic__vert_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_0_has_been_sent_reg_load_en = __systolic__vert_chans__1_0_valid_and_ready_txfr | __systolic__vert_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_not_stage_load = ~__systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_has_been_sent_reg_load_en = __systolic__result_chans__0_0_valid_and_ready_txfr | __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_tuple_2027_index1 <= p0_load_en ? __systolic__hor_chans__0_0_reg : p0_tuple_2027_index1;
    p1_a <= p1_load_en ? p0_tuple_2027_index1 : p1_a;
    p2_tuple_2042_index1 <= p2_load_en ? __systolic__vert_chans__0_0_reg : p2_tuple_2042_index1;
    p2_a <= p2_load_en ? p1_a : p2_a;
    p3_a <= p3_load_en ? p2_a : p3_a;
    p3_b <= p3_load_en ? p2_tuple_2042_index1 : p3_b;
    p4_b <= p4_load_en ? p3_b : p4_b;
    p4_prod <= p4_load_en ? prod : p4_prod;
    p5_____state_1__1 <= p5_load_en ? ____state_1 : p5_____state_1__1;
    p5_new_accum <= p5_load_en ? new_accum : p5_new_accum;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      p4_valid <= 1'h0;
      p5_valid <= 1'h0;
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
      ____state_1 <= or_2186 ? one_hot_sel_2191 : ____state_1;
      ____state_0 <= or_2186 ? one_hot_sel_2185 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__0_0_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      p4_valid <= p4_enable ? p4_stage_done : p4_valid;
      p5_valid <= p5_enable ? p5_stage_done : p5_valid;
      __systolic__hor_chans__0_1_has_been_sent_reg <= __systolic__hor_chans__0_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_1_not_stage_load : __systolic__hor_chans__0_1_has_been_sent_reg;
      __systolic__vert_chans__1_0_has_been_sent_reg <= __systolic__vert_chans__1_0_has_been_sent_reg_load_en ? __systolic__vert_chans__1_0_not_stage_load : __systolic__vert_chans__1_0_has_been_sent_reg;
      __systolic__result_chans__0_0_has_been_sent_reg <= __systolic__result_chans__0_0_has_been_sent_reg_load_en ? __systolic__result_chans__0_0_not_stage_load : __systolic__result_chans__0_0_has_been_sent_reg;
      __systolic__hor_chans__0_0_reg <= systolic__hor_chans__0_0_load_en ? systolic__hor_chans__0_0 : __systolic__hor_chans__0_0_reg;
      __systolic__hor_chans__0_0_valid_reg <= systolic__hor_chans__0_0_valid_load_en ? systolic__hor_chans__0_0_vld : __systolic__hor_chans__0_0_valid_reg;
      __systolic__vert_chans__0_0_reg <= systolic__vert_chans__0_0_load_en ? systolic__vert_chans__0_0 : __systolic__vert_chans__0_0_reg;
      __systolic__vert_chans__0_0_valid_reg <= systolic__vert_chans__0_0_valid_load_en ? systolic__vert_chans__0_0_vld : __systolic__vert_chans__0_0_valid_reg;
      __systolic__hor_chans__0_1_reg <= systolic__hor_chans__0_1_load_en ? p3_a : __systolic__hor_chans__0_1_reg;
      __systolic__hor_chans__0_1_valid_reg <= systolic__hor_chans__0_1_valid_load_en ? __systolic__hor_chans__0_1_valid_and_not_has_been_sent : __systolic__hor_chans__0_1_valid_reg;
      __systolic__vert_chans__1_0_reg <= systolic__vert_chans__1_0_load_en ? p4_b : __systolic__vert_chans__1_0_reg;
      __systolic__vert_chans__1_0_valid_reg <= systolic__vert_chans__1_0_valid_load_en ? __systolic__vert_chans__1_0_valid_and_not_has_been_sent : __systolic__vert_chans__1_0_valid_reg;
      __systolic__result_chans__0_0_reg <= systolic__result_chans__0_0_load_en ? p5_new_accum : __systolic__result_chans__0_0_reg;
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
  reg [31:0] p0_tuple_2323_index1;
  reg [31:0] p1_a;
  reg [31:0] p2_tuple_2338_index1;
  reg [31:0] p2_a;
  reg [31:0] p3_a;
  reg [31:0] p3_b;
  reg [31:0] p4_b;
  reg [31:0] p4_prod;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p5_____state_1__1;
  reg [31:0] p5_new_accum;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg p4_valid;
  reg p5_valid;
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
  wire or_3477;
  wire p6_stage_done;
  wire p6_not_valid;
  wire p5_enable;
  wire __systolic__vert_chans__1_1_vld_buf;
  wire __systolic__vert_chans__1_1_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_inv;
  wire __systolic__vert_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire __systolic__vert_chans__1_1_has_sent_or_is_ready;
  wire p5_stage_done;
  wire p5_data_enable;
  wire p5_load_en;
  wire p5_not_valid;
  wire p4_enable;
  wire __systolic__hor_chans__0_2_vld_buf;
  wire __systolic__hor_chans__0_2_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_inv;
  wire __systolic__hor_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire systolic__hor_chans__0_2_load_en;
  wire __systolic__hor_chans__0_2_has_sent_or_is_ready;
  wire p4_stage_done;
  wire p4_data_enable;
  wire p4_load_en;
  wire p4_not_valid;
  wire p3_enable;
  wire p3_data_enable;
  wire p3_load_en;
  wire p3_not_valid;
  wire p2_enable;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_data_enable;
  wire p1_load_en;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire [2:0] one_hot_2367;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_1_valid_inv;
  wire systolic__vert_chans__0_1_valid_inv;
  wire and_2478;
  wire and_2479;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire systolic__vert_chans__0_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2480;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_207_1_case_1;
  wire unexpand_for_next_value_207_1_case_0;
  wire __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__vert_chans__1_1_valid_and_ready_txfr;
  wire __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_1_valid_and_ready_txfr;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__0_1_load_en;
  wire or_3420;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_2481;
  wire or_2482;
  wire one_hot_sel_2487;
  wire __systolic__hor_chans__0_2_not_stage_load;
  wire __systolic__hor_chans__0_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_1_not_stage_load;
  wire __systolic__vert_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_1_not_stage_load;
  wire __systolic__result_chans__0_1_has_been_sent_reg_load_en;
  assign __systolic__result_chans__0_1_vld_buf = p5_valid & p5_____state_1__1;
  assign __systolic__result_chans__0_1_not_has_been_sent = ~__systolic__result_chans__0_1_has_been_sent_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign __systolic__result_chans__0_1_valid_and_not_has_been_sent = __systolic__result_chans__0_1_vld_buf & __systolic__result_chans__0_1_not_has_been_sent;
  assign systolic__result_chans__0_1_valid_load_en = systolic__result_chans__0_1_rdy | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__0_1_load_en = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_valid_load_en;
  assign or_3477 = ~p5_____state_1__1 | systolic__result_chans__0_1_load_en | __systolic__result_chans__0_1_has_been_sent_reg;
  assign p6_stage_done = p5_valid & or_3477;
  assign p6_not_valid = ~p5_valid;
  assign p5_enable = p6_stage_done | p6_not_valid;
  assign __systolic__vert_chans__1_1_vld_buf = p4_valid & p5_enable;
  assign __systolic__vert_chans__1_1_not_has_been_sent = ~__systolic__vert_chans__1_1_has_been_sent_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign __systolic__vert_chans__1_1_valid_and_not_has_been_sent = __systolic__vert_chans__1_1_vld_buf & __systolic__vert_chans__1_1_not_has_been_sent;
  assign systolic__vert_chans__1_1_valid_load_en = systolic__vert_chans__1_1_rdy | systolic__vert_chans__1_1_valid_inv;
  assign systolic__vert_chans__1_1_load_en = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_valid_load_en;
  assign __systolic__vert_chans__1_1_has_sent_or_is_ready = systolic__vert_chans__1_1_load_en | __systolic__vert_chans__1_1_has_been_sent_reg;
  assign p5_stage_done = p4_valid & __systolic__vert_chans__1_1_has_sent_or_is_ready;
  assign p5_data_enable = p5_enable & p5_stage_done;
  assign p5_load_en = p5_data_enable | rst;
  assign p5_not_valid = ~p4_valid;
  assign p4_enable = p5_load_en | p5_not_valid;
  assign __systolic__hor_chans__0_2_vld_buf = p3_valid & p4_enable;
  assign __systolic__hor_chans__0_2_not_has_been_sent = ~__systolic__hor_chans__0_2_has_been_sent_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign __systolic__hor_chans__0_2_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_vld_buf & __systolic__hor_chans__0_2_not_has_been_sent;
  assign systolic__hor_chans__0_2_valid_load_en = systolic__hor_chans__0_2_rdy | systolic__hor_chans__0_2_valid_inv;
  assign systolic__hor_chans__0_2_load_en = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_valid_load_en;
  assign __systolic__hor_chans__0_2_has_sent_or_is_ready = systolic__hor_chans__0_2_load_en | __systolic__hor_chans__0_2_has_been_sent_reg;
  assign p4_stage_done = p3_valid & __systolic__hor_chans__0_2_has_sent_or_is_ready;
  assign p4_data_enable = p4_enable & p4_stage_done;
  assign p4_load_en = p4_data_enable | rst;
  assign p4_not_valid = ~p3_valid;
  assign p3_enable = p4_load_en | p4_not_valid;
  assign p3_data_enable = p3_enable & p2_valid;
  assign p3_load_en = p3_data_enable | rst;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_load_en | p3_not_valid;
  assign p2_stage_done = p1_valid & __systolic__vert_chans__0_1_valid_reg;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_2367 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_1_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign and_2478 = ~____state_1 & p5_data_enable;
  assign and_2479 = ____state_1 & p5_data_enable;
  assign systolic__hor_chans__0_1_valid_load_en = p0_load_en | systolic__hor_chans__0_1_valid_inv;
  assign systolic__vert_chans__0_1_valid_load_en = p2_load_en | systolic__vert_chans__0_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2367[1] & ____state_1 == one_hot_2367[0];
  assign concat_2480 = {and_2478, and_2479};
  assign new_accum = ____state_0 + p4_prod;
  assign unexpand_for_next_value_207_1_case_1 = 1'h0;
  assign unexpand_for_next_value_207_1_case_0 = 1'h1;
  assign __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_2_vld_buf & systolic__hor_chans__0_2_load_en;
  assign __systolic__hor_chans__0_2_valid_and_ready_txfr = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_load_en;
  assign __systolic__vert_chans__1_1_valid_and_all_active_outputs_ready = __systolic__vert_chans__1_1_vld_buf & systolic__vert_chans__1_1_load_en;
  assign __systolic__vert_chans__1_1_valid_and_ready_txfr = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_load_en;
  assign __systolic__result_chans__0_1_valid_and_all_active_outputs_ready = __systolic__result_chans__0_1_vld_buf & or_3477;
  assign __systolic__result_chans__0_1_valid_and_ready_txfr = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_load_en;
  assign systolic__hor_chans__0_1_load_en = systolic__hor_chans__0_1_vld & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = systolic__vert_chans__0_1_vld & systolic__vert_chans__0_1_valid_load_en;
  assign or_3420 = ~p5_stage_done | ____state_0__at_most_one_next_value | rst;
  assign prod = umul32b_32b_x_32b(p3_a, p3_b);
  assign one_hot_sel_2481 = 32'h0000_0000 & {32{concat_2480[0]}} | new_accum & {32{concat_2480[1]}};
  assign or_2482 = and_2478 | and_2479;
  assign one_hot_sel_2487 = unexpand_for_next_value_207_1_case_1 & concat_2480[0] | unexpand_for_next_value_207_1_case_0 & concat_2480[1];
  assign __systolic__hor_chans__0_2_not_stage_load = ~__systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_has_been_sent_reg_load_en = __systolic__hor_chans__0_2_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_1_not_stage_load = ~__systolic__vert_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_1_has_been_sent_reg_load_en = __systolic__vert_chans__1_1_valid_and_ready_txfr | __systolic__vert_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_not_stage_load = ~__systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_has_been_sent_reg_load_en = __systolic__result_chans__0_1_valid_and_ready_txfr | __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_tuple_2323_index1 <= p0_load_en ? __systolic__hor_chans__0_1_reg : p0_tuple_2323_index1;
    p1_a <= p1_load_en ? p0_tuple_2323_index1 : p1_a;
    p2_tuple_2338_index1 <= p2_load_en ? __systolic__vert_chans__0_1_reg : p2_tuple_2338_index1;
    p2_a <= p2_load_en ? p1_a : p2_a;
    p3_a <= p3_load_en ? p2_a : p3_a;
    p3_b <= p3_load_en ? p2_tuple_2338_index1 : p3_b;
    p4_b <= p4_load_en ? p3_b : p4_b;
    p4_prod <= p4_load_en ? prod : p4_prod;
    p5_____state_1__1 <= p5_load_en ? ____state_1 : p5_____state_1__1;
    p5_new_accum <= p5_load_en ? new_accum : p5_new_accum;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      p4_valid <= 1'h0;
      p5_valid <= 1'h0;
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
      ____state_1 <= or_2482 ? one_hot_sel_2487 : ____state_1;
      ____state_0 <= or_2482 ? one_hot_sel_2481 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__0_1_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      p4_valid <= p4_enable ? p4_stage_done : p4_valid;
      p5_valid <= p5_enable ? p5_stage_done : p5_valid;
      __systolic__hor_chans__0_2_has_been_sent_reg <= __systolic__hor_chans__0_2_has_been_sent_reg_load_en ? __systolic__hor_chans__0_2_not_stage_load : __systolic__hor_chans__0_2_has_been_sent_reg;
      __systolic__vert_chans__1_1_has_been_sent_reg <= __systolic__vert_chans__1_1_has_been_sent_reg_load_en ? __systolic__vert_chans__1_1_not_stage_load : __systolic__vert_chans__1_1_has_been_sent_reg;
      __systolic__result_chans__0_1_has_been_sent_reg <= __systolic__result_chans__0_1_has_been_sent_reg_load_en ? __systolic__result_chans__0_1_not_stage_load : __systolic__result_chans__0_1_has_been_sent_reg;
      __systolic__hor_chans__0_1_reg <= systolic__hor_chans__0_1_load_en ? systolic__hor_chans__0_1 : __systolic__hor_chans__0_1_reg;
      __systolic__hor_chans__0_1_valid_reg <= systolic__hor_chans__0_1_valid_load_en ? systolic__hor_chans__0_1_vld : __systolic__hor_chans__0_1_valid_reg;
      __systolic__vert_chans__0_1_reg <= systolic__vert_chans__0_1_load_en ? systolic__vert_chans__0_1 : __systolic__vert_chans__0_1_reg;
      __systolic__vert_chans__0_1_valid_reg <= systolic__vert_chans__0_1_valid_load_en ? systolic__vert_chans__0_1_vld : __systolic__vert_chans__0_1_valid_reg;
      __systolic__hor_chans__0_2_reg <= systolic__hor_chans__0_2_load_en ? p3_a : __systolic__hor_chans__0_2_reg;
      __systolic__hor_chans__0_2_valid_reg <= systolic__hor_chans__0_2_valid_load_en ? __systolic__hor_chans__0_2_valid_and_not_has_been_sent : __systolic__hor_chans__0_2_valid_reg;
      __systolic__vert_chans__1_1_reg <= systolic__vert_chans__1_1_load_en ? p4_b : __systolic__vert_chans__1_1_reg;
      __systolic__vert_chans__1_1_valid_reg <= systolic__vert_chans__1_1_valid_load_en ? __systolic__vert_chans__1_1_valid_and_not_has_been_sent : __systolic__vert_chans__1_1_valid_reg;
      __systolic__result_chans__0_1_reg <= systolic__result_chans__0_1_load_en ? p5_new_accum : __systolic__result_chans__0_1_reg;
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
  reg [31:0] p0_tuple_2619_index1;
  reg [31:0] p1_a;
  reg [31:0] p2_tuple_2634_index1;
  reg [31:0] p2_a;
  reg [31:0] p3_a;
  reg [31:0] p3_b;
  reg [31:0] p4_b;
  reg [31:0] p4_prod;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p5_____state_1__1;
  reg [31:0] p5_new_accum;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg p4_valid;
  reg p5_valid;
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
  wire or_3494;
  wire p6_stage_done;
  wire p6_not_valid;
  wire p5_enable;
  wire __systolic__vert_chans__2_0_vld_buf;
  wire __systolic__vert_chans__2_0_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_inv;
  wire __systolic__vert_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire systolic__vert_chans__2_0_load_en;
  wire __systolic__vert_chans__2_0_has_sent_or_is_ready;
  wire p5_stage_done;
  wire p5_data_enable;
  wire p5_load_en;
  wire p5_not_valid;
  wire p4_enable;
  wire __systolic__hor_chans__1_1_vld_buf;
  wire __systolic__hor_chans__1_1_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_inv;
  wire __systolic__hor_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire systolic__hor_chans__1_1_load_en;
  wire __systolic__hor_chans__1_1_has_sent_or_is_ready;
  wire p4_stage_done;
  wire p4_data_enable;
  wire p4_load_en;
  wire p4_not_valid;
  wire p3_enable;
  wire p3_data_enable;
  wire p3_load_en;
  wire p3_not_valid;
  wire p2_enable;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_data_enable;
  wire p1_load_en;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire [2:0] one_hot_2663;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_0_valid_inv;
  wire systolic__vert_chans__1_0_valid_inv;
  wire and_2774;
  wire and_2775;
  wire systolic__hor_chans__1_0_valid_load_en;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_2776;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_237_1_case_1;
  wire unexpand_for_next_value_237_1_case_0;
  wire __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_0_valid_and_all_active_outputs_ready;
  wire __systolic__vert_chans__2_0_valid_and_ready_txfr;
  wire __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_0_valid_and_ready_txfr;
  wire systolic__hor_chans__1_0_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire or_3424;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_2777;
  wire or_2778;
  wire one_hot_sel_2783;
  wire __systolic__hor_chans__1_1_not_stage_load;
  wire __systolic__hor_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_0_not_stage_load;
  wire __systolic__vert_chans__2_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_0_not_stage_load;
  wire __systolic__result_chans__1_0_has_been_sent_reg_load_en;
  assign __systolic__result_chans__1_0_vld_buf = p5_valid & p5_____state_1__1;
  assign __systolic__result_chans__1_0_not_has_been_sent = ~__systolic__result_chans__1_0_has_been_sent_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign __systolic__result_chans__1_0_valid_and_not_has_been_sent = __systolic__result_chans__1_0_vld_buf & __systolic__result_chans__1_0_not_has_been_sent;
  assign systolic__result_chans__1_0_valid_load_en = systolic__result_chans__1_0_rdy | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_0_load_en = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_valid_load_en;
  assign or_3494 = ~p5_____state_1__1 | systolic__result_chans__1_0_load_en | __systolic__result_chans__1_0_has_been_sent_reg;
  assign p6_stage_done = p5_valid & or_3494;
  assign p6_not_valid = ~p5_valid;
  assign p5_enable = p6_stage_done | p6_not_valid;
  assign __systolic__vert_chans__2_0_vld_buf = p4_valid & p5_enable;
  assign __systolic__vert_chans__2_0_not_has_been_sent = ~__systolic__vert_chans__2_0_has_been_sent_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign __systolic__vert_chans__2_0_valid_and_not_has_been_sent = __systolic__vert_chans__2_0_vld_buf & __systolic__vert_chans__2_0_not_has_been_sent;
  assign systolic__vert_chans__2_0_valid_load_en = systolic__vert_chans__2_0_rdy | systolic__vert_chans__2_0_valid_inv;
  assign systolic__vert_chans__2_0_load_en = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_valid_load_en;
  assign __systolic__vert_chans__2_0_has_sent_or_is_ready = systolic__vert_chans__2_0_load_en | __systolic__vert_chans__2_0_has_been_sent_reg;
  assign p5_stage_done = p4_valid & __systolic__vert_chans__2_0_has_sent_or_is_ready;
  assign p5_data_enable = p5_enable & p5_stage_done;
  assign p5_load_en = p5_data_enable | rst;
  assign p5_not_valid = ~p4_valid;
  assign p4_enable = p5_load_en | p5_not_valid;
  assign __systolic__hor_chans__1_1_vld_buf = p3_valid & p4_enable;
  assign __systolic__hor_chans__1_1_not_has_been_sent = ~__systolic__hor_chans__1_1_has_been_sent_reg;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign __systolic__hor_chans__1_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_vld_buf & __systolic__hor_chans__1_1_not_has_been_sent;
  assign systolic__hor_chans__1_1_valid_load_en = systolic__hor_chans__1_1_rdy | systolic__hor_chans__1_1_valid_inv;
  assign systolic__hor_chans__1_1_load_en = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_valid_load_en;
  assign __systolic__hor_chans__1_1_has_sent_or_is_ready = systolic__hor_chans__1_1_load_en | __systolic__hor_chans__1_1_has_been_sent_reg;
  assign p4_stage_done = p3_valid & __systolic__hor_chans__1_1_has_sent_or_is_ready;
  assign p4_data_enable = p4_enable & p4_stage_done;
  assign p4_load_en = p4_data_enable | rst;
  assign p4_not_valid = ~p3_valid;
  assign p3_enable = p4_load_en | p4_not_valid;
  assign p3_data_enable = p3_enable & p2_valid;
  assign p3_load_en = p3_data_enable | rst;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_load_en | p3_not_valid;
  assign p2_stage_done = p1_valid & __systolic__vert_chans__1_0_valid_reg;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_2663 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_0_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign and_2774 = ~____state_1 & p5_data_enable;
  assign and_2775 = ____state_1 & p5_data_enable;
  assign systolic__hor_chans__1_0_valid_load_en = p0_load_en | systolic__hor_chans__1_0_valid_inv;
  assign systolic__vert_chans__1_0_valid_load_en = p2_load_en | systolic__vert_chans__1_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2663[1] & ____state_1 == one_hot_2663[0];
  assign concat_2776 = {and_2774, and_2775};
  assign new_accum = ____state_0 + p4_prod;
  assign unexpand_for_next_value_237_1_case_1 = 1'h0;
  assign unexpand_for_next_value_237_1_case_0 = 1'h1;
  assign __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_1_vld_buf & systolic__hor_chans__1_1_load_en;
  assign __systolic__hor_chans__1_1_valid_and_ready_txfr = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_load_en;
  assign __systolic__vert_chans__2_0_valid_and_all_active_outputs_ready = __systolic__vert_chans__2_0_vld_buf & systolic__vert_chans__2_0_load_en;
  assign __systolic__vert_chans__2_0_valid_and_ready_txfr = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_load_en;
  assign __systolic__result_chans__1_0_valid_and_all_active_outputs_ready = __systolic__result_chans__1_0_vld_buf & or_3494;
  assign __systolic__result_chans__1_0_valid_and_ready_txfr = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_load_en;
  assign systolic__hor_chans__1_0_load_en = systolic__hor_chans__1_0_vld & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = systolic__vert_chans__1_0_vld & systolic__vert_chans__1_0_valid_load_en;
  assign or_3424 = ~p5_stage_done | ____state_0__at_most_one_next_value | rst;
  assign prod = umul32b_32b_x_32b(p3_a, p3_b);
  assign one_hot_sel_2777 = 32'h0000_0000 & {32{concat_2776[0]}} | new_accum & {32{concat_2776[1]}};
  assign or_2778 = and_2774 | and_2775;
  assign one_hot_sel_2783 = unexpand_for_next_value_237_1_case_1 & concat_2776[0] | unexpand_for_next_value_237_1_case_0 & concat_2776[1];
  assign __systolic__hor_chans__1_1_not_stage_load = ~__systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_has_been_sent_reg_load_en = __systolic__hor_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_0_not_stage_load = ~__systolic__vert_chans__2_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_0_has_been_sent_reg_load_en = __systolic__vert_chans__2_0_valid_and_ready_txfr | __systolic__vert_chans__2_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_not_stage_load = ~__systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_has_been_sent_reg_load_en = __systolic__result_chans__1_0_valid_and_ready_txfr | __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_tuple_2619_index1 <= p0_load_en ? __systolic__hor_chans__1_0_reg : p0_tuple_2619_index1;
    p1_a <= p1_load_en ? p0_tuple_2619_index1 : p1_a;
    p2_tuple_2634_index1 <= p2_load_en ? __systolic__vert_chans__1_0_reg : p2_tuple_2634_index1;
    p2_a <= p2_load_en ? p1_a : p2_a;
    p3_a <= p3_load_en ? p2_a : p3_a;
    p3_b <= p3_load_en ? p2_tuple_2634_index1 : p3_b;
    p4_b <= p4_load_en ? p3_b : p4_b;
    p4_prod <= p4_load_en ? prod : p4_prod;
    p5_____state_1__1 <= p5_load_en ? ____state_1 : p5_____state_1__1;
    p5_new_accum <= p5_load_en ? new_accum : p5_new_accum;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      p4_valid <= 1'h0;
      p5_valid <= 1'h0;
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
      ____state_1 <= or_2778 ? one_hot_sel_2783 : ____state_1;
      ____state_0 <= or_2778 ? one_hot_sel_2777 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__1_0_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      p4_valid <= p4_enable ? p4_stage_done : p4_valid;
      p5_valid <= p5_enable ? p5_stage_done : p5_valid;
      __systolic__hor_chans__1_1_has_been_sent_reg <= __systolic__hor_chans__1_1_has_been_sent_reg_load_en ? __systolic__hor_chans__1_1_not_stage_load : __systolic__hor_chans__1_1_has_been_sent_reg;
      __systolic__vert_chans__2_0_has_been_sent_reg <= __systolic__vert_chans__2_0_has_been_sent_reg_load_en ? __systolic__vert_chans__2_0_not_stage_load : __systolic__vert_chans__2_0_has_been_sent_reg;
      __systolic__result_chans__1_0_has_been_sent_reg <= __systolic__result_chans__1_0_has_been_sent_reg_load_en ? __systolic__result_chans__1_0_not_stage_load : __systolic__result_chans__1_0_has_been_sent_reg;
      __systolic__hor_chans__1_0_reg <= systolic__hor_chans__1_0_load_en ? systolic__hor_chans__1_0 : __systolic__hor_chans__1_0_reg;
      __systolic__hor_chans__1_0_valid_reg <= systolic__hor_chans__1_0_valid_load_en ? systolic__hor_chans__1_0_vld : __systolic__hor_chans__1_0_valid_reg;
      __systolic__vert_chans__1_0_reg <= systolic__vert_chans__1_0_load_en ? systolic__vert_chans__1_0 : __systolic__vert_chans__1_0_reg;
      __systolic__vert_chans__1_0_valid_reg <= systolic__vert_chans__1_0_valid_load_en ? systolic__vert_chans__1_0_vld : __systolic__vert_chans__1_0_valid_reg;
      __systolic__hor_chans__1_1_reg <= systolic__hor_chans__1_1_load_en ? p3_a : __systolic__hor_chans__1_1_reg;
      __systolic__hor_chans__1_1_valid_reg <= systolic__hor_chans__1_1_valid_load_en ? __systolic__hor_chans__1_1_valid_and_not_has_been_sent : __systolic__hor_chans__1_1_valid_reg;
      __systolic__vert_chans__2_0_reg <= systolic__vert_chans__2_0_load_en ? p4_b : __systolic__vert_chans__2_0_reg;
      __systolic__vert_chans__2_0_valid_reg <= systolic__vert_chans__2_0_valid_load_en ? __systolic__vert_chans__2_0_valid_and_not_has_been_sent : __systolic__vert_chans__2_0_valid_reg;
      __systolic__result_chans__1_0_reg <= systolic__result_chans__1_0_load_en ? p5_new_accum : __systolic__result_chans__1_0_reg;
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
  reg [31:0] p0_tuple_2915_index1;
  reg [31:0] p1_a;
  reg [31:0] p2_tuple_2930_index1;
  reg [31:0] p2_a;
  reg [31:0] p3_a;
  reg [31:0] p3_b;
  reg [31:0] p4_b;
  reg [31:0] p4_prod;
  reg ____state_1;
  reg [31:0] ____state_0;
  reg p5_____state_1__1;
  reg [31:0] p5_new_accum;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg p4_valid;
  reg p5_valid;
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
  wire or_3511;
  wire p6_stage_done;
  wire p6_not_valid;
  wire p5_enable;
  wire __systolic__vert_chans__2_1_vld_buf;
  wire __systolic__vert_chans__2_1_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_inv;
  wire __systolic__vert_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire systolic__vert_chans__2_1_load_en;
  wire __systolic__vert_chans__2_1_has_sent_or_is_ready;
  wire p5_stage_done;
  wire p5_data_enable;
  wire p5_load_en;
  wire p5_not_valid;
  wire p4_enable;
  wire __systolic__hor_chans__1_2_vld_buf;
  wire __systolic__hor_chans__1_2_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_inv;
  wire __systolic__hor_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire systolic__hor_chans__1_2_load_en;
  wire __systolic__hor_chans__1_2_has_sent_or_is_ready;
  wire p4_stage_done;
  wire p4_data_enable;
  wire p4_load_en;
  wire p4_not_valid;
  wire p3_enable;
  wire p3_data_enable;
  wire p3_load_en;
  wire p3_not_valid;
  wire p2_enable;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_data_enable;
  wire p1_load_en;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire [2:0] one_hot_2959;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_1_valid_inv;
  wire systolic__vert_chans__1_1_valid_inv;
  wire and_3070;
  wire and_3071;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_3072;
  wire [31:0] new_accum;
  wire unexpand_for_next_value_267_1_case_1;
  wire unexpand_for_next_value_267_1_case_0;
  wire __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_1_valid_and_all_active_outputs_ready;
  wire __systolic__vert_chans__2_1_valid_and_ready_txfr;
  wire __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_1_valid_and_ready_txfr;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire or_3428;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_3073;
  wire or_3074;
  wire one_hot_sel_3079;
  wire __systolic__hor_chans__1_2_not_stage_load;
  wire __systolic__hor_chans__1_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_1_not_stage_load;
  wire __systolic__vert_chans__2_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_1_not_stage_load;
  wire __systolic__result_chans__1_1_has_been_sent_reg_load_en;
  assign __systolic__result_chans__1_1_vld_buf = p5_valid & p5_____state_1__1;
  assign __systolic__result_chans__1_1_not_has_been_sent = ~__systolic__result_chans__1_1_has_been_sent_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign __systolic__result_chans__1_1_valid_and_not_has_been_sent = __systolic__result_chans__1_1_vld_buf & __systolic__result_chans__1_1_not_has_been_sent;
  assign systolic__result_chans__1_1_valid_load_en = systolic__result_chans__1_1_rdy | systolic__result_chans__1_1_valid_inv;
  assign systolic__result_chans__1_1_load_en = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_valid_load_en;
  assign or_3511 = ~p5_____state_1__1 | systolic__result_chans__1_1_load_en | __systolic__result_chans__1_1_has_been_sent_reg;
  assign p6_stage_done = p5_valid & or_3511;
  assign p6_not_valid = ~p5_valid;
  assign p5_enable = p6_stage_done | p6_not_valid;
  assign __systolic__vert_chans__2_1_vld_buf = p4_valid & p5_enable;
  assign __systolic__vert_chans__2_1_not_has_been_sent = ~__systolic__vert_chans__2_1_has_been_sent_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign __systolic__vert_chans__2_1_valid_and_not_has_been_sent = __systolic__vert_chans__2_1_vld_buf & __systolic__vert_chans__2_1_not_has_been_sent;
  assign systolic__vert_chans__2_1_valid_load_en = systolic__vert_chans__2_1_rdy | systolic__vert_chans__2_1_valid_inv;
  assign systolic__vert_chans__2_1_load_en = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_valid_load_en;
  assign __systolic__vert_chans__2_1_has_sent_or_is_ready = systolic__vert_chans__2_1_load_en | __systolic__vert_chans__2_1_has_been_sent_reg;
  assign p5_stage_done = p4_valid & __systolic__vert_chans__2_1_has_sent_or_is_ready;
  assign p5_data_enable = p5_enable & p5_stage_done;
  assign p5_load_en = p5_data_enable | rst;
  assign p5_not_valid = ~p4_valid;
  assign p4_enable = p5_load_en | p5_not_valid;
  assign __systolic__hor_chans__1_2_vld_buf = p3_valid & p4_enable;
  assign __systolic__hor_chans__1_2_not_has_been_sent = ~__systolic__hor_chans__1_2_has_been_sent_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign __systolic__hor_chans__1_2_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_vld_buf & __systolic__hor_chans__1_2_not_has_been_sent;
  assign systolic__hor_chans__1_2_valid_load_en = systolic__hor_chans__1_2_rdy | systolic__hor_chans__1_2_valid_inv;
  assign systolic__hor_chans__1_2_load_en = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_valid_load_en;
  assign __systolic__hor_chans__1_2_has_sent_or_is_ready = systolic__hor_chans__1_2_load_en | __systolic__hor_chans__1_2_has_been_sent_reg;
  assign p4_stage_done = p3_valid & __systolic__hor_chans__1_2_has_sent_or_is_ready;
  assign p4_data_enable = p4_enable & p4_stage_done;
  assign p4_load_en = p4_data_enable | rst;
  assign p4_not_valid = ~p3_valid;
  assign p3_enable = p4_load_en | p4_not_valid;
  assign p3_data_enable = p3_enable & p2_valid;
  assign p3_load_en = p3_data_enable | rst;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_load_en | p3_not_valid;
  assign p2_stage_done = p1_valid & __systolic__vert_chans__1_1_valid_reg;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~____state_1, ____state_1};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_2959 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_1_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign and_3070 = ~____state_1 & p5_data_enable;
  assign and_3071 = ____state_1 & p5_data_enable;
  assign systolic__hor_chans__1_1_valid_load_en = p0_load_en | systolic__hor_chans__1_1_valid_inv;
  assign systolic__vert_chans__1_1_valid_load_en = p2_load_en | systolic__vert_chans__1_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~____state_1 == one_hot_2959[1] & ____state_1 == one_hot_2959[0];
  assign concat_3072 = {and_3070, and_3071};
  assign new_accum = ____state_0 + p4_prod;
  assign unexpand_for_next_value_267_1_case_1 = 1'h0;
  assign unexpand_for_next_value_267_1_case_0 = 1'h1;
  assign __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_2_vld_buf & systolic__hor_chans__1_2_load_en;
  assign __systolic__hor_chans__1_2_valid_and_ready_txfr = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_load_en;
  assign __systolic__vert_chans__2_1_valid_and_all_active_outputs_ready = __systolic__vert_chans__2_1_vld_buf & systolic__vert_chans__2_1_load_en;
  assign __systolic__vert_chans__2_1_valid_and_ready_txfr = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_load_en;
  assign __systolic__result_chans__1_1_valid_and_all_active_outputs_ready = __systolic__result_chans__1_1_vld_buf & or_3511;
  assign __systolic__result_chans__1_1_valid_and_ready_txfr = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_load_en;
  assign systolic__hor_chans__1_1_load_en = systolic__hor_chans__1_1_vld & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = systolic__vert_chans__1_1_vld & systolic__vert_chans__1_1_valid_load_en;
  assign or_3428 = ~p5_stage_done | ____state_0__at_most_one_next_value | rst;
  assign prod = umul32b_32b_x_32b(p3_a, p3_b);
  assign one_hot_sel_3073 = 32'h0000_0000 & {32{concat_3072[0]}} | new_accum & {32{concat_3072[1]}};
  assign or_3074 = and_3070 | and_3071;
  assign one_hot_sel_3079 = unexpand_for_next_value_267_1_case_1 & concat_3072[0] | unexpand_for_next_value_267_1_case_0 & concat_3072[1];
  assign __systolic__hor_chans__1_2_not_stage_load = ~__systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_has_been_sent_reg_load_en = __systolic__hor_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_1_not_stage_load = ~__systolic__vert_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_1_has_been_sent_reg_load_en = __systolic__vert_chans__2_1_valid_and_ready_txfr | __systolic__vert_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_not_stage_load = ~__systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_has_been_sent_reg_load_en = __systolic__result_chans__1_1_valid_and_ready_txfr | __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_tuple_2915_index1 <= p0_load_en ? __systolic__hor_chans__1_1_reg : p0_tuple_2915_index1;
    p1_a <= p1_load_en ? p0_tuple_2915_index1 : p1_a;
    p2_tuple_2930_index1 <= p2_load_en ? __systolic__vert_chans__1_1_reg : p2_tuple_2930_index1;
    p2_a <= p2_load_en ? p1_a : p2_a;
    p3_a <= p3_load_en ? p2_a : p3_a;
    p3_b <= p3_load_en ? p2_tuple_2930_index1 : p3_b;
    p4_b <= p4_load_en ? p3_b : p4_b;
    p4_prod <= p4_load_en ? prod : p4_prod;
    p5_____state_1__1 <= p5_load_en ? ____state_1 : p5_____state_1__1;
    p5_new_accum <= p5_load_en ? new_accum : p5_new_accum;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 1'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      p4_valid <= 1'h0;
      p5_valid <= 1'h0;
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
      ____state_1 <= or_3074 ? one_hot_sel_3079 : ____state_1;
      ____state_0 <= or_3074 ? one_hot_sel_3073 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__1_1_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      p4_valid <= p4_enable ? p4_stage_done : p4_valid;
      p5_valid <= p5_enable ? p5_stage_done : p5_valid;
      __systolic__hor_chans__1_2_has_been_sent_reg <= __systolic__hor_chans__1_2_has_been_sent_reg_load_en ? __systolic__hor_chans__1_2_not_stage_load : __systolic__hor_chans__1_2_has_been_sent_reg;
      __systolic__vert_chans__2_1_has_been_sent_reg <= __systolic__vert_chans__2_1_has_been_sent_reg_load_en ? __systolic__vert_chans__2_1_not_stage_load : __systolic__vert_chans__2_1_has_been_sent_reg;
      __systolic__result_chans__1_1_has_been_sent_reg <= __systolic__result_chans__1_1_has_been_sent_reg_load_en ? __systolic__result_chans__1_1_not_stage_load : __systolic__result_chans__1_1_has_been_sent_reg;
      __systolic__hor_chans__1_1_reg <= systolic__hor_chans__1_1_load_en ? systolic__hor_chans__1_1 : __systolic__hor_chans__1_1_reg;
      __systolic__hor_chans__1_1_valid_reg <= systolic__hor_chans__1_1_valid_load_en ? systolic__hor_chans__1_1_vld : __systolic__hor_chans__1_1_valid_reg;
      __systolic__vert_chans__1_1_reg <= systolic__vert_chans__1_1_load_en ? systolic__vert_chans__1_1 : __systolic__vert_chans__1_1_reg;
      __systolic__vert_chans__1_1_valid_reg <= systolic__vert_chans__1_1_valid_load_en ? systolic__vert_chans__1_1_vld : __systolic__vert_chans__1_1_valid_reg;
      __systolic__hor_chans__1_2_reg <= systolic__hor_chans__1_2_load_en ? p3_a : __systolic__hor_chans__1_2_reg;
      __systolic__hor_chans__1_2_valid_reg <= systolic__hor_chans__1_2_valid_load_en ? __systolic__hor_chans__1_2_valid_and_not_has_been_sent : __systolic__hor_chans__1_2_valid_reg;
      __systolic__vert_chans__2_1_reg <= systolic__vert_chans__2_1_load_en ? p4_b : __systolic__vert_chans__2_1_reg;
      __systolic__vert_chans__2_1_valid_reg <= systolic__vert_chans__2_1_valid_load_en ? __systolic__vert_chans__2_1_valid_and_not_has_been_sent : __systolic__vert_chans__2_1_valid_reg;
      __systolic__result_chans__1_1_reg <= systolic__result_chans__1_1_load_en ? p5_new_accum : __systolic__result_chans__1_1_reg;
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
  wire [31:0] systolic__arg0_unflattened[0:1][0:1];
  assign systolic__arg0_unflattened[0][0] = systolic__arg0[31:0];
  assign systolic__arg0_unflattened[0][1] = systolic__arg0[63:32];
  assign systolic__arg0_unflattened[1][0] = systolic__arg0[95:64];
  assign systolic__arg0_unflattened[1][1] = systolic__arg0[127:96];
  wire [31:0] systolic__arg1_unflattened[0:1][0:1];
  assign systolic__arg1_unflattened[0][0] = systolic__arg1[31:0];
  assign systolic__arg1_unflattened[0][1] = systolic__arg1[63:32];
  assign systolic__arg1_unflattened[1][0] = systolic__arg1[95:64];
  assign systolic__arg1_unflattened[1][1] = systolic__arg1[127:96];
  wire instantiation_output_3189;
  wire instantiation_output_3195;
  wire [31:0] instantiation_output_3200;
  wire instantiation_output_3201;
  wire instantiation_output_3234;
  wire [31:0] instantiation_output_3239;
  wire instantiation_output_3240;
  wire instantiation_output_3273;
  wire [31:0] instantiation_output_3277[0:1][0:1];
  wire instantiation_output_3278;
  wire instantiation_output_3292;
  wire instantiation_output_3305;
  wire instantiation_output_3318;
  wire instantiation_output_3331;
  wire [31:0] instantiation_output_3336;
  wire instantiation_output_3337;
  wire [31:0] instantiation_output_3349;
  wire instantiation_output_3350;
  wire instantiation_output_3396;
  wire instantiation_output_3409;
  wire instantiation_output_3208;
  wire [31:0] instantiation_output_3213;
  wire instantiation_output_3214;
  wire [31:0] instantiation_output_3284;
  wire instantiation_output_3285;
  wire instantiation_output_3344;
  wire [31:0] instantiation_output_3362;
  wire instantiation_output_3363;
  wire instantiation_output_3221;
  wire [31:0] instantiation_output_3226;
  wire instantiation_output_3227;
  wire [31:0] instantiation_output_3297;
  wire instantiation_output_3298;
  wire instantiation_output_3357;
  wire [31:0] instantiation_output_3375;
  wire instantiation_output_3376;
  wire instantiation_output_3247;
  wire [31:0] instantiation_output_3252;
  wire instantiation_output_3253;
  wire [31:0] instantiation_output_3310;
  wire instantiation_output_3311;
  wire instantiation_output_3370;
  wire [31:0] instantiation_output_3388;
  wire instantiation_output_3389;
  wire instantiation_output_3260;
  wire [31:0] instantiation_output_3265;
  wire instantiation_output_3266;
  wire [31:0] instantiation_output_3323;
  wire instantiation_output_3324;
  wire instantiation_output_3383;
  wire [31:0] instantiation_output_3401;
  wire instantiation_output_3402;
  wire instantiation_output_3202;
  wire [31:0] instantiation_output_3206;
  wire instantiation_output_3207;
  wire instantiation_output_3215;
  wire [31:0] instantiation_output_3219;
  wire instantiation_output_3220;
  wire instantiation_output_3228;
  wire [31:0] instantiation_output_3232;
  wire instantiation_output_3233;
  wire instantiation_output_3241;
  wire [31:0] instantiation_output_3245;
  wire instantiation_output_3246;
  wire instantiation_output_3254;
  wire [31:0] instantiation_output_3258;
  wire instantiation_output_3259;
  wire instantiation_output_3267;
  wire [31:0] instantiation_output_3271;
  wire instantiation_output_3272;
  wire instantiation_output_3286;
  wire [31:0] instantiation_output_3290;
  wire instantiation_output_3291;
  wire instantiation_output_3299;
  wire [31:0] instantiation_output_3303;
  wire instantiation_output_3304;
  wire instantiation_output_3312;
  wire [31:0] instantiation_output_3316;
  wire instantiation_output_3317;
  wire instantiation_output_3325;
  wire [31:0] instantiation_output_3329;
  wire instantiation_output_3330;
  wire instantiation_output_3338;
  wire [31:0] instantiation_output_3342;
  wire instantiation_output_3343;
  wire instantiation_output_3351;
  wire [31:0] instantiation_output_3355;
  wire instantiation_output_3356;
  wire instantiation_output_3364;
  wire [31:0] instantiation_output_3368;
  wire instantiation_output_3369;
  wire instantiation_output_3377;
  wire [31:0] instantiation_output_3381;
  wire instantiation_output_3382;
  wire instantiation_output_3390;
  wire [31:0] instantiation_output_3394;
  wire instantiation_output_3395;
  wire instantiation_output_3403;
  wire [31:0] instantiation_output_3407;
  wire instantiation_output_3408;

  // ===== Instantiations
  __systolic__SystolicArray_0_next__1 __systolic__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .systolic__arg0({{systolic__arg0_unflattened[1][1], systolic__arg0_unflattened[1][0]}, {systolic__arg0_unflattened[0][1], systolic__arg0_unflattened[0][0]}}),
    .systolic__arg0_vld(systolic__arg0_vld),
    .systolic__arg1({{systolic__arg1_unflattened[1][1], systolic__arg1_unflattened[1][0]}, {systolic__arg1_unflattened[0][1], systolic__arg1_unflattened[0][0]}}),
    .systolic__arg1_vld(systolic__arg1_vld),
    .systolic__hor_chans__0_0_rdy(instantiation_output_3202),
    .systolic__hor_chans__0_2(instantiation_output_3232),
    .systolic__hor_chans__0_2_vld(instantiation_output_3233),
    .systolic__hor_chans__1_0_rdy(instantiation_output_3241),
    .systolic__hor_chans__1_2(instantiation_output_3271),
    .systolic__hor_chans__1_2_vld(instantiation_output_3272),
    .systolic__out0_rdy(systolic__out0_rdy),
    .systolic__result_chans__0_0(instantiation_output_3290),
    .systolic__result_chans__0_0_vld(instantiation_output_3291),
    .systolic__result_chans__0_1(instantiation_output_3303),
    .systolic__result_chans__0_1_vld(instantiation_output_3304),
    .systolic__result_chans__1_0(instantiation_output_3316),
    .systolic__result_chans__1_0_vld(instantiation_output_3317),
    .systolic__result_chans__1_1(instantiation_output_3329),
    .systolic__result_chans__1_1_vld(instantiation_output_3330),
    .systolic__vert_chans__0_0_rdy(instantiation_output_3338),
    .systolic__vert_chans__0_1_rdy(instantiation_output_3351),
    .systolic__vert_chans__2_0(instantiation_output_3394),
    .systolic__vert_chans__2_0_vld(instantiation_output_3395),
    .systolic__vert_chans__2_1(instantiation_output_3407),
    .systolic__vert_chans__2_1_vld(instantiation_output_3408),
    .systolic__arg0_rdy(instantiation_output_3189),
    .systolic__arg1_rdy(instantiation_output_3195),
    .systolic__hor_chans__0_0(instantiation_output_3200),
    .systolic__hor_chans__0_0_vld(instantiation_output_3201),
    .systolic__hor_chans__0_2_rdy(instantiation_output_3234),
    .systolic__hor_chans__1_0(instantiation_output_3239),
    .systolic__hor_chans__1_0_vld(instantiation_output_3240),
    .systolic__hor_chans__1_2_rdy(instantiation_output_3273),
    .systolic__out0({{instantiation_output_3277[1][1], instantiation_output_3277[1][0]}, {instantiation_output_3277[0][1], instantiation_output_3277[0][0]}}),
    .systolic__out0_vld(instantiation_output_3278),
    .systolic__result_chans__0_0_rdy(instantiation_output_3292),
    .systolic__result_chans__0_1_rdy(instantiation_output_3305),
    .systolic__result_chans__1_0_rdy(instantiation_output_3318),
    .systolic__result_chans__1_1_rdy(instantiation_output_3331),
    .systolic__vert_chans__0_0(instantiation_output_3336),
    .systolic__vert_chans__0_0_vld(instantiation_output_3337),
    .systolic__vert_chans__0_1(instantiation_output_3349),
    .systolic__vert_chans__0_1_vld(instantiation_output_3350),
    .systolic__vert_chans__2_0_rdy(instantiation_output_3396),
    .systolic__vert_chans__2_1_rdy(instantiation_output_3409),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_0_next __systolic__SystolicArray__PE_0_next_inst1 (
    .rst(rst),
    .systolic__hor_chans__0_0(instantiation_output_3206),
    .systolic__hor_chans__0_0_vld(instantiation_output_3207),
    .systolic__hor_chans__0_1_rdy(instantiation_output_3215),
    .systolic__result_chans__0_0_rdy(instantiation_output_3286),
    .systolic__vert_chans__0_0(instantiation_output_3342),
    .systolic__vert_chans__0_0_vld(instantiation_output_3343),
    .systolic__vert_chans__1_0_rdy(instantiation_output_3364),
    .systolic__hor_chans__0_0_rdy(instantiation_output_3208),
    .systolic__hor_chans__0_1(instantiation_output_3213),
    .systolic__hor_chans__0_1_vld(instantiation_output_3214),
    .systolic__result_chans__0_0(instantiation_output_3284),
    .systolic__result_chans__0_0_vld(instantiation_output_3285),
    .systolic__vert_chans__0_0_rdy(instantiation_output_3344),
    .systolic__vert_chans__1_0(instantiation_output_3362),
    .systolic__vert_chans__1_0_vld(instantiation_output_3363),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_1_next __systolic__SystolicArray__PE_1_next_inst2 (
    .rst(rst),
    .systolic__hor_chans__0_1(instantiation_output_3219),
    .systolic__hor_chans__0_1_vld(instantiation_output_3220),
    .systolic__hor_chans__0_2_rdy(instantiation_output_3228),
    .systolic__result_chans__0_1_rdy(instantiation_output_3299),
    .systolic__vert_chans__0_1(instantiation_output_3355),
    .systolic__vert_chans__0_1_vld(instantiation_output_3356),
    .systolic__vert_chans__1_1_rdy(instantiation_output_3377),
    .systolic__hor_chans__0_1_rdy(instantiation_output_3221),
    .systolic__hor_chans__0_2(instantiation_output_3226),
    .systolic__hor_chans__0_2_vld(instantiation_output_3227),
    .systolic__result_chans__0_1(instantiation_output_3297),
    .systolic__result_chans__0_1_vld(instantiation_output_3298),
    .systolic__vert_chans__0_1_rdy(instantiation_output_3357),
    .systolic__vert_chans__1_1(instantiation_output_3375),
    .systolic__vert_chans__1_1_vld(instantiation_output_3376),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_2_next __systolic__SystolicArray__PE_2_next_inst3 (
    .rst(rst),
    .systolic__hor_chans__1_0(instantiation_output_3245),
    .systolic__hor_chans__1_0_vld(instantiation_output_3246),
    .systolic__hor_chans__1_1_rdy(instantiation_output_3254),
    .systolic__result_chans__1_0_rdy(instantiation_output_3312),
    .systolic__vert_chans__1_0(instantiation_output_3368),
    .systolic__vert_chans__1_0_vld(instantiation_output_3369),
    .systolic__vert_chans__2_0_rdy(instantiation_output_3390),
    .systolic__hor_chans__1_0_rdy(instantiation_output_3247),
    .systolic__hor_chans__1_1(instantiation_output_3252),
    .systolic__hor_chans__1_1_vld(instantiation_output_3253),
    .systolic__result_chans__1_0(instantiation_output_3310),
    .systolic__result_chans__1_0_vld(instantiation_output_3311),
    .systolic__vert_chans__1_0_rdy(instantiation_output_3370),
    .systolic__vert_chans__2_0(instantiation_output_3388),
    .systolic__vert_chans__2_0_vld(instantiation_output_3389),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_3_next __systolic__SystolicArray__PE_3_next_inst4 (
    .rst(rst),
    .systolic__hor_chans__1_1(instantiation_output_3258),
    .systolic__hor_chans__1_1_vld(instantiation_output_3259),
    .systolic__hor_chans__1_2_rdy(instantiation_output_3267),
    .systolic__result_chans__1_1_rdy(instantiation_output_3325),
    .systolic__vert_chans__1_1(instantiation_output_3381),
    .systolic__vert_chans__1_1_vld(instantiation_output_3382),
    .systolic__vert_chans__2_1_rdy(instantiation_output_3403),
    .systolic__hor_chans__1_1_rdy(instantiation_output_3260),
    .systolic__hor_chans__1_2(instantiation_output_3265),
    .systolic__hor_chans__1_2_vld(instantiation_output_3266),
    .systolic__result_chans__1_1(instantiation_output_3323),
    .systolic__result_chans__1_1_vld(instantiation_output_3324),
    .systolic__vert_chans__1_1_rdy(instantiation_output_3383),
    .systolic__vert_chans__2_1(instantiation_output_3401),
    .systolic__vert_chans__2_1_vld(instantiation_output_3402),
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
    .push_data(instantiation_output_3200),
    .push_valid(instantiation_output_3201),
    .pop_ready(instantiation_output_3208),
    .push_ready(instantiation_output_3202),
    .pop_data(instantiation_output_3206),
    .pop_valid(instantiation_output_3207)
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
    .push_data(instantiation_output_3213),
    .push_valid(instantiation_output_3214),
    .pop_ready(instantiation_output_3221),
    .push_ready(instantiation_output_3215),
    .pop_data(instantiation_output_3219),
    .pop_valid(instantiation_output_3220)
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
    .push_data(instantiation_output_3226),
    .push_valid(instantiation_output_3227),
    .pop_ready(instantiation_output_3234),
    .push_ready(instantiation_output_3228),
    .pop_data(instantiation_output_3232),
    .pop_valid(instantiation_output_3233)
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
    .push_data(instantiation_output_3239),
    .push_valid(instantiation_output_3240),
    .pop_ready(instantiation_output_3247),
    .push_ready(instantiation_output_3241),
    .pop_data(instantiation_output_3245),
    .pop_valid(instantiation_output_3246)
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
    .push_data(instantiation_output_3252),
    .push_valid(instantiation_output_3253),
    .pop_ready(instantiation_output_3260),
    .push_ready(instantiation_output_3254),
    .pop_data(instantiation_output_3258),
    .pop_valid(instantiation_output_3259)
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
    .push_data(instantiation_output_3265),
    .push_valid(instantiation_output_3266),
    .pop_ready(instantiation_output_3273),
    .push_ready(instantiation_output_3267),
    .pop_data(instantiation_output_3271),
    .pop_valid(instantiation_output_3272)
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
    .push_data(instantiation_output_3284),
    .push_valid(instantiation_output_3285),
    .pop_ready(instantiation_output_3292),
    .push_ready(instantiation_output_3286),
    .pop_data(instantiation_output_3290),
    .pop_valid(instantiation_output_3291)
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
    .push_data(instantiation_output_3297),
    .push_valid(instantiation_output_3298),
    .pop_ready(instantiation_output_3305),
    .push_ready(instantiation_output_3299),
    .pop_data(instantiation_output_3303),
    .pop_valid(instantiation_output_3304)
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
    .push_data(instantiation_output_3310),
    .push_valid(instantiation_output_3311),
    .pop_ready(instantiation_output_3318),
    .push_ready(instantiation_output_3312),
    .pop_data(instantiation_output_3316),
    .pop_valid(instantiation_output_3317)
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
    .push_data(instantiation_output_3323),
    .push_valid(instantiation_output_3324),
    .pop_ready(instantiation_output_3331),
    .push_ready(instantiation_output_3325),
    .pop_data(instantiation_output_3329),
    .pop_valid(instantiation_output_3330)
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
    .push_data(instantiation_output_3336),
    .push_valid(instantiation_output_3337),
    .pop_ready(instantiation_output_3344),
    .push_ready(instantiation_output_3338),
    .pop_data(instantiation_output_3342),
    .pop_valid(instantiation_output_3343)
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
    .push_data(instantiation_output_3349),
    .push_valid(instantiation_output_3350),
    .pop_ready(instantiation_output_3357),
    .push_ready(instantiation_output_3351),
    .pop_data(instantiation_output_3355),
    .pop_valid(instantiation_output_3356)
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
    .push_data(instantiation_output_3362),
    .push_valid(instantiation_output_3363),
    .pop_ready(instantiation_output_3370),
    .push_ready(instantiation_output_3364),
    .pop_data(instantiation_output_3368),
    .pop_valid(instantiation_output_3369)
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
    .push_data(instantiation_output_3375),
    .push_valid(instantiation_output_3376),
    .pop_ready(instantiation_output_3383),
    .push_ready(instantiation_output_3377),
    .pop_data(instantiation_output_3381),
    .pop_valid(instantiation_output_3382)
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
    .push_data(instantiation_output_3388),
    .push_valid(instantiation_output_3389),
    .pop_ready(instantiation_output_3396),
    .push_ready(instantiation_output_3390),
    .pop_data(instantiation_output_3394),
    .pop_valid(instantiation_output_3395)
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
    .push_data(instantiation_output_3401),
    .push_valid(instantiation_output_3402),
    .pop_ready(instantiation_output_3409),
    .push_ready(instantiation_output_3403),
    .pop_data(instantiation_output_3407),
    .pop_valid(instantiation_output_3408)
  );
  assign systolic__arg0_rdy = instantiation_output_3189;
  assign systolic__arg1_rdy = instantiation_output_3195;
  assign systolic__out0 = {{instantiation_output_3277[1][1], instantiation_output_3277[1][0]}, {instantiation_output_3277[0][1], instantiation_output_3277[0][0]}};
  assign systolic__out0_vld = instantiation_output_3278;
endmodule
