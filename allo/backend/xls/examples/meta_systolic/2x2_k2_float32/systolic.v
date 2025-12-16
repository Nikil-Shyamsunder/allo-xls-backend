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
  assign __systolic__arg0_reg_init[0][0] = {1'h0, 8'h00, 23'h00_0000};
  assign __systolic__arg0_reg_init[0][1] = {1'h0, 8'h00, 23'h00_0000};
  assign __systolic__arg0_reg_init[1][0] = {1'h0, 8'h00, 23'h00_0000};
  assign __systolic__arg0_reg_init[1][1] = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__arg1_reg_init[0:1][0:1];
  assign __systolic__arg1_reg_init[0][0] = {1'h0, 8'h00, 23'h00_0000};
  assign __systolic__arg1_reg_init[0][1] = {1'h0, 8'h00, 23'h00_0000};
  assign __systolic__arg1_reg_init[1][0] = {1'h0, 8'h00, 23'h00_0000};
  assign __systolic__arg1_reg_init[1][1] = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__0_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__1_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__0_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__1_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__out0_reg_init[0:1][0:1];
  assign __systolic__out0_reg_init[0][0] = {1'h0, 8'h00, 23'h00_0000};
  assign __systolic__out0_reg_init[0][1] = {1'h0, 8'h00, 23'h00_0000};
  assign __systolic__out0_reg_init[1][0] = {1'h0, 8'h00, 23'h00_0000};
  assign __systolic__out0_reg_init[1][1] = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_40421[0:1][0:1];
  assign literal_40421[0][0] = {1'h0, 8'h00, 23'h00_0000};
  assign literal_40421[0][1] = {1'h0, 8'h00, 23'h00_0000};
  assign literal_40421[1][0] = {1'h0, 8'h00, 23'h00_0000};
  assign literal_40421[1][1] = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_40425[0:1][0:1];
  assign literal_40425[0][0] = {1'h0, 8'h00, 23'h00_0000};
  assign literal_40425[0][1] = {1'h0, 8'h00, 23'h00_0000};
  assign literal_40425[1][0] = {1'h0, 8'h00, 23'h00_0000};
  assign literal_40425[1][1] = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_40631 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_40636 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_40641 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_40646 = {1'h0, 8'h00, 23'h00_0000};
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
  reg ____state_0_0_3;
  reg [7:0] ____state_0_0_4;
  reg [22:0] ____state_0_0_5;
  reg ____state_1_1_0;
  reg [7:0] ____state_1_1_1;
  reg [22:0] ____state_1_1_2;
  reg ____state_0_1_3;
  reg [7:0] ____state_0_1_4;
  reg [22:0] ____state_0_1_5;
  reg ____state_1_1_3;
  reg [7:0] ____state_1_1_4;
  reg [22:0] ____state_1_1_5;
  reg ____state_0_0_0;
  reg ____state_0_1_0;
  reg ____state_1_0_0;
  reg ____state_1_0_3;
  reg [7:0] ____state_0_0_1;
  reg [22:0] ____state_0_0_2;
  reg [7:0] ____state_0_1_1;
  reg [22:0] ____state_0_1_2;
  reg [7:0] ____state_1_0_1;
  reg [22:0] ____state_1_0_2;
  reg [7:0] ____state_1_0_4;
  reg [22:0] ____state_1_0_5;
  reg p0_eq_40488;
  reg p0_valid;
  reg __systolic__hor_chans__0_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_0_has_been_sent_reg;
  reg __systolic__hor_chans__1_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_1_has_been_sent_reg;
  reg __systolic__out0_has_been_sent_reg;
  reg [31:0] __systolic__arg0_reg[0:1][0:1];
  reg __systolic__arg0_valid_reg;
  reg [31:0] __systolic__arg1_reg[0:1][0:1];
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
  reg [31:0] __systolic__out0_reg[0:1][0:1];
  reg __systolic__out0_valid_reg;
  wire p1_all_active_inputs_valid;
  wire __systolic__out0_vld_buf;
  wire __systolic__out0_not_has_been_sent;
  wire systolic__out0_valid_inv;
  wire systolic__hor_chans__0_0_not_pred;
  wire __systolic__out0_valid_and_not_has_been_sent;
  wire systolic__out0_valid_load_en;
  wire nor_40419;
  wire systolic__out0_load_en;
  wire systolic__arg0_not_pred;
  wire or_43778;
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
  wire eq_40488;
  wire p0_all_active_outputs_ready;
  wire p0_stage_done;
  wire [1:0] ____state_2__next_value_predicates;
  wire [31:0] systolic__arg0_select[0:1][0:1];
  wire [31:0] systolic__arg1_select[0:1][0:1];
  wire p0_data_enable;
  wire [2:0] one_hot_40503;
  wire [31:0] array_index_40430;
  wire [31:0] array_index_40490;
  wire [31:0] array_index_40450;
  wire [31:0] array_index_40491;
  wire [31:0] array_index_40492;
  wire [31:0] array_index_40493;
  wire [31:0] array_index_40431;
  wire [31:0] array_index_40454;
  wire p0_load_en;
  wire tuple_index_40435;
  wire tuple_index_40459;
  wire tuple_index_40441;
  wire tuple_index_40466;
  wire and_40734;
  wire systolic__arg0_valid_inv;
  wire systolic__arg1_valid_inv;
  wire systolic__hor_chans__0_2_valid_inv;
  wire systolic__hor_chans__1_2_valid_inv;
  wire and_40736;
  wire systolic__result_chans__0_0_valid_inv;
  wire systolic__result_chans__0_1_valid_inv;
  wire systolic__result_chans__1_0_valid_inv;
  wire systolic__result_chans__1_1_valid_inv;
  wire systolic__vert_chans__2_0_valid_inv;
  wire systolic__vert_chans__2_1_valid_inv;
  wire [7:0] tuple_index_40437;
  wire [22:0] tuple_index_40439;
  wire [7:0] tuple_index_40461;
  wire [22:0] tuple_index_40463;
  wire [7:0] tuple_index_40443;
  wire [22:0] tuple_index_40445;
  wire [7:0] tuple_index_40468;
  wire [22:0] tuple_index_40470;
  wire and_40723;
  wire and_40724;
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
  wire [7:0] sign_ext_40532;
  wire [22:0] sign_ext_40534;
  wire [1:0] concat_40725;
  wire [1:0] unexpand_for_next_value_1155_2__4_case_1;
  wire [1:0] unexpand_for_next_value_1155_2__4_case_0;
  wire __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_0_valid_and_ready_txfr;
  wire __systolic__hor_chans__1_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_1_valid_and_ready_txfr;
  wire __systolic__out0_valid_and_all_active_outputs_ready;
  wire __systolic__out0_valid_and_ready_txfr;
  wire [31:0] array_40653[0:1];
  wire [31:0] array_40654[0:1];
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
  wire or_43748;
  wire nor_40558;
  wire [7:0] and_40559;
  wire [22:0] and_40560;
  wire nor_40561;
  wire [7:0] and_40562;
  wire [22:0] and_40563;
  wire nor_40564;
  wire [7:0] and_40565;
  wire [22:0] and_40566;
  wire nor_40567;
  wire [7:0] and_40568;
  wire [22:0] and_40569;
  wire nor_40570;
  wire [7:0] and_40571;
  wire [22:0] and_40572;
  wire nor_40573;
  wire [7:0] and_40574;
  wire [22:0] and_40575;
  wire nor_40576;
  wire [7:0] and_40577;
  wire [22:0] and_40578;
  wire nor_40579;
  wire [7:0] and_40580;
  wire [22:0] and_40581;
  wire [1:0] one_hot_sel_40726;
  wire or_40727;
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
  assign p1_all_active_inputs_valid = (~p0_eq_40488 | __systolic__result_chans__0_0_valid_reg) & (~p0_eq_40488 | __systolic__result_chans__0_1_valid_reg) & (~p0_eq_40488 | __systolic__result_chans__1_0_valid_reg) & (~p0_eq_40488 | __systolic__result_chans__1_1_valid_reg);
  assign __systolic__out0_vld_buf = p1_all_active_inputs_valid & p0_valid & p0_eq_40488;
  assign __systolic__out0_not_has_been_sent = ~__systolic__out0_has_been_sent_reg;
  assign systolic__out0_valid_inv = ~__systolic__out0_valid_reg;
  assign systolic__hor_chans__0_0_not_pred = ____state_2[1];
  assign __systolic__out0_valid_and_not_has_been_sent = __systolic__out0_vld_buf & __systolic__out0_not_has_been_sent;
  assign systolic__out0_valid_load_en = systolic__out0_rdy | systolic__out0_valid_inv;
  assign nor_40419 = ~(____state_2[0] | systolic__hor_chans__0_0_not_pred);
  assign systolic__out0_load_en = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_valid_load_en;
  assign systolic__arg0_not_pred = ~nor_40419;
  assign or_43778 = ~p0_eq_40488 | systolic__out0_load_en | __systolic__out0_has_been_sent_reg;
  assign p1_stage_done = p0_valid & p1_all_active_inputs_valid & or_43778;
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
  assign eq_40488 = ____state_2 == 2'h2;
  assign p0_all_active_outputs_ready = (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__0_0_load_en | __systolic__hor_chans__0_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_0_load_en | __systolic__vert_chans__0_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__1_0_load_en | __systolic__hor_chans__1_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_1_load_en | __systolic__vert_chans__0_1_has_been_sent_reg);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign ____state_2__next_value_predicates = {~eq_40488, eq_40488};
  assign systolic__arg0_select[0][0] = nor_40419 == 1'h0 ? literal_40421[0][0] : __systolic__arg0_reg[0][0];
  assign systolic__arg0_select[0][1] = nor_40419 == 1'h0 ? literal_40421[0][1] : __systolic__arg0_reg[0][1];
  assign systolic__arg0_select[1][0] = nor_40419 == 1'h0 ? literal_40421[1][0] : __systolic__arg0_reg[1][0];
  assign systolic__arg0_select[1][1] = nor_40419 == 1'h0 ? literal_40421[1][1] : __systolic__arg0_reg[1][1];
  assign systolic__arg1_select[0][0] = nor_40419 == 1'h0 ? literal_40425[0][0] : __systolic__arg1_reg[0][0];
  assign systolic__arg1_select[0][1] = nor_40419 == 1'h0 ? literal_40425[0][1] : __systolic__arg1_reg[0][1];
  assign systolic__arg1_select[1][0] = nor_40419 == 1'h0 ? literal_40425[1][0] : __systolic__arg1_reg[1][0];
  assign systolic__arg1_select[1][1] = nor_40419 == 1'h0 ? literal_40425[1][1] : __systolic__arg1_reg[1][1];
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign one_hot_40503 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign array_index_40430 = systolic__arg0_select[1'h0][1'h0];
  assign array_index_40490 = systolic__arg0_select[1'h0][1'h1];
  assign array_index_40450 = systolic__arg0_select[1'h1][1'h0];
  assign array_index_40491 = systolic__arg0_select[1'h1][1'h1];
  assign array_index_40492 = systolic__arg1_select[1'h1][1'h0];
  assign array_index_40493 = systolic__arg1_select[1'h1][1'h1];
  assign array_index_40431 = systolic__arg1_select[1'h0][1'h0];
  assign array_index_40454 = systolic__arg1_select[1'h0][1'h1];
  assign p0_load_en = p0_data_enable | rst;
  assign tuple_index_40435 = array_index_40430[31:31];
  assign tuple_index_40459 = array_index_40450[31:31];
  assign tuple_index_40441 = array_index_40431[31:31];
  assign tuple_index_40466 = array_index_40454[31:31];
  assign and_40734 = p0_load_en & nor_40419;
  assign systolic__arg0_valid_inv = ~__systolic__arg0_valid_reg;
  assign systolic__arg1_valid_inv = ~__systolic__arg1_valid_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign and_40736 = p1_stage_done & p0_eq_40488;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign tuple_index_40437 = array_index_40430[30:23];
  assign tuple_index_40439 = array_index_40430[22:0];
  assign tuple_index_40461 = array_index_40450[30:23];
  assign tuple_index_40463 = array_index_40450[22:0];
  assign tuple_index_40443 = array_index_40431[30:23];
  assign tuple_index_40445 = array_index_40431[22:0];
  assign tuple_index_40468 = array_index_40454[30:23];
  assign tuple_index_40470 = array_index_40454[22:0];
  assign and_40723 = ~eq_40488 & p0_data_enable;
  assign and_40724 = eq_40488 & p0_data_enable;
  assign systolic__result_chans__0_0_select = p0_eq_40488 ? __systolic__result_chans__0_0_reg : literal_40631;
  assign systolic__result_chans__0_1_select = p0_eq_40488 ? __systolic__result_chans__0_1_reg : literal_40636;
  assign systolic__result_chans__1_0_select = p0_eq_40488 ? __systolic__result_chans__1_0_reg : literal_40641;
  assign systolic__result_chans__1_1_select = p0_eq_40488 ? __systolic__result_chans__1_1_reg : literal_40646;
  assign systolic__arg0_valid_load_en = and_40734 | systolic__arg0_valid_inv;
  assign systolic__arg1_valid_load_en = and_40734 | systolic__arg1_valid_inv;
  assign systolic__hor_chans__0_2_valid_load_en = p0_load_en | systolic__hor_chans__0_2_valid_inv;
  assign systolic__hor_chans__1_2_valid_load_en = p0_load_en | systolic__hor_chans__1_2_valid_inv;
  assign systolic__result_chans__0_0_valid_load_en = and_40736 | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_1_valid_load_en = and_40736 | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__1_0_valid_load_en = and_40736 | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_1_valid_load_en = and_40736 | systolic__result_chans__1_1_valid_inv;
  assign systolic__vert_chans__2_0_valid_load_en = p0_load_en | systolic__vert_chans__2_0_valid_inv;
  assign systolic__vert_chans__2_1_valid_load_en = p0_load_en | systolic__vert_chans__2_1_valid_inv;
  assign ____state_2__at_most_one_next_value = ~eq_40488 == one_hot_40503[1] & eq_40488 == one_hot_40503[0];
  assign sign_ext_40532 = {8{~eq_40488}};
  assign sign_ext_40534 = {23{~eq_40488}};
  assign concat_40725 = {and_40723, and_40724};
  assign unexpand_for_next_value_1155_2__4_case_1 = 2'h0;
  assign unexpand_for_next_value_1155_2__4_case_0 = ____state_2 + 2'h1;
  assign __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_0_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_valid_and_ready_txfr = __systolic__hor_chans__0_0_valid_and_not_has_been_sent & systolic__hor_chans__0_0_load_en;
  assign __systolic__vert_chans__0_0_valid_and_ready_txfr = __systolic__vert_chans__0_0_valid_and_not_has_been_sent & systolic__vert_chans__0_0_load_en;
  assign __systolic__hor_chans__1_0_valid_and_ready_txfr = __systolic__hor_chans__1_0_valid_and_not_has_been_sent & systolic__hor_chans__1_0_load_en;
  assign __systolic__vert_chans__0_1_valid_and_ready_txfr = __systolic__vert_chans__0_1_valid_and_not_has_been_sent & systolic__vert_chans__0_1_load_en;
  assign __systolic__out0_valid_and_all_active_outputs_ready = __systolic__out0_vld_buf & or_43778;
  assign __systolic__out0_valid_and_ready_txfr = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_load_en;
  assign array_40653[0] = systolic__result_chans__0_0_select;
  assign array_40653[1] = systolic__result_chans__0_1_select;
  assign array_40654[0] = systolic__result_chans__1_0_select;
  assign array_40654[1] = systolic__result_chans__1_1_select;
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
  assign or_43748 = ~p0_stage_done | ____state_2__at_most_one_next_value | rst;
  assign nor_40558 = ~(eq_40488 | ~(nor_40419 ? tuple_index_40435 : ____state_0_0_0));
  assign and_40559 = (nor_40419 ? tuple_index_40437 : ____state_0_0_1) & sign_ext_40532;
  assign and_40560 = (nor_40419 ? tuple_index_40439 : ____state_0_0_2) & sign_ext_40534;
  assign nor_40561 = ~(eq_40488 | ~(nor_40419 ? array_index_40490[31:31] : ____state_0_0_3));
  assign and_40562 = (nor_40419 ? array_index_40490[30:23] : ____state_0_0_4) & sign_ext_40532;
  assign and_40563 = (nor_40419 ? array_index_40490[22:0] : ____state_0_0_5) & sign_ext_40534;
  assign nor_40564 = ~(eq_40488 | ~(nor_40419 ? tuple_index_40459 : ____state_0_1_0));
  assign and_40565 = (nor_40419 ? tuple_index_40461 : ____state_0_1_1) & sign_ext_40532;
  assign and_40566 = (nor_40419 ? tuple_index_40463 : ____state_0_1_2) & sign_ext_40534;
  assign nor_40567 = ~(eq_40488 | ~(nor_40419 ? array_index_40491[31:31] : ____state_0_1_3));
  assign and_40568 = (nor_40419 ? array_index_40491[30:23] : ____state_0_1_4) & sign_ext_40532;
  assign and_40569 = (nor_40419 ? array_index_40491[22:0] : ____state_0_1_5) & sign_ext_40534;
  assign nor_40570 = ~(eq_40488 | ~(nor_40419 ? array_index_40492[31:31] : ____state_1_1_0));
  assign and_40571 = (nor_40419 ? array_index_40492[30:23] : ____state_1_1_1) & sign_ext_40532;
  assign and_40572 = (nor_40419 ? array_index_40492[22:0] : ____state_1_1_2) & sign_ext_40534;
  assign nor_40573 = ~(eq_40488 | ~(nor_40419 ? array_index_40493[31:31] : ____state_1_1_3));
  assign and_40574 = (nor_40419 ? array_index_40493[30:23] : ____state_1_1_4) & sign_ext_40532;
  assign and_40575 = (nor_40419 ? array_index_40493[22:0] : ____state_1_1_5) & sign_ext_40534;
  assign nor_40576 = ~(eq_40488 | ~(nor_40419 ? tuple_index_40441 : ____state_1_0_0));
  assign and_40577 = (nor_40419 ? tuple_index_40443 : ____state_1_0_1) & sign_ext_40532;
  assign and_40578 = (nor_40419 ? tuple_index_40445 : ____state_1_0_2) & sign_ext_40534;
  assign nor_40579 = ~(eq_40488 | ~(nor_40419 ? tuple_index_40466 : ____state_1_0_3));
  assign and_40580 = (nor_40419 ? tuple_index_40468 : ____state_1_0_4) & sign_ext_40532;
  assign and_40581 = (nor_40419 ? tuple_index_40470 : ____state_1_0_5) & sign_ext_40534;
  assign one_hot_sel_40726 = unexpand_for_next_value_1155_2__4_case_1 & {2{concat_40725[0]}} | unexpand_for_next_value_1155_2__4_case_0 & {2{concat_40725[1]}};
  assign or_40727 = and_40723 | and_40724;
  assign __systolic__hor_chans__0_0_not_stage_load = ~__systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_has_been_sent_reg_load_en = __systolic__hor_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_0_has_been_sent_reg_load_en = __systolic__vert_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_0_has_been_sent_reg_load_en = __systolic__hor_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_1_has_been_sent_reg_load_en = __systolic__vert_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_not_stage_load = ~__systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_has_been_sent_reg_load_en = __systolic__out0_valid_and_ready_txfr | __systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_buf = {nor_40419 ? tuple_index_40435 : ____state_0_0_3, nor_40419 ? tuple_index_40437 : ____state_0_0_4, nor_40419 ? tuple_index_40439 : ____state_0_0_5};
  assign __systolic__vert_chans__0_0_buf = {nor_40419 ? tuple_index_40441 : ____state_1_1_0, nor_40419 ? tuple_index_40443 : ____state_1_1_1, nor_40419 ? tuple_index_40445 : ____state_1_1_2};
  assign __systolic__hor_chans__1_0_buf = {nor_40419 ? tuple_index_40459 : ____state_0_1_3, nor_40419 ? tuple_index_40461 : ____state_0_1_4, nor_40419 ? tuple_index_40463 : ____state_0_1_5};
  assign __systolic__vert_chans__0_1_buf = {nor_40419 ? tuple_index_40466 : ____state_1_1_3, nor_40419 ? tuple_index_40468 : ____state_1_1_4, nor_40419 ? tuple_index_40470 : ____state_1_1_5};
  assign c[0][0] = array_40653[0];
  assign c[0][1] = array_40653[1];
  assign c[1][0] = array_40654[0];
  assign c[1][1] = array_40654[1];
  always @ (posedge clk) begin
    p0_eq_40488 <= p0_load_en ? eq_40488 : p0_eq_40488;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_2 <= 2'h0;
      ____state_0_0_3 <= 1'h0;
      ____state_0_0_4 <= 8'h00;
      ____state_0_0_5 <= 23'h00_0000;
      ____state_1_1_0 <= 1'h0;
      ____state_1_1_1 <= 8'h00;
      ____state_1_1_2 <= 23'h00_0000;
      ____state_0_1_3 <= 1'h0;
      ____state_0_1_4 <= 8'h00;
      ____state_0_1_5 <= 23'h00_0000;
      ____state_1_1_3 <= 1'h0;
      ____state_1_1_4 <= 8'h00;
      ____state_1_1_5 <= 23'h00_0000;
      ____state_0_0_0 <= 1'h0;
      ____state_0_1_0 <= 1'h0;
      ____state_1_0_0 <= 1'h0;
      ____state_1_0_3 <= 1'h0;
      ____state_0_0_1 <= 8'h00;
      ____state_0_0_2 <= 23'h00_0000;
      ____state_0_1_1 <= 8'h00;
      ____state_0_1_2 <= 23'h00_0000;
      ____state_1_0_1 <= 8'h00;
      ____state_1_0_2 <= 23'h00_0000;
      ____state_1_0_4 <= 8'h00;
      ____state_1_0_5 <= 23'h00_0000;
      p0_valid <= 1'h0;
      __systolic__hor_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_1_has_been_sent_reg <= 1'h0;
      __systolic__out0_has_been_sent_reg <= 1'h0;
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
      __systolic__hor_chans__0_2_reg <= __systolic__hor_chans__0_2_reg_init;
      __systolic__hor_chans__0_2_valid_reg <= 1'h0;
      __systolic__hor_chans__1_2_reg <= __systolic__hor_chans__1_2_reg_init;
      __systolic__hor_chans__1_2_valid_reg <= 1'h0;
      __systolic__vert_chans__2_0_reg <= __systolic__vert_chans__2_0_reg_init;
      __systolic__vert_chans__2_0_valid_reg <= 1'h0;
      __systolic__vert_chans__2_1_reg <= __systolic__vert_chans__2_1_reg_init;
      __systolic__vert_chans__2_1_valid_reg <= 1'h0;
      __systolic__result_chans__0_0_reg <= __systolic__result_chans__0_0_reg_init;
      __systolic__result_chans__0_0_valid_reg <= 1'h0;
      __systolic__result_chans__0_1_reg <= __systolic__result_chans__0_1_reg_init;
      __systolic__result_chans__0_1_valid_reg <= 1'h0;
      __systolic__result_chans__1_0_reg <= __systolic__result_chans__1_0_reg_init;
      __systolic__result_chans__1_0_valid_reg <= 1'h0;
      __systolic__result_chans__1_1_reg <= __systolic__result_chans__1_1_reg_init;
      __systolic__result_chans__1_1_valid_reg <= 1'h0;
      __systolic__hor_chans__0_0_reg <= __systolic__hor_chans__0_0_reg_init;
      __systolic__hor_chans__0_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_0_reg <= __systolic__vert_chans__0_0_reg_init;
      __systolic__vert_chans__0_0_valid_reg <= 1'h0;
      __systolic__hor_chans__1_0_reg <= __systolic__hor_chans__1_0_reg_init;
      __systolic__hor_chans__1_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_1_reg <= __systolic__vert_chans__0_1_reg_init;
      __systolic__vert_chans__0_1_valid_reg <= 1'h0;
      __systolic__out0_reg[0][0] <= __systolic__out0_reg_init[0][0];
      __systolic__out0_reg[0][1] <= __systolic__out0_reg_init[0][1];
      __systolic__out0_reg[1][0] <= __systolic__out0_reg_init[1][0];
      __systolic__out0_reg[1][1] <= __systolic__out0_reg_init[1][1];
      __systolic__out0_valid_reg <= 1'h0;
    end else begin
      ____state_2 <= or_40727 ? one_hot_sel_40726 : ____state_2;
      ____state_0_0_3 <= p0_data_enable ? nor_40561 : ____state_0_0_3;
      ____state_0_0_4 <= p0_data_enable ? and_40562 : ____state_0_0_4;
      ____state_0_0_5 <= p0_data_enable ? and_40563 : ____state_0_0_5;
      ____state_1_1_0 <= p0_data_enable ? nor_40570 : ____state_1_1_0;
      ____state_1_1_1 <= p0_data_enable ? and_40571 : ____state_1_1_1;
      ____state_1_1_2 <= p0_data_enable ? and_40572 : ____state_1_1_2;
      ____state_0_1_3 <= p0_data_enable ? nor_40567 : ____state_0_1_3;
      ____state_0_1_4 <= p0_data_enable ? and_40568 : ____state_0_1_4;
      ____state_0_1_5 <= p0_data_enable ? and_40569 : ____state_0_1_5;
      ____state_1_1_3 <= p0_data_enable ? nor_40573 : ____state_1_1_3;
      ____state_1_1_4 <= p0_data_enable ? and_40574 : ____state_1_1_4;
      ____state_1_1_5 <= p0_data_enable ? and_40575 : ____state_1_1_5;
      ____state_0_0_0 <= p0_data_enable ? nor_40558 : ____state_0_0_0;
      ____state_0_1_0 <= p0_data_enable ? nor_40564 : ____state_0_1_0;
      ____state_1_0_0 <= p0_data_enable ? nor_40576 : ____state_1_0_0;
      ____state_1_0_3 <= p0_data_enable ? nor_40579 : ____state_1_0_3;
      ____state_0_0_1 <= p0_data_enable ? and_40559 : ____state_0_0_1;
      ____state_0_0_2 <= p0_data_enable ? and_40560 : ____state_0_0_2;
      ____state_0_1_1 <= p0_data_enable ? and_40565 : ____state_0_1_1;
      ____state_0_1_2 <= p0_data_enable ? and_40566 : ____state_0_1_2;
      ____state_1_0_1 <= p0_data_enable ? and_40577 : ____state_1_0_1;
      ____state_1_0_2 <= p0_data_enable ? and_40578 : ____state_1_0_2;
      ____state_1_0_4 <= p0_data_enable ? and_40580 : ____state_1_0_4;
      ____state_1_0_5 <= p0_data_enable ? and_40581 : ____state_1_0_5;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      __systolic__hor_chans__0_0_has_been_sent_reg <= __systolic__hor_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__0_0_has_been_sent_reg;
      __systolic__vert_chans__0_0_has_been_sent_reg <= __systolic__vert_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_0_has_been_sent_reg;
      __systolic__hor_chans__1_0_has_been_sent_reg <= __systolic__hor_chans__1_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__1_0_has_been_sent_reg;
      __systolic__vert_chans__0_1_has_been_sent_reg <= __systolic__vert_chans__0_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_1_has_been_sent_reg;
      __systolic__out0_has_been_sent_reg <= __systolic__out0_has_been_sent_reg_load_en ? __systolic__out0_not_stage_load : __systolic__out0_has_been_sent_reg;
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
  function automatic [1:0] priority_sel_2b_2way (input reg [1:0] sel, input reg [1:0] case0, input reg [1:0] case1, input reg [1:0] default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_2b_2way = case0;
        end
        2'b10: begin
          priority_sel_2b_2way = case1;
        end
        2'b00: begin
          priority_sel_2b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_2b_2way = 2'dx;
        end
      endcase
    end
  endfunction
  function automatic [2:0] priority_sel_3b_2way (input reg [1:0] sel, input reg [2:0] case0, input reg [2:0] case1, input reg [2:0] default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_3b_2way = case0;
        end
        2'b10: begin
          priority_sel_3b_2way = case1;
        end
        2'b00: begin
          priority_sel_3b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_3b_2way = 3'dx;
        end
      endcase
    end
  endfunction
  // lint_off MULTIPLY
  function automatic [47:0] umul48b_24b_x_24b (input reg [23:0] lhs, input reg [23:0] rhs);
    begin
      umul48b_24b_x_24b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  function automatic priority_sel_1b_2way (input reg [1:0] sel, input reg case0, input reg case1, input reg default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_1b_2way = case0;
        end
        2'b10: begin
          priority_sel_1b_2way = case1;
        end
        2'b00: begin
          priority_sel_1b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_1b_2way = 1'dx;
        end
      endcase
    end
  endfunction
  wire [31:0] __systolic__hor_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__0_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__1_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg ____state_3;
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
  wire unexpand_for_next_value_1186_3_case_1;
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire unexpand_for_next_value_1186_3_case_0;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_41121;
  wire [7:0] narrowed_result;
  wire [7:0] accum_bexpor_mask;
  wire [23:0] fraction_x__1;
  wire [23:0] fraction_y__1;
  wire [2:0] accumddend_x__1_squeezed_const_lsb_bits;
  wire [7:0] result;
  wire accum_sign;
  wire prod_sign;
  wire [24:0] wide_x_squeezed;
  wire [26:0] wide_y_shift_bits;
  wire [7:0] shift;
  wire [26:0] shrl_41136;
  wire [27:0] shll_41138;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_41147;
  wire sticky__2;
  wire [27:0] concat_41153;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_41194;
  wire nor_41189;
  wire nor_41190;
  wire nor_41180;
  wire nor_41181;
  wire and_41223;
  wire nor_41225;
  wire nor_41227;
  wire and_41220;
  wire nor_41216;
  wire and_41212;
  wire nor_41213;
  wire nor_41207;
  wire nor_41209;
  wire and_41252;
  wire nor_41233;
  wire nor_41234;
  wire and_41273;
  wire [1:0] priority_sel_41274;
  wire and_41269;
  wire and_41265;
  wire and_41261;
  wire [2:0] concat_41287;
  wire [2:0] concat_41284;
  wire [2:0] concat_41283;
  wire [2:0] concat_41281;
  wire [2:0] concat_41280;
  wire and_41292;
  wire [3:0] concat_41296;
  wire [3:0] sel_43716;
  wire [4:0] concat_41304;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_41011;
  wire eq_41012;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_41015;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_41018;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_41020;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_41322;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_41332;
  wire [5:0] sub_41333;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_41043;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__0_0_vld_buf;
  wire __systolic__result_chans__0_0_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_inv;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire __systolic__result_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_load_en;
  wire eq_41342;
  wire eq_41343;
  wire eq_41344;
  wire eq_41345;
  wire [23:0] fraction__6;
  wire systolic__result_chans__0_0_load_en;
  wire [23:0] fraction__7;
  wire or_43786;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_41054;
  wire p1_stage_done;
  wire p1_not_valid;
  wire has_pos_inf;
  wire has_neg_inf;
  wire [9:0] exp__3;
  wire p0_all_active_inputs_valid;
  wire p0_enable;
  wire is_subnormal;
  wire __systolic__hor_chans__0_1_vld_buf;
  wire __systolic__hor_chans__0_1_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_inv;
  wire __systolic__vert_chans__1_0_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_inv;
  wire is_result_nan__1;
  wire is_operand_inf;
  wire and_reduce_41372;
  wire __systolic__hor_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire __systolic__vert_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire result_exponent__2_1_case_cmp;
  wire result_fraction__5_0_case_cmp;
  wire result_fraction__2_1_case_cmp;
  wire [8:0] result_exp;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire result_exponent__2_0_case_cmp;
  wire and_41380;
  wire result_fraction__2_0_case_cmp;
  wire eq_41057;
  wire eq_41058;
  wire eq_41059;
  wire eq_41060;
  wire [8:0] result_exp__1;
  wire __systolic__hor_chans__0_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_0_has_sent_or_is_ready;
  wire and_41387;
  wire and_41388;
  wire and_41389;
  wire and_41390;
  wire and_41391;
  wire [2:0] fraction_shift__2;
  wire p0_all_active_outputs_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_41077;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire p0_stage_done;
  wire [3:0] one_hot_41401;
  wire [4:0] one_hot_41402;
  wire [2:0] one_hot_41403;
  wire result_sign__2;
  wire [27:0] shrl_41392;
  wire p0_data_enable;
  wire is_result_nan;
  wire result_sign__3;
  wire [22:0] result_fraction__1;
  wire p0_load_en;
  wire systolic__hor_chans__0_0_valid_inv;
  wire systolic__vert_chans__0_0_valid_inv;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_41467;
  wire and_41468;
  wire and_41469;
  wire and_41476;
  wire and_41477;
  wire and_41478;
  wire and_41484;
  wire [22:0] result_fraction__2;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__0_0_valid_load_en;
  wire systolic__vert_chans__0_0_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_41471;
  wire [3:0] concat_41480;
  wire [1:0] concat_41486;
  wire __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_0_valid_and_ready_txfr;
  wire __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_0_valid_and_ready_txfr;
  wire [7:0] result_exponent__2;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__0_0_load_en;
  wire systolic__vert_chans__0_0_load_en;
  wire or_43750;
  wire or_43752;
  wire or_43754;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_41428;
  wire [7:0] one_hot_sel_41472;
  wire or_41473;
  wire [22:0] one_hot_sel_41481;
  wire or_41482;
  wire one_hot_sel_41487;
  wire or_41488;
  wire __systolic__hor_chans__0_1_not_stage_load;
  wire __systolic__hor_chans__0_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_0_not_stage_load;
  wire __systolic__result_chans__0_0_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign unexpand_for_next_value_1186_3_case_1 = 1'h0;
  assign accum_bexp_extended__1 = {unexpand_for_next_value_1186_3_case_1, ____state_1};
  assign prod_bexpnot_extended = {unexpand_for_next_value_1186_3_case_1, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign unexpand_for_next_value_1186_3_case_0 = 1'h1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {unexpand_for_next_value_1186_3_case_0, accum_fraction};
  assign fraction_y = {unexpand_for_next_value_1186_3_case_0, prod_fraction};
  assign sign_ext_41121 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_41121;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1186_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_41136 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_41138 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_41147 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_41136[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1186_3_case_1, ~prod_fraction} | ~sign_ext_41121 | shll_41138[26:3]) != 24'h00_0000;
  assign concat_41153 = {add_41147[24:0], shrl_41136[2:1], shrl_41136[0] | sticky__2};
  assign accumbs_fraction = add_41147[25] ? -concat_41153 : concat_41153;
  assign carry_bit = accumbs_fraction[27];
  assign nor_41194 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_41189 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_41190 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_41180 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_41181 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_41223 = ~(carry_bit | accumbs_fraction[26]) & nor_41194;
  assign nor_41225 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_41227 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_41220 = nor_41190 & nor_41189;
  assign nor_41216 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_41212 = nor_41181 & nor_41180;
  assign nor_41213 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_41207 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_41209 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_41252 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_41225;
  assign nor_41233 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_41234 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_41273 = and_41223 & and_41252;
  assign priority_sel_41274 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_41194), and_41223}, {nor_41227, unexpand_for_next_value_1186_3_case_1}, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1186_3_case_1, nor_41227});
  assign and_41269 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_41216;
  assign and_41265 = nor_41209 & nor_41207;
  assign and_41261 = nor_41234 & nor_41233;
  assign concat_41287 = {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_41225) ? {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1186_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_41284 = {and_41220, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_41189), and_41220}, 2'h0, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_41190, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_41283 = {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_41216) ? {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1186_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_41281 = {and_41212, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_41180), and_41212}, {nor_41213, unexpand_for_next_value_1186_3_case_1}, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_41181, nor_41213})};
  assign concat_41280 = {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_41207) ? {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_41209, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_41292 = and_41220 & and_41269;
  assign concat_41296 = {unexpand_for_next_value_1186_3_case_0, and_41261, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_41233), and_41261}, 2'h0, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_41234, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_43716 = ~(~and_41273 | and_41292) ? {unexpand_for_next_value_1186_3_case_0, ~(~and_41220 | and_41269) ? concat_41283 : concat_41284} : {and_41273, priority_sel_3b_2way({~(~and_41223 | and_41252), and_41273}, {priority_sel_41274, unexpand_for_next_value_1186_3_case_1}, concat_41287, {unexpand_for_next_value_1186_3_case_1, priority_sel_41274})};
  assign concat_41304 = {unexpand_for_next_value_1186_3_case_0, and_41212 & and_41265 ? concat_41296 : {unexpand_for_next_value_1186_3_case_1, ~(~and_41212 | and_41265) ? concat_41280 : concat_41281}};
  assign leading_zeroes = and_41273 & and_41292 ? concat_41304 : {unexpand_for_next_value_1186_3_case_1, sel_43716};
  assign a_bexp__1 = __systolic__hor_chans__0_0_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__0_0_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1186_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__0_0_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__0_0_reg[22:0];
  assign eq_41011 = a_bexp__1 == 8'h00;
  assign eq_41012 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1186_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1186_3_case_0, b_fraction__1};
  assign nor_41015 = ~(eq_41011 | eq_41012);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_41018 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_41020 = {unexpand_for_next_value_1186_3_case_1, a_bexp__1} + {unexpand_for_next_value_1186_3_case_1, b_bexp__2};
  assign fraction = umul_41018 & {48{nor_41015}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1186_3_case_1, add_41020} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_41015}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_41322 = {unexpand_for_next_value_1186_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_41322[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1186_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_41332 = {unexpand_for_next_value_1186_3_case_1, accum_bexp} + 9'h001;
  assign sub_41333 = {5'h00, rounding_carry} - {unexpand_for_next_value_1186_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_41147 == 26'h000_0000 & ~(shrl_41136[1] | shrl_41136[2]) & ~(shrl_41136[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1186_3_case_1, add_41332};
  assign wide_exponent_associative_element__1 = {{4{sub_41333[5]}}, sub_41333};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_41043 = fraction__4[21:0] != 22'h00_0000;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_41043;
  assign __systolic__result_chans__0_0_vld_buf = p0_valid & ____state_3;
  assign __systolic__result_chans__0_0_not_has_been_sent = ~__systolic__result_chans__0_0_has_been_sent_reg;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_41043 | ~fraction__4[23]);
  assign __systolic__result_chans__0_0_valid_and_not_has_been_sent = __systolic__result_chans__0_0_vld_buf & __systolic__result_chans__0_0_not_has_been_sent;
  assign systolic__result_chans__0_0_valid_load_en = systolic__result_chans__0_0_rdy | systolic__result_chans__0_0_valid_inv;
  assign eq_41342 = accum_bexp == high_exp;
  assign eq_41343 = accum_fraction == 23'h00_0000;
  assign eq_41344 = prod_bexp == high_exp;
  assign eq_41345 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1186_3_case_1, fraction__5};
  assign systolic__result_chans__0_0_load_en = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_valid_load_en;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign or_43786 = ~____state_3 | systolic__result_chans__0_0_load_en | __systolic__result_chans__0_0_has_been_sent_reg;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_41054 = exp__2 + 10'h001;
  assign p1_stage_done = p0_valid & or_43786;
  assign p1_not_valid = ~p0_valid;
  assign has_pos_inf = ~(~eq_41342 | ~eq_41343 | accum_sign) | ~(~eq_41344 | ~eq_41345 | prod_sign);
  assign has_neg_inf = eq_41342 & eq_41343 & accum_sign | eq_41344 & eq_41345 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_41054 : exp__2;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_0_valid_reg & __systolic__vert_chans__0_0_valid_reg;
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign __systolic__hor_chans__0_1_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__0_1_not_has_been_sent = ~__systolic__hor_chans__0_1_has_been_sent_reg;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign __systolic__vert_chans__1_0_not_has_been_sent = ~__systolic__vert_chans__1_0_has_been_sent_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign is_result_nan__1 = ~(~eq_41342 | eq_41343) | ~(~eq_41344 | eq_41345) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_41342 & eq_41343 | eq_41344 & eq_41345;
  assign and_reduce_41372 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__0_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_vld_buf & __systolic__hor_chans__0_1_not_has_been_sent;
  assign systolic__hor_chans__0_1_valid_load_en = systolic__hor_chans__0_1_rdy | systolic__hor_chans__0_1_valid_inv;
  assign __systolic__vert_chans__1_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_vld_buf & __systolic__vert_chans__1_0_not_has_been_sent;
  assign systolic__vert_chans__1_0_valid_load_en = systolic__vert_chans__1_0_rdy | systolic__vert_chans__1_0_valid_inv;
  assign result_exponent__2_1_case_cmp = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_41372;
  assign result_fraction__5_0_case_cmp = ~is_result_nan__1;
  assign result_fraction__2_1_case_cmp = is_operand_inf | wide_exponent__2[8] | and_reduce_41372 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign systolic__hor_chans__0_1_load_en = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_valid_load_en;
  assign result_exponent__2_0_case_cmp = ~result_exponent__2_1_case_cmp;
  assign and_41380 = ~____state_3 & result_fraction__5_0_case_cmp;
  assign result_fraction__2_0_case_cmp = ~result_fraction__2_1_case_cmp;
  assign eq_41057 = a_bexp__1 == high_exp;
  assign eq_41058 = a_fraction__1 == 23'h00_0000;
  assign eq_41059 = b_bexp__2 == high_exp;
  assign eq_41060 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign __systolic__hor_chans__0_1_has_sent_or_is_ready = systolic__hor_chans__0_1_load_en | __systolic__hor_chans__0_1_has_been_sent_reg;
  assign __systolic__vert_chans__1_0_has_sent_or_is_ready = systolic__vert_chans__1_0_load_en | __systolic__vert_chans__1_0_has_been_sent_reg;
  assign and_41387 = ~____state_3 & result_exponent__2_0_case_cmp;
  assign and_41388 = ~____state_3 & result_exponent__2_1_case_cmp;
  assign and_41389 = ~____state_3 & is_result_nan__1;
  assign and_41390 = and_41380 & result_fraction__2_0_case_cmp;
  assign and_41391 = and_41380 & result_fraction__2_1_case_cmp;
  assign fraction_shift__2 = 3'h3;
  assign p0_all_active_outputs_ready = __systolic__hor_chans__0_1_has_sent_or_is_ready & __systolic__vert_chans__1_0_has_sent_or_is_ready;
  assign ____state_1__next_value_predicates = {____state_3, and_41387, and_41388};
  assign ____state_2__next_value_predicates = {____state_3, and_41389, and_41390, and_41391};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_41011 | eq_41012;
  assign has_inf_arg = eq_41057 & eq_41058 | eq_41059 & eq_41060;
  assign and_reduce_41077 = &result_exp__1[7:0];
  assign rounded_fraction = {add_41322, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign one_hot_41401 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_41402 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_41403 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign result_sign__2 = priority_sel_1b_2way({add_41147[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign shrl_41392 = rounded_fraction >> fraction_shift__1;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign is_result_nan = ~(~eq_41057 | eq_41058) | ~(~eq_41059 | eq_41060) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign result_fraction__1 = shrl_41392[22:0];
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__0_0_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__0_0_reg[31:31];
  assign result_sign__4 = result_fraction__5_0_case_cmp & result_sign__3;
  assign and_41467 = ____state_3 & p1_stage_done;
  assign and_41468 = and_41387 & p1_stage_done;
  assign and_41469 = and_41388 & p1_stage_done;
  assign and_41476 = and_41389 & p1_stage_done;
  assign and_41477 = and_41390 & p1_stage_done;
  assign and_41478 = and_41391 & p1_stage_done;
  assign and_41484 = ~____state_3 & p1_stage_done;
  assign result_fraction__2 = result_fraction__1 & {23{result_fraction__2_0_case_cmp}};
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__0_0_valid_load_en = p0_load_en | systolic__hor_chans__0_0_valid_inv;
  assign systolic__vert_chans__0_0_valid_load_en = p0_load_en | systolic__vert_chans__0_0_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_41401[2] & and_41387 == one_hot_41401[1] & and_41388 == one_hot_41401[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_41402[3] & and_41389 == one_hot_41402[2] & and_41390 == one_hot_41402[1] & and_41391 == one_hot_41402[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_41403[1] & ____state_3 == one_hot_41403[0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_41077 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_41077 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_41471 = {and_41467, and_41468, and_41469};
  assign concat_41480 = {and_41467, and_41476, and_41477, and_41478};
  assign concat_41486 = {and_41484, and_41467};
  assign __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_1_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_valid_and_ready_txfr = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_load_en;
  assign __systolic__vert_chans__1_0_valid_and_ready_txfr = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_load_en;
  assign __systolic__result_chans__0_0_valid_and_all_active_outputs_ready = __systolic__result_chans__0_0_vld_buf & or_43786;
  assign __systolic__result_chans__0_0_valid_and_ready_txfr = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_load_en;
  assign result_exponent__2 = result_exponent__2_1_case_cmp ? high_exp : wide_exponent__2[7:0];
  assign result_fraction__5 = is_result_nan__1 ? nan_fraction : result_fraction__2;
  assign systolic__hor_chans__0_0_load_en = systolic__hor_chans__0_0_vld & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = systolic__vert_chans__0_0_vld & systolic__vert_chans__0_0_valid_load_en;
  assign or_43750 = ~p1_stage_done | ____state_1__at_most_one_next_value | rst;
  assign or_43752 = ~p1_stage_done | ____state_2__at_most_one_next_value | rst;
  assign or_43754 = ~p1_stage_done | ____state_3__at_most_one_next_value | rst;
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_41428 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_41472 = high_exp & {8{concat_41471[0]}} | wide_exponent__2[7:0] & {8{concat_41471[1]}} | 8'h00 & {8{concat_41471[2]}};
  assign or_41473 = and_41467 | and_41468 | and_41469;
  assign one_hot_sel_41481 = 23'h00_0000 & {23{concat_41480[0]}} | result_fraction__1 & {23{concat_41480[1]}} | nan_fraction & {23{concat_41480[2]}} | 23'h00_0000 & {23{concat_41480[3]}};
  assign or_41482 = and_41467 | and_41476 | and_41477 | and_41478;
  assign one_hot_sel_41487 = unexpand_for_next_value_1186_3_case_1 & concat_41486[0] | unexpand_for_next_value_1186_3_case_0 & concat_41486[1];
  assign or_41488 = and_41484 | and_41467;
  assign __systolic__hor_chans__0_1_not_stage_load = ~__systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_has_been_sent_reg_load_en = __systolic__hor_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_0_has_been_sent_reg_load_en = __systolic__vert_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_not_stage_load = ~__systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_has_been_sent_reg_load_en = __systolic__result_chans__0_0_valid_and_ready_txfr | __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign new_accum = {result_sign__4, result_exponent__2, result_fraction__5};
  always @ (posedge clk) begin
    p0_result_exp__4 <= p0_load_en ? result_exp__4 : p0_result_exp__4;
    p0_prod_bexpnot <= p0_load_en ? prod_bexpnot : p0_prod_bexpnot;
    p0_result_fraction__4 <= p0_load_en ? result_fraction__4 : p0_result_fraction__4;
    p0_result_sign__1 <= p0_load_en ? result_sign__1 : p0_result_sign__1;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p0_valid <= 1'h0;
      __systolic__hor_chans__0_1_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__1_0_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_0_reg <= __systolic__hor_chans__0_0_reg_init;
      __systolic__hor_chans__0_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_0_reg <= __systolic__vert_chans__0_0_reg_init;
      __systolic__vert_chans__0_0_valid_reg <= 1'h0;
      __systolic__hor_chans__0_1_reg <= __systolic__hor_chans__0_1_reg_init;
      __systolic__hor_chans__0_1_valid_reg <= 1'h0;
      __systolic__vert_chans__1_0_reg <= __systolic__vert_chans__1_0_reg_init;
      __systolic__vert_chans__1_0_valid_reg <= 1'h0;
      __systolic__result_chans__0_0_reg <= __systolic__result_chans__0_0_reg_init;
      __systolic__result_chans__0_0_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_41473 ? one_hot_sel_41472 : ____state_1;
      ____state_2 <= or_41482 ? one_hot_sel_41481 : ____state_2;
      ____state_0 <= p1_stage_done ? nor_41428 : ____state_0;
      ____state_3 <= or_41488 ? one_hot_sel_41487 : ____state_3;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      __systolic__hor_chans__0_1_has_been_sent_reg <= __systolic__hor_chans__0_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_1_not_stage_load : __systolic__hor_chans__0_1_has_been_sent_reg;
      __systolic__vert_chans__1_0_has_been_sent_reg <= __systolic__vert_chans__1_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_1_not_stage_load : __systolic__vert_chans__1_0_has_been_sent_reg;
      __systolic__result_chans__0_0_has_been_sent_reg <= __systolic__result_chans__0_0_has_been_sent_reg_load_en ? __systolic__result_chans__0_0_not_stage_load : __systolic__result_chans__0_0_has_been_sent_reg;
      __systolic__hor_chans__0_0_reg <= systolic__hor_chans__0_0_load_en ? systolic__hor_chans__0_0 : __systolic__hor_chans__0_0_reg;
      __systolic__hor_chans__0_0_valid_reg <= systolic__hor_chans__0_0_valid_load_en ? systolic__hor_chans__0_0_vld : __systolic__hor_chans__0_0_valid_reg;
      __systolic__vert_chans__0_0_reg <= systolic__vert_chans__0_0_load_en ? systolic__vert_chans__0_0 : __systolic__vert_chans__0_0_reg;
      __systolic__vert_chans__0_0_valid_reg <= systolic__vert_chans__0_0_valid_load_en ? systolic__vert_chans__0_0_vld : __systolic__vert_chans__0_0_valid_reg;
      __systolic__hor_chans__0_1_reg <= systolic__hor_chans__0_1_load_en ? __systolic__hor_chans__0_0_reg : __systolic__hor_chans__0_1_reg;
      __systolic__hor_chans__0_1_valid_reg <= systolic__hor_chans__0_1_valid_load_en ? __systolic__hor_chans__0_1_valid_and_not_has_been_sent : __systolic__hor_chans__0_1_valid_reg;
      __systolic__vert_chans__1_0_reg <= systolic__vert_chans__1_0_load_en ? __systolic__vert_chans__0_0_reg : __systolic__vert_chans__1_0_reg;
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
  function automatic [1:0] priority_sel_2b_2way (input reg [1:0] sel, input reg [1:0] case0, input reg [1:0] case1, input reg [1:0] default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_2b_2way = case0;
        end
        2'b10: begin
          priority_sel_2b_2way = case1;
        end
        2'b00: begin
          priority_sel_2b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_2b_2way = 2'dx;
        end
      endcase
    end
  endfunction
  function automatic [2:0] priority_sel_3b_2way (input reg [1:0] sel, input reg [2:0] case0, input reg [2:0] case1, input reg [2:0] default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_3b_2way = case0;
        end
        2'b10: begin
          priority_sel_3b_2way = case1;
        end
        2'b00: begin
          priority_sel_3b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_3b_2way = 3'dx;
        end
      endcase
    end
  endfunction
  // lint_off MULTIPLY
  function automatic [47:0] umul48b_24b_x_24b (input reg [23:0] lhs, input reg [23:0] rhs);
    begin
      umul48b_24b_x_24b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  function automatic priority_sel_1b_2way (input reg [1:0] sel, input reg case0, input reg case1, input reg default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_1b_2way = case0;
        end
        2'b10: begin
          priority_sel_1b_2way = case1;
        end
        2'b00: begin
          priority_sel_1b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_1b_2way = 1'dx;
        end
      endcase
    end
  endfunction
  wire [31:0] __systolic__hor_chans__0_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__0_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__1_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__0_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg ____state_3;
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
  wire unexpand_for_next_value_1217_3_case_1;
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire unexpand_for_next_value_1217_3_case_0;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_41754;
  wire [7:0] narrowed_result;
  wire [7:0] accum_bexpor_mask;
  wire [23:0] fraction_x__1;
  wire [23:0] fraction_y__1;
  wire [2:0] accumddend_x__1_squeezed_const_lsb_bits;
  wire [7:0] result;
  wire accum_sign;
  wire prod_sign;
  wire [24:0] wide_x_squeezed;
  wire [26:0] wide_y_shift_bits;
  wire [7:0] shift;
  wire [26:0] shrl_41769;
  wire [27:0] shll_41771;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_41780;
  wire sticky__2;
  wire [27:0] concat_41786;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_41827;
  wire nor_41822;
  wire nor_41823;
  wire nor_41813;
  wire nor_41814;
  wire and_41856;
  wire nor_41858;
  wire nor_41860;
  wire and_41853;
  wire nor_41849;
  wire and_41845;
  wire nor_41846;
  wire nor_41840;
  wire nor_41842;
  wire and_41885;
  wire nor_41866;
  wire nor_41867;
  wire and_41906;
  wire [1:0] priority_sel_41907;
  wire and_41902;
  wire and_41898;
  wire and_41894;
  wire [2:0] concat_41920;
  wire [2:0] concat_41917;
  wire [2:0] concat_41916;
  wire [2:0] concat_41914;
  wire [2:0] concat_41913;
  wire and_41925;
  wire [3:0] concat_41929;
  wire [3:0] sel_43724;
  wire [4:0] concat_41937;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_41644;
  wire eq_41645;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_41648;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_41651;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_41653;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_41955;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_41965;
  wire [5:0] sub_41966;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_41676;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__0_1_vld_buf;
  wire __systolic__result_chans__0_1_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_inv;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire __systolic__result_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_load_en;
  wire eq_41975;
  wire eq_41976;
  wire eq_41977;
  wire eq_41978;
  wire [23:0] fraction__6;
  wire systolic__result_chans__0_1_load_en;
  wire [23:0] fraction__7;
  wire or_43793;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_41687;
  wire p1_stage_done;
  wire p1_not_valid;
  wire has_pos_inf;
  wire has_neg_inf;
  wire [9:0] exp__3;
  wire p0_all_active_inputs_valid;
  wire p0_enable;
  wire is_subnormal;
  wire __systolic__hor_chans__0_2_vld_buf;
  wire __systolic__hor_chans__0_2_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_inv;
  wire __systolic__vert_chans__1_1_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_inv;
  wire is_result_nan__1;
  wire is_operand_inf;
  wire and_reduce_42005;
  wire __systolic__hor_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire __systolic__vert_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire result_exponent__2_1_case_cmp;
  wire result_fraction__5_0_case_cmp;
  wire result_fraction__2_1_case_cmp;
  wire [8:0] result_exp;
  wire systolic__hor_chans__0_2_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire result_exponent__2_0_case_cmp;
  wire and_42013;
  wire result_fraction__2_0_case_cmp;
  wire eq_41690;
  wire eq_41691;
  wire eq_41692;
  wire eq_41693;
  wire [8:0] result_exp__1;
  wire __systolic__hor_chans__0_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_1_has_sent_or_is_ready;
  wire and_42020;
  wire and_42021;
  wire and_42022;
  wire and_42023;
  wire and_42024;
  wire [2:0] fraction_shift__2;
  wire p0_all_active_outputs_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_41710;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire p0_stage_done;
  wire [3:0] one_hot_42034;
  wire [4:0] one_hot_42035;
  wire [2:0] one_hot_42036;
  wire result_sign__2;
  wire [27:0] shrl_42025;
  wire p0_data_enable;
  wire is_result_nan;
  wire result_sign__3;
  wire [22:0] result_fraction__1;
  wire p0_load_en;
  wire systolic__hor_chans__0_1_valid_inv;
  wire systolic__vert_chans__0_1_valid_inv;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_42100;
  wire and_42101;
  wire and_42102;
  wire and_42109;
  wire and_42110;
  wire and_42111;
  wire and_42117;
  wire [22:0] result_fraction__2;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire systolic__vert_chans__0_1_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_42104;
  wire [3:0] concat_42113;
  wire [1:0] concat_42119;
  wire __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_1_valid_and_ready_txfr;
  wire __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_1_valid_and_ready_txfr;
  wire [7:0] result_exponent__2;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__0_1_load_en;
  wire or_43756;
  wire or_43758;
  wire or_43760;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_42061;
  wire [7:0] one_hot_sel_42105;
  wire or_42106;
  wire [22:0] one_hot_sel_42114;
  wire or_42115;
  wire one_hot_sel_42120;
  wire or_42121;
  wire __systolic__hor_chans__0_2_not_stage_load;
  wire __systolic__hor_chans__0_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_1_not_stage_load;
  wire __systolic__result_chans__0_1_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign unexpand_for_next_value_1217_3_case_1 = 1'h0;
  assign accum_bexp_extended__1 = {unexpand_for_next_value_1217_3_case_1, ____state_1};
  assign prod_bexpnot_extended = {unexpand_for_next_value_1217_3_case_1, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign unexpand_for_next_value_1217_3_case_0 = 1'h1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {unexpand_for_next_value_1217_3_case_0, accum_fraction};
  assign fraction_y = {unexpand_for_next_value_1217_3_case_0, prod_fraction};
  assign sign_ext_41754 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_41754;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1217_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_41769 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_41771 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_41780 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_41769[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1217_3_case_1, ~prod_fraction} | ~sign_ext_41754 | shll_41771[26:3]) != 24'h00_0000;
  assign concat_41786 = {add_41780[24:0], shrl_41769[2:1], shrl_41769[0] | sticky__2};
  assign accumbs_fraction = add_41780[25] ? -concat_41786 : concat_41786;
  assign carry_bit = accumbs_fraction[27];
  assign nor_41827 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_41822 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_41823 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_41813 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_41814 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_41856 = ~(carry_bit | accumbs_fraction[26]) & nor_41827;
  assign nor_41858 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_41860 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_41853 = nor_41823 & nor_41822;
  assign nor_41849 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_41845 = nor_41814 & nor_41813;
  assign nor_41846 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_41840 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_41842 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_41885 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_41858;
  assign nor_41866 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_41867 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_41906 = and_41856 & and_41885;
  assign priority_sel_41907 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_41827), and_41856}, {nor_41860, unexpand_for_next_value_1217_3_case_1}, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1217_3_case_1, nor_41860});
  assign and_41902 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_41849;
  assign and_41898 = nor_41842 & nor_41840;
  assign and_41894 = nor_41867 & nor_41866;
  assign concat_41920 = {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_41858) ? {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1217_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_41917 = {and_41853, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_41822), and_41853}, 2'h0, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_41823, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_41916 = {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_41849) ? {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1217_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_41914 = {and_41845, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_41813), and_41845}, {nor_41846, unexpand_for_next_value_1217_3_case_1}, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_41814, nor_41846})};
  assign concat_41913 = {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_41840) ? {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_41842, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_41925 = and_41853 & and_41902;
  assign concat_41929 = {unexpand_for_next_value_1217_3_case_0, and_41894, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_41866), and_41894}, 2'h0, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_41867, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_43724 = ~(~and_41906 | and_41925) ? {unexpand_for_next_value_1217_3_case_0, ~(~and_41853 | and_41902) ? concat_41916 : concat_41917} : {and_41906, priority_sel_3b_2way({~(~and_41856 | and_41885), and_41906}, {priority_sel_41907, unexpand_for_next_value_1217_3_case_1}, concat_41920, {unexpand_for_next_value_1217_3_case_1, priority_sel_41907})};
  assign concat_41937 = {unexpand_for_next_value_1217_3_case_0, and_41845 & and_41898 ? concat_41929 : {unexpand_for_next_value_1217_3_case_1, ~(~and_41845 | and_41898) ? concat_41913 : concat_41914}};
  assign leading_zeroes = and_41906 & and_41925 ? concat_41937 : {unexpand_for_next_value_1217_3_case_1, sel_43724};
  assign a_bexp__1 = __systolic__hor_chans__0_1_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__0_1_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1217_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__0_1_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__0_1_reg[22:0];
  assign eq_41644 = a_bexp__1 == 8'h00;
  assign eq_41645 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1217_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1217_3_case_0, b_fraction__1};
  assign nor_41648 = ~(eq_41644 | eq_41645);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_41651 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_41653 = {unexpand_for_next_value_1217_3_case_1, a_bexp__1} + {unexpand_for_next_value_1217_3_case_1, b_bexp__2};
  assign fraction = umul_41651 & {48{nor_41648}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1217_3_case_1, add_41653} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_41648}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_41955 = {unexpand_for_next_value_1217_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_41955[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1217_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_41965 = {unexpand_for_next_value_1217_3_case_1, accum_bexp} + 9'h001;
  assign sub_41966 = {5'h00, rounding_carry} - {unexpand_for_next_value_1217_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_41780 == 26'h000_0000 & ~(shrl_41769[1] | shrl_41769[2]) & ~(shrl_41769[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1217_3_case_1, add_41965};
  assign wide_exponent_associative_element__1 = {{4{sub_41966[5]}}, sub_41966};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_41676 = fraction__4[21:0] != 22'h00_0000;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_41676;
  assign __systolic__result_chans__0_1_vld_buf = p0_valid & ____state_3;
  assign __systolic__result_chans__0_1_not_has_been_sent = ~__systolic__result_chans__0_1_has_been_sent_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_41676 | ~fraction__4[23]);
  assign __systolic__result_chans__0_1_valid_and_not_has_been_sent = __systolic__result_chans__0_1_vld_buf & __systolic__result_chans__0_1_not_has_been_sent;
  assign systolic__result_chans__0_1_valid_load_en = systolic__result_chans__0_1_rdy | systolic__result_chans__0_1_valid_inv;
  assign eq_41975 = accum_bexp == high_exp;
  assign eq_41976 = accum_fraction == 23'h00_0000;
  assign eq_41977 = prod_bexp == high_exp;
  assign eq_41978 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1217_3_case_1, fraction__5};
  assign systolic__result_chans__0_1_load_en = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_valid_load_en;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign or_43793 = ~____state_3 | systolic__result_chans__0_1_load_en | __systolic__result_chans__0_1_has_been_sent_reg;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_41687 = exp__2 + 10'h001;
  assign p1_stage_done = p0_valid & or_43793;
  assign p1_not_valid = ~p0_valid;
  assign has_pos_inf = ~(~eq_41975 | ~eq_41976 | accum_sign) | ~(~eq_41977 | ~eq_41978 | prod_sign);
  assign has_neg_inf = eq_41975 & eq_41976 & accum_sign | eq_41977 & eq_41978 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_41687 : exp__2;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_1_valid_reg & __systolic__vert_chans__0_1_valid_reg;
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign __systolic__hor_chans__0_2_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__0_2_not_has_been_sent = ~__systolic__hor_chans__0_2_has_been_sent_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign __systolic__vert_chans__1_1_not_has_been_sent = ~__systolic__vert_chans__1_1_has_been_sent_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign is_result_nan__1 = ~(~eq_41975 | eq_41976) | ~(~eq_41977 | eq_41978) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_41975 & eq_41976 | eq_41977 & eq_41978;
  assign and_reduce_42005 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__0_2_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_vld_buf & __systolic__hor_chans__0_2_not_has_been_sent;
  assign systolic__hor_chans__0_2_valid_load_en = systolic__hor_chans__0_2_rdy | systolic__hor_chans__0_2_valid_inv;
  assign __systolic__vert_chans__1_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_vld_buf & __systolic__vert_chans__1_1_not_has_been_sent;
  assign systolic__vert_chans__1_1_valid_load_en = systolic__vert_chans__1_1_rdy | systolic__vert_chans__1_1_valid_inv;
  assign result_exponent__2_1_case_cmp = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_42005;
  assign result_fraction__5_0_case_cmp = ~is_result_nan__1;
  assign result_fraction__2_1_case_cmp = is_operand_inf | wide_exponent__2[8] | and_reduce_42005 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign systolic__hor_chans__0_2_load_en = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_valid_load_en;
  assign result_exponent__2_0_case_cmp = ~result_exponent__2_1_case_cmp;
  assign and_42013 = ~____state_3 & result_fraction__5_0_case_cmp;
  assign result_fraction__2_0_case_cmp = ~result_fraction__2_1_case_cmp;
  assign eq_41690 = a_bexp__1 == high_exp;
  assign eq_41691 = a_fraction__1 == 23'h00_0000;
  assign eq_41692 = b_bexp__2 == high_exp;
  assign eq_41693 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign __systolic__hor_chans__0_2_has_sent_or_is_ready = systolic__hor_chans__0_2_load_en | __systolic__hor_chans__0_2_has_been_sent_reg;
  assign __systolic__vert_chans__1_1_has_sent_or_is_ready = systolic__vert_chans__1_1_load_en | __systolic__vert_chans__1_1_has_been_sent_reg;
  assign and_42020 = ~____state_3 & result_exponent__2_0_case_cmp;
  assign and_42021 = ~____state_3 & result_exponent__2_1_case_cmp;
  assign and_42022 = ~____state_3 & is_result_nan__1;
  assign and_42023 = and_42013 & result_fraction__2_0_case_cmp;
  assign and_42024 = and_42013 & result_fraction__2_1_case_cmp;
  assign fraction_shift__2 = 3'h3;
  assign p0_all_active_outputs_ready = __systolic__hor_chans__0_2_has_sent_or_is_ready & __systolic__vert_chans__1_1_has_sent_or_is_ready;
  assign ____state_1__next_value_predicates = {____state_3, and_42020, and_42021};
  assign ____state_2__next_value_predicates = {____state_3, and_42022, and_42023, and_42024};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_41644 | eq_41645;
  assign has_inf_arg = eq_41690 & eq_41691 | eq_41692 & eq_41693;
  assign and_reduce_41710 = &result_exp__1[7:0];
  assign rounded_fraction = {add_41955, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign one_hot_42034 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_42035 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_42036 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign result_sign__2 = priority_sel_1b_2way({add_41780[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign shrl_42025 = rounded_fraction >> fraction_shift__1;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign is_result_nan = ~(~eq_41690 | eq_41691) | ~(~eq_41692 | eq_41693) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign result_fraction__1 = shrl_42025[22:0];
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__0_1_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__0_1_reg[31:31];
  assign result_sign__4 = result_fraction__5_0_case_cmp & result_sign__3;
  assign and_42100 = ____state_3 & p1_stage_done;
  assign and_42101 = and_42020 & p1_stage_done;
  assign and_42102 = and_42021 & p1_stage_done;
  assign and_42109 = and_42022 & p1_stage_done;
  assign and_42110 = and_42023 & p1_stage_done;
  assign and_42111 = and_42024 & p1_stage_done;
  assign and_42117 = ~____state_3 & p1_stage_done;
  assign result_fraction__2 = result_fraction__1 & {23{result_fraction__2_0_case_cmp}};
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__0_1_valid_load_en = p0_load_en | systolic__hor_chans__0_1_valid_inv;
  assign systolic__vert_chans__0_1_valid_load_en = p0_load_en | systolic__vert_chans__0_1_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_42034[2] & and_42020 == one_hot_42034[1] & and_42021 == one_hot_42034[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_42035[3] & and_42022 == one_hot_42035[2] & and_42023 == one_hot_42035[1] & and_42024 == one_hot_42035[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_42036[1] & ____state_3 == one_hot_42036[0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_41710 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_41710 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_42104 = {and_42100, and_42101, and_42102};
  assign concat_42113 = {and_42100, and_42109, and_42110, and_42111};
  assign concat_42119 = {and_42117, and_42100};
  assign __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_2_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_valid_and_ready_txfr = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_load_en;
  assign __systolic__vert_chans__1_1_valid_and_ready_txfr = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_load_en;
  assign __systolic__result_chans__0_1_valid_and_all_active_outputs_ready = __systolic__result_chans__0_1_vld_buf & or_43793;
  assign __systolic__result_chans__0_1_valid_and_ready_txfr = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_load_en;
  assign result_exponent__2 = result_exponent__2_1_case_cmp ? high_exp : wide_exponent__2[7:0];
  assign result_fraction__5 = is_result_nan__1 ? nan_fraction : result_fraction__2;
  assign systolic__hor_chans__0_1_load_en = systolic__hor_chans__0_1_vld & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = systolic__vert_chans__0_1_vld & systolic__vert_chans__0_1_valid_load_en;
  assign or_43756 = ~p1_stage_done | ____state_1__at_most_one_next_value | rst;
  assign or_43758 = ~p1_stage_done | ____state_2__at_most_one_next_value | rst;
  assign or_43760 = ~p1_stage_done | ____state_3__at_most_one_next_value | rst;
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_42061 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_42105 = high_exp & {8{concat_42104[0]}} | wide_exponent__2[7:0] & {8{concat_42104[1]}} | 8'h00 & {8{concat_42104[2]}};
  assign or_42106 = and_42100 | and_42101 | and_42102;
  assign one_hot_sel_42114 = 23'h00_0000 & {23{concat_42113[0]}} | result_fraction__1 & {23{concat_42113[1]}} | nan_fraction & {23{concat_42113[2]}} | 23'h00_0000 & {23{concat_42113[3]}};
  assign or_42115 = and_42100 | and_42109 | and_42110 | and_42111;
  assign one_hot_sel_42120 = unexpand_for_next_value_1217_3_case_1 & concat_42119[0] | unexpand_for_next_value_1217_3_case_0 & concat_42119[1];
  assign or_42121 = and_42117 | and_42100;
  assign __systolic__hor_chans__0_2_not_stage_load = ~__systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_has_been_sent_reg_load_en = __systolic__hor_chans__0_2_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_1_has_been_sent_reg_load_en = __systolic__vert_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_not_stage_load = ~__systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_has_been_sent_reg_load_en = __systolic__result_chans__0_1_valid_and_ready_txfr | __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign new_accum = {result_sign__4, result_exponent__2, result_fraction__5};
  always @ (posedge clk) begin
    p0_result_exp__4 <= p0_load_en ? result_exp__4 : p0_result_exp__4;
    p0_prod_bexpnot <= p0_load_en ? prod_bexpnot : p0_prod_bexpnot;
    p0_result_fraction__4 <= p0_load_en ? result_fraction__4 : p0_result_fraction__4;
    p0_result_sign__1 <= p0_load_en ? result_sign__1 : p0_result_sign__1;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p0_valid <= 1'h0;
      __systolic__hor_chans__0_2_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__1_1_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__0_1_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_1_reg <= __systolic__hor_chans__0_1_reg_init;
      __systolic__hor_chans__0_1_valid_reg <= 1'h0;
      __systolic__vert_chans__0_1_reg <= __systolic__vert_chans__0_1_reg_init;
      __systolic__vert_chans__0_1_valid_reg <= 1'h0;
      __systolic__hor_chans__0_2_reg <= __systolic__hor_chans__0_2_reg_init;
      __systolic__hor_chans__0_2_valid_reg <= 1'h0;
      __systolic__vert_chans__1_1_reg <= __systolic__vert_chans__1_1_reg_init;
      __systolic__vert_chans__1_1_valid_reg <= 1'h0;
      __systolic__result_chans__0_1_reg <= __systolic__result_chans__0_1_reg_init;
      __systolic__result_chans__0_1_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_42106 ? one_hot_sel_42105 : ____state_1;
      ____state_2 <= or_42115 ? one_hot_sel_42114 : ____state_2;
      ____state_0 <= p1_stage_done ? nor_42061 : ____state_0;
      ____state_3 <= or_42121 ? one_hot_sel_42120 : ____state_3;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      __systolic__hor_chans__0_2_has_been_sent_reg <= __systolic__hor_chans__0_2_has_been_sent_reg_load_en ? __systolic__hor_chans__0_2_not_stage_load : __systolic__hor_chans__0_2_has_been_sent_reg;
      __systolic__vert_chans__1_1_has_been_sent_reg <= __systolic__vert_chans__1_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_2_not_stage_load : __systolic__vert_chans__1_1_has_been_sent_reg;
      __systolic__result_chans__0_1_has_been_sent_reg <= __systolic__result_chans__0_1_has_been_sent_reg_load_en ? __systolic__result_chans__0_1_not_stage_load : __systolic__result_chans__0_1_has_been_sent_reg;
      __systolic__hor_chans__0_1_reg <= systolic__hor_chans__0_1_load_en ? systolic__hor_chans__0_1 : __systolic__hor_chans__0_1_reg;
      __systolic__hor_chans__0_1_valid_reg <= systolic__hor_chans__0_1_valid_load_en ? systolic__hor_chans__0_1_vld : __systolic__hor_chans__0_1_valid_reg;
      __systolic__vert_chans__0_1_reg <= systolic__vert_chans__0_1_load_en ? systolic__vert_chans__0_1 : __systolic__vert_chans__0_1_reg;
      __systolic__vert_chans__0_1_valid_reg <= systolic__vert_chans__0_1_valid_load_en ? systolic__vert_chans__0_1_vld : __systolic__vert_chans__0_1_valid_reg;
      __systolic__hor_chans__0_2_reg <= systolic__hor_chans__0_2_load_en ? __systolic__hor_chans__0_1_reg : __systolic__hor_chans__0_2_reg;
      __systolic__hor_chans__0_2_valid_reg <= systolic__hor_chans__0_2_valid_load_en ? __systolic__hor_chans__0_2_valid_and_not_has_been_sent : __systolic__hor_chans__0_2_valid_reg;
      __systolic__vert_chans__1_1_reg <= systolic__vert_chans__1_1_load_en ? __systolic__vert_chans__0_1_reg : __systolic__vert_chans__1_1_reg;
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
  function automatic [1:0] priority_sel_2b_2way (input reg [1:0] sel, input reg [1:0] case0, input reg [1:0] case1, input reg [1:0] default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_2b_2way = case0;
        end
        2'b10: begin
          priority_sel_2b_2way = case1;
        end
        2'b00: begin
          priority_sel_2b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_2b_2way = 2'dx;
        end
      endcase
    end
  endfunction
  function automatic [2:0] priority_sel_3b_2way (input reg [1:0] sel, input reg [2:0] case0, input reg [2:0] case1, input reg [2:0] default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_3b_2way = case0;
        end
        2'b10: begin
          priority_sel_3b_2way = case1;
        end
        2'b00: begin
          priority_sel_3b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_3b_2way = 3'dx;
        end
      endcase
    end
  endfunction
  // lint_off MULTIPLY
  function automatic [47:0] umul48b_24b_x_24b (input reg [23:0] lhs, input reg [23:0] rhs);
    begin
      umul48b_24b_x_24b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  function automatic priority_sel_1b_2way (input reg [1:0] sel, input reg case0, input reg case1, input reg default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_1b_2way = case0;
        end
        2'b10: begin
          priority_sel_1b_2way = case1;
        end
        2'b00: begin
          priority_sel_1b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_1b_2way = 1'dx;
        end
      endcase
    end
  endfunction
  wire [31:0] __systolic__hor_chans__1_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__1_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__1_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg ____state_3;
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
  wire unexpand_for_next_value_1248_3_case_1;
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire unexpand_for_next_value_1248_3_case_0;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_42387;
  wire [7:0] narrowed_result;
  wire [7:0] accum_bexpor_mask;
  wire [23:0] fraction_x__1;
  wire [23:0] fraction_y__1;
  wire [2:0] accumddend_x__1_squeezed_const_lsb_bits;
  wire [7:0] result;
  wire accum_sign;
  wire prod_sign;
  wire [24:0] wide_x_squeezed;
  wire [26:0] wide_y_shift_bits;
  wire [7:0] shift;
  wire [26:0] shrl_42402;
  wire [27:0] shll_42404;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_42413;
  wire sticky__2;
  wire [27:0] concat_42419;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_42460;
  wire nor_42455;
  wire nor_42456;
  wire nor_42446;
  wire nor_42447;
  wire and_42489;
  wire nor_42491;
  wire nor_42493;
  wire and_42486;
  wire nor_42482;
  wire and_42478;
  wire nor_42479;
  wire nor_42473;
  wire nor_42475;
  wire and_42518;
  wire nor_42499;
  wire nor_42500;
  wire and_42539;
  wire [1:0] priority_sel_42540;
  wire and_42535;
  wire and_42531;
  wire and_42527;
  wire [2:0] concat_42553;
  wire [2:0] concat_42550;
  wire [2:0] concat_42549;
  wire [2:0] concat_42547;
  wire [2:0] concat_42546;
  wire and_42558;
  wire [3:0] concat_42562;
  wire [3:0] sel_43732;
  wire [4:0] concat_42570;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_42277;
  wire eq_42278;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_42281;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_42284;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_42286;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_42588;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_42598;
  wire [5:0] sub_42599;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_42309;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__1_0_vld_buf;
  wire __systolic__result_chans__1_0_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_inv;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire __systolic__result_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_load_en;
  wire eq_42608;
  wire eq_42609;
  wire eq_42610;
  wire eq_42611;
  wire [23:0] fraction__6;
  wire systolic__result_chans__1_0_load_en;
  wire [23:0] fraction__7;
  wire or_43800;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_42320;
  wire p1_stage_done;
  wire p1_not_valid;
  wire has_pos_inf;
  wire has_neg_inf;
  wire [9:0] exp__3;
  wire p0_all_active_inputs_valid;
  wire p0_enable;
  wire is_subnormal;
  wire __systolic__hor_chans__1_1_vld_buf;
  wire __systolic__hor_chans__1_1_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_inv;
  wire __systolic__vert_chans__2_0_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_inv;
  wire is_result_nan__1;
  wire is_operand_inf;
  wire and_reduce_42638;
  wire __systolic__hor_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire __systolic__vert_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire result_exponent__2_1_case_cmp;
  wire result_fraction__5_0_case_cmp;
  wire result_fraction__2_1_case_cmp;
  wire [8:0] result_exp;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__2_0_load_en;
  wire result_exponent__2_0_case_cmp;
  wire and_42646;
  wire result_fraction__2_0_case_cmp;
  wire eq_42323;
  wire eq_42324;
  wire eq_42325;
  wire eq_42326;
  wire [8:0] result_exp__1;
  wire __systolic__hor_chans__1_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_0_has_sent_or_is_ready;
  wire and_42653;
  wire and_42654;
  wire and_42655;
  wire and_42656;
  wire and_42657;
  wire [2:0] fraction_shift__2;
  wire p0_all_active_outputs_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_42343;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire p0_stage_done;
  wire [3:0] one_hot_42667;
  wire [4:0] one_hot_42668;
  wire [2:0] one_hot_42669;
  wire result_sign__2;
  wire [27:0] shrl_42658;
  wire p0_data_enable;
  wire is_result_nan;
  wire result_sign__3;
  wire [22:0] result_fraction__1;
  wire p0_load_en;
  wire systolic__hor_chans__1_0_valid_inv;
  wire systolic__vert_chans__1_0_valid_inv;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_42733;
  wire and_42734;
  wire and_42735;
  wire and_42742;
  wire and_42743;
  wire and_42744;
  wire and_42750;
  wire [22:0] result_fraction__2;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__1_0_valid_load_en;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_42737;
  wire [3:0] concat_42746;
  wire [1:0] concat_42752;
  wire __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_0_valid_and_ready_txfr;
  wire __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_0_valid_and_ready_txfr;
  wire [7:0] result_exponent__2;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__1_0_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire or_43762;
  wire or_43764;
  wire or_43766;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_42694;
  wire [7:0] one_hot_sel_42738;
  wire or_42739;
  wire [22:0] one_hot_sel_42747;
  wire or_42748;
  wire one_hot_sel_42753;
  wire or_42754;
  wire __systolic__hor_chans__1_1_not_stage_load;
  wire __systolic__hor_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_0_not_stage_load;
  wire __systolic__result_chans__1_0_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign unexpand_for_next_value_1248_3_case_1 = 1'h0;
  assign accum_bexp_extended__1 = {unexpand_for_next_value_1248_3_case_1, ____state_1};
  assign prod_bexpnot_extended = {unexpand_for_next_value_1248_3_case_1, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign unexpand_for_next_value_1248_3_case_0 = 1'h1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {unexpand_for_next_value_1248_3_case_0, accum_fraction};
  assign fraction_y = {unexpand_for_next_value_1248_3_case_0, prod_fraction};
  assign sign_ext_42387 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_42387;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1248_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_42402 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_42404 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_42413 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_42402[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1248_3_case_1, ~prod_fraction} | ~sign_ext_42387 | shll_42404[26:3]) != 24'h00_0000;
  assign concat_42419 = {add_42413[24:0], shrl_42402[2:1], shrl_42402[0] | sticky__2};
  assign accumbs_fraction = add_42413[25] ? -concat_42419 : concat_42419;
  assign carry_bit = accumbs_fraction[27];
  assign nor_42460 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_42455 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_42456 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_42446 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_42447 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_42489 = ~(carry_bit | accumbs_fraction[26]) & nor_42460;
  assign nor_42491 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_42493 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_42486 = nor_42456 & nor_42455;
  assign nor_42482 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_42478 = nor_42447 & nor_42446;
  assign nor_42479 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_42473 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_42475 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_42518 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_42491;
  assign nor_42499 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_42500 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_42539 = and_42489 & and_42518;
  assign priority_sel_42540 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_42460), and_42489}, {nor_42493, unexpand_for_next_value_1248_3_case_1}, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1248_3_case_1, nor_42493});
  assign and_42535 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_42482;
  assign and_42531 = nor_42475 & nor_42473;
  assign and_42527 = nor_42500 & nor_42499;
  assign concat_42553 = {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_42491) ? {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1248_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_42550 = {and_42486, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_42455), and_42486}, 2'h0, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_42456, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_42549 = {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_42482) ? {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1248_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_42547 = {and_42478, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_42446), and_42478}, {nor_42479, unexpand_for_next_value_1248_3_case_1}, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_42447, nor_42479})};
  assign concat_42546 = {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_42473) ? {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_42475, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_42558 = and_42486 & and_42535;
  assign concat_42562 = {unexpand_for_next_value_1248_3_case_0, and_42527, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_42499), and_42527}, 2'h0, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_42500, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_43732 = ~(~and_42539 | and_42558) ? {unexpand_for_next_value_1248_3_case_0, ~(~and_42486 | and_42535) ? concat_42549 : concat_42550} : {and_42539, priority_sel_3b_2way({~(~and_42489 | and_42518), and_42539}, {priority_sel_42540, unexpand_for_next_value_1248_3_case_1}, concat_42553, {unexpand_for_next_value_1248_3_case_1, priority_sel_42540})};
  assign concat_42570 = {unexpand_for_next_value_1248_3_case_0, and_42478 & and_42531 ? concat_42562 : {unexpand_for_next_value_1248_3_case_1, ~(~and_42478 | and_42531) ? concat_42546 : concat_42547}};
  assign leading_zeroes = and_42539 & and_42558 ? concat_42570 : {unexpand_for_next_value_1248_3_case_1, sel_43732};
  assign a_bexp__1 = __systolic__hor_chans__1_0_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__1_0_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1248_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__1_0_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__1_0_reg[22:0];
  assign eq_42277 = a_bexp__1 == 8'h00;
  assign eq_42278 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1248_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1248_3_case_0, b_fraction__1};
  assign nor_42281 = ~(eq_42277 | eq_42278);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_42284 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_42286 = {unexpand_for_next_value_1248_3_case_1, a_bexp__1} + {unexpand_for_next_value_1248_3_case_1, b_bexp__2};
  assign fraction = umul_42284 & {48{nor_42281}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1248_3_case_1, add_42286} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_42281}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_42588 = {unexpand_for_next_value_1248_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_42588[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1248_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_42598 = {unexpand_for_next_value_1248_3_case_1, accum_bexp} + 9'h001;
  assign sub_42599 = {5'h00, rounding_carry} - {unexpand_for_next_value_1248_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_42413 == 26'h000_0000 & ~(shrl_42402[1] | shrl_42402[2]) & ~(shrl_42402[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1248_3_case_1, add_42598};
  assign wide_exponent_associative_element__1 = {{4{sub_42599[5]}}, sub_42599};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_42309 = fraction__4[21:0] != 22'h00_0000;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_42309;
  assign __systolic__result_chans__1_0_vld_buf = p0_valid & ____state_3;
  assign __systolic__result_chans__1_0_not_has_been_sent = ~__systolic__result_chans__1_0_has_been_sent_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_42309 | ~fraction__4[23]);
  assign __systolic__result_chans__1_0_valid_and_not_has_been_sent = __systolic__result_chans__1_0_vld_buf & __systolic__result_chans__1_0_not_has_been_sent;
  assign systolic__result_chans__1_0_valid_load_en = systolic__result_chans__1_0_rdy | systolic__result_chans__1_0_valid_inv;
  assign eq_42608 = accum_bexp == high_exp;
  assign eq_42609 = accum_fraction == 23'h00_0000;
  assign eq_42610 = prod_bexp == high_exp;
  assign eq_42611 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1248_3_case_1, fraction__5};
  assign systolic__result_chans__1_0_load_en = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_valid_load_en;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign or_43800 = ~____state_3 | systolic__result_chans__1_0_load_en | __systolic__result_chans__1_0_has_been_sent_reg;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_42320 = exp__2 + 10'h001;
  assign p1_stage_done = p0_valid & or_43800;
  assign p1_not_valid = ~p0_valid;
  assign has_pos_inf = ~(~eq_42608 | ~eq_42609 | accum_sign) | ~(~eq_42610 | ~eq_42611 | prod_sign);
  assign has_neg_inf = eq_42608 & eq_42609 & accum_sign | eq_42610 & eq_42611 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_42320 : exp__2;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_0_valid_reg & __systolic__vert_chans__1_0_valid_reg;
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign __systolic__hor_chans__1_1_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__1_1_not_has_been_sent = ~__systolic__hor_chans__1_1_has_been_sent_reg;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign __systolic__vert_chans__2_0_not_has_been_sent = ~__systolic__vert_chans__2_0_has_been_sent_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign is_result_nan__1 = ~(~eq_42608 | eq_42609) | ~(~eq_42610 | eq_42611) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_42608 & eq_42609 | eq_42610 & eq_42611;
  assign and_reduce_42638 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__1_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_vld_buf & __systolic__hor_chans__1_1_not_has_been_sent;
  assign systolic__hor_chans__1_1_valid_load_en = systolic__hor_chans__1_1_rdy | systolic__hor_chans__1_1_valid_inv;
  assign __systolic__vert_chans__2_0_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_vld_buf & __systolic__vert_chans__2_0_not_has_been_sent;
  assign systolic__vert_chans__2_0_valid_load_en = systolic__vert_chans__2_0_rdy | systolic__vert_chans__2_0_valid_inv;
  assign result_exponent__2_1_case_cmp = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_42638;
  assign result_fraction__5_0_case_cmp = ~is_result_nan__1;
  assign result_fraction__2_1_case_cmp = is_operand_inf | wide_exponent__2[8] | and_reduce_42638 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign systolic__hor_chans__1_1_load_en = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_valid_load_en;
  assign result_exponent__2_0_case_cmp = ~result_exponent__2_1_case_cmp;
  assign and_42646 = ~____state_3 & result_fraction__5_0_case_cmp;
  assign result_fraction__2_0_case_cmp = ~result_fraction__2_1_case_cmp;
  assign eq_42323 = a_bexp__1 == high_exp;
  assign eq_42324 = a_fraction__1 == 23'h00_0000;
  assign eq_42325 = b_bexp__2 == high_exp;
  assign eq_42326 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign __systolic__hor_chans__1_1_has_sent_or_is_ready = systolic__hor_chans__1_1_load_en | __systolic__hor_chans__1_1_has_been_sent_reg;
  assign __systolic__vert_chans__2_0_has_sent_or_is_ready = systolic__vert_chans__2_0_load_en | __systolic__vert_chans__2_0_has_been_sent_reg;
  assign and_42653 = ~____state_3 & result_exponent__2_0_case_cmp;
  assign and_42654 = ~____state_3 & result_exponent__2_1_case_cmp;
  assign and_42655 = ~____state_3 & is_result_nan__1;
  assign and_42656 = and_42646 & result_fraction__2_0_case_cmp;
  assign and_42657 = and_42646 & result_fraction__2_1_case_cmp;
  assign fraction_shift__2 = 3'h3;
  assign p0_all_active_outputs_ready = __systolic__hor_chans__1_1_has_sent_or_is_ready & __systolic__vert_chans__2_0_has_sent_or_is_ready;
  assign ____state_1__next_value_predicates = {____state_3, and_42653, and_42654};
  assign ____state_2__next_value_predicates = {____state_3, and_42655, and_42656, and_42657};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_42277 | eq_42278;
  assign has_inf_arg = eq_42323 & eq_42324 | eq_42325 & eq_42326;
  assign and_reduce_42343 = &result_exp__1[7:0];
  assign rounded_fraction = {add_42588, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign one_hot_42667 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_42668 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_42669 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign result_sign__2 = priority_sel_1b_2way({add_42413[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign shrl_42658 = rounded_fraction >> fraction_shift__1;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign is_result_nan = ~(~eq_42323 | eq_42324) | ~(~eq_42325 | eq_42326) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign result_fraction__1 = shrl_42658[22:0];
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__1_0_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__1_0_reg[31:31];
  assign result_sign__4 = result_fraction__5_0_case_cmp & result_sign__3;
  assign and_42733 = ____state_3 & p1_stage_done;
  assign and_42734 = and_42653 & p1_stage_done;
  assign and_42735 = and_42654 & p1_stage_done;
  assign and_42742 = and_42655 & p1_stage_done;
  assign and_42743 = and_42656 & p1_stage_done;
  assign and_42744 = and_42657 & p1_stage_done;
  assign and_42750 = ~____state_3 & p1_stage_done;
  assign result_fraction__2 = result_fraction__1 & {23{result_fraction__2_0_case_cmp}};
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__1_0_valid_load_en = p0_load_en | systolic__hor_chans__1_0_valid_inv;
  assign systolic__vert_chans__1_0_valid_load_en = p0_load_en | systolic__vert_chans__1_0_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_42667[2] & and_42653 == one_hot_42667[1] & and_42654 == one_hot_42667[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_42668[3] & and_42655 == one_hot_42668[2] & and_42656 == one_hot_42668[1] & and_42657 == one_hot_42668[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_42669[1] & ____state_3 == one_hot_42669[0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_42343 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_42343 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_42737 = {and_42733, and_42734, and_42735};
  assign concat_42746 = {and_42733, and_42742, and_42743, and_42744};
  assign concat_42752 = {and_42750, and_42733};
  assign __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_1_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_valid_and_ready_txfr = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_load_en;
  assign __systolic__vert_chans__2_0_valid_and_ready_txfr = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_load_en;
  assign __systolic__result_chans__1_0_valid_and_all_active_outputs_ready = __systolic__result_chans__1_0_vld_buf & or_43800;
  assign __systolic__result_chans__1_0_valid_and_ready_txfr = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_load_en;
  assign result_exponent__2 = result_exponent__2_1_case_cmp ? high_exp : wide_exponent__2[7:0];
  assign result_fraction__5 = is_result_nan__1 ? nan_fraction : result_fraction__2;
  assign systolic__hor_chans__1_0_load_en = systolic__hor_chans__1_0_vld & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = systolic__vert_chans__1_0_vld & systolic__vert_chans__1_0_valid_load_en;
  assign or_43762 = ~p1_stage_done | ____state_1__at_most_one_next_value | rst;
  assign or_43764 = ~p1_stage_done | ____state_2__at_most_one_next_value | rst;
  assign or_43766 = ~p1_stage_done | ____state_3__at_most_one_next_value | rst;
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_42694 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_42738 = high_exp & {8{concat_42737[0]}} | wide_exponent__2[7:0] & {8{concat_42737[1]}} | 8'h00 & {8{concat_42737[2]}};
  assign or_42739 = and_42733 | and_42734 | and_42735;
  assign one_hot_sel_42747 = 23'h00_0000 & {23{concat_42746[0]}} | result_fraction__1 & {23{concat_42746[1]}} | nan_fraction & {23{concat_42746[2]}} | 23'h00_0000 & {23{concat_42746[3]}};
  assign or_42748 = and_42733 | and_42742 | and_42743 | and_42744;
  assign one_hot_sel_42753 = unexpand_for_next_value_1248_3_case_1 & concat_42752[0] | unexpand_for_next_value_1248_3_case_0 & concat_42752[1];
  assign or_42754 = and_42750 | and_42733;
  assign __systolic__hor_chans__1_1_not_stage_load = ~__systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_has_been_sent_reg_load_en = __systolic__hor_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_0_has_been_sent_reg_load_en = __systolic__vert_chans__2_0_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_not_stage_load = ~__systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_has_been_sent_reg_load_en = __systolic__result_chans__1_0_valid_and_ready_txfr | __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign new_accum = {result_sign__4, result_exponent__2, result_fraction__5};
  always @ (posedge clk) begin
    p0_result_exp__4 <= p0_load_en ? result_exp__4 : p0_result_exp__4;
    p0_prod_bexpnot <= p0_load_en ? prod_bexpnot : p0_prod_bexpnot;
    p0_result_fraction__4 <= p0_load_en ? result_fraction__4 : p0_result_fraction__4;
    p0_result_sign__1 <= p0_load_en ? result_sign__1 : p0_result_sign__1;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p0_valid <= 1'h0;
      __systolic__hor_chans__1_1_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__2_0_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__1_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_0_reg <= __systolic__hor_chans__1_0_reg_init;
      __systolic__hor_chans__1_0_valid_reg <= 1'h0;
      __systolic__vert_chans__1_0_reg <= __systolic__vert_chans__1_0_reg_init;
      __systolic__vert_chans__1_0_valid_reg <= 1'h0;
      __systolic__hor_chans__1_1_reg <= __systolic__hor_chans__1_1_reg_init;
      __systolic__hor_chans__1_1_valid_reg <= 1'h0;
      __systolic__vert_chans__2_0_reg <= __systolic__vert_chans__2_0_reg_init;
      __systolic__vert_chans__2_0_valid_reg <= 1'h0;
      __systolic__result_chans__1_0_reg <= __systolic__result_chans__1_0_reg_init;
      __systolic__result_chans__1_0_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_42739 ? one_hot_sel_42738 : ____state_1;
      ____state_2 <= or_42748 ? one_hot_sel_42747 : ____state_2;
      ____state_0 <= p1_stage_done ? nor_42694 : ____state_0;
      ____state_3 <= or_42754 ? one_hot_sel_42753 : ____state_3;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      __systolic__hor_chans__1_1_has_been_sent_reg <= __systolic__hor_chans__1_1_has_been_sent_reg_load_en ? __systolic__hor_chans__1_1_not_stage_load : __systolic__hor_chans__1_1_has_been_sent_reg;
      __systolic__vert_chans__2_0_has_been_sent_reg <= __systolic__vert_chans__2_0_has_been_sent_reg_load_en ? __systolic__hor_chans__1_1_not_stage_load : __systolic__vert_chans__2_0_has_been_sent_reg;
      __systolic__result_chans__1_0_has_been_sent_reg <= __systolic__result_chans__1_0_has_been_sent_reg_load_en ? __systolic__result_chans__1_0_not_stage_load : __systolic__result_chans__1_0_has_been_sent_reg;
      __systolic__hor_chans__1_0_reg <= systolic__hor_chans__1_0_load_en ? systolic__hor_chans__1_0 : __systolic__hor_chans__1_0_reg;
      __systolic__hor_chans__1_0_valid_reg <= systolic__hor_chans__1_0_valid_load_en ? systolic__hor_chans__1_0_vld : __systolic__hor_chans__1_0_valid_reg;
      __systolic__vert_chans__1_0_reg <= systolic__vert_chans__1_0_load_en ? systolic__vert_chans__1_0 : __systolic__vert_chans__1_0_reg;
      __systolic__vert_chans__1_0_valid_reg <= systolic__vert_chans__1_0_valid_load_en ? systolic__vert_chans__1_0_vld : __systolic__vert_chans__1_0_valid_reg;
      __systolic__hor_chans__1_1_reg <= systolic__hor_chans__1_1_load_en ? __systolic__hor_chans__1_0_reg : __systolic__hor_chans__1_1_reg;
      __systolic__hor_chans__1_1_valid_reg <= systolic__hor_chans__1_1_valid_load_en ? __systolic__hor_chans__1_1_valid_and_not_has_been_sent : __systolic__hor_chans__1_1_valid_reg;
      __systolic__vert_chans__2_0_reg <= systolic__vert_chans__2_0_load_en ? __systolic__vert_chans__1_0_reg : __systolic__vert_chans__2_0_reg;
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
  function automatic [1:0] priority_sel_2b_2way (input reg [1:0] sel, input reg [1:0] case0, input reg [1:0] case1, input reg [1:0] default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_2b_2way = case0;
        end
        2'b10: begin
          priority_sel_2b_2way = case1;
        end
        2'b00: begin
          priority_sel_2b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_2b_2way = 2'dx;
        end
      endcase
    end
  endfunction
  function automatic [2:0] priority_sel_3b_2way (input reg [1:0] sel, input reg [2:0] case0, input reg [2:0] case1, input reg [2:0] default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_3b_2way = case0;
        end
        2'b10: begin
          priority_sel_3b_2way = case1;
        end
        2'b00: begin
          priority_sel_3b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_3b_2way = 3'dx;
        end
      endcase
    end
  endfunction
  // lint_off MULTIPLY
  function automatic [47:0] umul48b_24b_x_24b (input reg [23:0] lhs, input reg [23:0] rhs);
    begin
      umul48b_24b_x_24b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  function automatic priority_sel_1b_2way (input reg [1:0] sel, input reg case0, input reg case1, input reg default_value);
    begin
      casez (sel)
        2'b?1: begin
          priority_sel_1b_2way = case0;
        end
        2'b10: begin
          priority_sel_1b_2way = case1;
        end
        2'b00: begin
          priority_sel_1b_2way = default_value;
        end
        default: begin
          // Propagate X
          priority_sel_1b_2way = 1'dx;
        end
      endcase
    end
  endfunction
  wire [31:0] __systolic__hor_chans__1_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__1_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__1_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg ____state_3;
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
  wire unexpand_for_next_value_1279_3_case_1;
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire unexpand_for_next_value_1279_3_case_0;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_43020;
  wire [7:0] narrowed_result;
  wire [7:0] accum_bexpor_mask;
  wire [23:0] fraction_x__1;
  wire [23:0] fraction_y__1;
  wire [2:0] accumddend_x__1_squeezed_const_lsb_bits;
  wire [7:0] result;
  wire accum_sign;
  wire prod_sign;
  wire [24:0] wide_x_squeezed;
  wire [26:0] wide_y_shift_bits;
  wire [7:0] shift;
  wire [26:0] shrl_43035;
  wire [27:0] shll_43037;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_43046;
  wire sticky__2;
  wire [27:0] concat_43052;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_43093;
  wire nor_43088;
  wire nor_43089;
  wire nor_43079;
  wire nor_43080;
  wire and_43122;
  wire nor_43124;
  wire nor_43126;
  wire and_43119;
  wire nor_43115;
  wire and_43111;
  wire nor_43112;
  wire nor_43106;
  wire nor_43108;
  wire and_43151;
  wire nor_43132;
  wire nor_43133;
  wire and_43172;
  wire [1:0] priority_sel_43173;
  wire and_43168;
  wire and_43164;
  wire and_43160;
  wire [2:0] concat_43186;
  wire [2:0] concat_43183;
  wire [2:0] concat_43182;
  wire [2:0] concat_43180;
  wire [2:0] concat_43179;
  wire and_43191;
  wire [3:0] concat_43195;
  wire [3:0] sel_43740;
  wire [4:0] concat_43203;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_42910;
  wire eq_42911;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_42914;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_42917;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_42919;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_43221;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_43231;
  wire [5:0] sub_43232;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_42942;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__1_1_vld_buf;
  wire __systolic__result_chans__1_1_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_inv;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire __systolic__result_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_load_en;
  wire eq_43241;
  wire eq_43242;
  wire eq_43243;
  wire eq_43244;
  wire [23:0] fraction__6;
  wire systolic__result_chans__1_1_load_en;
  wire [23:0] fraction__7;
  wire or_43807;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_42953;
  wire p1_stage_done;
  wire p1_not_valid;
  wire has_pos_inf;
  wire has_neg_inf;
  wire [9:0] exp__3;
  wire p0_all_active_inputs_valid;
  wire p0_enable;
  wire is_subnormal;
  wire __systolic__hor_chans__1_2_vld_buf;
  wire __systolic__hor_chans__1_2_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_inv;
  wire __systolic__vert_chans__2_1_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_inv;
  wire is_result_nan__1;
  wire is_operand_inf;
  wire and_reduce_43271;
  wire __systolic__hor_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire __systolic__vert_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire result_exponent__2_1_case_cmp;
  wire result_fraction__5_0_case_cmp;
  wire result_fraction__2_1_case_cmp;
  wire [8:0] result_exp;
  wire systolic__hor_chans__1_2_load_en;
  wire systolic__vert_chans__2_1_load_en;
  wire result_exponent__2_0_case_cmp;
  wire and_43279;
  wire result_fraction__2_0_case_cmp;
  wire eq_42956;
  wire eq_42957;
  wire eq_42958;
  wire eq_42959;
  wire [8:0] result_exp__1;
  wire __systolic__hor_chans__1_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_1_has_sent_or_is_ready;
  wire and_43286;
  wire and_43287;
  wire and_43288;
  wire and_43289;
  wire and_43290;
  wire [2:0] fraction_shift__2;
  wire p0_all_active_outputs_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_42976;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire p0_stage_done;
  wire [3:0] one_hot_43300;
  wire [4:0] one_hot_43301;
  wire [2:0] one_hot_43302;
  wire result_sign__2;
  wire [27:0] shrl_43291;
  wire p0_data_enable;
  wire is_result_nan;
  wire result_sign__3;
  wire [22:0] result_fraction__1;
  wire p0_load_en;
  wire systolic__hor_chans__1_1_valid_inv;
  wire systolic__vert_chans__1_1_valid_inv;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_43366;
  wire and_43367;
  wire and_43368;
  wire and_43375;
  wire and_43376;
  wire and_43377;
  wire and_43383;
  wire [22:0] result_fraction__2;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_43370;
  wire [3:0] concat_43379;
  wire [1:0] concat_43385;
  wire __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_1_valid_and_ready_txfr;
  wire __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_1_valid_and_ready_txfr;
  wire [7:0] result_exponent__2;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire or_43768;
  wire or_43770;
  wire or_43772;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_43327;
  wire [7:0] one_hot_sel_43371;
  wire or_43372;
  wire [22:0] one_hot_sel_43380;
  wire or_43381;
  wire one_hot_sel_43386;
  wire or_43387;
  wire __systolic__hor_chans__1_2_not_stage_load;
  wire __systolic__hor_chans__1_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_1_not_stage_load;
  wire __systolic__result_chans__1_1_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign unexpand_for_next_value_1279_3_case_1 = 1'h0;
  assign accum_bexp_extended__1 = {unexpand_for_next_value_1279_3_case_1, ____state_1};
  assign prod_bexpnot_extended = {unexpand_for_next_value_1279_3_case_1, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign unexpand_for_next_value_1279_3_case_0 = 1'h1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {unexpand_for_next_value_1279_3_case_0, accum_fraction};
  assign fraction_y = {unexpand_for_next_value_1279_3_case_0, prod_fraction};
  assign sign_ext_43020 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_43020;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1279_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_43035 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_43037 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_43046 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_43035[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1279_3_case_1, ~prod_fraction} | ~sign_ext_43020 | shll_43037[26:3]) != 24'h00_0000;
  assign concat_43052 = {add_43046[24:0], shrl_43035[2:1], shrl_43035[0] | sticky__2};
  assign accumbs_fraction = add_43046[25] ? -concat_43052 : concat_43052;
  assign carry_bit = accumbs_fraction[27];
  assign nor_43093 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_43088 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_43089 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_43079 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_43080 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_43122 = ~(carry_bit | accumbs_fraction[26]) & nor_43093;
  assign nor_43124 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_43126 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_43119 = nor_43089 & nor_43088;
  assign nor_43115 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_43111 = nor_43080 & nor_43079;
  assign nor_43112 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_43106 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_43108 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_43151 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_43124;
  assign nor_43132 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_43133 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_43172 = and_43122 & and_43151;
  assign priority_sel_43173 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_43093), and_43122}, {nor_43126, unexpand_for_next_value_1279_3_case_1}, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1279_3_case_1, nor_43126});
  assign and_43168 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_43115;
  assign and_43164 = nor_43108 & nor_43106;
  assign and_43160 = nor_43133 & nor_43132;
  assign concat_43186 = {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_43124) ? {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1279_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_43183 = {and_43119, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_43088), and_43119}, 2'h0, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_43089, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_43182 = {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_43115) ? {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1279_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_43180 = {and_43111, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_43079), and_43111}, {nor_43112, unexpand_for_next_value_1279_3_case_1}, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_43080, nor_43112})};
  assign concat_43179 = {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_43106) ? {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_43108, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_43191 = and_43119 & and_43168;
  assign concat_43195 = {unexpand_for_next_value_1279_3_case_0, and_43160, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_43132), and_43160}, 2'h0, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_43133, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_43740 = ~(~and_43172 | and_43191) ? {unexpand_for_next_value_1279_3_case_0, ~(~and_43119 | and_43168) ? concat_43182 : concat_43183} : {and_43172, priority_sel_3b_2way({~(~and_43122 | and_43151), and_43172}, {priority_sel_43173, unexpand_for_next_value_1279_3_case_1}, concat_43186, {unexpand_for_next_value_1279_3_case_1, priority_sel_43173})};
  assign concat_43203 = {unexpand_for_next_value_1279_3_case_0, and_43111 & and_43164 ? concat_43195 : {unexpand_for_next_value_1279_3_case_1, ~(~and_43111 | and_43164) ? concat_43179 : concat_43180}};
  assign leading_zeroes = and_43172 & and_43191 ? concat_43203 : {unexpand_for_next_value_1279_3_case_1, sel_43740};
  assign a_bexp__1 = __systolic__hor_chans__1_1_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__1_1_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1279_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__1_1_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__1_1_reg[22:0];
  assign eq_42910 = a_bexp__1 == 8'h00;
  assign eq_42911 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1279_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1279_3_case_0, b_fraction__1};
  assign nor_42914 = ~(eq_42910 | eq_42911);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_42917 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_42919 = {unexpand_for_next_value_1279_3_case_1, a_bexp__1} + {unexpand_for_next_value_1279_3_case_1, b_bexp__2};
  assign fraction = umul_42917 & {48{nor_42914}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1279_3_case_1, add_42919} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_42914}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_43221 = {unexpand_for_next_value_1279_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_43221[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1279_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_43231 = {unexpand_for_next_value_1279_3_case_1, accum_bexp} + 9'h001;
  assign sub_43232 = {5'h00, rounding_carry} - {unexpand_for_next_value_1279_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_43046 == 26'h000_0000 & ~(shrl_43035[1] | shrl_43035[2]) & ~(shrl_43035[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1279_3_case_1, add_43231};
  assign wide_exponent_associative_element__1 = {{4{sub_43232[5]}}, sub_43232};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_42942 = fraction__4[21:0] != 22'h00_0000;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_42942;
  assign __systolic__result_chans__1_1_vld_buf = p0_valid & ____state_3;
  assign __systolic__result_chans__1_1_not_has_been_sent = ~__systolic__result_chans__1_1_has_been_sent_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_42942 | ~fraction__4[23]);
  assign __systolic__result_chans__1_1_valid_and_not_has_been_sent = __systolic__result_chans__1_1_vld_buf & __systolic__result_chans__1_1_not_has_been_sent;
  assign systolic__result_chans__1_1_valid_load_en = systolic__result_chans__1_1_rdy | systolic__result_chans__1_1_valid_inv;
  assign eq_43241 = accum_bexp == high_exp;
  assign eq_43242 = accum_fraction == 23'h00_0000;
  assign eq_43243 = prod_bexp == high_exp;
  assign eq_43244 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1279_3_case_1, fraction__5};
  assign systolic__result_chans__1_1_load_en = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_valid_load_en;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign or_43807 = ~____state_3 | systolic__result_chans__1_1_load_en | __systolic__result_chans__1_1_has_been_sent_reg;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_42953 = exp__2 + 10'h001;
  assign p1_stage_done = p0_valid & or_43807;
  assign p1_not_valid = ~p0_valid;
  assign has_pos_inf = ~(~eq_43241 | ~eq_43242 | accum_sign) | ~(~eq_43243 | ~eq_43244 | prod_sign);
  assign has_neg_inf = eq_43241 & eq_43242 & accum_sign | eq_43243 & eq_43244 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_42953 : exp__2;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_1_valid_reg & __systolic__vert_chans__1_1_valid_reg;
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign __systolic__hor_chans__1_2_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__1_2_not_has_been_sent = ~__systolic__hor_chans__1_2_has_been_sent_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign __systolic__vert_chans__2_1_not_has_been_sent = ~__systolic__vert_chans__2_1_has_been_sent_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign is_result_nan__1 = ~(~eq_43241 | eq_43242) | ~(~eq_43243 | eq_43244) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_43241 & eq_43242 | eq_43243 & eq_43244;
  assign and_reduce_43271 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__1_2_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_vld_buf & __systolic__hor_chans__1_2_not_has_been_sent;
  assign systolic__hor_chans__1_2_valid_load_en = systolic__hor_chans__1_2_rdy | systolic__hor_chans__1_2_valid_inv;
  assign __systolic__vert_chans__2_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_vld_buf & __systolic__vert_chans__2_1_not_has_been_sent;
  assign systolic__vert_chans__2_1_valid_load_en = systolic__vert_chans__2_1_rdy | systolic__vert_chans__2_1_valid_inv;
  assign result_exponent__2_1_case_cmp = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_43271;
  assign result_fraction__5_0_case_cmp = ~is_result_nan__1;
  assign result_fraction__2_1_case_cmp = is_operand_inf | wide_exponent__2[8] | and_reduce_43271 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign systolic__hor_chans__1_2_load_en = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_valid_load_en;
  assign result_exponent__2_0_case_cmp = ~result_exponent__2_1_case_cmp;
  assign and_43279 = ~____state_3 & result_fraction__5_0_case_cmp;
  assign result_fraction__2_0_case_cmp = ~result_fraction__2_1_case_cmp;
  assign eq_42956 = a_bexp__1 == high_exp;
  assign eq_42957 = a_fraction__1 == 23'h00_0000;
  assign eq_42958 = b_bexp__2 == high_exp;
  assign eq_42959 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign __systolic__hor_chans__1_2_has_sent_or_is_ready = systolic__hor_chans__1_2_load_en | __systolic__hor_chans__1_2_has_been_sent_reg;
  assign __systolic__vert_chans__2_1_has_sent_or_is_ready = systolic__vert_chans__2_1_load_en | __systolic__vert_chans__2_1_has_been_sent_reg;
  assign and_43286 = ~____state_3 & result_exponent__2_0_case_cmp;
  assign and_43287 = ~____state_3 & result_exponent__2_1_case_cmp;
  assign and_43288 = ~____state_3 & is_result_nan__1;
  assign and_43289 = and_43279 & result_fraction__2_0_case_cmp;
  assign and_43290 = and_43279 & result_fraction__2_1_case_cmp;
  assign fraction_shift__2 = 3'h3;
  assign p0_all_active_outputs_ready = __systolic__hor_chans__1_2_has_sent_or_is_ready & __systolic__vert_chans__2_1_has_sent_or_is_ready;
  assign ____state_1__next_value_predicates = {____state_3, and_43286, and_43287};
  assign ____state_2__next_value_predicates = {____state_3, and_43288, and_43289, and_43290};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_42910 | eq_42911;
  assign has_inf_arg = eq_42956 & eq_42957 | eq_42958 & eq_42959;
  assign and_reduce_42976 = &result_exp__1[7:0];
  assign rounded_fraction = {add_43221, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign one_hot_43300 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_43301 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_43302 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign result_sign__2 = priority_sel_1b_2way({add_43046[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign shrl_43291 = rounded_fraction >> fraction_shift__1;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign is_result_nan = ~(~eq_42956 | eq_42957) | ~(~eq_42958 | eq_42959) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign result_fraction__1 = shrl_43291[22:0];
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__1_1_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__1_1_reg[31:31];
  assign result_sign__4 = result_fraction__5_0_case_cmp & result_sign__3;
  assign and_43366 = ____state_3 & p1_stage_done;
  assign and_43367 = and_43286 & p1_stage_done;
  assign and_43368 = and_43287 & p1_stage_done;
  assign and_43375 = and_43288 & p1_stage_done;
  assign and_43376 = and_43289 & p1_stage_done;
  assign and_43377 = and_43290 & p1_stage_done;
  assign and_43383 = ~____state_3 & p1_stage_done;
  assign result_fraction__2 = result_fraction__1 & {23{result_fraction__2_0_case_cmp}};
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__1_1_valid_load_en = p0_load_en | systolic__hor_chans__1_1_valid_inv;
  assign systolic__vert_chans__1_1_valid_load_en = p0_load_en | systolic__vert_chans__1_1_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_43300[2] & and_43286 == one_hot_43300[1] & and_43287 == one_hot_43300[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_43301[3] & and_43288 == one_hot_43301[2] & and_43289 == one_hot_43301[1] & and_43290 == one_hot_43301[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_43302[1] & ____state_3 == one_hot_43302[0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_42976 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_42976 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_43370 = {and_43366, and_43367, and_43368};
  assign concat_43379 = {and_43366, and_43375, and_43376, and_43377};
  assign concat_43385 = {and_43383, and_43366};
  assign __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_2_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_valid_and_ready_txfr = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_load_en;
  assign __systolic__vert_chans__2_1_valid_and_ready_txfr = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_load_en;
  assign __systolic__result_chans__1_1_valid_and_all_active_outputs_ready = __systolic__result_chans__1_1_vld_buf & or_43807;
  assign __systolic__result_chans__1_1_valid_and_ready_txfr = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_load_en;
  assign result_exponent__2 = result_exponent__2_1_case_cmp ? high_exp : wide_exponent__2[7:0];
  assign result_fraction__5 = is_result_nan__1 ? nan_fraction : result_fraction__2;
  assign systolic__hor_chans__1_1_load_en = systolic__hor_chans__1_1_vld & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = systolic__vert_chans__1_1_vld & systolic__vert_chans__1_1_valid_load_en;
  assign or_43768 = ~p1_stage_done | ____state_1__at_most_one_next_value | rst;
  assign or_43770 = ~p1_stage_done | ____state_2__at_most_one_next_value | rst;
  assign or_43772 = ~p1_stage_done | ____state_3__at_most_one_next_value | rst;
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_43327 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_43371 = high_exp & {8{concat_43370[0]}} | wide_exponent__2[7:0] & {8{concat_43370[1]}} | 8'h00 & {8{concat_43370[2]}};
  assign or_43372 = and_43366 | and_43367 | and_43368;
  assign one_hot_sel_43380 = 23'h00_0000 & {23{concat_43379[0]}} | result_fraction__1 & {23{concat_43379[1]}} | nan_fraction & {23{concat_43379[2]}} | 23'h00_0000 & {23{concat_43379[3]}};
  assign or_43381 = and_43366 | and_43375 | and_43376 | and_43377;
  assign one_hot_sel_43386 = unexpand_for_next_value_1279_3_case_1 & concat_43385[0] | unexpand_for_next_value_1279_3_case_0 & concat_43385[1];
  assign or_43387 = and_43383 | and_43366;
  assign __systolic__hor_chans__1_2_not_stage_load = ~__systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_has_been_sent_reg_load_en = __systolic__hor_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_1_has_been_sent_reg_load_en = __systolic__vert_chans__2_1_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_not_stage_load = ~__systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_has_been_sent_reg_load_en = __systolic__result_chans__1_1_valid_and_ready_txfr | __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign new_accum = {result_sign__4, result_exponent__2, result_fraction__5};
  always @ (posedge clk) begin
    p0_result_exp__4 <= p0_load_en ? result_exp__4 : p0_result_exp__4;
    p0_prod_bexpnot <= p0_load_en ? prod_bexpnot : p0_prod_bexpnot;
    p0_result_fraction__4 <= p0_load_en ? result_fraction__4 : p0_result_fraction__4;
    p0_result_sign__1 <= p0_load_en ? result_sign__1 : p0_result_sign__1;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p0_valid <= 1'h0;
      __systolic__hor_chans__1_2_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__2_1_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__1_1_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_1_reg <= __systolic__hor_chans__1_1_reg_init;
      __systolic__hor_chans__1_1_valid_reg <= 1'h0;
      __systolic__vert_chans__1_1_reg <= __systolic__vert_chans__1_1_reg_init;
      __systolic__vert_chans__1_1_valid_reg <= 1'h0;
      __systolic__hor_chans__1_2_reg <= __systolic__hor_chans__1_2_reg_init;
      __systolic__hor_chans__1_2_valid_reg <= 1'h0;
      __systolic__vert_chans__2_1_reg <= __systolic__vert_chans__2_1_reg_init;
      __systolic__vert_chans__2_1_valid_reg <= 1'h0;
      __systolic__result_chans__1_1_reg <= __systolic__result_chans__1_1_reg_init;
      __systolic__result_chans__1_1_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_43372 ? one_hot_sel_43371 : ____state_1;
      ____state_2 <= or_43381 ? one_hot_sel_43380 : ____state_2;
      ____state_0 <= p1_stage_done ? nor_43327 : ____state_0;
      ____state_3 <= or_43387 ? one_hot_sel_43386 : ____state_3;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      __systolic__hor_chans__1_2_has_been_sent_reg <= __systolic__hor_chans__1_2_has_been_sent_reg_load_en ? __systolic__hor_chans__1_2_not_stage_load : __systolic__hor_chans__1_2_has_been_sent_reg;
      __systolic__vert_chans__2_1_has_been_sent_reg <= __systolic__vert_chans__2_1_has_been_sent_reg_load_en ? __systolic__hor_chans__1_2_not_stage_load : __systolic__vert_chans__2_1_has_been_sent_reg;
      __systolic__result_chans__1_1_has_been_sent_reg <= __systolic__result_chans__1_1_has_been_sent_reg_load_en ? __systolic__result_chans__1_1_not_stage_load : __systolic__result_chans__1_1_has_been_sent_reg;
      __systolic__hor_chans__1_1_reg <= systolic__hor_chans__1_1_load_en ? systolic__hor_chans__1_1 : __systolic__hor_chans__1_1_reg;
      __systolic__hor_chans__1_1_valid_reg <= systolic__hor_chans__1_1_valid_load_en ? systolic__hor_chans__1_1_vld : __systolic__hor_chans__1_1_valid_reg;
      __systolic__vert_chans__1_1_reg <= systolic__vert_chans__1_1_load_en ? systolic__vert_chans__1_1 : __systolic__vert_chans__1_1_reg;
      __systolic__vert_chans__1_1_valid_reg <= systolic__vert_chans__1_1_valid_load_en ? systolic__vert_chans__1_1_vld : __systolic__vert_chans__1_1_valid_reg;
      __systolic__hor_chans__1_2_reg <= systolic__hor_chans__1_2_load_en ? __systolic__hor_chans__1_1_reg : __systolic__hor_chans__1_2_reg;
      __systolic__hor_chans__1_2_valid_reg <= systolic__hor_chans__1_2_valid_load_en ? __systolic__hor_chans__1_2_valid_and_not_has_been_sent : __systolic__hor_chans__1_2_valid_reg;
      __systolic__vert_chans__2_1_reg <= systolic__vert_chans__2_1_load_en ? __systolic__vert_chans__1_1_reg : __systolic__vert_chans__2_1_reg;
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
  wire instantiation_output_43491;
  wire instantiation_output_43497;
  wire [31:0] instantiation_output_43502;
  wire instantiation_output_43503;
  wire instantiation_output_43536;
  wire [31:0] instantiation_output_43541;
  wire instantiation_output_43542;
  wire instantiation_output_43575;
  wire [31:0] instantiation_output_43579[0:1][0:1];
  wire instantiation_output_43580;
  wire instantiation_output_43594;
  wire instantiation_output_43607;
  wire instantiation_output_43620;
  wire instantiation_output_43633;
  wire [31:0] instantiation_output_43638;
  wire instantiation_output_43639;
  wire [31:0] instantiation_output_43651;
  wire instantiation_output_43652;
  wire instantiation_output_43698;
  wire instantiation_output_43711;
  wire instantiation_output_43510;
  wire [31:0] instantiation_output_43515;
  wire instantiation_output_43516;
  wire [31:0] instantiation_output_43586;
  wire instantiation_output_43587;
  wire instantiation_output_43646;
  wire [31:0] instantiation_output_43664;
  wire instantiation_output_43665;
  wire instantiation_output_43523;
  wire [31:0] instantiation_output_43528;
  wire instantiation_output_43529;
  wire [31:0] instantiation_output_43599;
  wire instantiation_output_43600;
  wire instantiation_output_43659;
  wire [31:0] instantiation_output_43677;
  wire instantiation_output_43678;
  wire instantiation_output_43549;
  wire [31:0] instantiation_output_43554;
  wire instantiation_output_43555;
  wire [31:0] instantiation_output_43612;
  wire instantiation_output_43613;
  wire instantiation_output_43672;
  wire [31:0] instantiation_output_43690;
  wire instantiation_output_43691;
  wire instantiation_output_43562;
  wire [31:0] instantiation_output_43567;
  wire instantiation_output_43568;
  wire [31:0] instantiation_output_43625;
  wire instantiation_output_43626;
  wire instantiation_output_43685;
  wire [31:0] instantiation_output_43703;
  wire instantiation_output_43704;
  wire instantiation_output_43504;
  wire [31:0] instantiation_output_43508;
  wire instantiation_output_43509;
  wire instantiation_output_43517;
  wire [31:0] instantiation_output_43521;
  wire instantiation_output_43522;
  wire instantiation_output_43530;
  wire [31:0] instantiation_output_43534;
  wire instantiation_output_43535;
  wire instantiation_output_43543;
  wire [31:0] instantiation_output_43547;
  wire instantiation_output_43548;
  wire instantiation_output_43556;
  wire [31:0] instantiation_output_43560;
  wire instantiation_output_43561;
  wire instantiation_output_43569;
  wire [31:0] instantiation_output_43573;
  wire instantiation_output_43574;
  wire instantiation_output_43588;
  wire [31:0] instantiation_output_43592;
  wire instantiation_output_43593;
  wire instantiation_output_43601;
  wire [31:0] instantiation_output_43605;
  wire instantiation_output_43606;
  wire instantiation_output_43614;
  wire [31:0] instantiation_output_43618;
  wire instantiation_output_43619;
  wire instantiation_output_43627;
  wire [31:0] instantiation_output_43631;
  wire instantiation_output_43632;
  wire instantiation_output_43640;
  wire [31:0] instantiation_output_43644;
  wire instantiation_output_43645;
  wire instantiation_output_43653;
  wire [31:0] instantiation_output_43657;
  wire instantiation_output_43658;
  wire instantiation_output_43666;
  wire [31:0] instantiation_output_43670;
  wire instantiation_output_43671;
  wire instantiation_output_43679;
  wire [31:0] instantiation_output_43683;
  wire instantiation_output_43684;
  wire instantiation_output_43692;
  wire [31:0] instantiation_output_43696;
  wire instantiation_output_43697;
  wire instantiation_output_43705;
  wire [31:0] instantiation_output_43709;
  wire instantiation_output_43710;

  // ===== Instantiations
  __systolic__SystolicArray_0_next__1 __systolic__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .systolic__arg0({{systolic__arg0_unflattened[1][1], systolic__arg0_unflattened[1][0]}, {systolic__arg0_unflattened[0][1], systolic__arg0_unflattened[0][0]}}),
    .systolic__arg0_vld(systolic__arg0_vld),
    .systolic__arg1({{systolic__arg1_unflattened[1][1], systolic__arg1_unflattened[1][0]}, {systolic__arg1_unflattened[0][1], systolic__arg1_unflattened[0][0]}}),
    .systolic__arg1_vld(systolic__arg1_vld),
    .systolic__hor_chans__0_0_rdy(instantiation_output_43504),
    .systolic__hor_chans__0_2(instantiation_output_43534),
    .systolic__hor_chans__0_2_vld(instantiation_output_43535),
    .systolic__hor_chans__1_0_rdy(instantiation_output_43543),
    .systolic__hor_chans__1_2(instantiation_output_43573),
    .systolic__hor_chans__1_2_vld(instantiation_output_43574),
    .systolic__out0_rdy(systolic__out0_rdy),
    .systolic__result_chans__0_0(instantiation_output_43592),
    .systolic__result_chans__0_0_vld(instantiation_output_43593),
    .systolic__result_chans__0_1(instantiation_output_43605),
    .systolic__result_chans__0_1_vld(instantiation_output_43606),
    .systolic__result_chans__1_0(instantiation_output_43618),
    .systolic__result_chans__1_0_vld(instantiation_output_43619),
    .systolic__result_chans__1_1(instantiation_output_43631),
    .systolic__result_chans__1_1_vld(instantiation_output_43632),
    .systolic__vert_chans__0_0_rdy(instantiation_output_43640),
    .systolic__vert_chans__0_1_rdy(instantiation_output_43653),
    .systolic__vert_chans__2_0(instantiation_output_43696),
    .systolic__vert_chans__2_0_vld(instantiation_output_43697),
    .systolic__vert_chans__2_1(instantiation_output_43709),
    .systolic__vert_chans__2_1_vld(instantiation_output_43710),
    .systolic__arg0_rdy(instantiation_output_43491),
    .systolic__arg1_rdy(instantiation_output_43497),
    .systolic__hor_chans__0_0(instantiation_output_43502),
    .systolic__hor_chans__0_0_vld(instantiation_output_43503),
    .systolic__hor_chans__0_2_rdy(instantiation_output_43536),
    .systolic__hor_chans__1_0(instantiation_output_43541),
    .systolic__hor_chans__1_0_vld(instantiation_output_43542),
    .systolic__hor_chans__1_2_rdy(instantiation_output_43575),
    .systolic__out0({{instantiation_output_43579[1][1], instantiation_output_43579[1][0]}, {instantiation_output_43579[0][1], instantiation_output_43579[0][0]}}),
    .systolic__out0_vld(instantiation_output_43580),
    .systolic__result_chans__0_0_rdy(instantiation_output_43594),
    .systolic__result_chans__0_1_rdy(instantiation_output_43607),
    .systolic__result_chans__1_0_rdy(instantiation_output_43620),
    .systolic__result_chans__1_1_rdy(instantiation_output_43633),
    .systolic__vert_chans__0_0(instantiation_output_43638),
    .systolic__vert_chans__0_0_vld(instantiation_output_43639),
    .systolic__vert_chans__0_1(instantiation_output_43651),
    .systolic__vert_chans__0_1_vld(instantiation_output_43652),
    .systolic__vert_chans__2_0_rdy(instantiation_output_43698),
    .systolic__vert_chans__2_1_rdy(instantiation_output_43711),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_0_next __systolic__SystolicArray__PE_0_next_inst1 (
    .rst(rst),
    .systolic__hor_chans__0_0(instantiation_output_43508),
    .systolic__hor_chans__0_0_vld(instantiation_output_43509),
    .systolic__hor_chans__0_1_rdy(instantiation_output_43517),
    .systolic__result_chans__0_0_rdy(instantiation_output_43588),
    .systolic__vert_chans__0_0(instantiation_output_43644),
    .systolic__vert_chans__0_0_vld(instantiation_output_43645),
    .systolic__vert_chans__1_0_rdy(instantiation_output_43666),
    .systolic__hor_chans__0_0_rdy(instantiation_output_43510),
    .systolic__hor_chans__0_1(instantiation_output_43515),
    .systolic__hor_chans__0_1_vld(instantiation_output_43516),
    .systolic__result_chans__0_0(instantiation_output_43586),
    .systolic__result_chans__0_0_vld(instantiation_output_43587),
    .systolic__vert_chans__0_0_rdy(instantiation_output_43646),
    .systolic__vert_chans__1_0(instantiation_output_43664),
    .systolic__vert_chans__1_0_vld(instantiation_output_43665),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_1_next __systolic__SystolicArray__PE_1_next_inst2 (
    .rst(rst),
    .systolic__hor_chans__0_1(instantiation_output_43521),
    .systolic__hor_chans__0_1_vld(instantiation_output_43522),
    .systolic__hor_chans__0_2_rdy(instantiation_output_43530),
    .systolic__result_chans__0_1_rdy(instantiation_output_43601),
    .systolic__vert_chans__0_1(instantiation_output_43657),
    .systolic__vert_chans__0_1_vld(instantiation_output_43658),
    .systolic__vert_chans__1_1_rdy(instantiation_output_43679),
    .systolic__hor_chans__0_1_rdy(instantiation_output_43523),
    .systolic__hor_chans__0_2(instantiation_output_43528),
    .systolic__hor_chans__0_2_vld(instantiation_output_43529),
    .systolic__result_chans__0_1(instantiation_output_43599),
    .systolic__result_chans__0_1_vld(instantiation_output_43600),
    .systolic__vert_chans__0_1_rdy(instantiation_output_43659),
    .systolic__vert_chans__1_1(instantiation_output_43677),
    .systolic__vert_chans__1_1_vld(instantiation_output_43678),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_2_next __systolic__SystolicArray__PE_2_next_inst3 (
    .rst(rst),
    .systolic__hor_chans__1_0(instantiation_output_43547),
    .systolic__hor_chans__1_0_vld(instantiation_output_43548),
    .systolic__hor_chans__1_1_rdy(instantiation_output_43556),
    .systolic__result_chans__1_0_rdy(instantiation_output_43614),
    .systolic__vert_chans__1_0(instantiation_output_43670),
    .systolic__vert_chans__1_0_vld(instantiation_output_43671),
    .systolic__vert_chans__2_0_rdy(instantiation_output_43692),
    .systolic__hor_chans__1_0_rdy(instantiation_output_43549),
    .systolic__hor_chans__1_1(instantiation_output_43554),
    .systolic__hor_chans__1_1_vld(instantiation_output_43555),
    .systolic__result_chans__1_0(instantiation_output_43612),
    .systolic__result_chans__1_0_vld(instantiation_output_43613),
    .systolic__vert_chans__1_0_rdy(instantiation_output_43672),
    .systolic__vert_chans__2_0(instantiation_output_43690),
    .systolic__vert_chans__2_0_vld(instantiation_output_43691),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_3_next __systolic__SystolicArray__PE_3_next_inst4 (
    .rst(rst),
    .systolic__hor_chans__1_1(instantiation_output_43560),
    .systolic__hor_chans__1_1_vld(instantiation_output_43561),
    .systolic__hor_chans__1_2_rdy(instantiation_output_43569),
    .systolic__result_chans__1_1_rdy(instantiation_output_43627),
    .systolic__vert_chans__1_1(instantiation_output_43683),
    .systolic__vert_chans__1_1_vld(instantiation_output_43684),
    .systolic__vert_chans__2_1_rdy(instantiation_output_43705),
    .systolic__hor_chans__1_1_rdy(instantiation_output_43562),
    .systolic__hor_chans__1_2(instantiation_output_43567),
    .systolic__hor_chans__1_2_vld(instantiation_output_43568),
    .systolic__result_chans__1_1(instantiation_output_43625),
    .systolic__result_chans__1_1_vld(instantiation_output_43626),
    .systolic__vert_chans__1_1_rdy(instantiation_output_43685),
    .systolic__vert_chans__2_1(instantiation_output_43703),
    .systolic__vert_chans__2_1_vld(instantiation_output_43704),
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
    .push_data(instantiation_output_43502),
    .push_valid(instantiation_output_43503),
    .pop_ready(instantiation_output_43510),
    .push_ready(instantiation_output_43504),
    .pop_data(instantiation_output_43508),
    .pop_valid(instantiation_output_43509)
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
    .push_data(instantiation_output_43515),
    .push_valid(instantiation_output_43516),
    .pop_ready(instantiation_output_43523),
    .push_ready(instantiation_output_43517),
    .pop_data(instantiation_output_43521),
    .pop_valid(instantiation_output_43522)
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
    .push_data(instantiation_output_43528),
    .push_valid(instantiation_output_43529),
    .pop_ready(instantiation_output_43536),
    .push_ready(instantiation_output_43530),
    .pop_data(instantiation_output_43534),
    .pop_valid(instantiation_output_43535)
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
    .push_data(instantiation_output_43541),
    .push_valid(instantiation_output_43542),
    .pop_ready(instantiation_output_43549),
    .push_ready(instantiation_output_43543),
    .pop_data(instantiation_output_43547),
    .pop_valid(instantiation_output_43548)
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
    .push_data(instantiation_output_43554),
    .push_valid(instantiation_output_43555),
    .pop_ready(instantiation_output_43562),
    .push_ready(instantiation_output_43556),
    .pop_data(instantiation_output_43560),
    .pop_valid(instantiation_output_43561)
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
    .push_data(instantiation_output_43567),
    .push_valid(instantiation_output_43568),
    .pop_ready(instantiation_output_43575),
    .push_ready(instantiation_output_43569),
    .pop_data(instantiation_output_43573),
    .pop_valid(instantiation_output_43574)
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
    .push_data(instantiation_output_43586),
    .push_valid(instantiation_output_43587),
    .pop_ready(instantiation_output_43594),
    .push_ready(instantiation_output_43588),
    .pop_data(instantiation_output_43592),
    .pop_valid(instantiation_output_43593)
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
    .push_data(instantiation_output_43599),
    .push_valid(instantiation_output_43600),
    .pop_ready(instantiation_output_43607),
    .push_ready(instantiation_output_43601),
    .pop_data(instantiation_output_43605),
    .pop_valid(instantiation_output_43606)
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
    .push_data(instantiation_output_43612),
    .push_valid(instantiation_output_43613),
    .pop_ready(instantiation_output_43620),
    .push_ready(instantiation_output_43614),
    .pop_data(instantiation_output_43618),
    .pop_valid(instantiation_output_43619)
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
    .push_data(instantiation_output_43625),
    .push_valid(instantiation_output_43626),
    .pop_ready(instantiation_output_43633),
    .push_ready(instantiation_output_43627),
    .pop_data(instantiation_output_43631),
    .pop_valid(instantiation_output_43632)
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
    .push_data(instantiation_output_43638),
    .push_valid(instantiation_output_43639),
    .pop_ready(instantiation_output_43646),
    .push_ready(instantiation_output_43640),
    .pop_data(instantiation_output_43644),
    .pop_valid(instantiation_output_43645)
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
    .push_data(instantiation_output_43651),
    .push_valid(instantiation_output_43652),
    .pop_ready(instantiation_output_43659),
    .push_ready(instantiation_output_43653),
    .pop_data(instantiation_output_43657),
    .pop_valid(instantiation_output_43658)
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
    .push_data(instantiation_output_43664),
    .push_valid(instantiation_output_43665),
    .pop_ready(instantiation_output_43672),
    .push_ready(instantiation_output_43666),
    .pop_data(instantiation_output_43670),
    .pop_valid(instantiation_output_43671)
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
    .push_data(instantiation_output_43677),
    .push_valid(instantiation_output_43678),
    .pop_ready(instantiation_output_43685),
    .push_ready(instantiation_output_43679),
    .pop_data(instantiation_output_43683),
    .pop_valid(instantiation_output_43684)
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
    .push_data(instantiation_output_43690),
    .push_valid(instantiation_output_43691),
    .pop_ready(instantiation_output_43698),
    .push_ready(instantiation_output_43692),
    .pop_data(instantiation_output_43696),
    .pop_valid(instantiation_output_43697)
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
    .push_data(instantiation_output_43703),
    .push_valid(instantiation_output_43704),
    .pop_ready(instantiation_output_43711),
    .push_ready(instantiation_output_43705),
    .pop_data(instantiation_output_43709),
    .pop_valid(instantiation_output_43710)
  );
  assign systolic__arg0_rdy = instantiation_output_43491;
  assign systolic__arg1_rdy = instantiation_output_43497;
  assign systolic__out0 = {{instantiation_output_43579[1][1], instantiation_output_43579[1][0]}, {instantiation_output_43579[0][1], instantiation_output_43579[0][0]}};
  assign systolic__out0_vld = instantiation_output_43580;
endmodule
