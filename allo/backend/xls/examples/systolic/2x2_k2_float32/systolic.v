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
  wire [31:0] p3_c10_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] p3_array_40696_init[2];
  assign p3_array_40696_init = '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}};
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
  wire or_44099;
  wire p4_stage_done;
  wire p4_not_valid;
  wire p3_all_active_inputs_valid;
  wire p3_enable;
  wire p3_stage_done;
  wire p3_data_enable;
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
  wire eq_40420;
  wire p2_stage_done;
  wire not_40421;
  wire p2_data_enable;
  wire p2_not_valid;
  wire p1_all_active_inputs_valid;
  wire [1:0] ____state_2__next_value_predicates;
  wire p1_enable;
  wire p1_stage_done;
  wire [2:0] one_hot_40423;
  wire [31:0] systolic__arg0_select[2][2];
  wire [31:0] systolic__arg1_select[2][2];
  wire p1_data_enable;
  wire p1_not_valid;
  wire [31:0] array_index_40466;
  wire [31:0] array_index_40502;
  wire [31:0] array_index_40483;
  wire [31:0] array_index_40503;
  wire [31:0] array_index_40504;
  wire [31:0] array_index_40505;
  wire [31:0] array_index_40467;
  wire [31:0] array_index_40486;
  wire p0_enable;
  wire and_40849;
  wire systolic__arg0_valid_inv;
  wire systolic__arg1_valid_inv;
  wire systolic__hor_chans__0_2_valid_inv;
  wire systolic__hor_chans__1_2_valid_inv;
  wire and_40851;
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
  wire and_40838;
  wire and_40839;
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
  wire [1:0] concat_40840;
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
  wire or_44069;
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
  wire [1:0] one_hot_sel_40841;
  wire or_40842;
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
  assign or_44099 = ~p3_eq_40420 | systolic__out0_load_en | __systolic__out0_has_been_sent_reg;
  assign p4_stage_done = p3_valid & or_40729 & or_44099;
  assign p4_not_valid = ~p3_valid;
  assign p3_all_active_inputs_valid = (~p2_eq_40420 | __systolic__result_chans__0_0_valid_reg) & (~p2_eq_40420 | __systolic__result_chans__0_1_valid_reg) & (~p2_eq_40420 | __systolic__result_chans__1_0_valid_reg);
  assign p3_enable = p4_stage_done | p4_not_valid;
  assign p3_stage_done = p2_valid & p3_all_active_inputs_valid;
  assign p3_data_enable = p3_enable & p3_stage_done;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_data_enable | p3_not_valid;
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
  assign eq_40420 = ____state_2 == 2'h2;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign not_40421 = ~eq_40420;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_not_valid = ~p1_valid;
  assign p1_all_active_inputs_valid = (~p0_nor_40419 | __systolic__arg0_valid_reg) & (~p0_nor_40419 | __systolic__arg1_valid_reg);
  assign ____state_2__next_value_predicates = {not_40421, eq_40420};
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & p1_all_active_inputs_valid;
  assign one_hot_40423 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign systolic__arg0_select = p0_nor_40419 == 1'h0 ? literal_40457 : __systolic__arg0_reg;
  assign systolic__arg1_select = p0_nor_40419 == 1'h0 ? literal_40461 : __systolic__arg1_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign array_index_40466 = systolic__arg0_select[1'h0][1'h0];
  assign array_index_40502 = systolic__arg0_select[1'h0][1'h1];
  assign array_index_40483 = systolic__arg0_select[1'h1][1'h0];
  assign array_index_40503 = systolic__arg0_select[1'h1][1'h1];
  assign array_index_40504 = systolic__arg1_select[1'h1][1'h0];
  assign array_index_40505 = systolic__arg1_select[1'h1][1'h1];
  assign array_index_40467 = systolic__arg1_select[1'h0][1'h0];
  assign array_index_40486 = systolic__arg1_select[1'h0][1'h1];
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign and_40849 = p1_data_enable & p0_nor_40419;
  assign systolic__arg0_valid_inv = ~__systolic__arg0_valid_reg;
  assign systolic__arg1_valid_inv = ~__systolic__arg1_valid_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign and_40851 = p3_data_enable & p2_eq_40420;
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
  assign and_40838 = not_40421 & p0_enable;
  assign and_40839 = eq_40420 & p0_enable;
  assign systolic__result_chans__1_1_select = p3_eq_40420 ? __systolic__result_chans__1_1_reg : literal_40706;
  assign systolic__arg0_valid_load_en = and_40849 | systolic__arg0_valid_inv;
  assign systolic__arg1_valid_load_en = and_40849 | systolic__arg1_valid_inv;
  assign systolic__hor_chans__0_2_valid_load_en = p0_enable | systolic__hor_chans__0_2_valid_inv;
  assign systolic__hor_chans__1_2_valid_load_en = p0_enable | systolic__hor_chans__1_2_valid_inv;
  assign systolic__result_chans__0_0_valid_load_en = and_40851 | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_1_valid_load_en = and_40851 | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__1_0_valid_load_en = and_40851 | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_1_valid_load_en = p4_stage_done & p3_eq_40420 | systolic__result_chans__1_1_valid_inv;
  assign systolic__vert_chans__2_0_valid_load_en = p0_enable | systolic__vert_chans__2_0_valid_inv;
  assign systolic__vert_chans__2_1_valid_load_en = p0_enable | systolic__vert_chans__2_1_valid_inv;
  assign ____state_2__at_most_one_next_value = not_40421 == one_hot_40423[1] & eq_40420 == one_hot_40423[0];
  assign systolic__result_chans__0_0_select = p2_eq_40420 ? __systolic__result_chans__0_0_reg : literal_40679;
  assign systolic__result_chans__0_1_select = p2_eq_40420 ? __systolic__result_chans__0_1_reg : literal_40684;
  assign bit_slice_40418 = ____state_2[1];
  assign sign_ext_40527 = {8{p0_not_40421}};
  assign sign_ext_40529 = {23{p0_not_40421}};
  assign concat_40840 = {and_40838, and_40839};
  assign unexpand_for_next_value_1155_2__4_case_1 = 2'h0;
  assign unexpand_for_next_value_1155_2__4_case_0 = ____state_2 + 2'h1;
  assign __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_0_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_valid_and_ready_txfr = __systolic__hor_chans__0_0_valid_and_not_has_been_sent & systolic__hor_chans__0_0_load_en;
  assign __systolic__vert_chans__0_0_valid_and_ready_txfr = __systolic__vert_chans__0_0_valid_and_not_has_been_sent & systolic__vert_chans__0_0_load_en;
  assign __systolic__hor_chans__1_0_valid_and_ready_txfr = __systolic__hor_chans__1_0_valid_and_not_has_been_sent & systolic__hor_chans__1_0_load_en;
  assign __systolic__vert_chans__0_1_valid_and_ready_txfr = __systolic__vert_chans__0_1_valid_and_not_has_been_sent & systolic__vert_chans__0_1_load_en;
  assign __systolic__out0_valid_and_all_active_outputs_ready = __systolic__out0_vld_buf & or_44099;
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
  assign or_44069 = ~p0_stage_done | ____state_2__at_most_one_next_value | rst;
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
  assign one_hot_sel_40841 = unexpand_for_next_value_1155_2__4_case_1 & {2{concat_40840[0]}} | unexpand_for_next_value_1155_2__4_case_0 & {2{concat_40840[1]}};
  assign or_40842 = and_40838 | and_40839;
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
    if (rst) begin
      ____state_2 <= 2'h0;
      p0_bit_slice_40418 <= 1'h0;
      p0_nor_40419 <= 1'h0;
      p0_eq_40420 <= 1'h0;
      p0_not_40421 <= 1'h0;
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
      p1_bit_slice_40418 <= 1'h0;
      p1_nor_40419 <= 1'h0;
      p1_tuple_index_40470 <= 1'h0;
      p1_tuple_index_40475 <= 1'h0;
      p1_sel_40481 <= 8'h00;
      p1_sel_40482 <= 23'h00_0000;
      p1_sel_40484 <= 8'h00;
      p1_sel_40485 <= 23'h00_0000;
      p1_tuple_index_40488 <= 1'h0;
      p1_tuple_index_40493 <= 1'h0;
      p1_sel_40498 <= 8'h00;
      p1_sel_40499 <= 23'h00_0000;
      p1_sel_40500 <= 8'h00;
      p1_sel_40501 <= 23'h00_0000;
      p1_eq_40420 <= 1'h0;
      p1_tuple_index_40506 <= 1'h0;
      p1_tuple_index_40507 <= 1'h0;
      p1_tuple_index_40508 <= 1'h0;
      p1_tuple_index_40509 <= 1'h0;
      ____state_0_0_3 <= 1'h0;
      ____state_1_1_0 <= 1'h0;
      ____state_0_1_3 <= 1'h0;
      ____state_1_1_3 <= 1'h0;
      ____state_0_0_0 <= 1'h0;
      ____state_0_1_0 <= 1'h0;
      ____state_1_0_0 <= 1'h0;
      ____state_1_0_3 <= 1'h0;
      p2_eq_40420 <= 1'h0;
      p3_eq_40420 <= 1'h0;
      p3_c10 <= p3_c10_init;
      p3_array_40696 <= p3_array_40696_init;
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
      ____state_2 <= or_40842 ? one_hot_sel_40841 : ____state_2;
      p0_bit_slice_40418 <= p0_enable ? bit_slice_40418 : p0_bit_slice_40418;
      p0_nor_40419 <= p0_enable ? nor_40419 : p0_nor_40419;
      p0_eq_40420 <= p0_enable ? eq_40420 : p0_eq_40420;
      p0_not_40421 <= p0_enable ? not_40421 : p0_not_40421;
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
      p1_bit_slice_40418 <= p1_data_enable ? p0_bit_slice_40418 : p1_bit_slice_40418;
      p1_nor_40419 <= p1_data_enable ? p0_nor_40419 : p1_nor_40419;
      p1_tuple_index_40470 <= p1_data_enable ? tuple_index_40470 : p1_tuple_index_40470;
      p1_tuple_index_40475 <= p1_data_enable ? tuple_index_40475 : p1_tuple_index_40475;
      p1_sel_40481 <= p1_data_enable ? sel_40481 : p1_sel_40481;
      p1_sel_40482 <= p1_data_enable ? sel_40482 : p1_sel_40482;
      p1_sel_40484 <= p1_data_enable ? sel_40484 : p1_sel_40484;
      p1_sel_40485 <= p1_data_enable ? sel_40485 : p1_sel_40485;
      p1_tuple_index_40488 <= p1_data_enable ? tuple_index_40488 : p1_tuple_index_40488;
      p1_tuple_index_40493 <= p1_data_enable ? tuple_index_40493 : p1_tuple_index_40493;
      p1_sel_40498 <= p1_data_enable ? sel_40498 : p1_sel_40498;
      p1_sel_40499 <= p1_data_enable ? sel_40499 : p1_sel_40499;
      p1_sel_40500 <= p1_data_enable ? sel_40500 : p1_sel_40500;
      p1_sel_40501 <= p1_data_enable ? sel_40501 : p1_sel_40501;
      p1_eq_40420 <= p1_data_enable ? p0_eq_40420 : p1_eq_40420;
      p1_tuple_index_40506 <= p1_data_enable ? tuple_index_40506 : p1_tuple_index_40506;
      p1_tuple_index_40507 <= p1_data_enable ? tuple_index_40507 : p1_tuple_index_40507;
      p1_tuple_index_40508 <= p1_data_enable ? tuple_index_40508 : p1_tuple_index_40508;
      p1_tuple_index_40509 <= p1_data_enable ? tuple_index_40509 : p1_tuple_index_40509;
      ____state_0_0_3 <= p2_data_enable ? nor_40659 : ____state_0_0_3;
      ____state_1_1_0 <= p2_data_enable ? nor_40662 : ____state_1_1_0;
      ____state_0_1_3 <= p2_data_enable ? nor_40661 : ____state_0_1_3;
      ____state_1_1_3 <= p2_data_enable ? nor_40663 : ____state_1_1_3;
      ____state_0_0_0 <= p2_data_enable ? nor_40658 : ____state_0_0_0;
      ____state_0_1_0 <= p2_data_enable ? nor_40660 : ____state_0_1_0;
      ____state_1_0_0 <= p2_data_enable ? nor_40664 : ____state_1_0_0;
      ____state_1_0_3 <= p2_data_enable ? nor_40665 : ____state_1_0_3;
      p2_eq_40420 <= p2_data_enable ? p1_eq_40420 : p2_eq_40420;
      p3_eq_40420 <= p3_data_enable ? p2_eq_40420 : p3_eq_40420;
      p3_c10 <= p3_data_enable ? systolic__result_chans__1_0_select : p3_c10;
      p3_array_40696 <= p3_data_enable ? array_40696 : p3_array_40696;
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
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44069))) or_44069) else $fatal(0, "More than one next_value fired for state element: __state_2");
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
  wire [23:0] sign_ext_41238;
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
  wire [26:0] shrl_41253;
  wire [27:0] shll_41255;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_41264;
  wire sticky__2;
  wire [27:0] concat_41270;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_41311;
  wire nor_41306;
  wire nor_41307;
  wire nor_41297;
  wire nor_41298;
  wire and_41340;
  wire nor_41342;
  wire nor_41344;
  wire and_41337;
  wire nor_41333;
  wire and_41329;
  wire nor_41330;
  wire nor_41324;
  wire nor_41326;
  wire and_41369;
  wire nor_41350;
  wire nor_41351;
  wire and_41390;
  wire [1:0] priority_sel_41391;
  wire and_41386;
  wire and_41382;
  wire and_41378;
  wire [2:0] concat_41404;
  wire [2:0] concat_41401;
  wire [2:0] concat_41400;
  wire [2:0] concat_41398;
  wire [2:0] concat_41397;
  wire and_41409;
  wire [3:0] concat_41413;
  wire [3:0] sel_44037;
  wire [4:0] concat_41421;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_41128;
  wire eq_41129;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_41132;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_41135;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_41137;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_41439;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_41449;
  wire [5:0] sub_41450;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_41160;
  wire __systolic__result_chans__0_0_vld_buf;
  wire __systolic__result_chans__0_0_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__0_0_load_en;
  wire eq_41459;
  wire eq_41460;
  wire eq_41461;
  wire eq_41462;
  wire [23:0] fraction__6;
  wire or_44114;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_41171;
  wire p1_enable;
  wire has_pos_inf;
  wire has_neg_inf;
  wire [9:0] exp__3;
  wire p1_data_enable;
  wire p1_not_valid;
  wire is_subnormal;
  wire p0_all_active_inputs_valid;
  wire p0_enable;
  wire is_result_nan__1;
  wire is_operand_inf;
  wire and_reduce_41489;
  wire __systolic__hor_chans__0_1_vld_buf;
  wire __systolic__hor_chans__0_1_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_inv;
  wire __systolic__vert_chans__1_0_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_inv;
  wire or_41492;
  wire or_41495;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire __systolic__vert_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire and_41497;
  wire eq_41174;
  wire eq_41175;
  wire eq_41176;
  wire eq_41177;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire and_41504;
  wire and_41505;
  wire and_41506;
  wire and_41507;
  wire and_41508;
  wire __systolic__hor_chans__0_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_0_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_41194;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_41518;
  wire [4:0] one_hot_41519;
  wire [2:0] one_hot_41520;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__0_0_valid_inv;
  wire systolic__vert_chans__0_0_valid_inv;
  wire [27:0] shrl_41509;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_41634;
  wire and_41635;
  wire and_41636;
  wire and_41643;
  wire and_41644;
  wire and_41645;
  wire and_41651;
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
  wire [2:0] concat_41638;
  wire [3:0] concat_41647;
  wire [1:0] concat_41653;
  wire __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_0_valid_and_ready_txfr;
  wire __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_0_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__0_0_load_en;
  wire systolic__vert_chans__0_0_load_en;
  wire or_44071;
  wire or_44073;
  wire or_44075;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_41543;
  wire [7:0] one_hot_sel_41639;
  wire or_41640;
  wire [22:0] one_hot_sel_41648;
  wire or_41649;
  wire one_hot_sel_41654;
  wire or_41655;
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
  assign sign_ext_41238 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_41238;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1186_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_41253 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_41255 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_41264 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_41253[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1186_3_case_1, ~prod_fraction} | ~sign_ext_41238 | shll_41255[26:3]) != 24'h00_0000;
  assign concat_41270 = {add_41264[24:0], shrl_41253[2:1], shrl_41253[0] | sticky__2};
  assign accumbs_fraction = add_41264[25] ? -concat_41270 : concat_41270;
  assign carry_bit = accumbs_fraction[27];
  assign nor_41311 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_41306 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_41307 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_41297 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_41298 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_41340 = ~(carry_bit | accumbs_fraction[26]) & nor_41311;
  assign nor_41342 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_41344 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_41337 = nor_41307 & nor_41306;
  assign nor_41333 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_41329 = nor_41298 & nor_41297;
  assign nor_41330 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_41324 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_41326 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_41369 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_41342;
  assign nor_41350 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_41351 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_41390 = and_41340 & and_41369;
  assign priority_sel_41391 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_41311), and_41340}, {nor_41344, unexpand_for_next_value_1186_3_case_1}, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1186_3_case_1, nor_41344});
  assign and_41386 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_41333;
  assign and_41382 = nor_41326 & nor_41324;
  assign and_41378 = nor_41351 & nor_41350;
  assign concat_41404 = {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_41342) ? {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1186_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_41401 = {and_41337, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_41306), and_41337}, 2'h0, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_41307, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_41400 = {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_41333) ? {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1186_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_41398 = {and_41329, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_41297), and_41329}, {nor_41330, unexpand_for_next_value_1186_3_case_1}, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_41298, nor_41330})};
  assign concat_41397 = {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_41324) ? {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_41326, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_41409 = and_41337 & and_41386;
  assign concat_41413 = {unexpand_for_next_value_1186_3_case_0, and_41378, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_41350), and_41378}, 2'h0, {unexpand_for_next_value_1186_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_41351, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_44037 = ~(~and_41390 | and_41409) ? {unexpand_for_next_value_1186_3_case_0, ~(~and_41337 | and_41386) ? concat_41400 : concat_41401} : {and_41390, priority_sel_3b_2way({~(~and_41340 | and_41369), and_41390}, {priority_sel_41391, unexpand_for_next_value_1186_3_case_1}, concat_41404, {unexpand_for_next_value_1186_3_case_1, priority_sel_41391})};
  assign concat_41421 = {unexpand_for_next_value_1186_3_case_0, and_41329 & and_41382 ? concat_41413 : {unexpand_for_next_value_1186_3_case_1, ~(~and_41329 | and_41382) ? concat_41397 : concat_41398}};
  assign leading_zeroes = and_41390 & and_41409 ? concat_41421 : {unexpand_for_next_value_1186_3_case_1, sel_44037};
  assign a_bexp__1 = __systolic__hor_chans__0_0_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__0_0_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1186_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__0_0_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__0_0_reg[22:0];
  assign eq_41128 = a_bexp__1 == 8'h00;
  assign eq_41129 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1186_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1186_3_case_0, b_fraction__1};
  assign nor_41132 = ~(eq_41128 | eq_41129);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_41135 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_41137 = {unexpand_for_next_value_1186_3_case_1, a_bexp__1} + {unexpand_for_next_value_1186_3_case_1, b_bexp__2};
  assign fraction = umul_41135 & {48{nor_41132}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1186_3_case_1, add_41137} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_41132}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_41439 = {unexpand_for_next_value_1186_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_41439[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1186_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_41449 = {unexpand_for_next_value_1186_3_case_1, accum_bexp} + 9'h001;
  assign sub_41450 = {5'h00, rounding_carry} - {unexpand_for_next_value_1186_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_41264 == 26'h000_0000 & ~(shrl_41253[1] | shrl_41253[2]) & ~(shrl_41253[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1186_3_case_1, add_41449};
  assign wide_exponent_associative_element__1 = {{4{sub_41450[5]}}, sub_41450};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_41160 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__0_0_vld_buf = p1_valid & p1_____state_3__1;
  assign __systolic__result_chans__0_0_not_has_been_sent = ~__systolic__result_chans__0_0_has_been_sent_reg;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_41160;
  assign __systolic__result_chans__0_0_valid_and_not_has_been_sent = __systolic__result_chans__0_0_vld_buf & __systolic__result_chans__0_0_not_has_been_sent;
  assign systolic__result_chans__0_0_valid_load_en = systolic__result_chans__0_0_rdy | systolic__result_chans__0_0_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_41160 | ~fraction__4[23]);
  assign systolic__result_chans__0_0_load_en = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_valid_load_en;
  assign eq_41459 = accum_bexp == high_exp;
  assign eq_41460 = accum_fraction == 23'h00_0000;
  assign eq_41461 = prod_bexp == high_exp;
  assign eq_41462 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1186_3_case_1, fraction__5};
  assign or_44114 = ~p1_____state_3__1 | systolic__result_chans__0_0_load_en | __systolic__result_chans__0_0_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_44114;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_41171 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_41459 | ~eq_41460 | accum_sign) | ~(~eq_41461 | ~eq_41462 | prod_sign);
  assign has_neg_inf = eq_41459 & eq_41460 & accum_sign | eq_41461 & eq_41462 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_41171 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_0_valid_reg & __systolic__vert_chans__0_0_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_41459 | eq_41460) | ~(~eq_41461 | eq_41462) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_41459 & eq_41460 | eq_41461 & eq_41462;
  assign and_reduce_41489 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__0_1_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__0_1_not_has_been_sent = ~__systolic__hor_chans__0_1_has_been_sent_reg;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign __systolic__vert_chans__1_0_not_has_been_sent = ~__systolic__vert_chans__1_0_has_been_sent_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign or_41492 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_41489;
  assign or_41495 = is_operand_inf | wide_exponent__2[8] | and_reduce_41489 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__0_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_vld_buf & __systolic__hor_chans__0_1_not_has_been_sent;
  assign systolic__hor_chans__0_1_valid_load_en = systolic__hor_chans__0_1_rdy | systolic__hor_chans__0_1_valid_inv;
  assign __systolic__vert_chans__1_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_vld_buf & __systolic__vert_chans__1_0_not_has_been_sent;
  assign systolic__vert_chans__1_0_valid_load_en = systolic__vert_chans__1_0_rdy | systolic__vert_chans__1_0_valid_inv;
  assign and_41497 = ~____state_3 & ~is_result_nan__1;
  assign eq_41174 = a_bexp__1 == high_exp;
  assign eq_41175 = a_fraction__1 == 23'h00_0000;
  assign eq_41176 = b_bexp__2 == high_exp;
  assign eq_41177 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__0_1_load_en = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_valid_load_en;
  assign and_41504 = ~____state_3 & ~or_41492;
  assign and_41505 = ~____state_3 & or_41492;
  assign and_41506 = ~____state_3 & is_result_nan__1;
  assign and_41507 = and_41497 & ~or_41495;
  assign and_41508 = and_41497 & or_41495;
  assign __systolic__hor_chans__0_1_has_sent_or_is_ready = systolic__hor_chans__0_1_load_en | __systolic__hor_chans__0_1_has_been_sent_reg;
  assign __systolic__vert_chans__1_0_has_sent_or_is_ready = systolic__vert_chans__1_0_load_en | __systolic__vert_chans__1_0_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {____state_3, and_41504, and_41505};
  assign ____state_2__next_value_predicates = {____state_3, and_41506, and_41507, and_41508};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_41128 | eq_41129;
  assign has_inf_arg = eq_41174 & eq_41175 | eq_41176 & eq_41177;
  assign and_reduce_41194 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__0_1_has_sent_or_is_ready & __systolic__vert_chans__1_0_has_sent_or_is_ready;
  assign one_hot_41518 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_41519 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_41520 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_41264[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_41439, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_41174 | eq_41175) | ~(~eq_41176 | eq_41177) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign shrl_41509 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__0_0_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__0_0_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_41634 = ____state_3 & p1_data_enable;
  assign and_41635 = and_41504 & p1_data_enable;
  assign and_41636 = and_41505 & p1_data_enable;
  assign and_41643 = and_41506 & p1_data_enable;
  assign and_41644 = and_41507 & p1_data_enable;
  assign and_41645 = and_41508 & p1_data_enable;
  assign and_41651 = ~____state_3 & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__0_0_valid_load_en = p0_data_enable | systolic__hor_chans__0_0_valid_inv;
  assign systolic__vert_chans__0_0_valid_load_en = p0_data_enable | systolic__vert_chans__0_0_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_41518[2] & and_41504 == one_hot_41518[1] & and_41505 == one_hot_41518[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_41519[3] & and_41506 == one_hot_41519[2] & and_41507 == one_hot_41519[1] & and_41508 == one_hot_41519[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_41520[1] & ____state_3 == one_hot_41520[0];
  assign result_fraction__1 = shrl_41509[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_41194 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_41194 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_41638 = {and_41634, and_41635, and_41636};
  assign concat_41647 = {and_41634, and_41643, and_41644, and_41645};
  assign concat_41653 = {and_41651, and_41634};
  assign __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_1_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_valid_and_ready_txfr = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_load_en;
  assign __systolic__vert_chans__1_0_valid_and_ready_txfr = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_load_en;
  assign __systolic__result_chans__0_0_valid_and_all_active_outputs_ready = __systolic__result_chans__0_0_vld_buf & or_44114;
  assign __systolic__result_chans__0_0_valid_and_ready_txfr = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__0_0_load_en = systolic__hor_chans__0_0_vld & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = systolic__vert_chans__0_0_vld & systolic__vert_chans__0_0_valid_load_en;
  assign or_44071 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_44073 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_44075 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_41495}};
  assign result_exponent__2 = or_41492 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_41543 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_41639 = high_exp & {8{concat_41638[0]}} | wide_exponent__2[7:0] & {8{concat_41638[1]}} | 8'h00 & {8{concat_41638[2]}};
  assign or_41640 = and_41634 | and_41635 | and_41636;
  assign one_hot_sel_41648 = 23'h00_0000 & {23{concat_41647[0]}} | result_fraction__1 & {23{concat_41647[1]}} | nan_fraction & {23{concat_41647[2]}} | 23'h00_0000 & {23{concat_41647[3]}};
  assign or_41649 = and_41634 | and_41643 | and_41644 | and_41645;
  assign one_hot_sel_41654 = unexpand_for_next_value_1186_3_case_1 & concat_41653[0] | unexpand_for_next_value_1186_3_case_0 & concat_41653[1];
  assign or_41655 = and_41651 | and_41634;
  assign __systolic__hor_chans__0_1_not_stage_load = ~__systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_has_been_sent_reg_load_en = __systolic__hor_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_0_has_been_sent_reg_load_en = __systolic__vert_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_not_stage_load = ~__systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_has_been_sent_reg_load_en = __systolic__result_chans__0_0_valid_and_ready_txfr | __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign new_accum = {p1_result_sign__4, p1_result_exponent__2, result_fraction__5};
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_result_exp__4 <= 8'h00;
      p0_prod_bexpnot <= 8'h00;
      p0_result_fraction__4 <= 23'h00_0000;
      p0_result_sign__1 <= 1'h0;
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p1_____state_3__1 <= 1'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
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
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_41640 ? one_hot_sel_41639 : ____state_1;
      ____state_2 <= or_41649 ? one_hot_sel_41648 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_41543 : ____state_0;
      ____state_3 <= or_41655 ? one_hot_sel_41654 : ____state_3;
      p1_____state_3__1 <= p1_data_enable ? ____state_3 : p1_____state_3__1;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44071))) or_44071) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44073))) or_44073) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44075))) or_44075) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [23:0] sign_ext_41922;
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
  wire [26:0] shrl_41937;
  wire [27:0] shll_41939;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_41948;
  wire sticky__2;
  wire [27:0] concat_41954;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_41995;
  wire nor_41990;
  wire nor_41991;
  wire nor_41981;
  wire nor_41982;
  wire and_42024;
  wire nor_42026;
  wire nor_42028;
  wire and_42021;
  wire nor_42017;
  wire and_42013;
  wire nor_42014;
  wire nor_42008;
  wire nor_42010;
  wire and_42053;
  wire nor_42034;
  wire nor_42035;
  wire and_42074;
  wire [1:0] priority_sel_42075;
  wire and_42070;
  wire and_42066;
  wire and_42062;
  wire [2:0] concat_42088;
  wire [2:0] concat_42085;
  wire [2:0] concat_42084;
  wire [2:0] concat_42082;
  wire [2:0] concat_42081;
  wire and_42093;
  wire [3:0] concat_42097;
  wire [3:0] sel_44045;
  wire [4:0] concat_42105;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_41812;
  wire eq_41813;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_41816;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_41819;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_41821;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_42123;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_42133;
  wire [5:0] sub_42134;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_41844;
  wire __systolic__result_chans__0_1_vld_buf;
  wire __systolic__result_chans__0_1_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__0_1_load_en;
  wire eq_42143;
  wire eq_42144;
  wire eq_42145;
  wire eq_42146;
  wire [23:0] fraction__6;
  wire or_44132;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_41855;
  wire p1_enable;
  wire has_pos_inf;
  wire has_neg_inf;
  wire [9:0] exp__3;
  wire p1_data_enable;
  wire p1_not_valid;
  wire is_subnormal;
  wire p0_all_active_inputs_valid;
  wire p0_enable;
  wire is_result_nan__1;
  wire is_operand_inf;
  wire and_reduce_42173;
  wire __systolic__hor_chans__0_2_vld_buf;
  wire __systolic__hor_chans__0_2_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_inv;
  wire __systolic__vert_chans__1_1_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_inv;
  wire or_42176;
  wire or_42179;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire __systolic__vert_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire and_42181;
  wire eq_41858;
  wire eq_41859;
  wire eq_41860;
  wire eq_41861;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__0_2_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire and_42188;
  wire and_42189;
  wire and_42190;
  wire and_42191;
  wire and_42192;
  wire __systolic__hor_chans__0_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_1_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_41878;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_42202;
  wire [4:0] one_hot_42203;
  wire [2:0] one_hot_42204;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__0_1_valid_inv;
  wire systolic__vert_chans__0_1_valid_inv;
  wire [27:0] shrl_42193;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_42318;
  wire and_42319;
  wire and_42320;
  wire and_42327;
  wire and_42328;
  wire and_42329;
  wire and_42335;
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
  wire [2:0] concat_42322;
  wire [3:0] concat_42331;
  wire [1:0] concat_42337;
  wire __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_1_valid_and_ready_txfr;
  wire __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_1_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__0_1_load_en;
  wire or_44077;
  wire or_44079;
  wire or_44081;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_42227;
  wire [7:0] one_hot_sel_42323;
  wire or_42324;
  wire [22:0] one_hot_sel_42332;
  wire or_42333;
  wire one_hot_sel_42338;
  wire or_42339;
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
  assign sign_ext_41922 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_41922;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1217_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_41937 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_41939 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_41948 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_41937[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1217_3_case_1, ~prod_fraction} | ~sign_ext_41922 | shll_41939[26:3]) != 24'h00_0000;
  assign concat_41954 = {add_41948[24:0], shrl_41937[2:1], shrl_41937[0] | sticky__2};
  assign accumbs_fraction = add_41948[25] ? -concat_41954 : concat_41954;
  assign carry_bit = accumbs_fraction[27];
  assign nor_41995 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_41990 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_41991 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_41981 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_41982 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_42024 = ~(carry_bit | accumbs_fraction[26]) & nor_41995;
  assign nor_42026 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_42028 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_42021 = nor_41991 & nor_41990;
  assign nor_42017 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_42013 = nor_41982 & nor_41981;
  assign nor_42014 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_42008 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_42010 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_42053 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_42026;
  assign nor_42034 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_42035 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_42074 = and_42024 & and_42053;
  assign priority_sel_42075 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_41995), and_42024}, {nor_42028, unexpand_for_next_value_1217_3_case_1}, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1217_3_case_1, nor_42028});
  assign and_42070 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_42017;
  assign and_42066 = nor_42010 & nor_42008;
  assign and_42062 = nor_42035 & nor_42034;
  assign concat_42088 = {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_42026) ? {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1217_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_42085 = {and_42021, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_41990), and_42021}, 2'h0, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_41991, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_42084 = {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_42017) ? {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1217_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_42082 = {and_42013, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_41981), and_42013}, {nor_42014, unexpand_for_next_value_1217_3_case_1}, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_41982, nor_42014})};
  assign concat_42081 = {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_42008) ? {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_42010, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_42093 = and_42021 & and_42070;
  assign concat_42097 = {unexpand_for_next_value_1217_3_case_0, and_42062, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_42034), and_42062}, 2'h0, {unexpand_for_next_value_1217_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_42035, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_44045 = ~(~and_42074 | and_42093) ? {unexpand_for_next_value_1217_3_case_0, ~(~and_42021 | and_42070) ? concat_42084 : concat_42085} : {and_42074, priority_sel_3b_2way({~(~and_42024 | and_42053), and_42074}, {priority_sel_42075, unexpand_for_next_value_1217_3_case_1}, concat_42088, {unexpand_for_next_value_1217_3_case_1, priority_sel_42075})};
  assign concat_42105 = {unexpand_for_next_value_1217_3_case_0, and_42013 & and_42066 ? concat_42097 : {unexpand_for_next_value_1217_3_case_1, ~(~and_42013 | and_42066) ? concat_42081 : concat_42082}};
  assign leading_zeroes = and_42074 & and_42093 ? concat_42105 : {unexpand_for_next_value_1217_3_case_1, sel_44045};
  assign a_bexp__1 = __systolic__hor_chans__0_1_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__0_1_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1217_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__0_1_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__0_1_reg[22:0];
  assign eq_41812 = a_bexp__1 == 8'h00;
  assign eq_41813 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1217_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1217_3_case_0, b_fraction__1};
  assign nor_41816 = ~(eq_41812 | eq_41813);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_41819 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_41821 = {unexpand_for_next_value_1217_3_case_1, a_bexp__1} + {unexpand_for_next_value_1217_3_case_1, b_bexp__2};
  assign fraction = umul_41819 & {48{nor_41816}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1217_3_case_1, add_41821} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_41816}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_42123 = {unexpand_for_next_value_1217_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_42123[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1217_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_42133 = {unexpand_for_next_value_1217_3_case_1, accum_bexp} + 9'h001;
  assign sub_42134 = {5'h00, rounding_carry} - {unexpand_for_next_value_1217_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_41948 == 26'h000_0000 & ~(shrl_41937[1] | shrl_41937[2]) & ~(shrl_41937[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1217_3_case_1, add_42133};
  assign wide_exponent_associative_element__1 = {{4{sub_42134[5]}}, sub_42134};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_41844 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__0_1_vld_buf = p1_valid & p1_____state_3__1;
  assign __systolic__result_chans__0_1_not_has_been_sent = ~__systolic__result_chans__0_1_has_been_sent_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_41844;
  assign __systolic__result_chans__0_1_valid_and_not_has_been_sent = __systolic__result_chans__0_1_vld_buf & __systolic__result_chans__0_1_not_has_been_sent;
  assign systolic__result_chans__0_1_valid_load_en = systolic__result_chans__0_1_rdy | systolic__result_chans__0_1_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_41844 | ~fraction__4[23]);
  assign systolic__result_chans__0_1_load_en = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_valid_load_en;
  assign eq_42143 = accum_bexp == high_exp;
  assign eq_42144 = accum_fraction == 23'h00_0000;
  assign eq_42145 = prod_bexp == high_exp;
  assign eq_42146 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1217_3_case_1, fraction__5};
  assign or_44132 = ~p1_____state_3__1 | systolic__result_chans__0_1_load_en | __systolic__result_chans__0_1_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_44132;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_41855 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_42143 | ~eq_42144 | accum_sign) | ~(~eq_42145 | ~eq_42146 | prod_sign);
  assign has_neg_inf = eq_42143 & eq_42144 & accum_sign | eq_42145 & eq_42146 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_41855 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_1_valid_reg & __systolic__vert_chans__0_1_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_42143 | eq_42144) | ~(~eq_42145 | eq_42146) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_42143 & eq_42144 | eq_42145 & eq_42146;
  assign and_reduce_42173 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__0_2_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__0_2_not_has_been_sent = ~__systolic__hor_chans__0_2_has_been_sent_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign __systolic__vert_chans__1_1_not_has_been_sent = ~__systolic__vert_chans__1_1_has_been_sent_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign or_42176 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_42173;
  assign or_42179 = is_operand_inf | wide_exponent__2[8] | and_reduce_42173 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__0_2_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_vld_buf & __systolic__hor_chans__0_2_not_has_been_sent;
  assign systolic__hor_chans__0_2_valid_load_en = systolic__hor_chans__0_2_rdy | systolic__hor_chans__0_2_valid_inv;
  assign __systolic__vert_chans__1_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_vld_buf & __systolic__vert_chans__1_1_not_has_been_sent;
  assign systolic__vert_chans__1_1_valid_load_en = systolic__vert_chans__1_1_rdy | systolic__vert_chans__1_1_valid_inv;
  assign and_42181 = ~____state_3 & ~is_result_nan__1;
  assign eq_41858 = a_bexp__1 == high_exp;
  assign eq_41859 = a_fraction__1 == 23'h00_0000;
  assign eq_41860 = b_bexp__2 == high_exp;
  assign eq_41861 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__0_2_load_en = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_valid_load_en;
  assign and_42188 = ~____state_3 & ~or_42176;
  assign and_42189 = ~____state_3 & or_42176;
  assign and_42190 = ~____state_3 & is_result_nan__1;
  assign and_42191 = and_42181 & ~or_42179;
  assign and_42192 = and_42181 & or_42179;
  assign __systolic__hor_chans__0_2_has_sent_or_is_ready = systolic__hor_chans__0_2_load_en | __systolic__hor_chans__0_2_has_been_sent_reg;
  assign __systolic__vert_chans__1_1_has_sent_or_is_ready = systolic__vert_chans__1_1_load_en | __systolic__vert_chans__1_1_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {____state_3, and_42188, and_42189};
  assign ____state_2__next_value_predicates = {____state_3, and_42190, and_42191, and_42192};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_41812 | eq_41813;
  assign has_inf_arg = eq_41858 & eq_41859 | eq_41860 & eq_41861;
  assign and_reduce_41878 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__0_2_has_sent_or_is_ready & __systolic__vert_chans__1_1_has_sent_or_is_ready;
  assign one_hot_42202 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_42203 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_42204 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_41948[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_42123, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_41858 | eq_41859) | ~(~eq_41860 | eq_41861) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign shrl_42193 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__0_1_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__0_1_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_42318 = ____state_3 & p1_data_enable;
  assign and_42319 = and_42188 & p1_data_enable;
  assign and_42320 = and_42189 & p1_data_enable;
  assign and_42327 = and_42190 & p1_data_enable;
  assign and_42328 = and_42191 & p1_data_enable;
  assign and_42329 = and_42192 & p1_data_enable;
  assign and_42335 = ~____state_3 & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__0_1_valid_load_en = p0_data_enable | systolic__hor_chans__0_1_valid_inv;
  assign systolic__vert_chans__0_1_valid_load_en = p0_data_enable | systolic__vert_chans__0_1_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_42202[2] & and_42188 == one_hot_42202[1] & and_42189 == one_hot_42202[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_42203[3] & and_42190 == one_hot_42203[2] & and_42191 == one_hot_42203[1] & and_42192 == one_hot_42203[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_42204[1] & ____state_3 == one_hot_42204[0];
  assign result_fraction__1 = shrl_42193[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_41878 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_41878 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_42322 = {and_42318, and_42319, and_42320};
  assign concat_42331 = {and_42318, and_42327, and_42328, and_42329};
  assign concat_42337 = {and_42335, and_42318};
  assign __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_2_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_valid_and_ready_txfr = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_load_en;
  assign __systolic__vert_chans__1_1_valid_and_ready_txfr = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_load_en;
  assign __systolic__result_chans__0_1_valid_and_all_active_outputs_ready = __systolic__result_chans__0_1_vld_buf & or_44132;
  assign __systolic__result_chans__0_1_valid_and_ready_txfr = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__0_1_load_en = systolic__hor_chans__0_1_vld & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = systolic__vert_chans__0_1_vld & systolic__vert_chans__0_1_valid_load_en;
  assign or_44077 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_44079 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_44081 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_42179}};
  assign result_exponent__2 = or_42176 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_42227 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_42323 = high_exp & {8{concat_42322[0]}} | wide_exponent__2[7:0] & {8{concat_42322[1]}} | 8'h00 & {8{concat_42322[2]}};
  assign or_42324 = and_42318 | and_42319 | and_42320;
  assign one_hot_sel_42332 = 23'h00_0000 & {23{concat_42331[0]}} | result_fraction__1 & {23{concat_42331[1]}} | nan_fraction & {23{concat_42331[2]}} | 23'h00_0000 & {23{concat_42331[3]}};
  assign or_42333 = and_42318 | and_42327 | and_42328 | and_42329;
  assign one_hot_sel_42338 = unexpand_for_next_value_1217_3_case_1 & concat_42337[0] | unexpand_for_next_value_1217_3_case_0 & concat_42337[1];
  assign or_42339 = and_42335 | and_42318;
  assign __systolic__hor_chans__0_2_not_stage_load = ~__systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_has_been_sent_reg_load_en = __systolic__hor_chans__0_2_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_1_has_been_sent_reg_load_en = __systolic__vert_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_not_stage_load = ~__systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_has_been_sent_reg_load_en = __systolic__result_chans__0_1_valid_and_ready_txfr | __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign new_accum = {p1_result_sign__4, p1_result_exponent__2, result_fraction__5};
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_result_exp__4 <= 8'h00;
      p0_prod_bexpnot <= 8'h00;
      p0_result_fraction__4 <= 23'h00_0000;
      p0_result_sign__1 <= 1'h0;
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p1_____state_3__1 <= 1'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
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
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_42324 ? one_hot_sel_42323 : ____state_1;
      ____state_2 <= or_42333 ? one_hot_sel_42332 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_42227 : ____state_0;
      ____state_3 <= or_42339 ? one_hot_sel_42338 : ____state_3;
      p1_____state_3__1 <= p1_data_enable ? ____state_3 : p1_____state_3__1;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44077))) or_44077) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44079))) or_44079) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44081))) or_44081) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [23:0] sign_ext_42606;
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
  wire [26:0] shrl_42621;
  wire [27:0] shll_42623;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_42632;
  wire sticky__2;
  wire [27:0] concat_42638;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_42679;
  wire nor_42674;
  wire nor_42675;
  wire nor_42665;
  wire nor_42666;
  wire and_42708;
  wire nor_42710;
  wire nor_42712;
  wire and_42705;
  wire nor_42701;
  wire and_42697;
  wire nor_42698;
  wire nor_42692;
  wire nor_42694;
  wire and_42737;
  wire nor_42718;
  wire nor_42719;
  wire and_42758;
  wire [1:0] priority_sel_42759;
  wire and_42754;
  wire and_42750;
  wire and_42746;
  wire [2:0] concat_42772;
  wire [2:0] concat_42769;
  wire [2:0] concat_42768;
  wire [2:0] concat_42766;
  wire [2:0] concat_42765;
  wire and_42777;
  wire [3:0] concat_42781;
  wire [3:0] sel_44053;
  wire [4:0] concat_42789;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_42496;
  wire eq_42497;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_42500;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_42503;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_42505;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_42807;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_42817;
  wire [5:0] sub_42818;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_42528;
  wire __systolic__result_chans__1_0_vld_buf;
  wire __systolic__result_chans__1_0_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__1_0_load_en;
  wire eq_42827;
  wire eq_42828;
  wire eq_42829;
  wire eq_42830;
  wire [23:0] fraction__6;
  wire or_44150;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_42539;
  wire p1_enable;
  wire has_pos_inf;
  wire has_neg_inf;
  wire [9:0] exp__3;
  wire p1_data_enable;
  wire p1_not_valid;
  wire is_subnormal;
  wire p0_all_active_inputs_valid;
  wire p0_enable;
  wire is_result_nan__1;
  wire is_operand_inf;
  wire and_reduce_42857;
  wire __systolic__hor_chans__1_1_vld_buf;
  wire __systolic__hor_chans__1_1_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_inv;
  wire __systolic__vert_chans__2_0_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_inv;
  wire or_42860;
  wire or_42863;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire __systolic__vert_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire and_42865;
  wire eq_42542;
  wire eq_42543;
  wire eq_42544;
  wire eq_42545;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__2_0_load_en;
  wire and_42872;
  wire and_42873;
  wire and_42874;
  wire and_42875;
  wire and_42876;
  wire __systolic__hor_chans__1_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_0_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_42562;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_42886;
  wire [4:0] one_hot_42887;
  wire [2:0] one_hot_42888;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__1_0_valid_inv;
  wire systolic__vert_chans__1_0_valid_inv;
  wire [27:0] shrl_42877;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_43002;
  wire and_43003;
  wire and_43004;
  wire and_43011;
  wire and_43012;
  wire and_43013;
  wire and_43019;
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
  wire [2:0] concat_43006;
  wire [3:0] concat_43015;
  wire [1:0] concat_43021;
  wire __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_0_valid_and_ready_txfr;
  wire __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_0_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__1_0_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire or_44083;
  wire or_44085;
  wire or_44087;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_42911;
  wire [7:0] one_hot_sel_43007;
  wire or_43008;
  wire [22:0] one_hot_sel_43016;
  wire or_43017;
  wire one_hot_sel_43022;
  wire or_43023;
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
  assign sign_ext_42606 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_42606;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1248_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_42621 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_42623 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_42632 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_42621[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1248_3_case_1, ~prod_fraction} | ~sign_ext_42606 | shll_42623[26:3]) != 24'h00_0000;
  assign concat_42638 = {add_42632[24:0], shrl_42621[2:1], shrl_42621[0] | sticky__2};
  assign accumbs_fraction = add_42632[25] ? -concat_42638 : concat_42638;
  assign carry_bit = accumbs_fraction[27];
  assign nor_42679 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_42674 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_42675 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_42665 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_42666 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_42708 = ~(carry_bit | accumbs_fraction[26]) & nor_42679;
  assign nor_42710 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_42712 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_42705 = nor_42675 & nor_42674;
  assign nor_42701 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_42697 = nor_42666 & nor_42665;
  assign nor_42698 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_42692 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_42694 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_42737 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_42710;
  assign nor_42718 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_42719 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_42758 = and_42708 & and_42737;
  assign priority_sel_42759 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_42679), and_42708}, {nor_42712, unexpand_for_next_value_1248_3_case_1}, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1248_3_case_1, nor_42712});
  assign and_42754 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_42701;
  assign and_42750 = nor_42694 & nor_42692;
  assign and_42746 = nor_42719 & nor_42718;
  assign concat_42772 = {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_42710) ? {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1248_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_42769 = {and_42705, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_42674), and_42705}, 2'h0, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_42675, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_42768 = {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_42701) ? {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1248_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_42766 = {and_42697, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_42665), and_42697}, {nor_42698, unexpand_for_next_value_1248_3_case_1}, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_42666, nor_42698})};
  assign concat_42765 = {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_42692) ? {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_42694, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_42777 = and_42705 & and_42754;
  assign concat_42781 = {unexpand_for_next_value_1248_3_case_0, and_42746, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_42718), and_42746}, 2'h0, {unexpand_for_next_value_1248_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_42719, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_44053 = ~(~and_42758 | and_42777) ? {unexpand_for_next_value_1248_3_case_0, ~(~and_42705 | and_42754) ? concat_42768 : concat_42769} : {and_42758, priority_sel_3b_2way({~(~and_42708 | and_42737), and_42758}, {priority_sel_42759, unexpand_for_next_value_1248_3_case_1}, concat_42772, {unexpand_for_next_value_1248_3_case_1, priority_sel_42759})};
  assign concat_42789 = {unexpand_for_next_value_1248_3_case_0, and_42697 & and_42750 ? concat_42781 : {unexpand_for_next_value_1248_3_case_1, ~(~and_42697 | and_42750) ? concat_42765 : concat_42766}};
  assign leading_zeroes = and_42758 & and_42777 ? concat_42789 : {unexpand_for_next_value_1248_3_case_1, sel_44053};
  assign a_bexp__1 = __systolic__hor_chans__1_0_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__1_0_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1248_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__1_0_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__1_0_reg[22:0];
  assign eq_42496 = a_bexp__1 == 8'h00;
  assign eq_42497 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1248_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1248_3_case_0, b_fraction__1};
  assign nor_42500 = ~(eq_42496 | eq_42497);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_42503 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_42505 = {unexpand_for_next_value_1248_3_case_1, a_bexp__1} + {unexpand_for_next_value_1248_3_case_1, b_bexp__2};
  assign fraction = umul_42503 & {48{nor_42500}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1248_3_case_1, add_42505} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_42500}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_42807 = {unexpand_for_next_value_1248_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_42807[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1248_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_42817 = {unexpand_for_next_value_1248_3_case_1, accum_bexp} + 9'h001;
  assign sub_42818 = {5'h00, rounding_carry} - {unexpand_for_next_value_1248_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_42632 == 26'h000_0000 & ~(shrl_42621[1] | shrl_42621[2]) & ~(shrl_42621[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1248_3_case_1, add_42817};
  assign wide_exponent_associative_element__1 = {{4{sub_42818[5]}}, sub_42818};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_42528 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__1_0_vld_buf = p1_valid & p1_____state_3__1;
  assign __systolic__result_chans__1_0_not_has_been_sent = ~__systolic__result_chans__1_0_has_been_sent_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_42528;
  assign __systolic__result_chans__1_0_valid_and_not_has_been_sent = __systolic__result_chans__1_0_vld_buf & __systolic__result_chans__1_0_not_has_been_sent;
  assign systolic__result_chans__1_0_valid_load_en = systolic__result_chans__1_0_rdy | systolic__result_chans__1_0_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_42528 | ~fraction__4[23]);
  assign systolic__result_chans__1_0_load_en = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_valid_load_en;
  assign eq_42827 = accum_bexp == high_exp;
  assign eq_42828 = accum_fraction == 23'h00_0000;
  assign eq_42829 = prod_bexp == high_exp;
  assign eq_42830 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1248_3_case_1, fraction__5};
  assign or_44150 = ~p1_____state_3__1 | systolic__result_chans__1_0_load_en | __systolic__result_chans__1_0_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_44150;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_42539 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_42827 | ~eq_42828 | accum_sign) | ~(~eq_42829 | ~eq_42830 | prod_sign);
  assign has_neg_inf = eq_42827 & eq_42828 & accum_sign | eq_42829 & eq_42830 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_42539 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_0_valid_reg & __systolic__vert_chans__1_0_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_42827 | eq_42828) | ~(~eq_42829 | eq_42830) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_42827 & eq_42828 | eq_42829 & eq_42830;
  assign and_reduce_42857 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__1_1_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__1_1_not_has_been_sent = ~__systolic__hor_chans__1_1_has_been_sent_reg;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign __systolic__vert_chans__2_0_not_has_been_sent = ~__systolic__vert_chans__2_0_has_been_sent_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign or_42860 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_42857;
  assign or_42863 = is_operand_inf | wide_exponent__2[8] | and_reduce_42857 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__1_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_vld_buf & __systolic__hor_chans__1_1_not_has_been_sent;
  assign systolic__hor_chans__1_1_valid_load_en = systolic__hor_chans__1_1_rdy | systolic__hor_chans__1_1_valid_inv;
  assign __systolic__vert_chans__2_0_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_vld_buf & __systolic__vert_chans__2_0_not_has_been_sent;
  assign systolic__vert_chans__2_0_valid_load_en = systolic__vert_chans__2_0_rdy | systolic__vert_chans__2_0_valid_inv;
  assign and_42865 = ~____state_3 & ~is_result_nan__1;
  assign eq_42542 = a_bexp__1 == high_exp;
  assign eq_42543 = a_fraction__1 == 23'h00_0000;
  assign eq_42544 = b_bexp__2 == high_exp;
  assign eq_42545 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__1_1_load_en = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_valid_load_en;
  assign and_42872 = ~____state_3 & ~or_42860;
  assign and_42873 = ~____state_3 & or_42860;
  assign and_42874 = ~____state_3 & is_result_nan__1;
  assign and_42875 = and_42865 & ~or_42863;
  assign and_42876 = and_42865 & or_42863;
  assign __systolic__hor_chans__1_1_has_sent_or_is_ready = systolic__hor_chans__1_1_load_en | __systolic__hor_chans__1_1_has_been_sent_reg;
  assign __systolic__vert_chans__2_0_has_sent_or_is_ready = systolic__vert_chans__2_0_load_en | __systolic__vert_chans__2_0_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {____state_3, and_42872, and_42873};
  assign ____state_2__next_value_predicates = {____state_3, and_42874, and_42875, and_42876};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_42496 | eq_42497;
  assign has_inf_arg = eq_42542 & eq_42543 | eq_42544 & eq_42545;
  assign and_reduce_42562 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__1_1_has_sent_or_is_ready & __systolic__vert_chans__2_0_has_sent_or_is_ready;
  assign one_hot_42886 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_42887 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_42888 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_42632[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_42807, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_42542 | eq_42543) | ~(~eq_42544 | eq_42545) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign shrl_42877 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__1_0_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__1_0_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_43002 = ____state_3 & p1_data_enable;
  assign and_43003 = and_42872 & p1_data_enable;
  assign and_43004 = and_42873 & p1_data_enable;
  assign and_43011 = and_42874 & p1_data_enable;
  assign and_43012 = and_42875 & p1_data_enable;
  assign and_43013 = and_42876 & p1_data_enable;
  assign and_43019 = ~____state_3 & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__1_0_valid_load_en = p0_data_enable | systolic__hor_chans__1_0_valid_inv;
  assign systolic__vert_chans__1_0_valid_load_en = p0_data_enable | systolic__vert_chans__1_0_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_42886[2] & and_42872 == one_hot_42886[1] & and_42873 == one_hot_42886[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_42887[3] & and_42874 == one_hot_42887[2] & and_42875 == one_hot_42887[1] & and_42876 == one_hot_42887[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_42888[1] & ____state_3 == one_hot_42888[0];
  assign result_fraction__1 = shrl_42877[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_42562 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_42562 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_43006 = {and_43002, and_43003, and_43004};
  assign concat_43015 = {and_43002, and_43011, and_43012, and_43013};
  assign concat_43021 = {and_43019, and_43002};
  assign __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_1_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_valid_and_ready_txfr = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_load_en;
  assign __systolic__vert_chans__2_0_valid_and_ready_txfr = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_load_en;
  assign __systolic__result_chans__1_0_valid_and_all_active_outputs_ready = __systolic__result_chans__1_0_vld_buf & or_44150;
  assign __systolic__result_chans__1_0_valid_and_ready_txfr = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__1_0_load_en = systolic__hor_chans__1_0_vld & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = systolic__vert_chans__1_0_vld & systolic__vert_chans__1_0_valid_load_en;
  assign or_44083 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_44085 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_44087 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_42863}};
  assign result_exponent__2 = or_42860 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_42911 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_43007 = high_exp & {8{concat_43006[0]}} | wide_exponent__2[7:0] & {8{concat_43006[1]}} | 8'h00 & {8{concat_43006[2]}};
  assign or_43008 = and_43002 | and_43003 | and_43004;
  assign one_hot_sel_43016 = 23'h00_0000 & {23{concat_43015[0]}} | result_fraction__1 & {23{concat_43015[1]}} | nan_fraction & {23{concat_43015[2]}} | 23'h00_0000 & {23{concat_43015[3]}};
  assign or_43017 = and_43002 | and_43011 | and_43012 | and_43013;
  assign one_hot_sel_43022 = unexpand_for_next_value_1248_3_case_1 & concat_43021[0] | unexpand_for_next_value_1248_3_case_0 & concat_43021[1];
  assign or_43023 = and_43019 | and_43002;
  assign __systolic__hor_chans__1_1_not_stage_load = ~__systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_has_been_sent_reg_load_en = __systolic__hor_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_0_has_been_sent_reg_load_en = __systolic__vert_chans__2_0_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_not_stage_load = ~__systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_has_been_sent_reg_load_en = __systolic__result_chans__1_0_valid_and_ready_txfr | __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign new_accum = {p1_result_sign__4, p1_result_exponent__2, result_fraction__5};
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_result_exp__4 <= 8'h00;
      p0_prod_bexpnot <= 8'h00;
      p0_result_fraction__4 <= 23'h00_0000;
      p0_result_sign__1 <= 1'h0;
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p1_____state_3__1 <= 1'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
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
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_43008 ? one_hot_sel_43007 : ____state_1;
      ____state_2 <= or_43017 ? one_hot_sel_43016 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_42911 : ____state_0;
      ____state_3 <= or_43023 ? one_hot_sel_43022 : ____state_3;
      p1_____state_3__1 <= p1_data_enable ? ____state_3 : p1_____state_3__1;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44083))) or_44083) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44085))) or_44085) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44087))) or_44087) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [23:0] sign_ext_43290;
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
  wire [26:0] shrl_43305;
  wire [27:0] shll_43307;
  wire [24:0] accumddend_x__1_squeezed;
  wire [25:0] add_43316;
  wire sticky__2;
  wire [27:0] concat_43322;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_43363;
  wire nor_43358;
  wire nor_43359;
  wire nor_43349;
  wire nor_43350;
  wire and_43392;
  wire nor_43394;
  wire nor_43396;
  wire and_43389;
  wire nor_43385;
  wire and_43381;
  wire nor_43382;
  wire nor_43376;
  wire nor_43378;
  wire and_43421;
  wire nor_43402;
  wire nor_43403;
  wire and_43442;
  wire [1:0] priority_sel_43443;
  wire and_43438;
  wire and_43434;
  wire and_43430;
  wire [2:0] concat_43456;
  wire [2:0] concat_43453;
  wire [2:0] concat_43452;
  wire [2:0] concat_43450;
  wire [2:0] concat_43449;
  wire and_43461;
  wire [3:0] concat_43465;
  wire [3:0] sel_44061;
  wire [4:0] concat_43473;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_43180;
  wire eq_43181;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_43184;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_43187;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_43189;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_43491;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_43501;
  wire [5:0] sub_43502;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_43212;
  wire __systolic__result_chans__1_1_vld_buf;
  wire __systolic__result_chans__1_1_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__1_1_load_en;
  wire eq_43511;
  wire eq_43512;
  wire eq_43513;
  wire eq_43514;
  wire [23:0] fraction__6;
  wire or_44168;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_43223;
  wire p1_enable;
  wire has_pos_inf;
  wire has_neg_inf;
  wire [9:0] exp__3;
  wire p1_data_enable;
  wire p1_not_valid;
  wire is_subnormal;
  wire p0_all_active_inputs_valid;
  wire p0_enable;
  wire is_result_nan__1;
  wire is_operand_inf;
  wire and_reduce_43541;
  wire __systolic__hor_chans__1_2_vld_buf;
  wire __systolic__hor_chans__1_2_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_inv;
  wire __systolic__vert_chans__2_1_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_inv;
  wire or_43544;
  wire or_43547;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire __systolic__vert_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire and_43549;
  wire eq_43226;
  wire eq_43227;
  wire eq_43228;
  wire eq_43229;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__1_2_load_en;
  wire systolic__vert_chans__2_1_load_en;
  wire and_43556;
  wire and_43557;
  wire and_43558;
  wire and_43559;
  wire and_43560;
  wire __systolic__hor_chans__1_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_1_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_43246;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_43570;
  wire [4:0] one_hot_43571;
  wire [2:0] one_hot_43572;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__1_1_valid_inv;
  wire systolic__vert_chans__1_1_valid_inv;
  wire [27:0] shrl_43561;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_43686;
  wire and_43687;
  wire and_43688;
  wire and_43695;
  wire and_43696;
  wire and_43697;
  wire and_43703;
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
  wire [2:0] concat_43690;
  wire [3:0] concat_43699;
  wire [1:0] concat_43705;
  wire __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_1_valid_and_ready_txfr;
  wire __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_1_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire or_44089;
  wire or_44091;
  wire or_44093;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_43595;
  wire [7:0] one_hot_sel_43691;
  wire or_43692;
  wire [22:0] one_hot_sel_43700;
  wire or_43701;
  wire one_hot_sel_43706;
  wire or_43707;
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
  assign sign_ext_43290 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_43290;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {unexpand_for_next_value_1279_3_case_1, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_43305 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_43307 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign add_43316 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {2'h0, shrl_43305[26:3]};
  assign sticky__2 = ~({unexpand_for_next_value_1279_3_case_1, ~prod_fraction} | ~sign_ext_43290 | shll_43307[26:3]) != 24'h00_0000;
  assign concat_43322 = {add_43316[24:0], shrl_43305[2:1], shrl_43305[0] | sticky__2};
  assign accumbs_fraction = add_43316[25] ? -concat_43322 : concat_43322;
  assign carry_bit = accumbs_fraction[27];
  assign nor_43363 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_43358 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_43359 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_43349 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_43350 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_43392 = ~(carry_bit | accumbs_fraction[26]) & nor_43363;
  assign nor_43394 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_43396 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_43389 = nor_43359 & nor_43358;
  assign nor_43385 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_43381 = nor_43350 & nor_43349;
  assign nor_43382 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_43376 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_43378 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_43421 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_43394;
  assign nor_43402 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_43403 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_43442 = and_43392 & and_43421;
  assign priority_sel_43443 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_43363), and_43392}, {nor_43396, unexpand_for_next_value_1279_3_case_1}, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {unexpand_for_next_value_1279_3_case_1, nor_43396});
  assign and_43438 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_43385;
  assign and_43434 = nor_43378 & nor_43376;
  assign and_43430 = nor_43403 & nor_43402;
  assign concat_43456 = {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_43394) ? {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {unexpand_for_next_value_1279_3_case_1, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_43453 = {and_43389, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_43358), and_43389}, 2'h0, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_43359, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_43452 = {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_43385) ? {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {unexpand_for_next_value_1279_3_case_1, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_43450 = {and_43381, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_43349), and_43381}, {nor_43382, unexpand_for_next_value_1279_3_case_1}, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_43350, nor_43382})};
  assign concat_43449 = {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_43376) ? {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_43378, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_43461 = and_43389 & and_43438;
  assign concat_43465 = {unexpand_for_next_value_1279_3_case_0, and_43430, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_43402), and_43430}, 2'h0, {unexpand_for_next_value_1279_3_case_0, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_43403, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_44061 = ~(~and_43442 | and_43461) ? {unexpand_for_next_value_1279_3_case_0, ~(~and_43389 | and_43438) ? concat_43452 : concat_43453} : {and_43442, priority_sel_3b_2way({~(~and_43392 | and_43421), and_43442}, {priority_sel_43443, unexpand_for_next_value_1279_3_case_1}, concat_43456, {unexpand_for_next_value_1279_3_case_1, priority_sel_43443})};
  assign concat_43473 = {unexpand_for_next_value_1279_3_case_0, and_43381 & and_43434 ? concat_43465 : {unexpand_for_next_value_1279_3_case_1, ~(~and_43381 | and_43434) ? concat_43449 : concat_43450}};
  assign leading_zeroes = and_43442 & and_43461 ? concat_43473 : {unexpand_for_next_value_1279_3_case_1, sel_44061};
  assign a_bexp__1 = __systolic__hor_chans__1_1_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__1_1_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {unexpand_for_next_value_1279_3_case_1, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__1_1_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__1_1_reg[22:0];
  assign eq_43180 = a_bexp__1 == 8'h00;
  assign eq_43181 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {unexpand_for_next_value_1279_3_case_0, a_fraction__1};
  assign b_fraction__3 = {unexpand_for_next_value_1279_3_case_0, b_fraction__1};
  assign nor_43184 = ~(eq_43180 | eq_43181);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_43187 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_43189 = {unexpand_for_next_value_1279_3_case_1, a_bexp__1} + {unexpand_for_next_value_1279_3_case_1, b_bexp__2};
  assign fraction = umul_43187 & {48{nor_43184}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {unexpand_for_next_value_1279_3_case_1, add_43189} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_43184}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_43491 = {unexpand_for_next_value_1279_3_case_1, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_43491[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {unexpand_for_next_value_1279_3_case_1, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_43501 = {unexpand_for_next_value_1279_3_case_1, accum_bexp} + 9'h001;
  assign sub_43502 = {5'h00, rounding_carry} - {unexpand_for_next_value_1279_3_case_1, leading_zeroes};
  assign fraction_is_zero = add_43316 == 26'h000_0000 & ~(shrl_43305[1] | shrl_43305[2]) & ~(shrl_43305[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {unexpand_for_next_value_1279_3_case_1, add_43501};
  assign wide_exponent_associative_element__1 = {{4{sub_43502[5]}}, sub_43502};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_43212 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__1_1_vld_buf = p1_valid & p1_____state_3__1;
  assign __systolic__result_chans__1_1_not_has_been_sent = ~__systolic__result_chans__1_1_has_been_sent_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_43212;
  assign __systolic__result_chans__1_1_valid_and_not_has_been_sent = __systolic__result_chans__1_1_vld_buf & __systolic__result_chans__1_1_not_has_been_sent;
  assign systolic__result_chans__1_1_valid_load_en = systolic__result_chans__1_1_rdy | systolic__result_chans__1_1_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_43212 | ~fraction__4[23]);
  assign systolic__result_chans__1_1_load_en = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_valid_load_en;
  assign eq_43511 = accum_bexp == high_exp;
  assign eq_43512 = accum_fraction == 23'h00_0000;
  assign eq_43513 = prod_bexp == high_exp;
  assign eq_43514 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {unexpand_for_next_value_1279_3_case_1, fraction__5};
  assign or_44168 = ~p1_____state_3__1 | systolic__result_chans__1_1_load_en | __systolic__result_chans__1_1_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_44168;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_43223 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_43511 | ~eq_43512 | accum_sign) | ~(~eq_43513 | ~eq_43514 | prod_sign);
  assign has_neg_inf = eq_43511 & eq_43512 & accum_sign | eq_43513 & eq_43514 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_43223 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_1_valid_reg & __systolic__vert_chans__1_1_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_43511 | eq_43512) | ~(~eq_43513 | eq_43514) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_43511 & eq_43512 | eq_43513 & eq_43514;
  assign and_reduce_43541 = &wide_exponent__2[7:0];
  assign __systolic__hor_chans__1_2_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__1_2_not_has_been_sent = ~__systolic__hor_chans__1_2_has_been_sent_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign __systolic__vert_chans__2_1_not_has_been_sent = ~__systolic__vert_chans__2_1_has_been_sent_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign or_43544 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_43541;
  assign or_43547 = is_operand_inf | wide_exponent__2[8] | and_reduce_43541 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__1_2_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_vld_buf & __systolic__hor_chans__1_2_not_has_been_sent;
  assign systolic__hor_chans__1_2_valid_load_en = systolic__hor_chans__1_2_rdy | systolic__hor_chans__1_2_valid_inv;
  assign __systolic__vert_chans__2_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_vld_buf & __systolic__vert_chans__2_1_not_has_been_sent;
  assign systolic__vert_chans__2_1_valid_load_en = systolic__vert_chans__2_1_rdy | systolic__vert_chans__2_1_valid_inv;
  assign and_43549 = ~____state_3 & ~is_result_nan__1;
  assign eq_43226 = a_bexp__1 == high_exp;
  assign eq_43227 = a_fraction__1 == 23'h00_0000;
  assign eq_43228 = b_bexp__2 == high_exp;
  assign eq_43229 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__1_2_load_en = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_valid_load_en;
  assign and_43556 = ~____state_3 & ~or_43544;
  assign and_43557 = ~____state_3 & or_43544;
  assign and_43558 = ~____state_3 & is_result_nan__1;
  assign and_43559 = and_43549 & ~or_43547;
  assign and_43560 = and_43549 & or_43547;
  assign __systolic__hor_chans__1_2_has_sent_or_is_ready = systolic__hor_chans__1_2_load_en | __systolic__hor_chans__1_2_has_been_sent_reg;
  assign __systolic__vert_chans__2_1_has_sent_or_is_ready = systolic__vert_chans__2_1_load_en | __systolic__vert_chans__2_1_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {____state_3, and_43556, and_43557};
  assign ____state_2__next_value_predicates = {____state_3, and_43558, and_43559, and_43560};
  assign ____state_3__next_value_predicates = {~____state_3, ____state_3};
  assign has_0_arg = eq_43180 | eq_43181;
  assign has_inf_arg = eq_43226 & eq_43227 | eq_43228 & eq_43229;
  assign and_reduce_43246 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__1_2_has_sent_or_is_ready & __systolic__vert_chans__2_1_has_sent_or_is_ready;
  assign one_hot_43570 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_43571 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_43572 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_43316[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_43491, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_43226 | eq_43227) | ~(~eq_43228 | eq_43229) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign shrl_43561 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__1_1_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__1_1_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_43686 = ____state_3 & p1_data_enable;
  assign and_43687 = and_43556 & p1_data_enable;
  assign and_43688 = and_43557 & p1_data_enable;
  assign and_43695 = and_43558 & p1_data_enable;
  assign and_43696 = and_43559 & p1_data_enable;
  assign and_43697 = and_43560 & p1_data_enable;
  assign and_43703 = ~____state_3 & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__1_1_valid_load_en = p0_data_enable | systolic__hor_chans__1_1_valid_inv;
  assign systolic__vert_chans__1_1_valid_load_en = p0_data_enable | systolic__vert_chans__1_1_valid_inv;
  assign ____state_1__at_most_one_next_value = ____state_3 == one_hot_43570[2] & and_43556 == one_hot_43570[1] & and_43557 == one_hot_43570[0];
  assign ____state_2__at_most_one_next_value = ____state_3 == one_hot_43571[3] & and_43558 == one_hot_43571[2] & and_43559 == one_hot_43571[1] & and_43560 == one_hot_43571[0];
  assign ____state_3__at_most_one_next_value = ~____state_3 == one_hot_43572[1] & ____state_3 == one_hot_43572[0];
  assign result_fraction__1 = shrl_43561[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_43246 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_43246 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_43690 = {and_43686, and_43687, and_43688};
  assign concat_43699 = {and_43686, and_43695, and_43696, and_43697};
  assign concat_43705 = {and_43703, and_43686};
  assign __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_2_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_valid_and_ready_txfr = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_load_en;
  assign __systolic__vert_chans__2_1_valid_and_ready_txfr = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_load_en;
  assign __systolic__result_chans__1_1_valid_and_all_active_outputs_ready = __systolic__result_chans__1_1_vld_buf & or_44168;
  assign __systolic__result_chans__1_1_valid_and_ready_txfr = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__1_1_load_en = systolic__hor_chans__1_1_vld & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = systolic__vert_chans__1_1_vld & systolic__vert_chans__1_1_valid_load_en;
  assign or_44089 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_44091 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_44093 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_43547}};
  assign result_exponent__2 = or_43544 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_43595 = ~(____state_3 | ~result_sign__4);
  assign one_hot_sel_43691 = high_exp & {8{concat_43690[0]}} | wide_exponent__2[7:0] & {8{concat_43690[1]}} | 8'h00 & {8{concat_43690[2]}};
  assign or_43692 = and_43686 | and_43687 | and_43688;
  assign one_hot_sel_43700 = 23'h00_0000 & {23{concat_43699[0]}} | result_fraction__1 & {23{concat_43699[1]}} | nan_fraction & {23{concat_43699[2]}} | 23'h00_0000 & {23{concat_43699[3]}};
  assign or_43701 = and_43686 | and_43695 | and_43696 | and_43697;
  assign one_hot_sel_43706 = unexpand_for_next_value_1279_3_case_1 & concat_43705[0] | unexpand_for_next_value_1279_3_case_0 & concat_43705[1];
  assign or_43707 = and_43703 | and_43686;
  assign __systolic__hor_chans__1_2_not_stage_load = ~__systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_has_been_sent_reg_load_en = __systolic__hor_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_1_has_been_sent_reg_load_en = __systolic__vert_chans__2_1_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_not_stage_load = ~__systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_has_been_sent_reg_load_en = __systolic__result_chans__1_1_valid_and_ready_txfr | __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign new_accum = {p1_result_sign__4, p1_result_exponent__2, result_fraction__5};
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_result_exp__4 <= 8'h00;
      p0_prod_bexpnot <= 8'h00;
      p0_result_fraction__4 <= 23'h00_0000;
      p0_result_sign__1 <= 1'h0;
      ____state_1 <= 8'h00;
      ____state_2 <= 23'h00_0000;
      ____state_0 <= 1'h0;
      ____state_3 <= 1'h0;
      p1_____state_3__1 <= 1'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
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
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_43692 ? one_hot_sel_43691 : ____state_1;
      ____state_2 <= or_43701 ? one_hot_sel_43700 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_43595 : ____state_0;
      ____state_3 <= or_43707 ? one_hot_sel_43706 : ____state_3;
      p1_____state_3__1 <= p1_data_enable ? ____state_3 : p1_____state_3__1;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44089))) or_44089) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44091))) or_44091) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_44093))) or_44093) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire instantiation_output_43812;
  wire instantiation_output_43818;
  wire [31:0] instantiation_output_43823;
  wire instantiation_output_43824;
  wire instantiation_output_43857;
  wire [31:0] instantiation_output_43862;
  wire instantiation_output_43863;
  wire instantiation_output_43896;
  wire [31:0] instantiation_output_43900[2][2];
  wire instantiation_output_43901;
  wire instantiation_output_43915;
  wire instantiation_output_43928;
  wire instantiation_output_43941;
  wire instantiation_output_43954;
  wire [31:0] instantiation_output_43959;
  wire instantiation_output_43960;
  wire [31:0] instantiation_output_43972;
  wire instantiation_output_43973;
  wire instantiation_output_44019;
  wire instantiation_output_44032;
  wire instantiation_output_43831;
  wire [31:0] instantiation_output_43836;
  wire instantiation_output_43837;
  wire [31:0] instantiation_output_43907;
  wire instantiation_output_43908;
  wire instantiation_output_43967;
  wire [31:0] instantiation_output_43985;
  wire instantiation_output_43986;
  wire instantiation_output_43844;
  wire [31:0] instantiation_output_43849;
  wire instantiation_output_43850;
  wire [31:0] instantiation_output_43920;
  wire instantiation_output_43921;
  wire instantiation_output_43980;
  wire [31:0] instantiation_output_43998;
  wire instantiation_output_43999;
  wire instantiation_output_43870;
  wire [31:0] instantiation_output_43875;
  wire instantiation_output_43876;
  wire [31:0] instantiation_output_43933;
  wire instantiation_output_43934;
  wire instantiation_output_43993;
  wire [31:0] instantiation_output_44011;
  wire instantiation_output_44012;
  wire instantiation_output_43883;
  wire [31:0] instantiation_output_43888;
  wire instantiation_output_43889;
  wire [31:0] instantiation_output_43946;
  wire instantiation_output_43947;
  wire instantiation_output_44006;
  wire [31:0] instantiation_output_44024;
  wire instantiation_output_44025;
  wire instantiation_output_43825;
  wire [31:0] instantiation_output_43829;
  wire instantiation_output_43830;
  wire instantiation_output_43838;
  wire [31:0] instantiation_output_43842;
  wire instantiation_output_43843;
  wire instantiation_output_43851;
  wire [31:0] instantiation_output_43855;
  wire instantiation_output_43856;
  wire instantiation_output_43864;
  wire [31:0] instantiation_output_43868;
  wire instantiation_output_43869;
  wire instantiation_output_43877;
  wire [31:0] instantiation_output_43881;
  wire instantiation_output_43882;
  wire instantiation_output_43890;
  wire [31:0] instantiation_output_43894;
  wire instantiation_output_43895;
  wire instantiation_output_43909;
  wire [31:0] instantiation_output_43913;
  wire instantiation_output_43914;
  wire instantiation_output_43922;
  wire [31:0] instantiation_output_43926;
  wire instantiation_output_43927;
  wire instantiation_output_43935;
  wire [31:0] instantiation_output_43939;
  wire instantiation_output_43940;
  wire instantiation_output_43948;
  wire [31:0] instantiation_output_43952;
  wire instantiation_output_43953;
  wire instantiation_output_43961;
  wire [31:0] instantiation_output_43965;
  wire instantiation_output_43966;
  wire instantiation_output_43974;
  wire [31:0] instantiation_output_43978;
  wire instantiation_output_43979;
  wire instantiation_output_43987;
  wire [31:0] instantiation_output_43991;
  wire instantiation_output_43992;
  wire instantiation_output_44000;
  wire [31:0] instantiation_output_44004;
  wire instantiation_output_44005;
  wire instantiation_output_44013;
  wire [31:0] instantiation_output_44017;
  wire instantiation_output_44018;
  wire instantiation_output_44026;
  wire [31:0] instantiation_output_44030;
  wire instantiation_output_44031;

  // ===== Instantiations
  __systolic__SystolicArray_0_next__1 __systolic__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .systolic__arg0({{systolic__arg0_unflattened[1][1], systolic__arg0_unflattened[1][0]}, {systolic__arg0_unflattened[0][1], systolic__arg0_unflattened[0][0]}}),
    .systolic__arg0_vld(systolic__arg0_vld),
    .systolic__arg1({{systolic__arg1_unflattened[1][1], systolic__arg1_unflattened[1][0]}, {systolic__arg1_unflattened[0][1], systolic__arg1_unflattened[0][0]}}),
    .systolic__arg1_vld(systolic__arg1_vld),
    .systolic__hor_chans__0_0_rdy(instantiation_output_43825),
    .systolic__hor_chans__0_2(instantiation_output_43855),
    .systolic__hor_chans__0_2_vld(instantiation_output_43856),
    .systolic__hor_chans__1_0_rdy(instantiation_output_43864),
    .systolic__hor_chans__1_2(instantiation_output_43894),
    .systolic__hor_chans__1_2_vld(instantiation_output_43895),
    .systolic__out0_rdy(systolic__out0_rdy),
    .systolic__result_chans__0_0(instantiation_output_43913),
    .systolic__result_chans__0_0_vld(instantiation_output_43914),
    .systolic__result_chans__0_1(instantiation_output_43926),
    .systolic__result_chans__0_1_vld(instantiation_output_43927),
    .systolic__result_chans__1_0(instantiation_output_43939),
    .systolic__result_chans__1_0_vld(instantiation_output_43940),
    .systolic__result_chans__1_1(instantiation_output_43952),
    .systolic__result_chans__1_1_vld(instantiation_output_43953),
    .systolic__vert_chans__0_0_rdy(instantiation_output_43961),
    .systolic__vert_chans__0_1_rdy(instantiation_output_43974),
    .systolic__vert_chans__2_0(instantiation_output_44017),
    .systolic__vert_chans__2_0_vld(instantiation_output_44018),
    .systolic__vert_chans__2_1(instantiation_output_44030),
    .systolic__vert_chans__2_1_vld(instantiation_output_44031),
    .systolic__arg0_rdy(instantiation_output_43812),
    .systolic__arg1_rdy(instantiation_output_43818),
    .systolic__hor_chans__0_0(instantiation_output_43823),
    .systolic__hor_chans__0_0_vld(instantiation_output_43824),
    .systolic__hor_chans__0_2_rdy(instantiation_output_43857),
    .systolic__hor_chans__1_0(instantiation_output_43862),
    .systolic__hor_chans__1_0_vld(instantiation_output_43863),
    .systolic__hor_chans__1_2_rdy(instantiation_output_43896),
    .systolic__out0({{instantiation_output_43900[1][1], instantiation_output_43900[1][0]}, {instantiation_output_43900[0][1], instantiation_output_43900[0][0]}}),
    .systolic__out0_vld(instantiation_output_43901),
    .systolic__result_chans__0_0_rdy(instantiation_output_43915),
    .systolic__result_chans__0_1_rdy(instantiation_output_43928),
    .systolic__result_chans__1_0_rdy(instantiation_output_43941),
    .systolic__result_chans__1_1_rdy(instantiation_output_43954),
    .systolic__vert_chans__0_0(instantiation_output_43959),
    .systolic__vert_chans__0_0_vld(instantiation_output_43960),
    .systolic__vert_chans__0_1(instantiation_output_43972),
    .systolic__vert_chans__0_1_vld(instantiation_output_43973),
    .systolic__vert_chans__2_0_rdy(instantiation_output_44019),
    .systolic__vert_chans__2_1_rdy(instantiation_output_44032),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_0_next __systolic__SystolicArray__PE_0_next_inst1 (
    .rst(rst),
    .systolic__hor_chans__0_0(instantiation_output_43829),
    .systolic__hor_chans__0_0_vld(instantiation_output_43830),
    .systolic__hor_chans__0_1_rdy(instantiation_output_43838),
    .systolic__result_chans__0_0_rdy(instantiation_output_43909),
    .systolic__vert_chans__0_0(instantiation_output_43965),
    .systolic__vert_chans__0_0_vld(instantiation_output_43966),
    .systolic__vert_chans__1_0_rdy(instantiation_output_43987),
    .systolic__hor_chans__0_0_rdy(instantiation_output_43831),
    .systolic__hor_chans__0_1(instantiation_output_43836),
    .systolic__hor_chans__0_1_vld(instantiation_output_43837),
    .systolic__result_chans__0_0(instantiation_output_43907),
    .systolic__result_chans__0_0_vld(instantiation_output_43908),
    .systolic__vert_chans__0_0_rdy(instantiation_output_43967),
    .systolic__vert_chans__1_0(instantiation_output_43985),
    .systolic__vert_chans__1_0_vld(instantiation_output_43986),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_1_next __systolic__SystolicArray__PE_1_next_inst2 (
    .rst(rst),
    .systolic__hor_chans__0_1(instantiation_output_43842),
    .systolic__hor_chans__0_1_vld(instantiation_output_43843),
    .systolic__hor_chans__0_2_rdy(instantiation_output_43851),
    .systolic__result_chans__0_1_rdy(instantiation_output_43922),
    .systolic__vert_chans__0_1(instantiation_output_43978),
    .systolic__vert_chans__0_1_vld(instantiation_output_43979),
    .systolic__vert_chans__1_1_rdy(instantiation_output_44000),
    .systolic__hor_chans__0_1_rdy(instantiation_output_43844),
    .systolic__hor_chans__0_2(instantiation_output_43849),
    .systolic__hor_chans__0_2_vld(instantiation_output_43850),
    .systolic__result_chans__0_1(instantiation_output_43920),
    .systolic__result_chans__0_1_vld(instantiation_output_43921),
    .systolic__vert_chans__0_1_rdy(instantiation_output_43980),
    .systolic__vert_chans__1_1(instantiation_output_43998),
    .systolic__vert_chans__1_1_vld(instantiation_output_43999),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_2_next __systolic__SystolicArray__PE_2_next_inst3 (
    .rst(rst),
    .systolic__hor_chans__1_0(instantiation_output_43868),
    .systolic__hor_chans__1_0_vld(instantiation_output_43869),
    .systolic__hor_chans__1_1_rdy(instantiation_output_43877),
    .systolic__result_chans__1_0_rdy(instantiation_output_43935),
    .systolic__vert_chans__1_0(instantiation_output_43991),
    .systolic__vert_chans__1_0_vld(instantiation_output_43992),
    .systolic__vert_chans__2_0_rdy(instantiation_output_44013),
    .systolic__hor_chans__1_0_rdy(instantiation_output_43870),
    .systolic__hor_chans__1_1(instantiation_output_43875),
    .systolic__hor_chans__1_1_vld(instantiation_output_43876),
    .systolic__result_chans__1_0(instantiation_output_43933),
    .systolic__result_chans__1_0_vld(instantiation_output_43934),
    .systolic__vert_chans__1_0_rdy(instantiation_output_43993),
    .systolic__vert_chans__2_0(instantiation_output_44011),
    .systolic__vert_chans__2_0_vld(instantiation_output_44012),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_3_next __systolic__SystolicArray__PE_3_next_inst4 (
    .rst(rst),
    .systolic__hor_chans__1_1(instantiation_output_43881),
    .systolic__hor_chans__1_1_vld(instantiation_output_43882),
    .systolic__hor_chans__1_2_rdy(instantiation_output_43890),
    .systolic__result_chans__1_1_rdy(instantiation_output_43948),
    .systolic__vert_chans__1_1(instantiation_output_44004),
    .systolic__vert_chans__1_1_vld(instantiation_output_44005),
    .systolic__vert_chans__2_1_rdy(instantiation_output_44026),
    .systolic__hor_chans__1_1_rdy(instantiation_output_43883),
    .systolic__hor_chans__1_2(instantiation_output_43888),
    .systolic__hor_chans__1_2_vld(instantiation_output_43889),
    .systolic__result_chans__1_1(instantiation_output_43946),
    .systolic__result_chans__1_1_vld(instantiation_output_43947),
    .systolic__vert_chans__1_1_rdy(instantiation_output_44006),
    .systolic__vert_chans__2_1(instantiation_output_44024),
    .systolic__vert_chans__2_1_vld(instantiation_output_44025),
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
    .push_data(instantiation_output_43823),
    .push_valid(instantiation_output_43824),
    .pop_ready(instantiation_output_43831),
    .push_ready(instantiation_output_43825),
    .pop_data(instantiation_output_43829),
    .pop_valid(instantiation_output_43830)
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
    .push_data(instantiation_output_43836),
    .push_valid(instantiation_output_43837),
    .pop_ready(instantiation_output_43844),
    .push_ready(instantiation_output_43838),
    .pop_data(instantiation_output_43842),
    .pop_valid(instantiation_output_43843)
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
    .push_data(instantiation_output_43849),
    .push_valid(instantiation_output_43850),
    .pop_ready(instantiation_output_43857),
    .push_ready(instantiation_output_43851),
    .pop_data(instantiation_output_43855),
    .pop_valid(instantiation_output_43856)
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
    .push_data(instantiation_output_43862),
    .push_valid(instantiation_output_43863),
    .pop_ready(instantiation_output_43870),
    .push_ready(instantiation_output_43864),
    .pop_data(instantiation_output_43868),
    .pop_valid(instantiation_output_43869)
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
    .push_data(instantiation_output_43875),
    .push_valid(instantiation_output_43876),
    .pop_ready(instantiation_output_43883),
    .push_ready(instantiation_output_43877),
    .pop_data(instantiation_output_43881),
    .pop_valid(instantiation_output_43882)
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
    .push_data(instantiation_output_43888),
    .push_valid(instantiation_output_43889),
    .pop_ready(instantiation_output_43896),
    .push_ready(instantiation_output_43890),
    .pop_data(instantiation_output_43894),
    .pop_valid(instantiation_output_43895)
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
    .push_data(instantiation_output_43907),
    .push_valid(instantiation_output_43908),
    .pop_ready(instantiation_output_43915),
    .push_ready(instantiation_output_43909),
    .pop_data(instantiation_output_43913),
    .pop_valid(instantiation_output_43914)
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
    .push_data(instantiation_output_43920),
    .push_valid(instantiation_output_43921),
    .pop_ready(instantiation_output_43928),
    .push_ready(instantiation_output_43922),
    .pop_data(instantiation_output_43926),
    .pop_valid(instantiation_output_43927)
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
    .push_data(instantiation_output_43933),
    .push_valid(instantiation_output_43934),
    .pop_ready(instantiation_output_43941),
    .push_ready(instantiation_output_43935),
    .pop_data(instantiation_output_43939),
    .pop_valid(instantiation_output_43940)
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
    .push_data(instantiation_output_43946),
    .push_valid(instantiation_output_43947),
    .pop_ready(instantiation_output_43954),
    .push_ready(instantiation_output_43948),
    .pop_data(instantiation_output_43952),
    .pop_valid(instantiation_output_43953)
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
    .push_data(instantiation_output_43959),
    .push_valid(instantiation_output_43960),
    .pop_ready(instantiation_output_43967),
    .push_ready(instantiation_output_43961),
    .pop_data(instantiation_output_43965),
    .pop_valid(instantiation_output_43966)
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
    .push_data(instantiation_output_43972),
    .push_valid(instantiation_output_43973),
    .pop_ready(instantiation_output_43980),
    .push_ready(instantiation_output_43974),
    .pop_data(instantiation_output_43978),
    .pop_valid(instantiation_output_43979)
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
    .push_data(instantiation_output_43985),
    .push_valid(instantiation_output_43986),
    .pop_ready(instantiation_output_43993),
    .push_ready(instantiation_output_43987),
    .pop_data(instantiation_output_43991),
    .pop_valid(instantiation_output_43992)
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
    .push_data(instantiation_output_43998),
    .push_valid(instantiation_output_43999),
    .pop_ready(instantiation_output_44006),
    .push_ready(instantiation_output_44000),
    .pop_data(instantiation_output_44004),
    .pop_valid(instantiation_output_44005)
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
    .push_data(instantiation_output_44011),
    .push_valid(instantiation_output_44012),
    .pop_ready(instantiation_output_44019),
    .push_ready(instantiation_output_44013),
    .pop_data(instantiation_output_44017),
    .pop_valid(instantiation_output_44018)
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
    .push_data(instantiation_output_44024),
    .push_valid(instantiation_output_44025),
    .pop_ready(instantiation_output_44032),
    .push_ready(instantiation_output_44026),
    .pop_data(instantiation_output_44030),
    .pop_valid(instantiation_output_44031)
  );
  assign systolic__arg0_rdy = instantiation_output_43812;
  assign systolic__arg1_rdy = instantiation_output_43818;
  assign systolic__out0 = {{instantiation_output_43900[1][1], instantiation_output_43900[1][0]}, {instantiation_output_43900[0][1], instantiation_output_43900[0][0]}};
  assign systolic__out0_vld = instantiation_output_43901;
endmodule
