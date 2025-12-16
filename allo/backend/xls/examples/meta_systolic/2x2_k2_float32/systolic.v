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
  wire [31:0] __systolic__hor_chans__0_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__1_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__arg0_reg_init[2][2];
  assign __systolic__arg0_reg_init = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] __systolic__arg1_reg_init[2][2];
  assign __systolic__arg1_reg_init = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] __systolic__result_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__0_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__1_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__out0_reg_init[2][2];
  assign __systolic__out0_reg_init = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] literal_40457[2][2];
  assign literal_40457 = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] literal_40461[2][2];
  assign literal_40461 = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] literal_40706 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_40679 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_40684 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_40689 = {1'h0, 8'h00, 23'h00_0000};
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
  reg p0_bit_slice_40418;
  reg p0_nor_40419;
  reg p0_eq_40420;
  reg p0_not_40421;
  reg [7:0] ____state_0_0_4;
  reg [22:0] ____state_0_0_5;
  reg [7:0] ____state_1_1_1;
  reg [22:0] ____state_1_1_2;
  reg [7:0] ____state_0_1_4;
  reg [22:0] ____state_0_1_5;
  reg [7:0] ____state_1_1_4;
  reg [22:0] ____state_1_1_5;
  reg [7:0] ____state_0_0_1;
  reg [22:0] ____state_0_0_2;
  reg [7:0] ____state_0_1_1;
  reg [22:0] ____state_0_1_2;
  reg [7:0] ____state_1_0_1;
  reg [22:0] ____state_1_0_2;
  reg [7:0] ____state_1_0_4;
  reg [22:0] ____state_1_0_5;
  reg p1_bit_slice_40418;
  reg p1_nor_40419;
  reg p1_tuple_index_40470;
  reg p1_tuple_index_40475;
  reg [7:0] p1_sel_40481;
  reg [22:0] p1_sel_40482;
  reg [7:0] p1_sel_40484;
  reg [22:0] p1_sel_40485;
  reg p1_tuple_index_40488;
  reg p1_tuple_index_40493;
  reg [7:0] p1_sel_40498;
  reg [22:0] p1_sel_40499;
  reg [7:0] p1_sel_40500;
  reg [22:0] p1_sel_40501;
  reg p1_eq_40420;
  reg p1_tuple_index_40506;
  reg p1_tuple_index_40507;
  reg p1_tuple_index_40508;
  reg p1_tuple_index_40509;
  reg ____state_0_0_3;
  reg ____state_1_1_0;
  reg ____state_0_1_3;
  reg ____state_1_1_3;
  reg ____state_0_0_0;
  reg ____state_0_1_0;
  reg ____state_1_0_0;
  reg ____state_1_0_3;
  reg p2_eq_40420;
  reg p3_eq_40420;
  reg [31:0] p3_c10;
  reg [31:0] p3_array_40696[2];
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
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
  reg [31:0] __systolic__arg0_reg[2][2];
  reg __systolic__arg0_valid_reg;
  reg [31:0] __systolic__arg1_reg[2][2];
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
  reg [31:0] __systolic__out0_reg[2][2];
  reg __systolic__out0_valid_reg;
  wire or_40729;
  wire __systolic__out0_vld_buf;
  wire __systolic__out0_not_has_been_sent;
  wire systolic__out0_valid_inv;
  wire __systolic__out0_valid_and_not_has_been_sent;
  wire systolic__out0_valid_load_en;
  wire systolic__out0_load_en;
  wire or_44119;
  wire p4_stage_done;
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
  wire eq_40420;
  wire p1_enable;
  wire p1_stage_done;
  wire not_40421;
  wire p1_data_enable;
  wire [1:0] ____state_2__next_value_predicates;
  wire p1_load_en;
  wire p1_not_valid;
  wire [2:0] one_hot_40423;
  wire [31:0] systolic__arg0_select[2][2];
  wire [31:0] systolic__arg1_select[2][2];
  wire p0_enable;
  wire [31:0] array_index_40466;
  wire [31:0] array_index_40502;
  wire [31:0] array_index_40483;
  wire [31:0] array_index_40503;
  wire [31:0] array_index_40504;
  wire [31:0] array_index_40505;
  wire [31:0] array_index_40467;
  wire [31:0] array_index_40486;
  wire and_40853;
  wire systolic__arg0_valid_inv;
  wire systolic__arg1_valid_inv;
  wire p0_load_en;
  wire systolic__hor_chans__0_2_valid_inv;
  wire systolic__hor_chans__1_2_valid_inv;
  wire and_40855;
  wire systolic__result_chans__0_0_valid_inv;
  wire systolic__result_chans__0_1_valid_inv;
  wire systolic__result_chans__1_0_valid_inv;
  wire systolic__result_chans__1_1_valid_inv;
  wire systolic__vert_chans__2_0_valid_inv;
  wire systolic__vert_chans__2_1_valid_inv;
  wire p0_stage_done;
  wire [7:0] tuple_index_40472;
  wire [22:0] tuple_index_40474;
  wire [7:0] tuple_index_40490;
  wire [22:0] tuple_index_40492;
  wire [7:0] tuple_index_40477;
  wire [22:0] tuple_index_40479;
  wire [7:0] tuple_index_40495;
  wire [22:0] tuple_index_40497;
  wire and_40842;
  wire and_40843;
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
  wire [31:0] systolic__result_chans__0_0_select;
  wire [31:0] systolic__result_chans__0_1_select;
  wire bit_slice_40418;
  wire [7:0] sign_ext_40527;
  wire [22:0] sign_ext_40529;
  wire [1:0] concat_40844;
  wire [1:0] unexpand_for_next_value_1155_2__4_case_1;
  wire [1:0] unexpand_for_next_value_1155_2__4_case_0;
  wire __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_0_valid_and_ready_txfr;
  wire __systolic__hor_chans__1_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_1_valid_and_ready_txfr;
  wire __systolic__out0_valid_and_all_active_outputs_ready;
  wire __systolic__out0_valid_and_ready_txfr;
  wire [31:0] array_40710[2];
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
  wire or_44089;
  wire [31:0] systolic__result_chans__1_0_select;
  wire [31:0] array_40696[2];
  wire tuple_index_40470;
  wire tuple_index_40475;
  wire [7:0] sel_40481;
  wire [22:0] sel_40482;
  wire [7:0] sel_40484;
  wire [22:0] sel_40485;
  wire tuple_index_40488;
  wire tuple_index_40493;
  wire [7:0] sel_40498;
  wire [22:0] sel_40499;
  wire [7:0] sel_40500;
  wire [22:0] sel_40501;
  wire tuple_index_40506;
  wire tuple_index_40507;
  wire tuple_index_40508;
  wire tuple_index_40509;
  wire nor_40419;
  wire nor_40658;
  wire [7:0] and_40544;
  wire [22:0] and_40545;
  wire nor_40659;
  wire [7:0] and_40546;
  wire [22:0] and_40547;
  wire nor_40660;
  wire [7:0] and_40548;
  wire [22:0] and_40549;
  wire nor_40661;
  wire [7:0] and_40550;
  wire [22:0] and_40551;
  wire nor_40662;
  wire [7:0] and_40552;
  wire [22:0] and_40553;
  wire nor_40663;
  wire [7:0] and_40554;
  wire [22:0] and_40555;
  wire nor_40664;
  wire [7:0] and_40556;
  wire [22:0] and_40557;
  wire nor_40665;
  wire [7:0] and_40558;
  wire [22:0] and_40559;
  wire [1:0] one_hot_sel_40845;
  wire or_40846;
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
  assign or_40729 = ~p3_eq_40420 | __systolic__result_chans__1_1_valid_reg;
  assign __systolic__out0_vld_buf = or_40729 & p3_valid & p3_eq_40420;
  assign __systolic__out0_not_has_been_sent = ~__systolic__out0_has_been_sent_reg;
  assign systolic__out0_valid_inv = ~__systolic__out0_valid_reg;
  assign __systolic__out0_valid_and_not_has_been_sent = __systolic__out0_vld_buf & __systolic__out0_not_has_been_sent;
  assign systolic__out0_valid_load_en = systolic__out0_rdy | systolic__out0_valid_inv;
  assign systolic__out0_load_en = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_valid_load_en;
  assign or_44119 = ~p3_eq_40420 | systolic__out0_load_en | __systolic__out0_has_been_sent_reg;
  assign p4_stage_done = p3_valid & or_40729 & or_44119;
  assign p4_not_valid = ~p3_valid;
  assign p3_all_active_inputs_valid = (~p2_eq_40420 | __systolic__result_chans__0_0_valid_reg) & (~p2_eq_40420 | __systolic__result_chans__0_1_valid_reg) & (~p2_eq_40420 | __systolic__result_chans__1_0_valid_reg);
  assign p3_enable = p4_stage_done | p4_not_valid;
  assign p3_stage_done = p2_valid & p3_all_active_inputs_valid;
  assign p3_data_enable = p3_enable & p3_stage_done;
  assign p3_load_en = p3_data_enable | rst;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_load_en | p3_not_valid;
  assign __systolic__hor_chans__0_0_vld_buf = p1_valid & p2_enable & ~p1_bit_slice_40418;
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
  assign p2_all_active_outputs_ready = (p1_bit_slice_40418 | systolic__hor_chans__0_0_load_en | __systolic__hor_chans__0_0_has_been_sent_reg) & (p1_bit_slice_40418 | systolic__vert_chans__0_0_load_en | __systolic__vert_chans__0_0_has_been_sent_reg) & (p1_bit_slice_40418 | systolic__hor_chans__1_0_load_en | __systolic__hor_chans__1_0_has_been_sent_reg) & (p1_bit_slice_40418 | systolic__vert_chans__0_1_load_en | __systolic__vert_chans__0_1_has_been_sent_reg);
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_all_active_inputs_valid = (~p0_nor_40419 | __systolic__arg0_valid_reg) & (~p0_nor_40419 | __systolic__arg1_valid_reg);
  assign eq_40420 = ____state_2 == 2'h2;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & p1_all_active_inputs_valid;
  assign not_40421 = ~eq_40420;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign ____state_2__next_value_predicates = {not_40421, eq_40420};
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_40423 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign systolic__arg0_select = p0_nor_40419 == 1'h0 ? literal_40457 : __systolic__arg0_reg;
  assign systolic__arg1_select = p0_nor_40419 == 1'h0 ? literal_40461 : __systolic__arg1_reg;
  assign p0_enable = p1_load_en | p1_not_valid;
  assign array_index_40466 = systolic__arg0_select[1'h0][1'h0];
  assign array_index_40502 = systolic__arg0_select[1'h0][1'h1];
  assign array_index_40483 = systolic__arg0_select[1'h1][1'h0];
  assign array_index_40503 = systolic__arg0_select[1'h1][1'h1];
  assign array_index_40504 = systolic__arg1_select[1'h1][1'h0];
  assign array_index_40505 = systolic__arg1_select[1'h1][1'h1];
  assign array_index_40467 = systolic__arg1_select[1'h0][1'h0];
  assign array_index_40486 = systolic__arg1_select[1'h0][1'h1];
  assign and_40853 = p1_load_en & p0_nor_40419;
  assign systolic__arg0_valid_inv = ~__systolic__arg0_valid_reg;
  assign systolic__arg1_valid_inv = ~__systolic__arg1_valid_reg;
  assign p0_load_en = p0_enable | rst;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign and_40855 = p3_load_en & p2_eq_40420;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign p0_stage_done = 1'h1;
  assign tuple_index_40472 = array_index_40466[30:23];
  assign tuple_index_40474 = array_index_40466[22:0];
  assign tuple_index_40490 = array_index_40483[30:23];
  assign tuple_index_40492 = array_index_40483[22:0];
  assign tuple_index_40477 = array_index_40467[30:23];
  assign tuple_index_40479 = array_index_40467[22:0];
  assign tuple_index_40495 = array_index_40486[30:23];
  assign tuple_index_40497 = array_index_40486[22:0];
  assign and_40842 = not_40421 & p0_enable;
  assign and_40843 = eq_40420 & p0_enable;
  assign systolic__result_chans__1_1_select = p3_eq_40420 ? __systolic__result_chans__1_1_reg : literal_40706;
  assign systolic__arg0_valid_load_en = and_40853 | systolic__arg0_valid_inv;
  assign systolic__arg1_valid_load_en = and_40853 | systolic__arg1_valid_inv;
  assign systolic__hor_chans__0_2_valid_load_en = p0_load_en | systolic__hor_chans__0_2_valid_inv;
  assign systolic__hor_chans__1_2_valid_load_en = p0_load_en | systolic__hor_chans__1_2_valid_inv;
  assign systolic__result_chans__0_0_valid_load_en = and_40855 | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_1_valid_load_en = and_40855 | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__1_0_valid_load_en = and_40855 | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_1_valid_load_en = p4_stage_done & p3_eq_40420 | systolic__result_chans__1_1_valid_inv;
  assign systolic__vert_chans__2_0_valid_load_en = p0_load_en | systolic__vert_chans__2_0_valid_inv;
  assign systolic__vert_chans__2_1_valid_load_en = p0_load_en | systolic__vert_chans__2_1_valid_inv;
  assign ____state_2__at_most_one_next_value = not_40421 == one_hot_40423[1] & eq_40420 == one_hot_40423[0];
  assign systolic__result_chans__0_0_select = p2_eq_40420 ? __systolic__result_chans__0_0_reg : literal_40679;
  assign systolic__result_chans__0_1_select = p2_eq_40420 ? __systolic__result_chans__0_1_reg : literal_40684;
  assign bit_slice_40418 = ____state_2[1];
  assign sign_ext_40527 = {8{p0_not_40421}};
  assign sign_ext_40529 = {23{p0_not_40421}};
  assign concat_40844 = {and_40842, and_40843};
  assign unexpand_for_next_value_1155_2__4_case_1 = 2'h0;
  assign unexpand_for_next_value_1155_2__4_case_0 = ____state_2 + 2'h1;
  assign __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_0_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_valid_and_ready_txfr = __systolic__hor_chans__0_0_valid_and_not_has_been_sent & systolic__hor_chans__0_0_load_en;
  assign __systolic__vert_chans__0_0_valid_and_ready_txfr = __systolic__vert_chans__0_0_valid_and_not_has_been_sent & systolic__vert_chans__0_0_load_en;
  assign __systolic__hor_chans__1_0_valid_and_ready_txfr = __systolic__hor_chans__1_0_valid_and_not_has_been_sent & systolic__hor_chans__1_0_load_en;
  assign __systolic__vert_chans__0_1_valid_and_ready_txfr = __systolic__vert_chans__0_1_valid_and_not_has_been_sent & systolic__vert_chans__0_1_load_en;
  assign __systolic__out0_valid_and_all_active_outputs_ready = __systolic__out0_vld_buf & or_44119;
  assign __systolic__out0_valid_and_ready_txfr = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_load_en;
  assign array_40710[0] = p3_c10;
  assign array_40710[1] = systolic__result_chans__1_1_select;
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
  assign or_44089 = ~p0_stage_done | ____state_2__at_most_one_next_value | rst;
  assign systolic__result_chans__1_0_select = p2_eq_40420 ? __systolic__result_chans__1_0_reg : literal_40689;
  assign array_40696[0] = systolic__result_chans__0_0_select;
  assign array_40696[1] = systolic__result_chans__0_1_select;
  assign tuple_index_40470 = array_index_40466[31:31];
  assign tuple_index_40475 = array_index_40467[31:31];
  assign sel_40481 = p0_nor_40419 ? tuple_index_40472 : ____state_0_0_4;
  assign sel_40482 = p0_nor_40419 ? tuple_index_40474 : ____state_0_0_5;
  assign sel_40484 = p0_nor_40419 ? tuple_index_40477 : ____state_1_1_1;
  assign sel_40485 = p0_nor_40419 ? tuple_index_40479 : ____state_1_1_2;
  assign tuple_index_40488 = array_index_40483[31:31];
  assign tuple_index_40493 = array_index_40486[31:31];
  assign sel_40498 = p0_nor_40419 ? tuple_index_40490 : ____state_0_1_4;
  assign sel_40499 = p0_nor_40419 ? tuple_index_40492 : ____state_0_1_5;
  assign sel_40500 = p0_nor_40419 ? tuple_index_40495 : ____state_1_1_4;
  assign sel_40501 = p0_nor_40419 ? tuple_index_40497 : ____state_1_1_5;
  assign tuple_index_40506 = array_index_40502[31:31];
  assign tuple_index_40507 = array_index_40503[31:31];
  assign tuple_index_40508 = array_index_40504[31:31];
  assign tuple_index_40509 = array_index_40505[31:31];
  assign nor_40419 = ~(____state_2[0] | bit_slice_40418);
  assign nor_40658 = ~(p1_eq_40420 | ~(p1_nor_40419 ? p1_tuple_index_40470 : ____state_0_0_0));
  assign and_40544 = (p0_nor_40419 ? tuple_index_40472 : ____state_0_0_1) & sign_ext_40527;
  assign and_40545 = (p0_nor_40419 ? tuple_index_40474 : ____state_0_0_2) & sign_ext_40529;
  assign nor_40659 = ~(p1_eq_40420 | ~(p1_nor_40419 ? p1_tuple_index_40506 : ____state_0_0_3));
  assign and_40546 = (p0_nor_40419 ? array_index_40502[30:23] : ____state_0_0_4) & sign_ext_40527;
  assign and_40547 = (p0_nor_40419 ? array_index_40502[22:0] : ____state_0_0_5) & sign_ext_40529;
  assign nor_40660 = ~(p1_eq_40420 | ~(p1_nor_40419 ? p1_tuple_index_40488 : ____state_0_1_0));
  assign and_40548 = (p0_nor_40419 ? tuple_index_40490 : ____state_0_1_1) & sign_ext_40527;
  assign and_40549 = (p0_nor_40419 ? tuple_index_40492 : ____state_0_1_2) & sign_ext_40529;
  assign nor_40661 = ~(p1_eq_40420 | ~(p1_nor_40419 ? p1_tuple_index_40507 : ____state_0_1_3));
  assign and_40550 = (p0_nor_40419 ? array_index_40503[30:23] : ____state_0_1_4) & sign_ext_40527;
  assign and_40551 = (p0_nor_40419 ? array_index_40503[22:0] : ____state_0_1_5) & sign_ext_40529;
  assign nor_40662 = ~(p1_eq_40420 | ~(p1_nor_40419 ? p1_tuple_index_40508 : ____state_1_1_0));
  assign and_40552 = (p0_nor_40419 ? array_index_40504[30:23] : ____state_1_1_1) & sign_ext_40527;
  assign and_40553 = (p0_nor_40419 ? array_index_40504[22:0] : ____state_1_1_2) & sign_ext_40529;
  assign nor_40663 = ~(p1_eq_40420 | ~(p1_nor_40419 ? p1_tuple_index_40509 : ____state_1_1_3));
  assign and_40554 = (p0_nor_40419 ? array_index_40505[30:23] : ____state_1_1_4) & sign_ext_40527;
  assign and_40555 = (p0_nor_40419 ? array_index_40505[22:0] : ____state_1_1_5) & sign_ext_40529;
  assign nor_40664 = ~(p1_eq_40420 | ~(p1_nor_40419 ? p1_tuple_index_40475 : ____state_1_0_0));
  assign and_40556 = (p0_nor_40419 ? tuple_index_40477 : ____state_1_0_1) & sign_ext_40527;
  assign and_40557 = (p0_nor_40419 ? tuple_index_40479 : ____state_1_0_2) & sign_ext_40529;
  assign nor_40665 = ~(p1_eq_40420 | ~(p1_nor_40419 ? p1_tuple_index_40493 : ____state_1_0_3));
  assign and_40558 = (p0_nor_40419 ? tuple_index_40495 : ____state_1_0_4) & sign_ext_40527;
  assign and_40559 = (p0_nor_40419 ? tuple_index_40497 : ____state_1_0_5) & sign_ext_40529;
  assign one_hot_sel_40845 = unexpand_for_next_value_1155_2__4_case_1 & {2{concat_40844[0]}} | unexpand_for_next_value_1155_2__4_case_0 & {2{concat_40844[1]}};
  assign or_40846 = and_40842 | and_40843;
  assign __systolic__hor_chans__0_0_not_stage_load = ~__systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_has_been_sent_reg_load_en = __systolic__hor_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_0_has_been_sent_reg_load_en = __systolic__vert_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_0_has_been_sent_reg_load_en = __systolic__hor_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_1_has_been_sent_reg_load_en = __systolic__vert_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_not_stage_load = ~__systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_has_been_sent_reg_load_en = __systolic__out0_valid_and_ready_txfr | __systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_buf = {p1_nor_40419 ? p1_tuple_index_40470 : ____state_0_0_3, p1_sel_40481, p1_sel_40482};
  assign __systolic__vert_chans__0_0_buf = {p1_nor_40419 ? p1_tuple_index_40475 : ____state_1_1_0, p1_sel_40484, p1_sel_40485};
  assign __systolic__hor_chans__1_0_buf = {p1_nor_40419 ? p1_tuple_index_40488 : ____state_0_1_3, p1_sel_40498, p1_sel_40499};
  assign __systolic__vert_chans__0_1_buf = {p1_nor_40419 ? p1_tuple_index_40493 : ____state_1_1_3, p1_sel_40500, p1_sel_40501};
  assign c[0] = p3_array_40696;
  assign c[1] = array_40710;
  always_ff @ (posedge clk) begin
    p0_bit_slice_40418 <= p0_load_en ? bit_slice_40418 : p0_bit_slice_40418;
    p0_nor_40419 <= p0_load_en ? nor_40419 : p0_nor_40419;
    p0_eq_40420 <= p0_load_en ? eq_40420 : p0_eq_40420;
    p0_not_40421 <= p0_load_en ? not_40421 : p0_not_40421;
    p1_bit_slice_40418 <= p1_load_en ? p0_bit_slice_40418 : p1_bit_slice_40418;
    p1_nor_40419 <= p1_load_en ? p0_nor_40419 : p1_nor_40419;
    p1_tuple_index_40470 <= p1_load_en ? tuple_index_40470 : p1_tuple_index_40470;
    p1_tuple_index_40475 <= p1_load_en ? tuple_index_40475 : p1_tuple_index_40475;
    p1_sel_40481 <= p1_load_en ? sel_40481 : p1_sel_40481;
    p1_sel_40482 <= p1_load_en ? sel_40482 : p1_sel_40482;
    p1_sel_40484 <= p1_load_en ? sel_40484 : p1_sel_40484;
    p1_sel_40485 <= p1_load_en ? sel_40485 : p1_sel_40485;
    p1_tuple_index_40488 <= p1_load_en ? tuple_index_40488 : p1_tuple_index_40488;
    p1_tuple_index_40493 <= p1_load_en ? tuple_index_40493 : p1_tuple_index_40493;
    p1_sel_40498 <= p1_load_en ? sel_40498 : p1_sel_40498;
    p1_sel_40499 <= p1_load_en ? sel_40499 : p1_sel_40499;
    p1_sel_40500 <= p1_load_en ? sel_40500 : p1_sel_40500;
    p1_sel_40501 <= p1_load_en ? sel_40501 : p1_sel_40501;
    p1_eq_40420 <= p1_load_en ? p0_eq_40420 : p1_eq_40420;
    p1_tuple_index_40506 <= p1_load_en ? tuple_index_40506 : p1_tuple_index_40506;
    p1_tuple_index_40507 <= p1_load_en ? tuple_index_40507 : p1_tuple_index_40507;
    p1_tuple_index_40508 <= p1_load_en ? tuple_index_40508 : p1_tuple_index_40508;
    p1_tuple_index_40509 <= p1_load_en ? tuple_index_40509 : p1_tuple_index_40509;
    p2_eq_40420 <= p2_load_en ? p1_eq_40420 : p2_eq_40420;
    p3_eq_40420 <= p3_load_en ? p2_eq_40420 : p3_eq_40420;
    p3_c10 <= p3_load_en ? systolic__result_chans__1_0_select : p3_c10;
    p3_array_40696 <= p3_load_en ? array_40696 : p3_array_40696;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_2 <= 2'h0;
      ____state_0_0_4 <= 8'h00;
      ____state_0_0_5 <= 23'h00_0000;
      ____state_1_1_1 <= 8'h00;
      ____state_1_1_2 <= 23'h00_0000;
      ____state_0_1_4 <= 8'h00;
      ____state_0_1_5 <= 23'h00_0000;
      ____state_1_1_4 <= 8'h00;
      ____state_1_1_5 <= 23'h00_0000;
      ____state_0_0_1 <= 8'h00;
      ____state_0_0_2 <= 23'h00_0000;
      ____state_0_1_1 <= 8'h00;
      ____state_0_1_2 <= 23'h00_0000;
      ____state_1_0_1 <= 8'h00;
      ____state_1_0_2 <= 23'h00_0000;
      ____state_1_0_4 <= 8'h00;
      ____state_1_0_5 <= 23'h00_0000;
      ____state_0_0_3 <= 1'h0;
      ____state_1_1_0 <= 1'h0;
      ____state_0_1_3 <= 1'h0;
      ____state_1_1_3 <= 1'h0;
      ____state_0_0_0 <= 1'h0;
      ____state_0_1_0 <= 1'h0;
      ____state_1_0_0 <= 1'h0;
      ____state_1_0_3 <= 1'h0;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_1_has_been_sent_reg <= 1'h0;
      __systolic__out0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_2_reg <= __systolic__hor_chans__0_2_reg_init;
      __systolic__hor_chans__0_2_valid_reg <= 1'h0;
      __systolic__hor_chans__1_2_reg <= __systolic__hor_chans__1_2_reg_init;
      __systolic__hor_chans__1_2_valid_reg <= 1'h0;
      __systolic__vert_chans__2_0_reg <= __systolic__vert_chans__2_0_reg_init;
      __systolic__vert_chans__2_0_valid_reg <= 1'h0;
      __systolic__vert_chans__2_1_reg <= __systolic__vert_chans__2_1_reg_init;
      __systolic__vert_chans__2_1_valid_reg <= 1'h0;
      __systolic__arg0_reg <= __systolic__arg0_reg_init;
      __systolic__arg0_valid_reg <= 1'h0;
      __systolic__arg1_reg <= __systolic__arg1_reg_init;
      __systolic__arg1_valid_reg <= 1'h0;
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
      __systolic__out0_reg <= __systolic__out0_reg_init;
      __systolic__out0_valid_reg <= 1'h0;
    end else begin
      ____state_2 <= or_40846 ? one_hot_sel_40845 : ____state_2;
      ____state_0_0_4 <= p1_data_enable ? and_40546 : ____state_0_0_4;
      ____state_0_0_5 <= p1_data_enable ? and_40547 : ____state_0_0_5;
      ____state_1_1_1 <= p1_data_enable ? and_40552 : ____state_1_1_1;
      ____state_1_1_2 <= p1_data_enable ? and_40553 : ____state_1_1_2;
      ____state_0_1_4 <= p1_data_enable ? and_40550 : ____state_0_1_4;
      ____state_0_1_5 <= p1_data_enable ? and_40551 : ____state_0_1_5;
      ____state_1_1_4 <= p1_data_enable ? and_40554 : ____state_1_1_4;
      ____state_1_1_5 <= p1_data_enable ? and_40555 : ____state_1_1_5;
      ____state_0_0_1 <= p1_data_enable ? and_40544 : ____state_0_0_1;
      ____state_0_0_2 <= p1_data_enable ? and_40545 : ____state_0_0_2;
      ____state_0_1_1 <= p1_data_enable ? and_40548 : ____state_0_1_1;
      ____state_0_1_2 <= p1_data_enable ? and_40549 : ____state_0_1_2;
      ____state_1_0_1 <= p1_data_enable ? and_40556 : ____state_1_0_1;
      ____state_1_0_2 <= p1_data_enable ? and_40557 : ____state_1_0_2;
      ____state_1_0_4 <= p1_data_enable ? and_40558 : ____state_1_0_4;
      ____state_1_0_5 <= p1_data_enable ? and_40559 : ____state_1_0_5;
      ____state_0_0_3 <= p2_data_enable ? nor_40659 : ____state_0_0_3;
      ____state_1_1_0 <= p2_data_enable ? nor_40662 : ____state_1_1_0;
      ____state_0_1_3 <= p2_data_enable ? nor_40661 : ____state_0_1_3;
      ____state_1_1_3 <= p2_data_enable ? nor_40663 : ____state_1_1_3;
      ____state_0_0_0 <= p2_data_enable ? nor_40658 : ____state_0_0_0;
      ____state_0_1_0 <= p2_data_enable ? nor_40660 : ____state_0_1_0;
      ____state_1_0_0 <= p2_data_enable ? nor_40664 : ____state_1_0_0;
      ____state_1_0_3 <= p2_data_enable ? nor_40665 : ____state_1_0_3;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
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
      __systolic__arg0_reg <= systolic__arg0_load_en ? systolic__arg0_unflattened : __systolic__arg0_reg;
      __systolic__arg0_valid_reg <= systolic__arg0_valid_load_en ? systolic__arg0_vld : __systolic__arg0_valid_reg;
      __systolic__arg1_reg <= systolic__arg1_load_en ? systolic__arg1_unflattened : __systolic__arg1_reg;
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
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44089))) or_44089) else $fatal(0, "More than one next_value fired for state element: __state_2");
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
  function automatic [1:0] priority_sel_2b_2way (input reg [1:0] sel, input reg [1:0] case0, input reg [1:0] case1, input reg [1:0] default_value);
    begin
      unique casez (sel)
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
          priority_sel_2b_2way = 'X;
        end
      endcase
    end
  endfunction
  function automatic [2:0] priority_sel_3b_2way (input reg [1:0] sel, input reg [2:0] case0, input reg [2:0] case1, input reg [2:0] default_value);
    begin
      unique casez (sel)
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
          priority_sel_3b_2way = 'X;
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
  function automatic logic priority_sel_1b_2way (input reg [1:0] sel, input reg case0, input reg case1, input reg default_value);
    begin
      unique casez (sel)
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
          priority_sel_1b_2way = 'X;
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
  reg p1_____state_3__1;
  reg p1_is_result_nan__1;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [23:0] sign_ext_41242;
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
  wire [26:0] shrl_41257;
  wire [27:0] shll_41259;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_41268;
  wire sticky__2;
  wire [27:0] concat_41274;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_41315;
  wire nor_41310;
  wire nor_41311;
  wire nor_41301;
  wire nor_41302;
  wire and_41344;
  wire nor_41346;
  wire nor_41348;
  wire and_41341;
  wire nor_41337;
  wire and_41333;
  wire nor_41334;
  wire nor_41328;
  wire nor_41330;
  wire and_41373;
  wire nor_41354;
  wire nor_41355;
  wire and_41394;
  wire [1:0] priority_sel_41395;
  wire and_41390;
  wire and_41386;
  wire and_41382;
  wire [2:0] concat_41408;
  wire [2:0] concat_41405;
  wire [2:0] concat_41404;
  wire [2:0] concat_41402;
  wire [2:0] concat_41401;
  wire and_41413;
  wire [3:0] concat_41417;
  wire [3:0] sel_44057;
  wire [4:0] concat_41425;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_41132;
  wire eq_41133;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_41136;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_41139;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_41141;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_41443;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_41453;
  wire [5:0] sub_41454;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire __systolic__result_chans__0_0_vld_buf;
  wire __systolic__result_chans__0_0_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_inv;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire __systolic__result_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_load_en;
  wire [9:0] wide_exponent;
  wire ne_41164;
  wire systolic__result_chans__0_0_load_en;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire or_44134;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire p2_stage_done;
  wire p2_not_valid;
  wire eq_41463;
  wire eq_41464;
  wire eq_41465;
  wire eq_41466;
  wire [23:0] fraction__6;
  wire p1_enable;
  wire [23:0] fraction__7;
  wire p1_data_enable;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_41175;
  wire p1_load_en;
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
  wire and_reduce_41493;
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
  wire and_41501;
  wire result_fraction__2_0_case_cmp;
  wire eq_41178;
  wire eq_41179;
  wire eq_41180;
  wire eq_41181;
  wire [8:0] result_exp__1;
  wire __systolic__hor_chans__0_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_0_has_sent_or_is_ready;
  wire and_41508;
  wire and_41509;
  wire and_41510;
  wire and_41511;
  wire and_41512;
  wire p0_all_active_outputs_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_41198;
  wire p0_stage_done;
  wire [3:0] one_hot_41522;
  wire [4:0] one_hot_41523;
  wire [2:0] one_hot_41524;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_data_enable;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_load_en;
  wire systolic__hor_chans__0_0_valid_inv;
  wire systolic__vert_chans__0_0_valid_inv;
  wire [27:0] shrl_41513;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_41642;
  wire and_41643;
  wire and_41644;
  wire and_41651;
  wire and_41652;
  wire and_41653;
  wire and_41659;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__0_0_valid_load_en;
  wire systolic__vert_chans__0_0_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_41646;
  wire [3:0] concat_41655;
  wire [1:0] concat_41661;
  wire __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_0_valid_and_ready_txfr;
  wire __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_0_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__0_0_load_en;
  wire systolic__vert_chans__0_0_load_en;
  wire or_44091;
  wire or_44093;
  wire or_44095;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_41547;
  wire [7:0] one_hot_sel_41647;
  wire or_41648;
  wire [22:0] one_hot_sel_41656;
  wire or_41657;
  wire one_hot_sel_41662;
  wire or_41663;
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
  assign sign_ext_41242 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_41242;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1186_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_41257 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_41259 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_41268 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_41257[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1186_3_case_1, ~prod_fraction} | ~sign_ext_41242 | shll_41259[26:3]) != 24'h00_0000;
  assign concat_41274 = {add_41268[24:0], shrl_41257[2:1], shrl_41257[0] | sticky__2};
  assign accumbs_fraction = add_41268[25] ? -concat_41274 : concat_41274;
  assign carry_bit = accumbs_fraction[27];
  assign nor_41315 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_41310 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_41311 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_41301 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_41302 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_41344 = ~(carry_bit | accumbs_fraction[26]) & nor_41315;
  assign nor_41346 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_41348 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_41341 = nor_41311 & nor_41310;
  assign nor_41337 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_41333 = nor_41302 & nor_41301;
  assign nor_41334 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_41328 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_41330 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_41373 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_41346;
  assign nor_41354 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_41355 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_41394 = and_41344 & and_41373;
  assign priority_sel_41395 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_41315), and_41344}, {nor_41348, unexpand_for_next_value_1186_3_case_1}, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1186_3_case_1, nor_41348});
  assign and_41390 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_41337;
  assign and_41386 = nor_41330 & nor_41328;
  assign and_41382 = nor_41355 & nor_41354;
  assign concat_41408 = {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_41346) ? {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1186_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_41405 = {and_41341, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_41310), and_41341}, 2'h0, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_41311, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_41404 = {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_41337) ? {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1186_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_41402 = {and_41333, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_41301), and_41333}, {nor_41334, unexpand_for_next_value_1186_3_case_1}, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_41302, nor_41334})};
  assign concat_41401 = {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_41328) ? {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_41330, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_41413 = and_41341 & and_41390;
  assign concat_41417 = {unexpand_for_next_value_1186_3_case_0, and_41382, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_41354), and_41382}, 2'h0, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_41355, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_44057 = ~(~and_41394 | and_41413) ? {unexpand_for_next_value_1186_3_case_0, ~(~and_41341 | and_41390) ? concat_41404 : concat_41405} : {and_41394, priority_sel_3b_2way({~(~and_41344 | and_41373), and_41394}, {priority_sel_41395, unexpand_for_next_value_1186_3_case_1}, concat_41408, {unexpand_for_next_value_1186_3_case_1, priority_sel_41395})};
  assign concat_41425 = {unexpand_for_next_value_1186_3_case_0, and_41333 & and_41386 ? concat_41417 : {unexpand_for_next_value_1186_3_case_1, ~(~and_41333 | and_41386) ? concat_41401 : concat_41402}};
  assign leading_zeroes = and_41394 & and_41413 ? concat_41425 : {unexpand_for_next_value_1186_3_case_1, sel_44057};
  assign a_bexp__1 = __systolic__hor_chans__0_0_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__0_0_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1186_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__0_0_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__0_0_reg[22:0];
  assign eq_41132 = a_bexp__1 == 8'h00;
  assign eq_41133 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1186_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1186_3_case_0, b_fraction__1};
  assign nor_41136 = ~(eq_41132 | eq_41133);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_41139 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_41141 = {unexpand_for_next_value_1186_3_case_1, a_bexp__1} + {unexpand_for_next_value_1186_3_case_1, b_bexp__2};
  assign fraction = umul_41139 & {48{nor_41136}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1186_3_case_1, add_41141} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_41136}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_41443 = {unexpand_for_next_value_1186_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_41443[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1186_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_41453 = {unexpand_for_next_value_1186_3_case_1, accum_bexp} + 9'h001;
  assign sub_41454 = {5'h00, rounding_carry} - {unexpand_for_next_value_1186_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_41268 == 26'h000_0000 & ~(shrl_41257[1] | shrl_41257[2]) & ~(shrl_41257[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign __systolic__result_chans__0_0_vld_buf = p1_valid & p1_____state_3__1;
  assign __systolic__result_chans__0_0_not_has_been_sent = ~__systolic__result_chans__0_0_has_been_sent_reg;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1186_3_case_1, add_41453};
  assign wide_exponent_associative_element__1 = {{4{sub_41454[5]}}, sub_41454};
  assign __systolic__result_chans__0_0_valid_and_not_has_been_sent = __systolic__result_chans__0_0_vld_buf & __systolic__result_chans__0_0_not_has_been_sent;
  assign systolic__result_chans__0_0_valid_load_en = systolic__result_chans__0_0_rdy | systolic__result_chans__0_0_valid_inv;
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_41164 = fraction__4[21:0] != 22'h00_0000;
  assign systolic__result_chans__0_0_load_en = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_valid_load_en;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_41164;
  assign or_44134 = ~p1_____state_3__1 | systolic__result_chans__0_0_load_en | __systolic__result_chans__0_0_has_been_sent_reg;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_41164 | ~fraction__4[23]);
  assign p2_stage_done = p1_valid & or_44134;
  assign p2_not_valid = ~p1_valid;
  assign eq_41463 = accum_bexp == high_exp;
  assign eq_41464 = accum_fraction == 23'h00_0000;
  assign eq_41465 = prod_bexp == high_exp;
  assign eq_41466 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1186_3_case_1, fraction__5};
  assign p1_enable = p2_stage_done | rst | p2_not_valid;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p1_data_enable = p1_enable & p0_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_41175 = exp__2 + 10'h001;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign has_pos_inf = ~(~eq_41463 | ~eq_41464 | accum_sign) | ~(~eq_41465 | ~eq_41466 | prod_sign);
  assign has_neg_inf = eq_41463 & eq_41464 & accum_sign | eq_41465 & eq_41466 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_41175 : exp__2;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_0_valid_reg & __systolic__vert_chans__0_0_valid_reg;
  assign p0_enable = p1_load_en | p1_not_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign __systolic__hor_chans__0_1_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__0_1_not_has_been_sent = ~__systolic__hor_chans__0_1_has_been_sent_reg;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign __systolic__vert_chans__1_0_not_has_been_sent = ~__systolic__vert_chans__1_0_has_been_sent_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign is_result_nan__1 = ~(~eq_41463 | eq_41464) | ~(~eq_41465 | eq_41466) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_41463 & eq_41464 | eq_41465 & eq_41466;
  assign and_reduce_41493 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__0_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_vld_buf & __systolic__hor_chans__0_1_not_has_been_sent;
  assign systolic__hor_chans__0_1_valid_load_en = systolic__hor_chans__0_1_rdy | systolic__hor_chans__0_1_valid_inv;
  assign __systolic__vert_chans__1_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_vld_buf & __systolic__vert_chans__1_0_not_has_been_sent;
  assign systolic__vert_chans__1_0_valid_load_en = systolic__vert_chans__1_0_rdy | systolic__vert_chans__1_0_valid_inv;
  assign result_exponent__2_1_case_cmp = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_41493;
  assign result_fraction__5_0_case_cmp = ~is_result_nan__1;
  assign result_fraction__2_1_case_cmp = is_operand_inf | wide_exponent__2[8] | and_reduce_41493 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign systolic__hor_chans__0_1_load_en = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_valid_load_en;
  assign result_exponent__2_0_case_cmp = ~result_exponent__2_1_case_cmp;
  assign and_41501 = ~____state_3 & result_fraction__5_0_case_cmp;
  assign result_fraction__2_0_case_cmp = ~result_fraction__2_1_case_cmp;
  assign eq_41178 = a_bexp__1 == high_exp;
  assign eq_41179 = a_fraction__1 == 23'h00_0000;
  assign eq_41180 = b_bexp__2 == high_exp;
  assign eq_41181 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign __systolic__hor_chans__0_1_has_sent_or_is_ready = systolic__hor_chans__0_1_load_en | __systolic__hor_chans__0_1_has_been_sent_reg;
  assign __systolic__vert_chans__1_0_has_sent_or_is_ready = systolic__vert_chans__1_0_load_en | __systolic__vert_chans__1_0_has_been_sent_reg;
  assign and_41508 = ~____state_3 & result_exponent__2_0_case_cmp;
  assign and_41509 = ~____state_3 & result_exponent__2_1_case_cmp;
  assign and_41510 = ~____state_3 & is_result_nan__1;
  assign and_41511 = and_41501 & result_fraction__2_0_case_cmp;
  assign and_41512 = and_41501 & result_fraction__2_1_case_cmp;
  assign p0_all_active_outputs_ready = __systolic__hor_chans__0_1_has_sent_or_is_ready & __systolic__vert_chans__1_0_has_sent_or_is_ready;
  assign ____state_1__next_value_predicates = {____state_3, and_41508, and_41509};
  assign ____state_2__next_value_predicates = {____state_3, and_41510, and_41511, and_41512};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_41132 | eq_41133;
  assign has_inf_arg = eq_41178 & eq_41179 | eq_41180 & eq_41181;
  assign and_reduce_41198 = &result_exp__1[7:0];
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign one_hot_41522 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_41523 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_41524 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_41268[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign rounded_fraction = {add_41443, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_41178 | eq_41179) | ~(~eq_41180 | eq_41181) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign shrl_41513 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__0_0_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__0_0_reg[31:31];
  assign result_sign__4 = result_fraction__5_0_case_cmp & result_sign__3;
  assign and_41642 = ____state_3 & p1_data_enable;
  assign and_41643 = and_41508 & p1_data_enable;
  assign and_41644 = and_41509 & p1_data_enable;
  assign and_41651 = and_41510 & p1_data_enable;
  assign and_41652 = and_41511 & p1_data_enable;
  assign and_41653 = and_41512 & p1_data_enable;
  assign and_41659 = ~____state_3 & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__0_0_valid_load_en = p0_load_en | systolic__hor_chans__0_0_valid_inv;
  assign systolic__vert_chans__0_0_valid_load_en = p0_load_en | systolic__vert_chans__0_0_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_41522[2] & and_41508 == one_hot_41522[1] & and_41509 == one_hot_41522[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_41523[3] & and_41510 == one_hot_41523[2] & and_41511 == one_hot_41523[1] & and_41512 == one_hot_41523[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_41524[1] & ____state_3 == one_hot_41524[0];
  assign result_fraction__1 = shrl_41513[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_41198 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_41198 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_41646 = {and_41642, and_41643, and_41644};
  assign concat_41655 = {and_41642, and_41651, and_41652, and_41653};
  assign concat_41661 = {and_41659, and_41642};
  assign __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_1_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_valid_and_ready_txfr = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_load_en;
  assign __systolic__vert_chans__1_0_valid_and_ready_txfr = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_load_en;
  assign __systolic__result_chans__0_0_valid_and_all_active_outputs_ready = __systolic__result_chans__0_0_vld_buf & or_44134;
  assign __systolic__result_chans__0_0_valid_and_ready_txfr = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__0_0_load_en = systolic__hor_chans__0_0_vld & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = systolic__vert_chans__0_0_vld & systolic__vert_chans__0_0_valid_load_en;
  assign or_44091 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_44093 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_44095 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{result_fraction__2_0_case_cmp}};
  assign result_exponent__2 = result_exponent__2_1_case_cmp ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_41547 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_41647 = high_exp & {8{concat_41646[0]}} | wide_exponent__2[7:0] & {8{concat_41646[1]}} | 8'h00 & {8{concat_41646[2]}};
  assign or_41648 = and_41642 | and_41643 | and_41644;
  assign one_hot_sel_41656 = 23'h00_0000 & {23{concat_41655[0]}} | result_fraction__1 & {23{concat_41655[1]}} | nan_fraction & {23{concat_41655[2]}} | 23'h00_0000 & {23{concat_41655[3]}};
  assign or_41657 = and_41642 | and_41651 | and_41652 | and_41653;
  assign one_hot_sel_41662 = unexpand_for_next_value_1186_3_case_1 & concat_41661[0] | unexpand_for_next_value_1186_3_case_0 & concat_41661[1];
  assign or_41663 = and_41659 | and_41642;
  assign __systolic__hor_chans__0_1_not_stage_load = ~__systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_has_been_sent_reg_load_en = __systolic__hor_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_0_has_been_sent_reg_load_en = __systolic__vert_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_not_stage_load = ~__systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_has_been_sent_reg_load_en = __systolic__result_chans__0_0_valid_and_ready_txfr | __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign new_accum = {p1_result_sign__4, p1_result_exponent__2, result_fraction__5};
  always_ff @ (posedge clk) begin
    p0_result_exp__4 <= p0_load_en ? result_exp__4 : p0_result_exp__4;
    p0_prod_bexpnot <= p0_load_en ? prod_bexpnot : p0_prod_bexpnot;
    p0_result_fraction__4 <= p0_load_en ? result_fraction__4 : p0_result_fraction__4;
    p0_result_sign__1 <= p0_load_en ? result_sign__1 : p0_result_sign__1;
    p1_____state_3__1 <= p1_load_en ? ____state_3 : p1_____state_3__1;
    p1_is_result_nan__1 <= p1_load_en ? is_result_nan__1 : p1_is_result_nan__1;
    p1_result_fraction__2 <= p1_load_en ? result_fraction__2 : p1_result_fraction__2;
    p1_result_sign__4 <= p1_load_en ? result_sign__4 : p1_result_sign__4;
    p1_result_exponent__2 <= p1_load_en ? result_exponent__2 : p1_result_exponent__2;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
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
      ____state_1 <= or_41648 ? one_hot_sel_41647 : ____state_1;
      ____state_2 <= or_41657 ? one_hot_sel_41656 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_41547 : ____state_0;
      ____state_3 <= or_41663 ? one_hot_sel_41662 : ____state_3;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
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
  `ifdef ASSERT_ON
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44091))) or_44091) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44093))) or_44093) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44095))) or_44095) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  function automatic [1:0] priority_sel_2b_2way (input reg [1:0] sel, input reg [1:0] case0, input reg [1:0] case1, input reg [1:0] default_value);
    begin
      unique casez (sel)
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
          priority_sel_2b_2way = 'X;
        end
      endcase
    end
  endfunction
  function automatic [2:0] priority_sel_3b_2way (input reg [1:0] sel, input reg [2:0] case0, input reg [2:0] case1, input reg [2:0] default_value);
    begin
      unique casez (sel)
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
          priority_sel_3b_2way = 'X;
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
  function automatic logic priority_sel_1b_2way (input reg [1:0] sel, input reg case0, input reg case1, input reg default_value);
    begin
      unique casez (sel)
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
          priority_sel_1b_2way = 'X;
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
  reg p1_____state_3__1;
  reg p1_is_result_nan__1;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [23:0] sign_ext_41930;
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
  wire [26:0] shrl_41945;
  wire [27:0] shll_41947;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_41956;
  wire sticky__2;
  wire [27:0] concat_41962;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_42003;
  wire nor_41998;
  wire nor_41999;
  wire nor_41989;
  wire nor_41990;
  wire and_42032;
  wire nor_42034;
  wire nor_42036;
  wire and_42029;
  wire nor_42025;
  wire and_42021;
  wire nor_42022;
  wire nor_42016;
  wire nor_42018;
  wire and_42061;
  wire nor_42042;
  wire nor_42043;
  wire and_42082;
  wire [1:0] priority_sel_42083;
  wire and_42078;
  wire and_42074;
  wire and_42070;
  wire [2:0] concat_42096;
  wire [2:0] concat_42093;
  wire [2:0] concat_42092;
  wire [2:0] concat_42090;
  wire [2:0] concat_42089;
  wire and_42101;
  wire [3:0] concat_42105;
  wire [3:0] sel_44065;
  wire [4:0] concat_42113;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_41820;
  wire eq_41821;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_41824;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_41827;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_41829;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_42131;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_42141;
  wire [5:0] sub_42142;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire __systolic__result_chans__0_1_vld_buf;
  wire __systolic__result_chans__0_1_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_inv;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire __systolic__result_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_load_en;
  wire [9:0] wide_exponent;
  wire ne_41852;
  wire systolic__result_chans__0_1_load_en;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire or_44154;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire p2_stage_done;
  wire p2_not_valid;
  wire eq_42151;
  wire eq_42152;
  wire eq_42153;
  wire eq_42154;
  wire [23:0] fraction__6;
  wire p1_enable;
  wire [23:0] fraction__7;
  wire p1_data_enable;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_41863;
  wire p1_load_en;
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
  wire and_reduce_42181;
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
  wire and_42189;
  wire result_fraction__2_0_case_cmp;
  wire eq_41866;
  wire eq_41867;
  wire eq_41868;
  wire eq_41869;
  wire [8:0] result_exp__1;
  wire __systolic__hor_chans__0_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_1_has_sent_or_is_ready;
  wire and_42196;
  wire and_42197;
  wire and_42198;
  wire and_42199;
  wire and_42200;
  wire p0_all_active_outputs_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_41886;
  wire p0_stage_done;
  wire [3:0] one_hot_42210;
  wire [4:0] one_hot_42211;
  wire [2:0] one_hot_42212;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_data_enable;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_load_en;
  wire systolic__hor_chans__0_1_valid_inv;
  wire systolic__vert_chans__0_1_valid_inv;
  wire [27:0] shrl_42201;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_42330;
  wire and_42331;
  wire and_42332;
  wire and_42339;
  wire and_42340;
  wire and_42341;
  wire and_42347;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire systolic__vert_chans__0_1_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_42334;
  wire [3:0] concat_42343;
  wire [1:0] concat_42349;
  wire __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_1_valid_and_ready_txfr;
  wire __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_1_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__0_1_load_en;
  wire or_44097;
  wire or_44099;
  wire or_44101;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_42235;
  wire [7:0] one_hot_sel_42335;
  wire or_42336;
  wire [22:0] one_hot_sel_42344;
  wire or_42345;
  wire one_hot_sel_42350;
  wire or_42351;
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
  assign sign_ext_41930 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_41930;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1217_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_41945 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_41947 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_41956 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_41945[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1217_3_case_1, ~prod_fraction} | ~sign_ext_41930 | shll_41947[26:3]) != 24'h00_0000;
  assign concat_41962 = {add_41956[24:0], shrl_41945[2:1], shrl_41945[0] | sticky__2};
  assign accumbs_fraction = add_41956[25] ? -concat_41962 : concat_41962;
  assign carry_bit = accumbs_fraction[27];
  assign nor_42003 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_41998 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_41999 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_41989 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_41990 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_42032 = ~(carry_bit | accumbs_fraction[26]) & nor_42003;
  assign nor_42034 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_42036 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_42029 = nor_41999 & nor_41998;
  assign nor_42025 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_42021 = nor_41990 & nor_41989;
  assign nor_42022 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_42016 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_42018 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_42061 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_42034;
  assign nor_42042 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_42043 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_42082 = and_42032 & and_42061;
  assign priority_sel_42083 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_42003), and_42032}, {nor_42036, unexpand_for_next_value_1217_3_case_1}, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1217_3_case_1, nor_42036});
  assign and_42078 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_42025;
  assign and_42074 = nor_42018 & nor_42016;
  assign and_42070 = nor_42043 & nor_42042;
  assign concat_42096 = {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_42034) ? {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1217_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_42093 = {and_42029, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_41998), and_42029}, 2'h0, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_41999, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_42092 = {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_42025) ? {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1217_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_42090 = {and_42021, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_41989), and_42021}, {nor_42022, unexpand_for_next_value_1217_3_case_1}, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_41990, nor_42022})};
  assign concat_42089 = {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_42016) ? {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_42018, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_42101 = and_42029 & and_42078;
  assign concat_42105 = {unexpand_for_next_value_1217_3_case_0, and_42070, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_42042), and_42070}, 2'h0, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_42043, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_44065 = ~(~and_42082 | and_42101) ? {unexpand_for_next_value_1217_3_case_0, ~(~and_42029 | and_42078) ? concat_42092 : concat_42093} : {and_42082, priority_sel_3b_2way({~(~and_42032 | and_42061), and_42082}, {priority_sel_42083, unexpand_for_next_value_1217_3_case_1}, concat_42096, {unexpand_for_next_value_1217_3_case_1, priority_sel_42083})};
  assign concat_42113 = {unexpand_for_next_value_1217_3_case_0, and_42021 & and_42074 ? concat_42105 : {unexpand_for_next_value_1217_3_case_1, ~(~and_42021 | and_42074) ? concat_42089 : concat_42090}};
  assign leading_zeroes = and_42082 & and_42101 ? concat_42113 : {unexpand_for_next_value_1217_3_case_1, sel_44065};
  assign a_bexp__1 = __systolic__hor_chans__0_1_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__0_1_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1217_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__0_1_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__0_1_reg[22:0];
  assign eq_41820 = a_bexp__1 == 8'h00;
  assign eq_41821 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1217_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1217_3_case_0, b_fraction__1};
  assign nor_41824 = ~(eq_41820 | eq_41821);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_41827 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_41829 = {unexpand_for_next_value_1217_3_case_1, a_bexp__1} + {unexpand_for_next_value_1217_3_case_1, b_bexp__2};
  assign fraction = umul_41827 & {48{nor_41824}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1217_3_case_1, add_41829} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_41824}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_42131 = {unexpand_for_next_value_1217_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_42131[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1217_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_42141 = {unexpand_for_next_value_1217_3_case_1, accum_bexp} + 9'h001;
  assign sub_42142 = {5'h00, rounding_carry} - {unexpand_for_next_value_1217_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_41956 == 26'h000_0000 & ~(shrl_41945[1] | shrl_41945[2]) & ~(shrl_41945[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign __systolic__result_chans__0_1_vld_buf = p1_valid & p1_____state_3__1;
  assign __systolic__result_chans__0_1_not_has_been_sent = ~__systolic__result_chans__0_1_has_been_sent_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1217_3_case_1, add_42141};
  assign wide_exponent_associative_element__1 = {{4{sub_42142[5]}}, sub_42142};
  assign __systolic__result_chans__0_1_valid_and_not_has_been_sent = __systolic__result_chans__0_1_vld_buf & __systolic__result_chans__0_1_not_has_been_sent;
  assign systolic__result_chans__0_1_valid_load_en = systolic__result_chans__0_1_rdy | systolic__result_chans__0_1_valid_inv;
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_41852 = fraction__4[21:0] != 22'h00_0000;
  assign systolic__result_chans__0_1_load_en = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_valid_load_en;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_41852;
  assign or_44154 = ~p1_____state_3__1 | systolic__result_chans__0_1_load_en | __systolic__result_chans__0_1_has_been_sent_reg;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_41852 | ~fraction__4[23]);
  assign p2_stage_done = p1_valid & or_44154;
  assign p2_not_valid = ~p1_valid;
  assign eq_42151 = accum_bexp == high_exp;
  assign eq_42152 = accum_fraction == 23'h00_0000;
  assign eq_42153 = prod_bexp == high_exp;
  assign eq_42154 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1217_3_case_1, fraction__5};
  assign p1_enable = p2_stage_done | rst | p2_not_valid;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p1_data_enable = p1_enable & p0_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_41863 = exp__2 + 10'h001;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign has_pos_inf = ~(~eq_42151 | ~eq_42152 | accum_sign) | ~(~eq_42153 | ~eq_42154 | prod_sign);
  assign has_neg_inf = eq_42151 & eq_42152 & accum_sign | eq_42153 & eq_42154 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_41863 : exp__2;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_1_valid_reg & __systolic__vert_chans__0_1_valid_reg;
  assign p0_enable = p1_load_en | p1_not_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign __systolic__hor_chans__0_2_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__0_2_not_has_been_sent = ~__systolic__hor_chans__0_2_has_been_sent_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign __systolic__vert_chans__1_1_not_has_been_sent = ~__systolic__vert_chans__1_1_has_been_sent_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign is_result_nan__1 = ~(~eq_42151 | eq_42152) | ~(~eq_42153 | eq_42154) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_42151 & eq_42152 | eq_42153 & eq_42154;
  assign and_reduce_42181 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__0_2_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_vld_buf & __systolic__hor_chans__0_2_not_has_been_sent;
  assign systolic__hor_chans__0_2_valid_load_en = systolic__hor_chans__0_2_rdy | systolic__hor_chans__0_2_valid_inv;
  assign __systolic__vert_chans__1_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_vld_buf & __systolic__vert_chans__1_1_not_has_been_sent;
  assign systolic__vert_chans__1_1_valid_load_en = systolic__vert_chans__1_1_rdy | systolic__vert_chans__1_1_valid_inv;
  assign result_exponent__2_1_case_cmp = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_42181;
  assign result_fraction__5_0_case_cmp = ~is_result_nan__1;
  assign result_fraction__2_1_case_cmp = is_operand_inf | wide_exponent__2[8] | and_reduce_42181 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign systolic__hor_chans__0_2_load_en = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_valid_load_en;
  assign result_exponent__2_0_case_cmp = ~result_exponent__2_1_case_cmp;
  assign and_42189 = ~____state_3 & result_fraction__5_0_case_cmp;
  assign result_fraction__2_0_case_cmp = ~result_fraction__2_1_case_cmp;
  assign eq_41866 = a_bexp__1 == high_exp;
  assign eq_41867 = a_fraction__1 == 23'h00_0000;
  assign eq_41868 = b_bexp__2 == high_exp;
  assign eq_41869 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign __systolic__hor_chans__0_2_has_sent_or_is_ready = systolic__hor_chans__0_2_load_en | __systolic__hor_chans__0_2_has_been_sent_reg;
  assign __systolic__vert_chans__1_1_has_sent_or_is_ready = systolic__vert_chans__1_1_load_en | __systolic__vert_chans__1_1_has_been_sent_reg;
  assign and_42196 = ~____state_3 & result_exponent__2_0_case_cmp;
  assign and_42197 = ~____state_3 & result_exponent__2_1_case_cmp;
  assign and_42198 = ~____state_3 & is_result_nan__1;
  assign and_42199 = and_42189 & result_fraction__2_0_case_cmp;
  assign and_42200 = and_42189 & result_fraction__2_1_case_cmp;
  assign p0_all_active_outputs_ready = __systolic__hor_chans__0_2_has_sent_or_is_ready & __systolic__vert_chans__1_1_has_sent_or_is_ready;
  assign ____state_1__next_value_predicates = {____state_3, and_42196, and_42197};
  assign ____state_2__next_value_predicates = {____state_3, and_42198, and_42199, and_42200};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_41820 | eq_41821;
  assign has_inf_arg = eq_41866 & eq_41867 | eq_41868 & eq_41869;
  assign and_reduce_41886 = &result_exp__1[7:0];
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign one_hot_42210 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_42211 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_42212 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_41956[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign rounded_fraction = {add_42131, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_41866 | eq_41867) | ~(~eq_41868 | eq_41869) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign shrl_42201 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__0_1_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__0_1_reg[31:31];
  assign result_sign__4 = result_fraction__5_0_case_cmp & result_sign__3;
  assign and_42330 = ____state_3 & p1_data_enable;
  assign and_42331 = and_42196 & p1_data_enable;
  assign and_42332 = and_42197 & p1_data_enable;
  assign and_42339 = and_42198 & p1_data_enable;
  assign and_42340 = and_42199 & p1_data_enable;
  assign and_42341 = and_42200 & p1_data_enable;
  assign and_42347 = ~____state_3 & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__0_1_valid_load_en = p0_load_en | systolic__hor_chans__0_1_valid_inv;
  assign systolic__vert_chans__0_1_valid_load_en = p0_load_en | systolic__vert_chans__0_1_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_42210[2] & and_42196 == one_hot_42210[1] & and_42197 == one_hot_42210[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_42211[3] & and_42198 == one_hot_42211[2] & and_42199 == one_hot_42211[1] & and_42200 == one_hot_42211[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_42212[1] & ____state_3 == one_hot_42212[0];
  assign result_fraction__1 = shrl_42201[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_41886 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_41886 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_42334 = {and_42330, and_42331, and_42332};
  assign concat_42343 = {and_42330, and_42339, and_42340, and_42341};
  assign concat_42349 = {and_42347, and_42330};
  assign __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_2_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_valid_and_ready_txfr = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_load_en;
  assign __systolic__vert_chans__1_1_valid_and_ready_txfr = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_load_en;
  assign __systolic__result_chans__0_1_valid_and_all_active_outputs_ready = __systolic__result_chans__0_1_vld_buf & or_44154;
  assign __systolic__result_chans__0_1_valid_and_ready_txfr = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__0_1_load_en = systolic__hor_chans__0_1_vld & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = systolic__vert_chans__0_1_vld & systolic__vert_chans__0_1_valid_load_en;
  assign or_44097 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_44099 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_44101 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{result_fraction__2_0_case_cmp}};
  assign result_exponent__2 = result_exponent__2_1_case_cmp ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_42235 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_42335 = high_exp & {8{concat_42334[0]}} | wide_exponent__2[7:0] & {8{concat_42334[1]}} | 8'h00 & {8{concat_42334[2]}};
  assign or_42336 = and_42330 | and_42331 | and_42332;
  assign one_hot_sel_42344 = 23'h00_0000 & {23{concat_42343[0]}} | result_fraction__1 & {23{concat_42343[1]}} | nan_fraction & {23{concat_42343[2]}} | 23'h00_0000 & {23{concat_42343[3]}};
  assign or_42345 = and_42330 | and_42339 | and_42340 | and_42341;
  assign one_hot_sel_42350 = unexpand_for_next_value_1217_3_case_1 & concat_42349[0] | unexpand_for_next_value_1217_3_case_0 & concat_42349[1];
  assign or_42351 = and_42347 | and_42330;
  assign __systolic__hor_chans__0_2_not_stage_load = ~__systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_has_been_sent_reg_load_en = __systolic__hor_chans__0_2_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_1_has_been_sent_reg_load_en = __systolic__vert_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_not_stage_load = ~__systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_has_been_sent_reg_load_en = __systolic__result_chans__0_1_valid_and_ready_txfr | __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign new_accum = {p1_result_sign__4, p1_result_exponent__2, result_fraction__5};
  always_ff @ (posedge clk) begin
    p0_result_exp__4 <= p0_load_en ? result_exp__4 : p0_result_exp__4;
    p0_prod_bexpnot <= p0_load_en ? prod_bexpnot : p0_prod_bexpnot;
    p0_result_fraction__4 <= p0_load_en ? result_fraction__4 : p0_result_fraction__4;
    p0_result_sign__1 <= p0_load_en ? result_sign__1 : p0_result_sign__1;
    p1_____state_3__1 <= p1_load_en ? ____state_3 : p1_____state_3__1;
    p1_is_result_nan__1 <= p1_load_en ? is_result_nan__1 : p1_is_result_nan__1;
    p1_result_fraction__2 <= p1_load_en ? result_fraction__2 : p1_result_fraction__2;
    p1_result_sign__4 <= p1_load_en ? result_sign__4 : p1_result_sign__4;
    p1_result_exponent__2 <= p1_load_en ? result_exponent__2 : p1_result_exponent__2;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
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
      ____state_1 <= or_42336 ? one_hot_sel_42335 : ____state_1;
      ____state_2 <= or_42345 ? one_hot_sel_42344 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_42235 : ____state_0;
      ____state_3 <= or_42351 ? one_hot_sel_42350 : ____state_3;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
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
  `ifdef ASSERT_ON
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44097))) or_44097) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44099))) or_44099) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44101))) or_44101) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  function automatic [1:0] priority_sel_2b_2way (input reg [1:0] sel, input reg [1:0] case0, input reg [1:0] case1, input reg [1:0] default_value);
    begin
      unique casez (sel)
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
          priority_sel_2b_2way = 'X;
        end
      endcase
    end
  endfunction
  function automatic [2:0] priority_sel_3b_2way (input reg [1:0] sel, input reg [2:0] case0, input reg [2:0] case1, input reg [2:0] default_value);
    begin
      unique casez (sel)
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
          priority_sel_3b_2way = 'X;
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
  function automatic logic priority_sel_1b_2way (input reg [1:0] sel, input reg case0, input reg case1, input reg default_value);
    begin
      unique casez (sel)
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
          priority_sel_1b_2way = 'X;
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
  reg p1_____state_3__1;
  reg p1_is_result_nan__1;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [23:0] sign_ext_42618;
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
  wire [26:0] shrl_42633;
  wire [27:0] shll_42635;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_42644;
  wire sticky__2;
  wire [27:0] concat_42650;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_42691;
  wire nor_42686;
  wire nor_42687;
  wire nor_42677;
  wire nor_42678;
  wire and_42720;
  wire nor_42722;
  wire nor_42724;
  wire and_42717;
  wire nor_42713;
  wire and_42709;
  wire nor_42710;
  wire nor_42704;
  wire nor_42706;
  wire and_42749;
  wire nor_42730;
  wire nor_42731;
  wire and_42770;
  wire [1:0] priority_sel_42771;
  wire and_42766;
  wire and_42762;
  wire and_42758;
  wire [2:0] concat_42784;
  wire [2:0] concat_42781;
  wire [2:0] concat_42780;
  wire [2:0] concat_42778;
  wire [2:0] concat_42777;
  wire and_42789;
  wire [3:0] concat_42793;
  wire [3:0] sel_44073;
  wire [4:0] concat_42801;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_42508;
  wire eq_42509;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_42512;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_42515;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_42517;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_42819;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_42829;
  wire [5:0] sub_42830;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire __systolic__result_chans__1_0_vld_buf;
  wire __systolic__result_chans__1_0_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_inv;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire __systolic__result_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_load_en;
  wire [9:0] wide_exponent;
  wire ne_42540;
  wire systolic__result_chans__1_0_load_en;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire or_44174;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire p2_stage_done;
  wire p2_not_valid;
  wire eq_42839;
  wire eq_42840;
  wire eq_42841;
  wire eq_42842;
  wire [23:0] fraction__6;
  wire p1_enable;
  wire [23:0] fraction__7;
  wire p1_data_enable;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_42551;
  wire p1_load_en;
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
  wire and_reduce_42869;
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
  wire and_42877;
  wire result_fraction__2_0_case_cmp;
  wire eq_42554;
  wire eq_42555;
  wire eq_42556;
  wire eq_42557;
  wire [8:0] result_exp__1;
  wire __systolic__hor_chans__1_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_0_has_sent_or_is_ready;
  wire and_42884;
  wire and_42885;
  wire and_42886;
  wire and_42887;
  wire and_42888;
  wire p0_all_active_outputs_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_42574;
  wire p0_stage_done;
  wire [3:0] one_hot_42898;
  wire [4:0] one_hot_42899;
  wire [2:0] one_hot_42900;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_data_enable;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_load_en;
  wire systolic__hor_chans__1_0_valid_inv;
  wire systolic__vert_chans__1_0_valid_inv;
  wire [27:0] shrl_42889;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_43018;
  wire and_43019;
  wire and_43020;
  wire and_43027;
  wire and_43028;
  wire and_43029;
  wire and_43035;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__1_0_valid_load_en;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_43022;
  wire [3:0] concat_43031;
  wire [1:0] concat_43037;
  wire __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_0_valid_and_ready_txfr;
  wire __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_0_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__1_0_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire or_44103;
  wire or_44105;
  wire or_44107;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_42923;
  wire [7:0] one_hot_sel_43023;
  wire or_43024;
  wire [22:0] one_hot_sel_43032;
  wire or_43033;
  wire one_hot_sel_43038;
  wire or_43039;
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
  assign sign_ext_42618 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_42618;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1248_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_42633 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_42635 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_42644 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_42633[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1248_3_case_1, ~prod_fraction} | ~sign_ext_42618 | shll_42635[26:3]) != 24'h00_0000;
  assign concat_42650 = {add_42644[24:0], shrl_42633[2:1], shrl_42633[0] | sticky__2};
  assign accumbs_fraction = add_42644[25] ? -concat_42650 : concat_42650;
  assign carry_bit = accumbs_fraction[27];
  assign nor_42691 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_42686 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_42687 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_42677 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_42678 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_42720 = ~(carry_bit | accumbs_fraction[26]) & nor_42691;
  assign nor_42722 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_42724 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_42717 = nor_42687 & nor_42686;
  assign nor_42713 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_42709 = nor_42678 & nor_42677;
  assign nor_42710 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_42704 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_42706 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_42749 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_42722;
  assign nor_42730 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_42731 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_42770 = and_42720 & and_42749;
  assign priority_sel_42771 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_42691), and_42720}, {nor_42724, unexpand_for_next_value_1248_3_case_1}, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1248_3_case_1, nor_42724});
  assign and_42766 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_42713;
  assign and_42762 = nor_42706 & nor_42704;
  assign and_42758 = nor_42731 & nor_42730;
  assign concat_42784 = {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_42722) ? {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1248_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_42781 = {and_42717, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_42686), and_42717}, 2'h0, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_42687, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_42780 = {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_42713) ? {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1248_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_42778 = {and_42709, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_42677), and_42709}, {nor_42710, unexpand_for_next_value_1248_3_case_1}, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_42678, nor_42710})};
  assign concat_42777 = {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_42704) ? {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_42706, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_42789 = and_42717 & and_42766;
  assign concat_42793 = {unexpand_for_next_value_1248_3_case_0, and_42758, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_42730), and_42758}, 2'h0, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_42731, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_44073 = ~(~and_42770 | and_42789) ? {unexpand_for_next_value_1248_3_case_0, ~(~and_42717 | and_42766) ? concat_42780 : concat_42781} : {and_42770, priority_sel_3b_2way({~(~and_42720 | and_42749), and_42770}, {priority_sel_42771, unexpand_for_next_value_1248_3_case_1}, concat_42784, {unexpand_for_next_value_1248_3_case_1, priority_sel_42771})};
  assign concat_42801 = {unexpand_for_next_value_1248_3_case_0, and_42709 & and_42762 ? concat_42793 : {unexpand_for_next_value_1248_3_case_1, ~(~and_42709 | and_42762) ? concat_42777 : concat_42778}};
  assign leading_zeroes = and_42770 & and_42789 ? concat_42801 : {unexpand_for_next_value_1248_3_case_1, sel_44073};
  assign a_bexp__1 = __systolic__hor_chans__1_0_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__1_0_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1248_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__1_0_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__1_0_reg[22:0];
  assign eq_42508 = a_bexp__1 == 8'h00;
  assign eq_42509 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1248_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1248_3_case_0, b_fraction__1};
  assign nor_42512 = ~(eq_42508 | eq_42509);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_42515 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_42517 = {unexpand_for_next_value_1248_3_case_1, a_bexp__1} + {unexpand_for_next_value_1248_3_case_1, b_bexp__2};
  assign fraction = umul_42515 & {48{nor_42512}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1248_3_case_1, add_42517} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_42512}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_42819 = {unexpand_for_next_value_1248_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_42819[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1248_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_42829 = {unexpand_for_next_value_1248_3_case_1, accum_bexp} + 9'h001;
  assign sub_42830 = {5'h00, rounding_carry} - {unexpand_for_next_value_1248_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_42644 == 26'h000_0000 & ~(shrl_42633[1] | shrl_42633[2]) & ~(shrl_42633[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign __systolic__result_chans__1_0_vld_buf = p1_valid & p1_____state_3__1;
  assign __systolic__result_chans__1_0_not_has_been_sent = ~__systolic__result_chans__1_0_has_been_sent_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1248_3_case_1, add_42829};
  assign wide_exponent_associative_element__1 = {{4{sub_42830[5]}}, sub_42830};
  assign __systolic__result_chans__1_0_valid_and_not_has_been_sent = __systolic__result_chans__1_0_vld_buf & __systolic__result_chans__1_0_not_has_been_sent;
  assign systolic__result_chans__1_0_valid_load_en = systolic__result_chans__1_0_rdy | systolic__result_chans__1_0_valid_inv;
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_42540 = fraction__4[21:0] != 22'h00_0000;
  assign systolic__result_chans__1_0_load_en = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_valid_load_en;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_42540;
  assign or_44174 = ~p1_____state_3__1 | systolic__result_chans__1_0_load_en | __systolic__result_chans__1_0_has_been_sent_reg;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_42540 | ~fraction__4[23]);
  assign p2_stage_done = p1_valid & or_44174;
  assign p2_not_valid = ~p1_valid;
  assign eq_42839 = accum_bexp == high_exp;
  assign eq_42840 = accum_fraction == 23'h00_0000;
  assign eq_42841 = prod_bexp == high_exp;
  assign eq_42842 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1248_3_case_1, fraction__5};
  assign p1_enable = p2_stage_done | rst | p2_not_valid;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p1_data_enable = p1_enable & p0_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_42551 = exp__2 + 10'h001;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign has_pos_inf = ~(~eq_42839 | ~eq_42840 | accum_sign) | ~(~eq_42841 | ~eq_42842 | prod_sign);
  assign has_neg_inf = eq_42839 & eq_42840 & accum_sign | eq_42841 & eq_42842 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_42551 : exp__2;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_0_valid_reg & __systolic__vert_chans__1_0_valid_reg;
  assign p0_enable = p1_load_en | p1_not_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign __systolic__hor_chans__1_1_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__1_1_not_has_been_sent = ~__systolic__hor_chans__1_1_has_been_sent_reg;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign __systolic__vert_chans__2_0_not_has_been_sent = ~__systolic__vert_chans__2_0_has_been_sent_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign is_result_nan__1 = ~(~eq_42839 | eq_42840) | ~(~eq_42841 | eq_42842) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_42839 & eq_42840 | eq_42841 & eq_42842;
  assign and_reduce_42869 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__1_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_vld_buf & __systolic__hor_chans__1_1_not_has_been_sent;
  assign systolic__hor_chans__1_1_valid_load_en = systolic__hor_chans__1_1_rdy | systolic__hor_chans__1_1_valid_inv;
  assign __systolic__vert_chans__2_0_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_vld_buf & __systolic__vert_chans__2_0_not_has_been_sent;
  assign systolic__vert_chans__2_0_valid_load_en = systolic__vert_chans__2_0_rdy | systolic__vert_chans__2_0_valid_inv;
  assign result_exponent__2_1_case_cmp = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_42869;
  assign result_fraction__5_0_case_cmp = ~is_result_nan__1;
  assign result_fraction__2_1_case_cmp = is_operand_inf | wide_exponent__2[8] | and_reduce_42869 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign systolic__hor_chans__1_1_load_en = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_valid_load_en;
  assign result_exponent__2_0_case_cmp = ~result_exponent__2_1_case_cmp;
  assign and_42877 = ~____state_3 & result_fraction__5_0_case_cmp;
  assign result_fraction__2_0_case_cmp = ~result_fraction__2_1_case_cmp;
  assign eq_42554 = a_bexp__1 == high_exp;
  assign eq_42555 = a_fraction__1 == 23'h00_0000;
  assign eq_42556 = b_bexp__2 == high_exp;
  assign eq_42557 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign __systolic__hor_chans__1_1_has_sent_or_is_ready = systolic__hor_chans__1_1_load_en | __systolic__hor_chans__1_1_has_been_sent_reg;
  assign __systolic__vert_chans__2_0_has_sent_or_is_ready = systolic__vert_chans__2_0_load_en | __systolic__vert_chans__2_0_has_been_sent_reg;
  assign and_42884 = ~____state_3 & result_exponent__2_0_case_cmp;
  assign and_42885 = ~____state_3 & result_exponent__2_1_case_cmp;
  assign and_42886 = ~____state_3 & is_result_nan__1;
  assign and_42887 = and_42877 & result_fraction__2_0_case_cmp;
  assign and_42888 = and_42877 & result_fraction__2_1_case_cmp;
  assign p0_all_active_outputs_ready = __systolic__hor_chans__1_1_has_sent_or_is_ready & __systolic__vert_chans__2_0_has_sent_or_is_ready;
  assign ____state_1__next_value_predicates = {____state_3, and_42884, and_42885};
  assign ____state_2__next_value_predicates = {____state_3, and_42886, and_42887, and_42888};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_42508 | eq_42509;
  assign has_inf_arg = eq_42554 & eq_42555 | eq_42556 & eq_42557;
  assign and_reduce_42574 = &result_exp__1[7:0];
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign one_hot_42898 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_42899 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_42900 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_42644[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign rounded_fraction = {add_42819, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_42554 | eq_42555) | ~(~eq_42556 | eq_42557) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign shrl_42889 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__1_0_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__1_0_reg[31:31];
  assign result_sign__4 = result_fraction__5_0_case_cmp & result_sign__3;
  assign and_43018 = ____state_3 & p1_data_enable;
  assign and_43019 = and_42884 & p1_data_enable;
  assign and_43020 = and_42885 & p1_data_enable;
  assign and_43027 = and_42886 & p1_data_enable;
  assign and_43028 = and_42887 & p1_data_enable;
  assign and_43029 = and_42888 & p1_data_enable;
  assign and_43035 = ~____state_3 & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__1_0_valid_load_en = p0_load_en | systolic__hor_chans__1_0_valid_inv;
  assign systolic__vert_chans__1_0_valid_load_en = p0_load_en | systolic__vert_chans__1_0_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_42898[2] & and_42884 == one_hot_42898[1] & and_42885 == one_hot_42898[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_42899[3] & and_42886 == one_hot_42899[2] & and_42887 == one_hot_42899[1] & and_42888 == one_hot_42899[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_42900[1] & ____state_3 == one_hot_42900[0];
  assign result_fraction__1 = shrl_42889[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_42574 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_42574 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_43022 = {and_43018, and_43019, and_43020};
  assign concat_43031 = {and_43018, and_43027, and_43028, and_43029};
  assign concat_43037 = {and_43035, and_43018};
  assign __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_1_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_valid_and_ready_txfr = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_load_en;
  assign __systolic__vert_chans__2_0_valid_and_ready_txfr = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_load_en;
  assign __systolic__result_chans__1_0_valid_and_all_active_outputs_ready = __systolic__result_chans__1_0_vld_buf & or_44174;
  assign __systolic__result_chans__1_0_valid_and_ready_txfr = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__1_0_load_en = systolic__hor_chans__1_0_vld & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = systolic__vert_chans__1_0_vld & systolic__vert_chans__1_0_valid_load_en;
  assign or_44103 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_44105 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_44107 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{result_fraction__2_0_case_cmp}};
  assign result_exponent__2 = result_exponent__2_1_case_cmp ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_42923 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_43023 = high_exp & {8{concat_43022[0]}} | wide_exponent__2[7:0] & {8{concat_43022[1]}} | 8'h00 & {8{concat_43022[2]}};
  assign or_43024 = and_43018 | and_43019 | and_43020;
  assign one_hot_sel_43032 = 23'h00_0000 & {23{concat_43031[0]}} | result_fraction__1 & {23{concat_43031[1]}} | nan_fraction & {23{concat_43031[2]}} | 23'h00_0000 & {23{concat_43031[3]}};
  assign or_43033 = and_43018 | and_43027 | and_43028 | and_43029;
  assign one_hot_sel_43038 = unexpand_for_next_value_1248_3_case_1 & concat_43037[0] | unexpand_for_next_value_1248_3_case_0 & concat_43037[1];
  assign or_43039 = and_43035 | and_43018;
  assign __systolic__hor_chans__1_1_not_stage_load = ~__systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_has_been_sent_reg_load_en = __systolic__hor_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_0_has_been_sent_reg_load_en = __systolic__vert_chans__2_0_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_not_stage_load = ~__systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_has_been_sent_reg_load_en = __systolic__result_chans__1_0_valid_and_ready_txfr | __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign new_accum = {p1_result_sign__4, p1_result_exponent__2, result_fraction__5};
  always_ff @ (posedge clk) begin
    p0_result_exp__4 <= p0_load_en ? result_exp__4 : p0_result_exp__4;
    p0_prod_bexpnot <= p0_load_en ? prod_bexpnot : p0_prod_bexpnot;
    p0_result_fraction__4 <= p0_load_en ? result_fraction__4 : p0_result_fraction__4;
    p0_result_sign__1 <= p0_load_en ? result_sign__1 : p0_result_sign__1;
    p1_____state_3__1 <= p1_load_en ? ____state_3 : p1_____state_3__1;
    p1_is_result_nan__1 <= p1_load_en ? is_result_nan__1 : p1_is_result_nan__1;
    p1_result_fraction__2 <= p1_load_en ? result_fraction__2 : p1_result_fraction__2;
    p1_result_sign__4 <= p1_load_en ? result_sign__4 : p1_result_sign__4;
    p1_result_exponent__2 <= p1_load_en ? result_exponent__2 : p1_result_exponent__2;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
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
      ____state_1 <= or_43024 ? one_hot_sel_43023 : ____state_1;
      ____state_2 <= or_43033 ? one_hot_sel_43032 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_42923 : ____state_0;
      ____state_3 <= or_43039 ? one_hot_sel_43038 : ____state_3;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
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
  `ifdef ASSERT_ON
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44103))) or_44103) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44105))) or_44105) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44107))) or_44107) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  function automatic [1:0] priority_sel_2b_2way (input reg [1:0] sel, input reg [1:0] case0, input reg [1:0] case1, input reg [1:0] default_value);
    begin
      unique casez (sel)
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
          priority_sel_2b_2way = 'X;
        end
      endcase
    end
  endfunction
  function automatic [2:0] priority_sel_3b_2way (input reg [1:0] sel, input reg [2:0] case0, input reg [2:0] case1, input reg [2:0] default_value);
    begin
      unique casez (sel)
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
          priority_sel_3b_2way = 'X;
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
  function automatic logic priority_sel_1b_2way (input reg [1:0] sel, input reg case0, input reg case1, input reg default_value);
    begin
      unique casez (sel)
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
          priority_sel_1b_2way = 'X;
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
  reg p1_____state_3__1;
  reg p1_is_result_nan__1;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [23:0] sign_ext_43306;
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
  wire [26:0] shrl_43321;
  wire [27:0] shll_43323;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_43332;
  wire sticky__2;
  wire [27:0] concat_43338;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_43379;
  wire nor_43374;
  wire nor_43375;
  wire nor_43365;
  wire nor_43366;
  wire and_43408;
  wire nor_43410;
  wire nor_43412;
  wire and_43405;
  wire nor_43401;
  wire and_43397;
  wire nor_43398;
  wire nor_43392;
  wire nor_43394;
  wire and_43437;
  wire nor_43418;
  wire nor_43419;
  wire and_43458;
  wire [1:0] priority_sel_43459;
  wire and_43454;
  wire and_43450;
  wire and_43446;
  wire [2:0] concat_43472;
  wire [2:0] concat_43469;
  wire [2:0] concat_43468;
  wire [2:0] concat_43466;
  wire [2:0] concat_43465;
  wire and_43477;
  wire [3:0] concat_43481;
  wire [3:0] sel_44081;
  wire [4:0] concat_43489;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_43196;
  wire eq_43197;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_43200;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_43203;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_43205;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_43507;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_43517;
  wire [5:0] sub_43518;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire __systolic__result_chans__1_1_vld_buf;
  wire __systolic__result_chans__1_1_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_inv;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire __systolic__result_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_load_en;
  wire [9:0] wide_exponent;
  wire ne_43228;
  wire systolic__result_chans__1_1_load_en;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire or_44194;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire p2_stage_done;
  wire p2_not_valid;
  wire eq_43527;
  wire eq_43528;
  wire eq_43529;
  wire eq_43530;
  wire [23:0] fraction__6;
  wire p1_enable;
  wire [23:0] fraction__7;
  wire p1_data_enable;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_43239;
  wire p1_load_en;
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
  wire and_reduce_43557;
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
  wire and_43565;
  wire result_fraction__2_0_case_cmp;
  wire eq_43242;
  wire eq_43243;
  wire eq_43244;
  wire eq_43245;
  wire [8:0] result_exp__1;
  wire __systolic__hor_chans__1_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_1_has_sent_or_is_ready;
  wire and_43572;
  wire and_43573;
  wire and_43574;
  wire and_43575;
  wire and_43576;
  wire p0_all_active_outputs_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_43262;
  wire p0_stage_done;
  wire [3:0] one_hot_43586;
  wire [4:0] one_hot_43587;
  wire [2:0] one_hot_43588;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_data_enable;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_load_en;
  wire systolic__hor_chans__1_1_valid_inv;
  wire systolic__vert_chans__1_1_valid_inv;
  wire [27:0] shrl_43577;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_43706;
  wire and_43707;
  wire and_43708;
  wire and_43715;
  wire and_43716;
  wire and_43717;
  wire and_43723;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_43710;
  wire [3:0] concat_43719;
  wire [1:0] concat_43725;
  wire __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_1_valid_and_ready_txfr;
  wire __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_1_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire or_44109;
  wire or_44111;
  wire or_44113;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_43611;
  wire [7:0] one_hot_sel_43711;
  wire or_43712;
  wire [22:0] one_hot_sel_43720;
  wire or_43721;
  wire one_hot_sel_43726;
  wire or_43727;
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
  assign sign_ext_43306 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_43306;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1279_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_43321 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_43323 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_43332 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_43321[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1279_3_case_1, ~prod_fraction} | ~sign_ext_43306 | shll_43323[26:3]) != 24'h00_0000;
  assign concat_43338 = {add_43332[24:0], shrl_43321[2:1], shrl_43321[0] | sticky__2};
  assign accumbs_fraction = add_43332[25] ? -concat_43338 : concat_43338;
  assign carry_bit = accumbs_fraction[27];
  assign nor_43379 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_43374 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_43375 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_43365 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_43366 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_43408 = ~(carry_bit | accumbs_fraction[26]) & nor_43379;
  assign nor_43410 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_43412 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_43405 = nor_43375 & nor_43374;
  assign nor_43401 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_43397 = nor_43366 & nor_43365;
  assign nor_43398 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_43392 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_43394 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_43437 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_43410;
  assign nor_43418 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_43419 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_43458 = and_43408 & and_43437;
  assign priority_sel_43459 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_43379), and_43408}, {nor_43412, unexpand_for_next_value_1279_3_case_1}, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1279_3_case_1, nor_43412});
  assign and_43454 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_43401;
  assign and_43450 = nor_43394 & nor_43392;
  assign and_43446 = nor_43419 & nor_43418;
  assign concat_43472 = {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_43410) ? {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1279_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_43469 = {and_43405, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_43374), and_43405}, 2'h0, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_43375, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_43468 = {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_43401) ? {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1279_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_43466 = {and_43397, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_43365), and_43397}, {nor_43398, unexpand_for_next_value_1279_3_case_1}, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_43366, nor_43398})};
  assign concat_43465 = {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_43392) ? {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_43394, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_43477 = and_43405 & and_43454;
  assign concat_43481 = {unexpand_for_next_value_1279_3_case_0, and_43446, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_43418), and_43446}, 2'h0, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_43419, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_44081 = ~(~and_43458 | and_43477) ? {unexpand_for_next_value_1279_3_case_0, ~(~and_43405 | and_43454) ? concat_43468 : concat_43469} : {and_43458, priority_sel_3b_2way({~(~and_43408 | and_43437), and_43458}, {priority_sel_43459, unexpand_for_next_value_1279_3_case_1}, concat_43472, {unexpand_for_next_value_1279_3_case_1, priority_sel_43459})};
  assign concat_43489 = {unexpand_for_next_value_1279_3_case_0, and_43397 & and_43450 ? concat_43481 : {unexpand_for_next_value_1279_3_case_1, ~(~and_43397 | and_43450) ? concat_43465 : concat_43466}};
  assign leading_zeroes = and_43458 & and_43477 ? concat_43489 : {unexpand_for_next_value_1279_3_case_1, sel_44081};
  assign a_bexp__1 = __systolic__hor_chans__1_1_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__1_1_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1279_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__1_1_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__1_1_reg[22:0];
  assign eq_43196 = a_bexp__1 == 8'h00;
  assign eq_43197 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1279_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1279_3_case_0, b_fraction__1};
  assign nor_43200 = ~(eq_43196 | eq_43197);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_43203 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_43205 = {unexpand_for_next_value_1279_3_case_1, a_bexp__1} + {unexpand_for_next_value_1279_3_case_1, b_bexp__2};
  assign fraction = umul_43203 & {48{nor_43200}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1279_3_case_1, add_43205} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_43200}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_43507 = {unexpand_for_next_value_1279_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_43507[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1279_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_43517 = {unexpand_for_next_value_1279_3_case_1, accum_bexp} + 9'h001;
  assign sub_43518 = {5'h00, rounding_carry} - {unexpand_for_next_value_1279_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_43332 == 26'h000_0000 & ~(shrl_43321[1] | shrl_43321[2]) & ~(shrl_43321[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign __systolic__result_chans__1_1_vld_buf = p1_valid & p1_____state_3__1;
  assign __systolic__result_chans__1_1_not_has_been_sent = ~__systolic__result_chans__1_1_has_been_sent_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1279_3_case_1, add_43517};
  assign wide_exponent_associative_element__1 = {{4{sub_43518[5]}}, sub_43518};
  assign __systolic__result_chans__1_1_valid_and_not_has_been_sent = __systolic__result_chans__1_1_vld_buf & __systolic__result_chans__1_1_not_has_been_sent;
  assign systolic__result_chans__1_1_valid_load_en = systolic__result_chans__1_1_rdy | systolic__result_chans__1_1_valid_inv;
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_43228 = fraction__4[21:0] != 22'h00_0000;
  assign systolic__result_chans__1_1_load_en = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_valid_load_en;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_43228;
  assign or_44194 = ~p1_____state_3__1 | systolic__result_chans__1_1_load_en | __systolic__result_chans__1_1_has_been_sent_reg;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_43228 | ~fraction__4[23]);
  assign p2_stage_done = p1_valid & or_44194;
  assign p2_not_valid = ~p1_valid;
  assign eq_43527 = accum_bexp == high_exp;
  assign eq_43528 = accum_fraction == 23'h00_0000;
  assign eq_43529 = prod_bexp == high_exp;
  assign eq_43530 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1279_3_case_1, fraction__5};
  assign p1_enable = p2_stage_done | rst | p2_not_valid;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p1_data_enable = p1_enable & p0_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_43239 = exp__2 + 10'h001;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign has_pos_inf = ~(~eq_43527 | ~eq_43528 | accum_sign) | ~(~eq_43529 | ~eq_43530 | prod_sign);
  assign has_neg_inf = eq_43527 & eq_43528 & accum_sign | eq_43529 & eq_43530 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_43239 : exp__2;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_1_valid_reg & __systolic__vert_chans__1_1_valid_reg;
  assign p0_enable = p1_load_en | p1_not_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign __systolic__hor_chans__1_2_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__1_2_not_has_been_sent = ~__systolic__hor_chans__1_2_has_been_sent_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign __systolic__vert_chans__2_1_not_has_been_sent = ~__systolic__vert_chans__2_1_has_been_sent_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign is_result_nan__1 = ~(~eq_43527 | eq_43528) | ~(~eq_43529 | eq_43530) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_43527 & eq_43528 | eq_43529 & eq_43530;
  assign and_reduce_43557 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__1_2_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_vld_buf & __systolic__hor_chans__1_2_not_has_been_sent;
  assign systolic__hor_chans__1_2_valid_load_en = systolic__hor_chans__1_2_rdy | systolic__hor_chans__1_2_valid_inv;
  assign __systolic__vert_chans__2_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_vld_buf & __systolic__vert_chans__2_1_not_has_been_sent;
  assign systolic__vert_chans__2_1_valid_load_en = systolic__vert_chans__2_1_rdy | systolic__vert_chans__2_1_valid_inv;
  assign result_exponent__2_1_case_cmp = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_43557;
  assign result_fraction__5_0_case_cmp = ~is_result_nan__1;
  assign result_fraction__2_1_case_cmp = is_operand_inf | wide_exponent__2[8] | and_reduce_43557 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign systolic__hor_chans__1_2_load_en = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_valid_load_en;
  assign result_exponent__2_0_case_cmp = ~result_exponent__2_1_case_cmp;
  assign and_43565 = ~____state_3 & result_fraction__5_0_case_cmp;
  assign result_fraction__2_0_case_cmp = ~result_fraction__2_1_case_cmp;
  assign eq_43242 = a_bexp__1 == high_exp;
  assign eq_43243 = a_fraction__1 == 23'h00_0000;
  assign eq_43244 = b_bexp__2 == high_exp;
  assign eq_43245 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign __systolic__hor_chans__1_2_has_sent_or_is_ready = systolic__hor_chans__1_2_load_en | __systolic__hor_chans__1_2_has_been_sent_reg;
  assign __systolic__vert_chans__2_1_has_sent_or_is_ready = systolic__vert_chans__2_1_load_en | __systolic__vert_chans__2_1_has_been_sent_reg;
  assign and_43572 = ~____state_3 & result_exponent__2_0_case_cmp;
  assign and_43573 = ~____state_3 & result_exponent__2_1_case_cmp;
  assign and_43574 = ~____state_3 & is_result_nan__1;
  assign and_43575 = and_43565 & result_fraction__2_0_case_cmp;
  assign and_43576 = and_43565 & result_fraction__2_1_case_cmp;
  assign p0_all_active_outputs_ready = __systolic__hor_chans__1_2_has_sent_or_is_ready & __systolic__vert_chans__2_1_has_sent_or_is_ready;
  assign ____state_1__next_value_predicates = {____state_3, and_43572, and_43573};
  assign ____state_2__next_value_predicates = {____state_3, and_43574, and_43575, and_43576};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_43196 | eq_43197;
  assign has_inf_arg = eq_43242 & eq_43243 | eq_43244 & eq_43245;
  assign and_reduce_43262 = &result_exp__1[7:0];
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign one_hot_43586 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_43587 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_43588 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_43332[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign rounded_fraction = {add_43507, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_43242 | eq_43243) | ~(~eq_43244 | eq_43245) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign shrl_43577 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__1_1_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__1_1_reg[31:31];
  assign result_sign__4 = result_fraction__5_0_case_cmp & result_sign__3;
  assign and_43706 = ____state_3 & p1_data_enable;
  assign and_43707 = and_43572 & p1_data_enable;
  assign and_43708 = and_43573 & p1_data_enable;
  assign and_43715 = and_43574 & p1_data_enable;
  assign and_43716 = and_43575 & p1_data_enable;
  assign and_43717 = and_43576 & p1_data_enable;
  assign and_43723 = ~____state_3 & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__1_1_valid_load_en = p0_load_en | systolic__hor_chans__1_1_valid_inv;
  assign systolic__vert_chans__1_1_valid_load_en = p0_load_en | systolic__vert_chans__1_1_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_43586[2] & and_43572 == one_hot_43586[1] & and_43573 == one_hot_43586[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_43587[3] & and_43574 == one_hot_43587[2] & and_43575 == one_hot_43587[1] & and_43576 == one_hot_43587[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_43588[1] & ____state_3 == one_hot_43588[0];
  assign result_fraction__1 = shrl_43577[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_43262 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_43262 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_43710 = {and_43706, and_43707, and_43708};
  assign concat_43719 = {and_43706, and_43715, and_43716, and_43717};
  assign concat_43725 = {and_43723, and_43706};
  assign __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_2_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_valid_and_ready_txfr = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_load_en;
  assign __systolic__vert_chans__2_1_valid_and_ready_txfr = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_load_en;
  assign __systolic__result_chans__1_1_valid_and_all_active_outputs_ready = __systolic__result_chans__1_1_vld_buf & or_44194;
  assign __systolic__result_chans__1_1_valid_and_ready_txfr = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__1_1_load_en = systolic__hor_chans__1_1_vld & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = systolic__vert_chans__1_1_vld & systolic__vert_chans__1_1_valid_load_en;
  assign or_44109 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_44111 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_44113 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{result_fraction__2_0_case_cmp}};
  assign result_exponent__2 = result_exponent__2_1_case_cmp ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_43611 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_43711 = high_exp & {8{concat_43710[0]}} | wide_exponent__2[7:0] & {8{concat_43710[1]}} | 8'h00 & {8{concat_43710[2]}};
  assign or_43712 = and_43706 | and_43707 | and_43708;
  assign one_hot_sel_43720 = 23'h00_0000 & {23{concat_43719[0]}} | result_fraction__1 & {23{concat_43719[1]}} | nan_fraction & {23{concat_43719[2]}} | 23'h00_0000 & {23{concat_43719[3]}};
  assign or_43721 = and_43706 | and_43715 | and_43716 | and_43717;
  assign one_hot_sel_43726 = unexpand_for_next_value_1279_3_case_1 & concat_43725[0] | unexpand_for_next_value_1279_3_case_0 & concat_43725[1];
  assign or_43727 = and_43723 | and_43706;
  assign __systolic__hor_chans__1_2_not_stage_load = ~__systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_has_been_sent_reg_load_en = __systolic__hor_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_1_has_been_sent_reg_load_en = __systolic__vert_chans__2_1_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_not_stage_load = ~__systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_has_been_sent_reg_load_en = __systolic__result_chans__1_1_valid_and_ready_txfr | __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign new_accum = {p1_result_sign__4, p1_result_exponent__2, result_fraction__5};
  always_ff @ (posedge clk) begin
    p0_result_exp__4 <= p0_load_en ? result_exp__4 : p0_result_exp__4;
    p0_prod_bexpnot <= p0_load_en ? prod_bexpnot : p0_prod_bexpnot;
    p0_result_fraction__4 <= p0_load_en ? result_fraction__4 : p0_result_fraction__4;
    p0_result_sign__1 <= p0_load_en ? result_sign__1 : p0_result_sign__1;
    p1_____state_3__1 <= p1_load_en ? ____state_3 : p1_____state_3__1;
    p1_is_result_nan__1 <= p1_load_en ? is_result_nan__1 : p1_is_result_nan__1;
    p1_result_fraction__2 <= p1_load_en ? result_fraction__2 : p1_result_fraction__2;
    p1_result_sign__4 <= p1_load_en ? result_sign__4 : p1_result_sign__4;
    p1_result_exponent__2 <= p1_load_en ? result_exponent__2 : p1_result_exponent__2;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
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
      ____state_1 <= or_43712 ? one_hot_sel_43711 : ____state_1;
      ____state_2 <= or_43721 ? one_hot_sel_43720 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_43611 : ____state_0;
      ____state_3 <= or_43727 ? one_hot_sel_43726 : ____state_3;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
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
  `ifdef ASSERT_ON
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44109))) or_44109) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44111))) or_44111) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44113))) or_44113) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire instantiation_output_43832;
  wire instantiation_output_43838;
  wire [31:0] instantiation_output_43843;
  wire instantiation_output_43844;
  wire instantiation_output_43877;
  wire [31:0] instantiation_output_43882;
  wire instantiation_output_43883;
  wire instantiation_output_43916;
  wire [31:0] instantiation_output_43920[2][2];
  wire instantiation_output_43921;
  wire instantiation_output_43935;
  wire instantiation_output_43948;
  wire instantiation_output_43961;
  wire instantiation_output_43974;
  wire [31:0] instantiation_output_43979;
  wire instantiation_output_43980;
  wire [31:0] instantiation_output_43992;
  wire instantiation_output_43993;
  wire instantiation_output_44039;
  wire instantiation_output_44052;
  wire instantiation_output_43851;
  wire [31:0] instantiation_output_43856;
  wire instantiation_output_43857;
  wire [31:0] instantiation_output_43927;
  wire instantiation_output_43928;
  wire instantiation_output_43987;
  wire [31:0] instantiation_output_44005;
  wire instantiation_output_44006;
  wire instantiation_output_43864;
  wire [31:0] instantiation_output_43869;
  wire instantiation_output_43870;
  wire [31:0] instantiation_output_43940;
  wire instantiation_output_43941;
  wire instantiation_output_44000;
  wire [31:0] instantiation_output_44018;
  wire instantiation_output_44019;
  wire instantiation_output_43890;
  wire [31:0] instantiation_output_43895;
  wire instantiation_output_43896;
  wire [31:0] instantiation_output_43953;
  wire instantiation_output_43954;
  wire instantiation_output_44013;
  wire [31:0] instantiation_output_44031;
  wire instantiation_output_44032;
  wire instantiation_output_43903;
  wire [31:0] instantiation_output_43908;
  wire instantiation_output_43909;
  wire [31:0] instantiation_output_43966;
  wire instantiation_output_43967;
  wire instantiation_output_44026;
  wire [31:0] instantiation_output_44044;
  wire instantiation_output_44045;
  wire instantiation_output_43845;
  wire [31:0] instantiation_output_43849;
  wire instantiation_output_43850;
  wire instantiation_output_43858;
  wire [31:0] instantiation_output_43862;
  wire instantiation_output_43863;
  wire instantiation_output_43871;
  wire [31:0] instantiation_output_43875;
  wire instantiation_output_43876;
  wire instantiation_output_43884;
  wire [31:0] instantiation_output_43888;
  wire instantiation_output_43889;
  wire instantiation_output_43897;
  wire [31:0] instantiation_output_43901;
  wire instantiation_output_43902;
  wire instantiation_output_43910;
  wire [31:0] instantiation_output_43914;
  wire instantiation_output_43915;
  wire instantiation_output_43929;
  wire [31:0] instantiation_output_43933;
  wire instantiation_output_43934;
  wire instantiation_output_43942;
  wire [31:0] instantiation_output_43946;
  wire instantiation_output_43947;
  wire instantiation_output_43955;
  wire [31:0] instantiation_output_43959;
  wire instantiation_output_43960;
  wire instantiation_output_43968;
  wire [31:0] instantiation_output_43972;
  wire instantiation_output_43973;
  wire instantiation_output_43981;
  wire [31:0] instantiation_output_43985;
  wire instantiation_output_43986;
  wire instantiation_output_43994;
  wire [31:0] instantiation_output_43998;
  wire instantiation_output_43999;
  wire instantiation_output_44007;
  wire [31:0] instantiation_output_44011;
  wire instantiation_output_44012;
  wire instantiation_output_44020;
  wire [31:0] instantiation_output_44024;
  wire instantiation_output_44025;
  wire instantiation_output_44033;
  wire [31:0] instantiation_output_44037;
  wire instantiation_output_44038;
  wire instantiation_output_44046;
  wire [31:0] instantiation_output_44050;
  wire instantiation_output_44051;

  // ===== Instantiations
  __systolic__SystolicArray_0_next__1 __systolic__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .systolic__arg0({{systolic__arg0_unflattened[1][1], systolic__arg0_unflattened[1][0]}, {systolic__arg0_unflattened[0][1], systolic__arg0_unflattened[0][0]}}),
    .systolic__arg0_vld(systolic__arg0_vld),
    .systolic__arg1({{systolic__arg1_unflattened[1][1], systolic__arg1_unflattened[1][0]}, {systolic__arg1_unflattened[0][1], systolic__arg1_unflattened[0][0]}}),
    .systolic__arg1_vld(systolic__arg1_vld),
    .systolic__hor_chans__0_0_rdy(instantiation_output_43845),
    .systolic__hor_chans__0_2(instantiation_output_43875),
    .systolic__hor_chans__0_2_vld(instantiation_output_43876),
    .systolic__hor_chans__1_0_rdy(instantiation_output_43884),
    .systolic__hor_chans__1_2(instantiation_output_43914),
    .systolic__hor_chans__1_2_vld(instantiation_output_43915),
    .systolic__out0_rdy(systolic__out0_rdy),
    .systolic__result_chans__0_0(instantiation_output_43933),
    .systolic__result_chans__0_0_vld(instantiation_output_43934),
    .systolic__result_chans__0_1(instantiation_output_43946),
    .systolic__result_chans__0_1_vld(instantiation_output_43947),
    .systolic__result_chans__1_0(instantiation_output_43959),
    .systolic__result_chans__1_0_vld(instantiation_output_43960),
    .systolic__result_chans__1_1(instantiation_output_43972),
    .systolic__result_chans__1_1_vld(instantiation_output_43973),
    .systolic__vert_chans__0_0_rdy(instantiation_output_43981),
    .systolic__vert_chans__0_1_rdy(instantiation_output_43994),
    .systolic__vert_chans__2_0(instantiation_output_44037),
    .systolic__vert_chans__2_0_vld(instantiation_output_44038),
    .systolic__vert_chans__2_1(instantiation_output_44050),
    .systolic__vert_chans__2_1_vld(instantiation_output_44051),
    .systolic__arg0_rdy(instantiation_output_43832),
    .systolic__arg1_rdy(instantiation_output_43838),
    .systolic__hor_chans__0_0(instantiation_output_43843),
    .systolic__hor_chans__0_0_vld(instantiation_output_43844),
    .systolic__hor_chans__0_2_rdy(instantiation_output_43877),
    .systolic__hor_chans__1_0(instantiation_output_43882),
    .systolic__hor_chans__1_0_vld(instantiation_output_43883),
    .systolic__hor_chans__1_2_rdy(instantiation_output_43916),
    .systolic__out0({{instantiation_output_43920[1][1], instantiation_output_43920[1][0]}, {instantiation_output_43920[0][1], instantiation_output_43920[0][0]}}),
    .systolic__out0_vld(instantiation_output_43921),
    .systolic__result_chans__0_0_rdy(instantiation_output_43935),
    .systolic__result_chans__0_1_rdy(instantiation_output_43948),
    .systolic__result_chans__1_0_rdy(instantiation_output_43961),
    .systolic__result_chans__1_1_rdy(instantiation_output_43974),
    .systolic__vert_chans__0_0(instantiation_output_43979),
    .systolic__vert_chans__0_0_vld(instantiation_output_43980),
    .systolic__vert_chans__0_1(instantiation_output_43992),
    .systolic__vert_chans__0_1_vld(instantiation_output_43993),
    .systolic__vert_chans__2_0_rdy(instantiation_output_44039),
    .systolic__vert_chans__2_1_rdy(instantiation_output_44052),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_0_next __systolic__SystolicArray__PE_0_next_inst1 (
    .rst(rst),
    .systolic__hor_chans__0_0(instantiation_output_43849),
    .systolic__hor_chans__0_0_vld(instantiation_output_43850),
    .systolic__hor_chans__0_1_rdy(instantiation_output_43858),
    .systolic__result_chans__0_0_rdy(instantiation_output_43929),
    .systolic__vert_chans__0_0(instantiation_output_43985),
    .systolic__vert_chans__0_0_vld(instantiation_output_43986),
    .systolic__vert_chans__1_0_rdy(instantiation_output_44007),
    .systolic__hor_chans__0_0_rdy(instantiation_output_43851),
    .systolic__hor_chans__0_1(instantiation_output_43856),
    .systolic__hor_chans__0_1_vld(instantiation_output_43857),
    .systolic__result_chans__0_0(instantiation_output_43927),
    .systolic__result_chans__0_0_vld(instantiation_output_43928),
    .systolic__vert_chans__0_0_rdy(instantiation_output_43987),
    .systolic__vert_chans__1_0(instantiation_output_44005),
    .systolic__vert_chans__1_0_vld(instantiation_output_44006),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_1_next __systolic__SystolicArray__PE_1_next_inst2 (
    .rst(rst),
    .systolic__hor_chans__0_1(instantiation_output_43862),
    .systolic__hor_chans__0_1_vld(instantiation_output_43863),
    .systolic__hor_chans__0_2_rdy(instantiation_output_43871),
    .systolic__result_chans__0_1_rdy(instantiation_output_43942),
    .systolic__vert_chans__0_1(instantiation_output_43998),
    .systolic__vert_chans__0_1_vld(instantiation_output_43999),
    .systolic__vert_chans__1_1_rdy(instantiation_output_44020),
    .systolic__hor_chans__0_1_rdy(instantiation_output_43864),
    .systolic__hor_chans__0_2(instantiation_output_43869),
    .systolic__hor_chans__0_2_vld(instantiation_output_43870),
    .systolic__result_chans__0_1(instantiation_output_43940),
    .systolic__result_chans__0_1_vld(instantiation_output_43941),
    .systolic__vert_chans__0_1_rdy(instantiation_output_44000),
    .systolic__vert_chans__1_1(instantiation_output_44018),
    .systolic__vert_chans__1_1_vld(instantiation_output_44019),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_2_next __systolic__SystolicArray__PE_2_next_inst3 (
    .rst(rst),
    .systolic__hor_chans__1_0(instantiation_output_43888),
    .systolic__hor_chans__1_0_vld(instantiation_output_43889),
    .systolic__hor_chans__1_1_rdy(instantiation_output_43897),
    .systolic__result_chans__1_0_rdy(instantiation_output_43955),
    .systolic__vert_chans__1_0(instantiation_output_44011),
    .systolic__vert_chans__1_0_vld(instantiation_output_44012),
    .systolic__vert_chans__2_0_rdy(instantiation_output_44033),
    .systolic__hor_chans__1_0_rdy(instantiation_output_43890),
    .systolic__hor_chans__1_1(instantiation_output_43895),
    .systolic__hor_chans__1_1_vld(instantiation_output_43896),
    .systolic__result_chans__1_0(instantiation_output_43953),
    .systolic__result_chans__1_0_vld(instantiation_output_43954),
    .systolic__vert_chans__1_0_rdy(instantiation_output_44013),
    .systolic__vert_chans__2_0(instantiation_output_44031),
    .systolic__vert_chans__2_0_vld(instantiation_output_44032),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_3_next __systolic__SystolicArray__PE_3_next_inst4 (
    .rst(rst),
    .systolic__hor_chans__1_1(instantiation_output_43901),
    .systolic__hor_chans__1_1_vld(instantiation_output_43902),
    .systolic__hor_chans__1_2_rdy(instantiation_output_43910),
    .systolic__result_chans__1_1_rdy(instantiation_output_43968),
    .systolic__vert_chans__1_1(instantiation_output_44024),
    .systolic__vert_chans__1_1_vld(instantiation_output_44025),
    .systolic__vert_chans__2_1_rdy(instantiation_output_44046),
    .systolic__hor_chans__1_1_rdy(instantiation_output_43903),
    .systolic__hor_chans__1_2(instantiation_output_43908),
    .systolic__hor_chans__1_2_vld(instantiation_output_43909),
    .systolic__result_chans__1_1(instantiation_output_43966),
    .systolic__result_chans__1_1_vld(instantiation_output_43967),
    .systolic__vert_chans__1_1_rdy(instantiation_output_44026),
    .systolic__vert_chans__2_1(instantiation_output_44044),
    .systolic__vert_chans__2_1_vld(instantiation_output_44045),
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
    .push_data(instantiation_output_43843),
    .push_valid(instantiation_output_43844),
    .pop_ready(instantiation_output_43851),
    .push_ready(instantiation_output_43845),
    .pop_data(instantiation_output_43849),
    .pop_valid(instantiation_output_43850)
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
    .push_data(instantiation_output_43856),
    .push_valid(instantiation_output_43857),
    .pop_ready(instantiation_output_43864),
    .push_ready(instantiation_output_43858),
    .pop_data(instantiation_output_43862),
    .pop_valid(instantiation_output_43863)
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
    .push_data(instantiation_output_43869),
    .push_valid(instantiation_output_43870),
    .pop_ready(instantiation_output_43877),
    .push_ready(instantiation_output_43871),
    .pop_data(instantiation_output_43875),
    .pop_valid(instantiation_output_43876)
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
    .push_data(instantiation_output_43882),
    .push_valid(instantiation_output_43883),
    .pop_ready(instantiation_output_43890),
    .push_ready(instantiation_output_43884),
    .pop_data(instantiation_output_43888),
    .pop_valid(instantiation_output_43889)
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
    .push_data(instantiation_output_43895),
    .push_valid(instantiation_output_43896),
    .pop_ready(instantiation_output_43903),
    .push_ready(instantiation_output_43897),
    .pop_data(instantiation_output_43901),
    .pop_valid(instantiation_output_43902)
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
    .push_data(instantiation_output_43908),
    .push_valid(instantiation_output_43909),
    .pop_ready(instantiation_output_43916),
    .push_ready(instantiation_output_43910),
    .pop_data(instantiation_output_43914),
    .pop_valid(instantiation_output_43915)
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
    .push_data(instantiation_output_43927),
    .push_valid(instantiation_output_43928),
    .pop_ready(instantiation_output_43935),
    .push_ready(instantiation_output_43929),
    .pop_data(instantiation_output_43933),
    .pop_valid(instantiation_output_43934)
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
    .push_data(instantiation_output_43940),
    .push_valid(instantiation_output_43941),
    .pop_ready(instantiation_output_43948),
    .push_ready(instantiation_output_43942),
    .pop_data(instantiation_output_43946),
    .pop_valid(instantiation_output_43947)
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
    .push_data(instantiation_output_43953),
    .push_valid(instantiation_output_43954),
    .pop_ready(instantiation_output_43961),
    .push_ready(instantiation_output_43955),
    .pop_data(instantiation_output_43959),
    .pop_valid(instantiation_output_43960)
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
    .push_data(instantiation_output_43966),
    .push_valid(instantiation_output_43967),
    .pop_ready(instantiation_output_43974),
    .push_ready(instantiation_output_43968),
    .pop_data(instantiation_output_43972),
    .pop_valid(instantiation_output_43973)
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
    .push_data(instantiation_output_43979),
    .push_valid(instantiation_output_43980),
    .pop_ready(instantiation_output_43987),
    .push_ready(instantiation_output_43981),
    .pop_data(instantiation_output_43985),
    .pop_valid(instantiation_output_43986)
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
    .push_data(instantiation_output_43992),
    .push_valid(instantiation_output_43993),
    .pop_ready(instantiation_output_44000),
    .push_ready(instantiation_output_43994),
    .pop_data(instantiation_output_43998),
    .pop_valid(instantiation_output_43999)
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
    .push_data(instantiation_output_44005),
    .push_valid(instantiation_output_44006),
    .pop_ready(instantiation_output_44013),
    .push_ready(instantiation_output_44007),
    .pop_data(instantiation_output_44011),
    .pop_valid(instantiation_output_44012)
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
    .push_data(instantiation_output_44018),
    .push_valid(instantiation_output_44019),
    .pop_ready(instantiation_output_44026),
    .push_ready(instantiation_output_44020),
    .pop_data(instantiation_output_44024),
    .pop_valid(instantiation_output_44025)
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
    .push_data(instantiation_output_44031),
    .push_valid(instantiation_output_44032),
    .pop_ready(instantiation_output_44039),
    .push_ready(instantiation_output_44033),
    .pop_data(instantiation_output_44037),
    .pop_valid(instantiation_output_44038)
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
    .push_data(instantiation_output_44044),
    .push_valid(instantiation_output_44045),
    .pop_ready(instantiation_output_44052),
    .push_ready(instantiation_output_44046),
    .pop_data(instantiation_output_44050),
    .pop_valid(instantiation_output_44051)
  );
  assign systolic__arg0_rdy = instantiation_output_43832;
  assign systolic__arg1_rdy = instantiation_output_43838;
  assign systolic__out0 = {{instantiation_output_43920[1][1], instantiation_output_43920[1][0]}, {instantiation_output_43920[0][1], instantiation_output_43920[0][0]}};
  assign systolic__out0_vld = instantiation_output_43921;
endmodule
