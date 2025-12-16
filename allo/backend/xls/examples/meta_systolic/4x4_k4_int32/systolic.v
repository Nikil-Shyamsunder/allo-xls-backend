module __systolic__SystolicArray_0_next__1(
  input wire clk,
  input wire rst,
  input wire [511:0] systolic__arg0,
  input wire systolic__arg0_vld,
  input wire [511:0] systolic__arg1,
  input wire systolic__arg1_vld,
  input wire systolic__hor_chans__0_0_rdy,
  input wire [31:0] systolic__hor_chans__0_4,
  input wire systolic__hor_chans__0_4_vld,
  input wire systolic__hor_chans__1_0_rdy,
  input wire [31:0] systolic__hor_chans__1_4,
  input wire systolic__hor_chans__1_4_vld,
  input wire systolic__hor_chans__2_0_rdy,
  input wire [31:0] systolic__hor_chans__2_4,
  input wire systolic__hor_chans__2_4_vld,
  input wire systolic__hor_chans__3_0_rdy,
  input wire [31:0] systolic__hor_chans__3_4,
  input wire systolic__hor_chans__3_4_vld,
  input wire systolic__out0_rdy,
  input wire [31:0] systolic__result_chans__0_0,
  input wire systolic__result_chans__0_0_vld,
  input wire [31:0] systolic__result_chans__0_1,
  input wire systolic__result_chans__0_1_vld,
  input wire [31:0] systolic__result_chans__0_2,
  input wire systolic__result_chans__0_2_vld,
  input wire [31:0] systolic__result_chans__0_3,
  input wire systolic__result_chans__0_3_vld,
  input wire [31:0] systolic__result_chans__1_0,
  input wire systolic__result_chans__1_0_vld,
  input wire [31:0] systolic__result_chans__1_1,
  input wire systolic__result_chans__1_1_vld,
  input wire [31:0] systolic__result_chans__1_2,
  input wire systolic__result_chans__1_2_vld,
  input wire [31:0] systolic__result_chans__1_3,
  input wire systolic__result_chans__1_3_vld,
  input wire [31:0] systolic__result_chans__2_0,
  input wire systolic__result_chans__2_0_vld,
  input wire [31:0] systolic__result_chans__2_1,
  input wire systolic__result_chans__2_1_vld,
  input wire [31:0] systolic__result_chans__2_2,
  input wire systolic__result_chans__2_2_vld,
  input wire [31:0] systolic__result_chans__2_3,
  input wire systolic__result_chans__2_3_vld,
  input wire [31:0] systolic__result_chans__3_0,
  input wire systolic__result_chans__3_0_vld,
  input wire [31:0] systolic__result_chans__3_1,
  input wire systolic__result_chans__3_1_vld,
  input wire [31:0] systolic__result_chans__3_2,
  input wire systolic__result_chans__3_2_vld,
  input wire [31:0] systolic__result_chans__3_3,
  input wire systolic__result_chans__3_3_vld,
  input wire systolic__vert_chans__0_0_rdy,
  input wire systolic__vert_chans__0_1_rdy,
  input wire systolic__vert_chans__0_2_rdy,
  input wire systolic__vert_chans__0_3_rdy,
  input wire [31:0] systolic__vert_chans__4_0,
  input wire systolic__vert_chans__4_0_vld,
  input wire [31:0] systolic__vert_chans__4_1,
  input wire systolic__vert_chans__4_1_vld,
  input wire [31:0] systolic__vert_chans__4_2,
  input wire systolic__vert_chans__4_2_vld,
  input wire [31:0] systolic__vert_chans__4_3,
  input wire systolic__vert_chans__4_3_vld,
  output wire systolic__arg0_rdy,
  output wire systolic__arg1_rdy,
  output wire [31:0] systolic__hor_chans__0_0,
  output wire systolic__hor_chans__0_0_vld,
  output wire systolic__hor_chans__0_4_rdy,
  output wire [31:0] systolic__hor_chans__1_0,
  output wire systolic__hor_chans__1_0_vld,
  output wire systolic__hor_chans__1_4_rdy,
  output wire [31:0] systolic__hor_chans__2_0,
  output wire systolic__hor_chans__2_0_vld,
  output wire systolic__hor_chans__2_4_rdy,
  output wire [31:0] systolic__hor_chans__3_0,
  output wire systolic__hor_chans__3_0_vld,
  output wire systolic__hor_chans__3_4_rdy,
  output wire [511:0] systolic__out0,
  output wire systolic__out0_vld,
  output wire systolic__result_chans__0_0_rdy,
  output wire systolic__result_chans__0_1_rdy,
  output wire systolic__result_chans__0_2_rdy,
  output wire systolic__result_chans__0_3_rdy,
  output wire systolic__result_chans__1_0_rdy,
  output wire systolic__result_chans__1_1_rdy,
  output wire systolic__result_chans__1_2_rdy,
  output wire systolic__result_chans__1_3_rdy,
  output wire systolic__result_chans__2_0_rdy,
  output wire systolic__result_chans__2_1_rdy,
  output wire systolic__result_chans__2_2_rdy,
  output wire systolic__result_chans__2_3_rdy,
  output wire systolic__result_chans__3_0_rdy,
  output wire systolic__result_chans__3_1_rdy,
  output wire systolic__result_chans__3_2_rdy,
  output wire systolic__result_chans__3_3_rdy,
  output wire [31:0] systolic__vert_chans__0_0,
  output wire systolic__vert_chans__0_0_vld,
  output wire [31:0] systolic__vert_chans__0_1,
  output wire systolic__vert_chans__0_1_vld,
  output wire [31:0] systolic__vert_chans__0_2,
  output wire systolic__vert_chans__0_2_vld,
  output wire [31:0] systolic__vert_chans__0_3,
  output wire systolic__vert_chans__0_3_vld,
  output wire systolic__vert_chans__4_0_rdy,
  output wire systolic__vert_chans__4_1_rdy,
  output wire systolic__vert_chans__4_2_rdy,
  output wire systolic__vert_chans__4_3_rdy
);
  wire [31:0] ____state_0_init[4][4];
  assign ____state_0_init = '{'{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}};
  wire [31:0] ____state_1_init[4][4];
  assign ____state_1_init = '{'{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}};
  wire [31:0] __systolic__arg0_reg_init[4][4];
  assign __systolic__arg0_reg_init = '{'{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}};
  wire [31:0] __systolic__arg1_reg_init[4][4];
  assign __systolic__arg1_reg_init = '{'{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}};
  wire [31:0] __systolic__out0_reg_init[4][4];
  assign __systolic__out0_reg_init = '{'{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_3439[4][4];
  assign literal_3439 = '{'{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_3443[4][4];
  assign literal_3443 = '{'{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}};
  wire [31:0] literal_3286[4][4];
  assign literal_3286 = '{'{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000}};
  wire [31:0] systolic__arg0_unflattened[4][4];
  assign systolic__arg0_unflattened[0][0] = systolic__arg0[31:0];
  assign systolic__arg0_unflattened[0][1] = systolic__arg0[63:32];
  assign systolic__arg0_unflattened[0][2] = systolic__arg0[95:64];
  assign systolic__arg0_unflattened[0][3] = systolic__arg0[127:96];
  assign systolic__arg0_unflattened[1][0] = systolic__arg0[159:128];
  assign systolic__arg0_unflattened[1][1] = systolic__arg0[191:160];
  assign systolic__arg0_unflattened[1][2] = systolic__arg0[223:192];
  assign systolic__arg0_unflattened[1][3] = systolic__arg0[255:224];
  assign systolic__arg0_unflattened[2][0] = systolic__arg0[287:256];
  assign systolic__arg0_unflattened[2][1] = systolic__arg0[319:288];
  assign systolic__arg0_unflattened[2][2] = systolic__arg0[351:320];
  assign systolic__arg0_unflattened[2][3] = systolic__arg0[383:352];
  assign systolic__arg0_unflattened[3][0] = systolic__arg0[415:384];
  assign systolic__arg0_unflattened[3][1] = systolic__arg0[447:416];
  assign systolic__arg0_unflattened[3][2] = systolic__arg0[479:448];
  assign systolic__arg0_unflattened[3][3] = systolic__arg0[511:480];
  wire [31:0] systolic__arg1_unflattened[4][4];
  assign systolic__arg1_unflattened[0][0] = systolic__arg1[31:0];
  assign systolic__arg1_unflattened[0][1] = systolic__arg1[63:32];
  assign systolic__arg1_unflattened[0][2] = systolic__arg1[95:64];
  assign systolic__arg1_unflattened[0][3] = systolic__arg1[127:96];
  assign systolic__arg1_unflattened[1][0] = systolic__arg1[159:128];
  assign systolic__arg1_unflattened[1][1] = systolic__arg1[191:160];
  assign systolic__arg1_unflattened[1][2] = systolic__arg1[223:192];
  assign systolic__arg1_unflattened[1][3] = systolic__arg1[255:224];
  assign systolic__arg1_unflattened[2][0] = systolic__arg1[287:256];
  assign systolic__arg1_unflattened[2][1] = systolic__arg1[319:288];
  assign systolic__arg1_unflattened[2][2] = systolic__arg1[351:320];
  assign systolic__arg1_unflattened[2][3] = systolic__arg1[383:352];
  assign systolic__arg1_unflattened[3][0] = systolic__arg1[415:384];
  assign systolic__arg1_unflattened[3][1] = systolic__arg1[447:416];
  assign systolic__arg1_unflattened[3][2] = systolic__arg1[479:448];
  assign systolic__arg1_unflattened[3][3] = systolic__arg1[511:480];
  reg [2:0] ____state_2;
  reg [31:0] ____state_0[4][4];
  reg [31:0] ____state_1[4][4];
  reg p0_bit_slice_3454;
  reg p0_eq_3480;
  reg p1_eq_3480;
  reg [31:0] p1_tuple_3575_index1;
  reg [31:0] p1_c10;
  reg [31:0] p1_array_3581[4];
  reg p2_eq_3480;
  reg [31:0] p2_tuple_3624_index1;
  reg [31:0] p2_c20;
  reg [31:0] p2_c21;
  reg [31:0] p2_c22;
  reg [31:0] p2_array_3581[4];
  reg [31:0] p2_array_3631[4];
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
  reg __systolic__hor_chans__3_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_3_has_been_sent_reg;
  reg __systolic__out0_has_been_sent_reg;
  reg [31:0] __systolic__arg0_reg[4][4];
  reg __systolic__arg0_valid_reg;
  reg [31:0] __systolic__arg1_reg[4][4];
  reg __systolic__arg1_valid_reg;
  reg [31:0] __systolic__hor_chans__0_4_reg;
  reg __systolic__hor_chans__0_4_valid_reg;
  reg [31:0] __systolic__hor_chans__1_4_reg;
  reg __systolic__hor_chans__1_4_valid_reg;
  reg [31:0] __systolic__hor_chans__2_4_reg;
  reg __systolic__hor_chans__2_4_valid_reg;
  reg [31:0] __systolic__hor_chans__3_4_reg;
  reg __systolic__hor_chans__3_4_valid_reg;
  reg [31:0] __systolic__vert_chans__4_0_reg;
  reg __systolic__vert_chans__4_0_valid_reg;
  reg [31:0] __systolic__vert_chans__4_1_reg;
  reg __systolic__vert_chans__4_1_valid_reg;
  reg [31:0] __systolic__vert_chans__4_2_reg;
  reg __systolic__vert_chans__4_2_valid_reg;
  reg [31:0] __systolic__vert_chans__4_3_reg;
  reg __systolic__vert_chans__4_3_valid_reg;
  reg [31:0] __systolic__result_chans__0_0_reg;
  reg __systolic__result_chans__0_0_valid_reg;
  reg [31:0] __systolic__result_chans__0_1_reg;
  reg __systolic__result_chans__0_1_valid_reg;
  reg [31:0] __systolic__result_chans__0_2_reg;
  reg __systolic__result_chans__0_2_valid_reg;
  reg [31:0] __systolic__result_chans__0_3_reg;
  reg __systolic__result_chans__0_3_valid_reg;
  reg [31:0] __systolic__result_chans__1_0_reg;
  reg __systolic__result_chans__1_0_valid_reg;
  reg [31:0] __systolic__result_chans__1_1_reg;
  reg __systolic__result_chans__1_1_valid_reg;
  reg [31:0] __systolic__result_chans__1_2_reg;
  reg __systolic__result_chans__1_2_valid_reg;
  reg [31:0] __systolic__result_chans__1_3_reg;
  reg __systolic__result_chans__1_3_valid_reg;
  reg [31:0] __systolic__result_chans__2_0_reg;
  reg __systolic__result_chans__2_0_valid_reg;
  reg [31:0] __systolic__result_chans__2_1_reg;
  reg __systolic__result_chans__2_1_valid_reg;
  reg [31:0] __systolic__result_chans__2_2_reg;
  reg __systolic__result_chans__2_2_valid_reg;
  reg [31:0] __systolic__result_chans__2_3_reg;
  reg __systolic__result_chans__2_3_valid_reg;
  reg [31:0] __systolic__result_chans__3_0_reg;
  reg __systolic__result_chans__3_0_valid_reg;
  reg [31:0] __systolic__result_chans__3_1_reg;
  reg __systolic__result_chans__3_1_valid_reg;
  reg [31:0] __systolic__result_chans__3_2_reg;
  reg __systolic__result_chans__3_2_valid_reg;
  reg [31:0] __systolic__result_chans__3_3_reg;
  reg __systolic__result_chans__3_3_valid_reg;
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
  reg [31:0] __systolic__hor_chans__3_0_reg;
  reg __systolic__hor_chans__3_0_valid_reg;
  reg [31:0] __systolic__vert_chans__0_3_reg;
  reg __systolic__vert_chans__0_3_valid_reg;
  reg [31:0] __systolic__out0_reg[4][4];
  reg __systolic__out0_valid_reg;
  wire p3_all_active_inputs_valid;
  wire __systolic__out0_vld_buf;
  wire __systolic__out0_not_has_been_sent;
  wire systolic__out0_valid_inv;
  wire __systolic__out0_valid_and_not_has_been_sent;
  wire systolic__out0_valid_load_en;
  wire systolic__out0_load_en;
  wire or_9005;
  wire p3_stage_done;
  wire p3_load_en;
  wire p3_not_valid;
  wire p2_all_active_inputs_valid;
  wire p2_enable;
  wire p2_stage_done;
  wire p2_data_enable;
  wire [2:0] unexpand_for_next_value_301_2_case_1;
  wire p2_load_en;
  wire p2_not_valid;
  wire p1_all_active_inputs_valid;
  wire a_mat2_1_case_cmp;
  wire p1_enable;
  wire p1_stage_done;
  wire p1_data_enable;
  wire p1_load_en;
  wire p1_not_valid;
  wire systolic__hor_chans__0_0_not_pred;
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
  wire __systolic__hor_chans__2_0_not_has_been_sent;
  wire systolic__hor_chans__2_0_valid_inv;
  wire __systolic__vert_chans__0_2_not_has_been_sent;
  wire systolic__vert_chans__0_2_valid_inv;
  wire __systolic__hor_chans__3_0_not_has_been_sent;
  wire systolic__hor_chans__3_0_valid_inv;
  wire __systolic__vert_chans__0_3_not_has_been_sent;
  wire systolic__vert_chans__0_3_valid_inv;
  wire __systolic__hor_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_0_valid_load_en;
  wire __systolic__vert_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__0_0_valid_load_en;
  wire __systolic__hor_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_0_valid_load_en;
  wire __systolic__vert_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__0_1_valid_load_en;
  wire __systolic__hor_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_0_valid_load_en;
  wire __systolic__vert_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__0_2_valid_load_en;
  wire __systolic__hor_chans__3_0_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_0_valid_load_en;
  wire __systolic__vert_chans__0_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__0_3_valid_load_en;
  wire systolic__hor_chans__0_0_load_en;
  wire systolic__vert_chans__0_0_load_en;
  wire systolic__hor_chans__1_0_load_en;
  wire systolic__vert_chans__0_1_load_en;
  wire systolic__hor_chans__2_0_load_en;
  wire systolic__vert_chans__0_2_load_en;
  wire systolic__hor_chans__3_0_load_en;
  wire systolic__vert_chans__0_3_load_en;
  wire eq_3480;
  wire p0_all_active_outputs_ready;
  wire p0_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire [1:0] ____state_2__next_value_predicates;
  wire p0_data_enable;
  wire [2:0] one_hot_3484;
  wire [2:0] one_hot_3485;
  wire p0_load_en;
  wire and_3834;
  wire systolic__arg0_valid_inv;
  wire systolic__arg1_valid_inv;
  wire systolic__hor_chans__0_4_valid_inv;
  wire systolic__hor_chans__1_4_valid_inv;
  wire systolic__hor_chans__2_4_valid_inv;
  wire systolic__hor_chans__3_4_valid_inv;
  wire and_3836;
  wire systolic__result_chans__0_0_valid_inv;
  wire systolic__result_chans__0_1_valid_inv;
  wire systolic__result_chans__0_2_valid_inv;
  wire systolic__result_chans__0_3_valid_inv;
  wire systolic__result_chans__1_0_valid_inv;
  wire systolic__result_chans__1_1_valid_inv;
  wire and_3842;
  wire systolic__result_chans__1_2_valid_inv;
  wire systolic__result_chans__1_3_valid_inv;
  wire systolic__result_chans__2_0_valid_inv;
  wire systolic__result_chans__2_1_valid_inv;
  wire systolic__result_chans__2_2_valid_inv;
  wire systolic__result_chans__2_3_valid_inv;
  wire and_3848;
  wire systolic__result_chans__3_0_valid_inv;
  wire systolic__result_chans__3_1_valid_inv;
  wire systolic__result_chans__3_2_valid_inv;
  wire systolic__result_chans__3_3_valid_inv;
  wire systolic__vert_chans__4_0_valid_inv;
  wire systolic__vert_chans__4_1_valid_inv;
  wire systolic__vert_chans__4_2_valid_inv;
  wire systolic__vert_chans__4_3_valid_inv;
  wire and_3805;
  wire and_3806;
  wire and_3819;
  wire [31:0] systolic__arg0_select[4][4];
  wire [31:0] systolic__arg1_select[4][4];
  wire [31:0] systolic__result_chans__3_0_select;
  wire [31:0] systolic__result_chans__3_1_select;
  wire [31:0] systolic__result_chans__3_2_select;
  wire [31:0] systolic__result_chans__3_3_select;
  wire systolic__arg0_valid_load_en;
  wire systolic__arg1_valid_load_en;
  wire systolic__hor_chans__0_4_valid_load_en;
  wire systolic__hor_chans__1_4_valid_load_en;
  wire systolic__hor_chans__2_4_valid_load_en;
  wire systolic__hor_chans__3_4_valid_load_en;
  wire systolic__result_chans__0_0_valid_load_en;
  wire systolic__result_chans__0_1_valid_load_en;
  wire systolic__result_chans__0_2_valid_load_en;
  wire systolic__result_chans__0_3_valid_load_en;
  wire systolic__result_chans__1_0_valid_load_en;
  wire systolic__result_chans__1_1_valid_load_en;
  wire systolic__result_chans__1_2_valid_load_en;
  wire systolic__result_chans__1_3_valid_load_en;
  wire systolic__result_chans__2_0_valid_load_en;
  wire systolic__result_chans__2_1_valid_load_en;
  wire systolic__result_chans__2_2_valid_load_en;
  wire systolic__result_chans__2_3_valid_load_en;
  wire systolic__result_chans__3_0_valid_load_en;
  wire systolic__result_chans__3_1_valid_load_en;
  wire systolic__result_chans__3_2_valid_load_en;
  wire systolic__result_chans__3_3_valid_load_en;
  wire systolic__vert_chans__4_0_valid_load_en;
  wire systolic__vert_chans__4_1_valid_load_en;
  wire systolic__vert_chans__4_2_valid_load_en;
  wire systolic__vert_chans__4_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire [31:0] systolic__result_chans__1_2_select;
  wire [31:0] systolic__result_chans__1_3_select;
  wire [31:0] systolic__result_chans__0_0_select;
  wire [31:0] systolic__result_chans__0_1_select;
  wire [31:0] systolic__result_chans__0_2_select;
  wire [31:0] systolic__result_chans__0_3_select;
  wire [1:0] concat_3808;
  wire [1:0] concat_3821;
  wire [2:0] unexpand_for_next_value_301_2_case_0;
  wire __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_0_valid_and_ready_txfr;
  wire __systolic__hor_chans__1_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_1_valid_and_ready_txfr;
  wire __systolic__hor_chans__2_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_2_valid_and_ready_txfr;
  wire __systolic__hor_chans__3_0_valid_and_ready_txfr;
  wire __systolic__vert_chans__0_3_valid_and_ready_txfr;
  wire __systolic__out0_valid_and_all_active_outputs_ready;
  wire __systolic__out0_valid_and_ready_txfr;
  wire [31:0] a_mat2[4][4];
  wire [31:0] b_mat2[4][4];
  wire [31:0] array_3676[4];
  wire [31:0] array_3677[4];
  wire systolic__arg0_load_en;
  wire systolic__arg1_load_en;
  wire systolic__hor_chans__0_4_load_en;
  wire systolic__hor_chans__1_4_load_en;
  wire systolic__hor_chans__2_4_load_en;
  wire systolic__hor_chans__3_4_load_en;
  wire systolic__result_chans__0_0_load_en;
  wire systolic__result_chans__0_1_load_en;
  wire systolic__result_chans__0_2_load_en;
  wire systolic__result_chans__0_3_load_en;
  wire systolic__result_chans__1_0_load_en;
  wire systolic__result_chans__1_1_load_en;
  wire systolic__result_chans__1_2_load_en;
  wire systolic__result_chans__1_3_load_en;
  wire systolic__result_chans__2_0_load_en;
  wire systolic__result_chans__2_1_load_en;
  wire systolic__result_chans__2_2_load_en;
  wire systolic__result_chans__2_3_load_en;
  wire systolic__result_chans__3_0_load_en;
  wire systolic__result_chans__3_1_load_en;
  wire systolic__result_chans__3_2_load_en;
  wire systolic__result_chans__3_3_load_en;
  wire systolic__vert_chans__4_0_load_en;
  wire systolic__vert_chans__4_1_load_en;
  wire systolic__vert_chans__4_2_load_en;
  wire systolic__vert_chans__4_3_load_en;
  wire or_8927;
  wire or_8931;
  wire p3_enable;
  wire [31:0] systolic__result_chans__2_3_select;
  wire [31:0] systolic__result_chans__2_0_select;
  wire [31:0] systolic__result_chans__2_1_select;
  wire [31:0] systolic__result_chans__2_2_select;
  wire [31:0] array_3631[4];
  wire [31:0] systolic__result_chans__1_1_select;
  wire [31:0] systolic__result_chans__1_0_select;
  wire [31:0] array_3581[4];
  wire [31:0] one_hot_sel_3809[4][4];
  wire or_3810;
  wire [31:0] one_hot_sel_3816[4][4];
  wire [2:0] one_hot_sel_3822;
  wire or_3823;
  wire __systolic__hor_chans__0_0_not_stage_load;
  wire __systolic__hor_chans__0_0_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__0_0_has_been_sent_reg_load_en;
  wire __systolic__hor_chans__1_0_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__0_1_has_been_sent_reg_load_en;
  wire __systolic__hor_chans__2_0_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__0_2_has_been_sent_reg_load_en;
  wire __systolic__hor_chans__3_0_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__0_3_has_been_sent_reg_load_en;
  wire __systolic__out0_not_stage_load;
  wire __systolic__out0_has_been_sent_reg_load_en;
  wire [31:0] __systolic__hor_chans__0_0_buf;
  wire [31:0] __systolic__vert_chans__0_0_buf;
  wire [31:0] __systolic__hor_chans__1_0_buf;
  wire [31:0] __systolic__vert_chans__0_1_buf;
  wire [31:0] __systolic__hor_chans__2_0_buf;
  wire [31:0] __systolic__vert_chans__0_2_buf;
  wire [31:0] __systolic__hor_chans__3_0_buf;
  wire [31:0] __systolic__vert_chans__0_3_buf;
  wire [31:0] c[4][4];
  assign p3_all_active_inputs_valid = (~p2_eq_3480 | __systolic__result_chans__3_0_valid_reg) & (~p2_eq_3480 | __systolic__result_chans__3_1_valid_reg) & (~p2_eq_3480 | __systolic__result_chans__3_2_valid_reg) & (~p2_eq_3480 | __systolic__result_chans__3_3_valid_reg);
  assign __systolic__out0_vld_buf = p3_all_active_inputs_valid & p2_valid & p2_eq_3480;
  assign __systolic__out0_not_has_been_sent = ~__systolic__out0_has_been_sent_reg;
  assign systolic__out0_valid_inv = ~__systolic__out0_valid_reg;
  assign __systolic__out0_valid_and_not_has_been_sent = __systolic__out0_vld_buf & __systolic__out0_not_has_been_sent;
  assign systolic__out0_valid_load_en = systolic__out0_rdy | systolic__out0_valid_inv;
  assign systolic__out0_load_en = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_valid_load_en;
  assign or_9005 = ~p2_eq_3480 | systolic__out0_load_en | __systolic__out0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & p3_all_active_inputs_valid & or_9005;
  assign p3_load_en = p3_stage_done | rst;
  assign p3_not_valid = ~p2_valid;
  assign p2_all_active_inputs_valid = (~p1_eq_3480 | __systolic__result_chans__1_2_valid_reg) & (~p1_eq_3480 | __systolic__result_chans__1_3_valid_reg) & (~p1_eq_3480 | __systolic__result_chans__2_0_valid_reg) & (~p1_eq_3480 | __systolic__result_chans__2_1_valid_reg) & (~p1_eq_3480 | __systolic__result_chans__2_2_valid_reg) & (~p1_eq_3480 | __systolic__result_chans__2_3_valid_reg);
  assign p2_enable = p3_load_en | p3_not_valid;
  assign p2_stage_done = p1_valid & p2_all_active_inputs_valid;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign unexpand_for_next_value_301_2_case_1 = 3'h0;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_all_active_inputs_valid = (~p0_eq_3480 | __systolic__result_chans__0_0_valid_reg) & (~p0_eq_3480 | __systolic__result_chans__0_1_valid_reg) & (~p0_eq_3480 | __systolic__result_chans__0_2_valid_reg) & (~p0_eq_3480 | __systolic__result_chans__0_3_valid_reg) & (~p0_eq_3480 | __systolic__result_chans__1_0_valid_reg) & (~p0_eq_3480 | __systolic__result_chans__1_1_valid_reg);
  assign a_mat2_1_case_cmp = ____state_2 == unexpand_for_next_value_301_2_case_1;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & p1_all_active_inputs_valid;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign systolic__hor_chans__0_0_not_pred = ____state_2[2];
  assign p0_all_active_inputs_valid = (~a_mat2_1_case_cmp | __systolic__arg0_valid_reg) & (~a_mat2_1_case_cmp | __systolic__arg1_valid_reg);
  assign p0_enable = p1_load_en | p1_not_valid;
  assign __systolic__hor_chans__0_0_vld_buf = p0_all_active_inputs_valid & p0_enable & ~systolic__hor_chans__0_0_not_pred;
  assign __systolic__hor_chans__0_0_not_has_been_sent = ~__systolic__hor_chans__0_0_has_been_sent_reg;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign __systolic__vert_chans__0_0_not_has_been_sent = ~__systolic__vert_chans__0_0_has_been_sent_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign __systolic__hor_chans__1_0_not_has_been_sent = ~__systolic__hor_chans__1_0_has_been_sent_reg;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign __systolic__vert_chans__0_1_not_has_been_sent = ~__systolic__vert_chans__0_1_has_been_sent_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign __systolic__hor_chans__2_0_not_has_been_sent = ~__systolic__hor_chans__2_0_has_been_sent_reg;
  assign systolic__hor_chans__2_0_valid_inv = ~__systolic__hor_chans__2_0_valid_reg;
  assign __systolic__vert_chans__0_2_not_has_been_sent = ~__systolic__vert_chans__0_2_has_been_sent_reg;
  assign systolic__vert_chans__0_2_valid_inv = ~__systolic__vert_chans__0_2_valid_reg;
  assign __systolic__hor_chans__3_0_not_has_been_sent = ~__systolic__hor_chans__3_0_has_been_sent_reg;
  assign systolic__hor_chans__3_0_valid_inv = ~__systolic__hor_chans__3_0_valid_reg;
  assign __systolic__vert_chans__0_3_not_has_been_sent = ~__systolic__vert_chans__0_3_has_been_sent_reg;
  assign systolic__vert_chans__0_3_valid_inv = ~__systolic__vert_chans__0_3_valid_reg;
  assign __systolic__hor_chans__0_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__hor_chans__0_0_not_has_been_sent;
  assign systolic__hor_chans__0_0_valid_load_en = systolic__hor_chans__0_0_rdy | systolic__hor_chans__0_0_valid_inv;
  assign __systolic__vert_chans__0_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__vert_chans__0_0_not_has_been_sent;
  assign systolic__vert_chans__0_0_valid_load_en = systolic__vert_chans__0_0_rdy | systolic__vert_chans__0_0_valid_inv;
  assign __systolic__hor_chans__1_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__hor_chans__1_0_not_has_been_sent;
  assign systolic__hor_chans__1_0_valid_load_en = systolic__hor_chans__1_0_rdy | systolic__hor_chans__1_0_valid_inv;
  assign __systolic__vert_chans__0_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__vert_chans__0_1_not_has_been_sent;
  assign systolic__vert_chans__0_1_valid_load_en = systolic__vert_chans__0_1_rdy | systolic__vert_chans__0_1_valid_inv;
  assign __systolic__hor_chans__2_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__hor_chans__2_0_not_has_been_sent;
  assign systolic__hor_chans__2_0_valid_load_en = systolic__hor_chans__2_0_rdy | systolic__hor_chans__2_0_valid_inv;
  assign __systolic__vert_chans__0_2_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__vert_chans__0_2_not_has_been_sent;
  assign systolic__vert_chans__0_2_valid_load_en = systolic__vert_chans__0_2_rdy | systolic__vert_chans__0_2_valid_inv;
  assign __systolic__hor_chans__3_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__hor_chans__3_0_not_has_been_sent;
  assign systolic__hor_chans__3_0_valid_load_en = systolic__hor_chans__3_0_rdy | systolic__hor_chans__3_0_valid_inv;
  assign __systolic__vert_chans__0_3_valid_and_not_has_been_sent = __systolic__hor_chans__0_0_vld_buf & __systolic__vert_chans__0_3_not_has_been_sent;
  assign systolic__vert_chans__0_3_valid_load_en = systolic__vert_chans__0_3_rdy | systolic__vert_chans__0_3_valid_inv;
  assign systolic__hor_chans__0_0_load_en = __systolic__hor_chans__0_0_valid_and_not_has_been_sent & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = __systolic__vert_chans__0_0_valid_and_not_has_been_sent & systolic__vert_chans__0_0_valid_load_en;
  assign systolic__hor_chans__1_0_load_en = __systolic__hor_chans__1_0_valid_and_not_has_been_sent & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = __systolic__vert_chans__0_1_valid_and_not_has_been_sent & systolic__vert_chans__0_1_valid_load_en;
  assign systolic__hor_chans__2_0_load_en = __systolic__hor_chans__2_0_valid_and_not_has_been_sent & systolic__hor_chans__2_0_valid_load_en;
  assign systolic__vert_chans__0_2_load_en = __systolic__vert_chans__0_2_valid_and_not_has_been_sent & systolic__vert_chans__0_2_valid_load_en;
  assign systolic__hor_chans__3_0_load_en = __systolic__hor_chans__3_0_valid_and_not_has_been_sent & systolic__hor_chans__3_0_valid_load_en;
  assign systolic__vert_chans__0_3_load_en = __systolic__vert_chans__0_3_valid_and_not_has_been_sent & systolic__vert_chans__0_3_valid_load_en;
  assign eq_3480 = ____state_2 == 3'h4;
  assign p0_all_active_outputs_ready = (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__0_0_load_en | __systolic__hor_chans__0_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_0_load_en | __systolic__vert_chans__0_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__1_0_load_en | __systolic__hor_chans__1_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_1_load_en | __systolic__vert_chans__0_1_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__2_0_load_en | __systolic__hor_chans__2_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_2_load_en | __systolic__vert_chans__0_2_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__3_0_load_en | __systolic__hor_chans__3_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_3_load_en | __systolic__vert_chans__0_3_has_been_sent_reg);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign ____state_0__next_value_predicates = {eq_3480, a_mat2_1_case_cmp};
  assign ____state_2__next_value_predicates = {~eq_3480, eq_3480};
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign one_hot_3484 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign one_hot_3485 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign p0_load_en = p0_data_enable | rst;
  assign and_3834 = p0_load_en & a_mat2_1_case_cmp;
  assign systolic__arg0_valid_inv = ~__systolic__arg0_valid_reg;
  assign systolic__arg1_valid_inv = ~__systolic__arg1_valid_reg;
  assign systolic__hor_chans__0_4_valid_inv = ~__systolic__hor_chans__0_4_valid_reg;
  assign systolic__hor_chans__1_4_valid_inv = ~__systolic__hor_chans__1_4_valid_reg;
  assign systolic__hor_chans__2_4_valid_inv = ~__systolic__hor_chans__2_4_valid_reg;
  assign systolic__hor_chans__3_4_valid_inv = ~__systolic__hor_chans__3_4_valid_reg;
  assign and_3836 = p1_load_en & p0_eq_3480;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign systolic__result_chans__0_2_valid_inv = ~__systolic__result_chans__0_2_valid_reg;
  assign systolic__result_chans__0_3_valid_inv = ~__systolic__result_chans__0_3_valid_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign and_3842 = p2_load_en & p1_eq_3480;
  assign systolic__result_chans__1_2_valid_inv = ~__systolic__result_chans__1_2_valid_reg;
  assign systolic__result_chans__1_3_valid_inv = ~__systolic__result_chans__1_3_valid_reg;
  assign systolic__result_chans__2_0_valid_inv = ~__systolic__result_chans__2_0_valid_reg;
  assign systolic__result_chans__2_1_valid_inv = ~__systolic__result_chans__2_1_valid_reg;
  assign systolic__result_chans__2_2_valid_inv = ~__systolic__result_chans__2_2_valid_reg;
  assign systolic__result_chans__2_3_valid_inv = ~__systolic__result_chans__2_3_valid_reg;
  assign and_3848 = p3_load_en & p2_eq_3480;
  assign systolic__result_chans__3_0_valid_inv = ~__systolic__result_chans__3_0_valid_reg;
  assign systolic__result_chans__3_1_valid_inv = ~__systolic__result_chans__3_1_valid_reg;
  assign systolic__result_chans__3_2_valid_inv = ~__systolic__result_chans__3_2_valid_reg;
  assign systolic__result_chans__3_3_valid_inv = ~__systolic__result_chans__3_3_valid_reg;
  assign systolic__vert_chans__4_0_valid_inv = ~__systolic__vert_chans__4_0_valid_reg;
  assign systolic__vert_chans__4_1_valid_inv = ~__systolic__vert_chans__4_1_valid_reg;
  assign systolic__vert_chans__4_2_valid_inv = ~__systolic__vert_chans__4_2_valid_reg;
  assign systolic__vert_chans__4_3_valid_inv = ~__systolic__vert_chans__4_3_valid_reg;
  assign and_3805 = eq_3480 & p0_data_enable;
  assign and_3806 = a_mat2_1_case_cmp & p0_data_enable;
  assign and_3819 = ~eq_3480 & p0_data_enable;
  assign systolic__arg0_select = a_mat2_1_case_cmp == 1'h0 ? literal_3439 : __systolic__arg0_reg;
  assign systolic__arg1_select = a_mat2_1_case_cmp == 1'h0 ? literal_3443 : __systolic__arg1_reg;
  assign systolic__result_chans__3_0_select = p2_eq_3480 ? __systolic__result_chans__3_0_reg : 32'h0000_0000;
  assign systolic__result_chans__3_1_select = p2_eq_3480 ? __systolic__result_chans__3_1_reg : 32'h0000_0000;
  assign systolic__result_chans__3_2_select = p2_eq_3480 ? __systolic__result_chans__3_2_reg : 32'h0000_0000;
  assign systolic__result_chans__3_3_select = p2_eq_3480 ? __systolic__result_chans__3_3_reg : 32'h0000_0000;
  assign systolic__arg0_valid_load_en = and_3834 | systolic__arg0_valid_inv;
  assign systolic__arg1_valid_load_en = and_3834 | systolic__arg1_valid_inv;
  assign systolic__hor_chans__0_4_valid_load_en = p0_load_en | systolic__hor_chans__0_4_valid_inv;
  assign systolic__hor_chans__1_4_valid_load_en = p0_load_en | systolic__hor_chans__1_4_valid_inv;
  assign systolic__hor_chans__2_4_valid_load_en = p0_load_en | systolic__hor_chans__2_4_valid_inv;
  assign systolic__hor_chans__3_4_valid_load_en = p0_load_en | systolic__hor_chans__3_4_valid_inv;
  assign systolic__result_chans__0_0_valid_load_en = and_3836 | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_1_valid_load_en = and_3836 | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__0_2_valid_load_en = and_3836 | systolic__result_chans__0_2_valid_inv;
  assign systolic__result_chans__0_3_valid_load_en = and_3836 | systolic__result_chans__0_3_valid_inv;
  assign systolic__result_chans__1_0_valid_load_en = and_3836 | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_1_valid_load_en = and_3836 | systolic__result_chans__1_1_valid_inv;
  assign systolic__result_chans__1_2_valid_load_en = and_3842 | systolic__result_chans__1_2_valid_inv;
  assign systolic__result_chans__1_3_valid_load_en = and_3842 | systolic__result_chans__1_3_valid_inv;
  assign systolic__result_chans__2_0_valid_load_en = and_3842 | systolic__result_chans__2_0_valid_inv;
  assign systolic__result_chans__2_1_valid_load_en = and_3842 | systolic__result_chans__2_1_valid_inv;
  assign systolic__result_chans__2_2_valid_load_en = and_3842 | systolic__result_chans__2_2_valid_inv;
  assign systolic__result_chans__2_3_valid_load_en = and_3842 | systolic__result_chans__2_3_valid_inv;
  assign systolic__result_chans__3_0_valid_load_en = and_3848 | systolic__result_chans__3_0_valid_inv;
  assign systolic__result_chans__3_1_valid_load_en = and_3848 | systolic__result_chans__3_1_valid_inv;
  assign systolic__result_chans__3_2_valid_load_en = and_3848 | systolic__result_chans__3_2_valid_inv;
  assign systolic__result_chans__3_3_valid_load_en = and_3848 | systolic__result_chans__3_3_valid_inv;
  assign systolic__vert_chans__4_0_valid_load_en = p0_load_en | systolic__vert_chans__4_0_valid_inv;
  assign systolic__vert_chans__4_1_valid_load_en = p0_load_en | systolic__vert_chans__4_1_valid_inv;
  assign systolic__vert_chans__4_2_valid_load_en = p0_load_en | systolic__vert_chans__4_2_valid_inv;
  assign systolic__vert_chans__4_3_valid_load_en = p0_load_en | systolic__vert_chans__4_3_valid_inv;
  assign ____state_0__at_most_one_next_value = eq_3480 == one_hot_3484[1] & a_mat2_1_case_cmp == one_hot_3484[0];
  assign ____state_2__at_most_one_next_value = ~eq_3480 == one_hot_3485[1] & eq_3480 == one_hot_3485[0];
  assign systolic__result_chans__1_2_select = p1_eq_3480 ? __systolic__result_chans__1_2_reg : 32'h0000_0000;
  assign systolic__result_chans__1_3_select = p1_eq_3480 ? __systolic__result_chans__1_3_reg : 32'h0000_0000;
  assign systolic__result_chans__0_0_select = p0_eq_3480 ? __systolic__result_chans__0_0_reg : 32'h0000_0000;
  assign systolic__result_chans__0_1_select = p0_eq_3480 ? __systolic__result_chans__0_1_reg : 32'h0000_0000;
  assign systolic__result_chans__0_2_select = p0_eq_3480 ? __systolic__result_chans__0_2_reg : 32'h0000_0000;
  assign systolic__result_chans__0_3_select = p0_eq_3480 ? __systolic__result_chans__0_3_reg : 32'h0000_0000;
  assign concat_3808 = {and_3805, and_3806};
  assign concat_3821 = {and_3819, and_3805};
  assign unexpand_for_next_value_301_2_case_0 = ____state_2 + 3'h1;
  assign __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_0_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_valid_and_ready_txfr = __systolic__hor_chans__0_0_valid_and_not_has_been_sent & systolic__hor_chans__0_0_load_en;
  assign __systolic__vert_chans__0_0_valid_and_ready_txfr = __systolic__vert_chans__0_0_valid_and_not_has_been_sent & systolic__vert_chans__0_0_load_en;
  assign __systolic__hor_chans__1_0_valid_and_ready_txfr = __systolic__hor_chans__1_0_valid_and_not_has_been_sent & systolic__hor_chans__1_0_load_en;
  assign __systolic__vert_chans__0_1_valid_and_ready_txfr = __systolic__vert_chans__0_1_valid_and_not_has_been_sent & systolic__vert_chans__0_1_load_en;
  assign __systolic__hor_chans__2_0_valid_and_ready_txfr = __systolic__hor_chans__2_0_valid_and_not_has_been_sent & systolic__hor_chans__2_0_load_en;
  assign __systolic__vert_chans__0_2_valid_and_ready_txfr = __systolic__vert_chans__0_2_valid_and_not_has_been_sent & systolic__vert_chans__0_2_load_en;
  assign __systolic__hor_chans__3_0_valid_and_ready_txfr = __systolic__hor_chans__3_0_valid_and_not_has_been_sent & systolic__hor_chans__3_0_load_en;
  assign __systolic__vert_chans__0_3_valid_and_ready_txfr = __systolic__vert_chans__0_3_valid_and_not_has_been_sent & systolic__vert_chans__0_3_load_en;
  assign __systolic__out0_valid_and_all_active_outputs_ready = __systolic__out0_vld_buf & or_9005;
  assign __systolic__out0_valid_and_ready_txfr = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_load_en;
  assign a_mat2 = a_mat2_1_case_cmp == 1'h0 ? ____state_0 : systolic__arg0_select;
  assign b_mat2 = a_mat2_1_case_cmp == 1'h0 ? ____state_1 : systolic__arg1_select;
  assign array_3676[0] = p2_c20;
  assign array_3676[1] = p2_c21;
  assign array_3676[2] = p2_c22;
  assign array_3676[3] = p2_tuple_3624_index1;
  assign array_3677[0] = systolic__result_chans__3_0_select;
  assign array_3677[1] = systolic__result_chans__3_1_select;
  assign array_3677[2] = systolic__result_chans__3_2_select;
  assign array_3677[3] = systolic__result_chans__3_3_select;
  assign systolic__arg0_load_en = systolic__arg0_vld & systolic__arg0_valid_load_en;
  assign systolic__arg1_load_en = systolic__arg1_vld & systolic__arg1_valid_load_en;
  assign systolic__hor_chans__0_4_load_en = systolic__hor_chans__0_4_vld & systolic__hor_chans__0_4_valid_load_en;
  assign systolic__hor_chans__1_4_load_en = systolic__hor_chans__1_4_vld & systolic__hor_chans__1_4_valid_load_en;
  assign systolic__hor_chans__2_4_load_en = systolic__hor_chans__2_4_vld & systolic__hor_chans__2_4_valid_load_en;
  assign systolic__hor_chans__3_4_load_en = systolic__hor_chans__3_4_vld & systolic__hor_chans__3_4_valid_load_en;
  assign systolic__result_chans__0_0_load_en = systolic__result_chans__0_0_vld & systolic__result_chans__0_0_valid_load_en;
  assign systolic__result_chans__0_1_load_en = systolic__result_chans__0_1_vld & systolic__result_chans__0_1_valid_load_en;
  assign systolic__result_chans__0_2_load_en = systolic__result_chans__0_2_vld & systolic__result_chans__0_2_valid_load_en;
  assign systolic__result_chans__0_3_load_en = systolic__result_chans__0_3_vld & systolic__result_chans__0_3_valid_load_en;
  assign systolic__result_chans__1_0_load_en = systolic__result_chans__1_0_vld & systolic__result_chans__1_0_valid_load_en;
  assign systolic__result_chans__1_1_load_en = systolic__result_chans__1_1_vld & systolic__result_chans__1_1_valid_load_en;
  assign systolic__result_chans__1_2_load_en = systolic__result_chans__1_2_vld & systolic__result_chans__1_2_valid_load_en;
  assign systolic__result_chans__1_3_load_en = systolic__result_chans__1_3_vld & systolic__result_chans__1_3_valid_load_en;
  assign systolic__result_chans__2_0_load_en = systolic__result_chans__2_0_vld & systolic__result_chans__2_0_valid_load_en;
  assign systolic__result_chans__2_1_load_en = systolic__result_chans__2_1_vld & systolic__result_chans__2_1_valid_load_en;
  assign systolic__result_chans__2_2_load_en = systolic__result_chans__2_2_vld & systolic__result_chans__2_2_valid_load_en;
  assign systolic__result_chans__2_3_load_en = systolic__result_chans__2_3_vld & systolic__result_chans__2_3_valid_load_en;
  assign systolic__result_chans__3_0_load_en = systolic__result_chans__3_0_vld & systolic__result_chans__3_0_valid_load_en;
  assign systolic__result_chans__3_1_load_en = systolic__result_chans__3_1_vld & systolic__result_chans__3_1_valid_load_en;
  assign systolic__result_chans__3_2_load_en = systolic__result_chans__3_2_vld & systolic__result_chans__3_2_valid_load_en;
  assign systolic__result_chans__3_3_load_en = systolic__result_chans__3_3_vld & systolic__result_chans__3_3_valid_load_en;
  assign systolic__vert_chans__4_0_load_en = systolic__vert_chans__4_0_vld & systolic__vert_chans__4_0_valid_load_en;
  assign systolic__vert_chans__4_1_load_en = systolic__vert_chans__4_1_vld & systolic__vert_chans__4_1_valid_load_en;
  assign systolic__vert_chans__4_2_load_en = systolic__vert_chans__4_2_vld & systolic__vert_chans__4_2_valid_load_en;
  assign systolic__vert_chans__4_3_load_en = systolic__vert_chans__4_3_vld & systolic__vert_chans__4_3_valid_load_en;
  assign or_8927 = ~p0_stage_done | ____state_0__at_most_one_next_value | rst;
  assign or_8931 = ~p0_stage_done | ____state_2__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign systolic__result_chans__2_3_select = p1_eq_3480 ? __systolic__result_chans__2_3_reg : 32'h0000_0000;
  assign systolic__result_chans__2_0_select = p1_eq_3480 ? __systolic__result_chans__2_0_reg : 32'h0000_0000;
  assign systolic__result_chans__2_1_select = p1_eq_3480 ? __systolic__result_chans__2_1_reg : 32'h0000_0000;
  assign systolic__result_chans__2_2_select = p1_eq_3480 ? __systolic__result_chans__2_2_reg : 32'h0000_0000;
  assign array_3631[0] = p1_c10;
  assign array_3631[1] = p1_tuple_3575_index1;
  assign array_3631[2] = systolic__result_chans__1_2_select;
  assign array_3631[3] = systolic__result_chans__1_3_select;
  assign systolic__result_chans__1_1_select = p0_eq_3480 ? __systolic__result_chans__1_1_reg : 32'h0000_0000;
  assign systolic__result_chans__1_0_select = p0_eq_3480 ? __systolic__result_chans__1_0_reg : 32'h0000_0000;
  assign array_3581[0] = systolic__result_chans__0_0_select;
  assign array_3581[1] = systolic__result_chans__0_1_select;
  assign array_3581[2] = systolic__result_chans__0_2_select;
  assign array_3581[3] = systolic__result_chans__0_3_select;
  assign one_hot_sel_3809[0][0] = systolic__arg0_select[0][0] & {32{concat_3808[0]}} | literal_3286[0][0] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[0][1] = systolic__arg0_select[0][1] & {32{concat_3808[0]}} | literal_3286[0][1] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[0][2] = systolic__arg0_select[0][2] & {32{concat_3808[0]}} | literal_3286[0][2] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[0][3] = systolic__arg0_select[0][3] & {32{concat_3808[0]}} | literal_3286[0][3] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[1][0] = systolic__arg0_select[1][0] & {32{concat_3808[0]}} | literal_3286[1][0] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[1][1] = systolic__arg0_select[1][1] & {32{concat_3808[0]}} | literal_3286[1][1] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[1][2] = systolic__arg0_select[1][2] & {32{concat_3808[0]}} | literal_3286[1][2] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[1][3] = systolic__arg0_select[1][3] & {32{concat_3808[0]}} | literal_3286[1][3] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[2][0] = systolic__arg0_select[2][0] & {32{concat_3808[0]}} | literal_3286[2][0] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[2][1] = systolic__arg0_select[2][1] & {32{concat_3808[0]}} | literal_3286[2][1] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[2][2] = systolic__arg0_select[2][2] & {32{concat_3808[0]}} | literal_3286[2][2] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[2][3] = systolic__arg0_select[2][3] & {32{concat_3808[0]}} | literal_3286[2][3] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[3][0] = systolic__arg0_select[3][0] & {32{concat_3808[0]}} | literal_3286[3][0] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[3][1] = systolic__arg0_select[3][1] & {32{concat_3808[0]}} | literal_3286[3][1] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[3][2] = systolic__arg0_select[3][2] & {32{concat_3808[0]}} | literal_3286[3][2] & {32{concat_3808[1]}};
  assign one_hot_sel_3809[3][3] = systolic__arg0_select[3][3] & {32{concat_3808[0]}} | literal_3286[3][3] & {32{concat_3808[1]}};
  assign or_3810 = and_3805 | and_3806;
  assign one_hot_sel_3816[0][0] = systolic__arg1_select[0][0] & {32{concat_3808[0]}} | literal_3286[0][0] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[0][1] = systolic__arg1_select[0][1] & {32{concat_3808[0]}} | literal_3286[0][1] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[0][2] = systolic__arg1_select[0][2] & {32{concat_3808[0]}} | literal_3286[0][2] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[0][3] = systolic__arg1_select[0][3] & {32{concat_3808[0]}} | literal_3286[0][3] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[1][0] = systolic__arg1_select[1][0] & {32{concat_3808[0]}} | literal_3286[1][0] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[1][1] = systolic__arg1_select[1][1] & {32{concat_3808[0]}} | literal_3286[1][1] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[1][2] = systolic__arg1_select[1][2] & {32{concat_3808[0]}} | literal_3286[1][2] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[1][3] = systolic__arg1_select[1][3] & {32{concat_3808[0]}} | literal_3286[1][3] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[2][0] = systolic__arg1_select[2][0] & {32{concat_3808[0]}} | literal_3286[2][0] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[2][1] = systolic__arg1_select[2][1] & {32{concat_3808[0]}} | literal_3286[2][1] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[2][2] = systolic__arg1_select[2][2] & {32{concat_3808[0]}} | literal_3286[2][2] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[2][3] = systolic__arg1_select[2][3] & {32{concat_3808[0]}} | literal_3286[2][3] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[3][0] = systolic__arg1_select[3][0] & {32{concat_3808[0]}} | literal_3286[3][0] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[3][1] = systolic__arg1_select[3][1] & {32{concat_3808[0]}} | literal_3286[3][1] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[3][2] = systolic__arg1_select[3][2] & {32{concat_3808[0]}} | literal_3286[3][2] & {32{concat_3808[1]}};
  assign one_hot_sel_3816[3][3] = systolic__arg1_select[3][3] & {32{concat_3808[0]}} | literal_3286[3][3] & {32{concat_3808[1]}};
  assign one_hot_sel_3822 = unexpand_for_next_value_301_2_case_1 & {3{concat_3821[0]}} | unexpand_for_next_value_301_2_case_0 & {3{concat_3821[1]}};
  assign or_3823 = and_3819 | and_3805;
  assign __systolic__hor_chans__0_0_not_stage_load = ~__systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_has_been_sent_reg_load_en = __systolic__hor_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_0_has_been_sent_reg_load_en = __systolic__vert_chans__0_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_0_has_been_sent_reg_load_en = __systolic__hor_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_1_has_been_sent_reg_load_en = __systolic__vert_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_0_has_been_sent_reg_load_en = __systolic__hor_chans__2_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_2_has_been_sent_reg_load_en = __systolic__vert_chans__0_2_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_0_has_been_sent_reg_load_en = __systolic__hor_chans__3_0_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__0_3_has_been_sent_reg_load_en = __systolic__vert_chans__0_3_valid_and_ready_txfr | __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_not_stage_load = ~__systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__out0_has_been_sent_reg_load_en = __systolic__out0_valid_and_ready_txfr | __systolic__out0_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_buf = a_mat2[2'h0][____state_2 > 3'h3 ? 2'h3 : ____state_2[1:0]];
  assign __systolic__vert_chans__0_0_buf = b_mat2[____state_2 > 3'h3 ? 2'h3 : ____state_2[1:0]][2'h0];
  assign __systolic__hor_chans__1_0_buf = a_mat2[2'h1][____state_2 > 3'h3 ? 2'h3 : ____state_2[1:0]];
  assign __systolic__vert_chans__0_1_buf = b_mat2[____state_2 > 3'h3 ? 2'h3 : ____state_2[1:0]][2'h1];
  assign __systolic__hor_chans__2_0_buf = a_mat2[2'h2][____state_2 > 3'h3 ? 2'h3 : ____state_2[1:0]];
  assign __systolic__vert_chans__0_2_buf = b_mat2[____state_2 > 3'h3 ? 2'h3 : ____state_2[1:0]][2'h2];
  assign __systolic__hor_chans__3_0_buf = a_mat2[2'h3][____state_2 > 3'h3 ? 2'h3 : ____state_2[1:0]];
  assign __systolic__vert_chans__0_3_buf = b_mat2[____state_2 > 3'h3 ? 2'h3 : ____state_2[1:0]][2'h3];
  assign c[0] = p2_array_3581;
  assign c[1] = p2_array_3631;
  assign c[2] = array_3676;
  assign c[3] = array_3677;
  always_ff @ (posedge clk) begin
    p0_bit_slice_3454 <= p0_load_en ? systolic__hor_chans__0_0_not_pred : p0_bit_slice_3454;
    p0_eq_3480 <= p0_load_en ? eq_3480 : p0_eq_3480;
    p1_eq_3480 <= p1_load_en ? p0_eq_3480 : p1_eq_3480;
    p1_tuple_3575_index1 <= p1_load_en ? systolic__result_chans__1_1_select : p1_tuple_3575_index1;
    p1_c10 <= p1_load_en ? systolic__result_chans__1_0_select : p1_c10;
    p1_array_3581 <= p1_load_en ? array_3581 : p1_array_3581;
    p2_eq_3480 <= p2_load_en ? p1_eq_3480 : p2_eq_3480;
    p2_tuple_3624_index1 <= p2_load_en ? systolic__result_chans__2_3_select : p2_tuple_3624_index1;
    p2_c20 <= p2_load_en ? systolic__result_chans__2_0_select : p2_c20;
    p2_c21 <= p2_load_en ? systolic__result_chans__2_1_select : p2_c21;
    p2_c22 <= p2_load_en ? systolic__result_chans__2_2_select : p2_c22;
    p2_array_3581 <= p2_load_en ? p1_array_3581 : p2_array_3581;
    p2_array_3631 <= p2_load_en ? array_3631 : p2_array_3631;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_2 <= 3'h0;
      ____state_0 <= ____state_0_init;
      ____state_1 <= ____state_1_init;
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
      __systolic__hor_chans__3_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_3_has_been_sent_reg <= 1'h0;
      __systolic__out0_has_been_sent_reg <= 1'h0;
      __systolic__arg0_reg <= __systolic__arg0_reg_init;
      __systolic__arg0_valid_reg <= 1'h0;
      __systolic__arg1_reg <= __systolic__arg1_reg_init;
      __systolic__arg1_valid_reg <= 1'h0;
      __systolic__hor_chans__0_4_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_4_valid_reg <= 1'h0;
      __systolic__hor_chans__1_4_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_4_valid_reg <= 1'h0;
      __systolic__hor_chans__2_4_reg <= 32'h0000_0000;
      __systolic__hor_chans__2_4_valid_reg <= 1'h0;
      __systolic__hor_chans__3_4_reg <= 32'h0000_0000;
      __systolic__hor_chans__3_4_valid_reg <= 1'h0;
      __systolic__vert_chans__4_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__4_0_valid_reg <= 1'h0;
      __systolic__vert_chans__4_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__4_1_valid_reg <= 1'h0;
      __systolic__vert_chans__4_2_reg <= 32'h0000_0000;
      __systolic__vert_chans__4_2_valid_reg <= 1'h0;
      __systolic__vert_chans__4_3_reg <= 32'h0000_0000;
      __systolic__vert_chans__4_3_valid_reg <= 1'h0;
      __systolic__result_chans__0_0_reg <= 32'h0000_0000;
      __systolic__result_chans__0_0_valid_reg <= 1'h0;
      __systolic__result_chans__0_1_reg <= 32'h0000_0000;
      __systolic__result_chans__0_1_valid_reg <= 1'h0;
      __systolic__result_chans__0_2_reg <= 32'h0000_0000;
      __systolic__result_chans__0_2_valid_reg <= 1'h0;
      __systolic__result_chans__0_3_reg <= 32'h0000_0000;
      __systolic__result_chans__0_3_valid_reg <= 1'h0;
      __systolic__result_chans__1_0_reg <= 32'h0000_0000;
      __systolic__result_chans__1_0_valid_reg <= 1'h0;
      __systolic__result_chans__1_1_reg <= 32'h0000_0000;
      __systolic__result_chans__1_1_valid_reg <= 1'h0;
      __systolic__result_chans__1_2_reg <= 32'h0000_0000;
      __systolic__result_chans__1_2_valid_reg <= 1'h0;
      __systolic__result_chans__1_3_reg <= 32'h0000_0000;
      __systolic__result_chans__1_3_valid_reg <= 1'h0;
      __systolic__result_chans__2_0_reg <= 32'h0000_0000;
      __systolic__result_chans__2_0_valid_reg <= 1'h0;
      __systolic__result_chans__2_1_reg <= 32'h0000_0000;
      __systolic__result_chans__2_1_valid_reg <= 1'h0;
      __systolic__result_chans__2_2_reg <= 32'h0000_0000;
      __systolic__result_chans__2_2_valid_reg <= 1'h0;
      __systolic__result_chans__2_3_reg <= 32'h0000_0000;
      __systolic__result_chans__2_3_valid_reg <= 1'h0;
      __systolic__result_chans__3_0_reg <= 32'h0000_0000;
      __systolic__result_chans__3_0_valid_reg <= 1'h0;
      __systolic__result_chans__3_1_reg <= 32'h0000_0000;
      __systolic__result_chans__3_1_valid_reg <= 1'h0;
      __systolic__result_chans__3_2_reg <= 32'h0000_0000;
      __systolic__result_chans__3_2_valid_reg <= 1'h0;
      __systolic__result_chans__3_3_reg <= 32'h0000_0000;
      __systolic__result_chans__3_3_valid_reg <= 1'h0;
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
      __systolic__hor_chans__3_0_reg <= 32'h0000_0000;
      __systolic__hor_chans__3_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_3_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_3_valid_reg <= 1'h0;
      __systolic__out0_reg <= __systolic__out0_reg_init;
      __systolic__out0_valid_reg <= 1'h0;
    end else begin
      ____state_2 <= or_3823 ? one_hot_sel_3822 : ____state_2;
      ____state_0 <= or_3810 ? one_hot_sel_3809 : ____state_0;
      ____state_1 <= or_3810 ? one_hot_sel_3816 : ____state_1;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__0_0_has_been_sent_reg <= __systolic__hor_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__0_0_has_been_sent_reg;
      __systolic__vert_chans__0_0_has_been_sent_reg <= __systolic__vert_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_0_has_been_sent_reg;
      __systolic__hor_chans__1_0_has_been_sent_reg <= __systolic__hor_chans__1_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__1_0_has_been_sent_reg;
      __systolic__vert_chans__0_1_has_been_sent_reg <= __systolic__vert_chans__0_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_1_has_been_sent_reg;
      __systolic__hor_chans__2_0_has_been_sent_reg <= __systolic__hor_chans__2_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__2_0_has_been_sent_reg;
      __systolic__vert_chans__0_2_has_been_sent_reg <= __systolic__vert_chans__0_2_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_2_has_been_sent_reg;
      __systolic__hor_chans__3_0_has_been_sent_reg <= __systolic__hor_chans__3_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__3_0_has_been_sent_reg;
      __systolic__vert_chans__0_3_has_been_sent_reg <= __systolic__vert_chans__0_3_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_3_has_been_sent_reg;
      __systolic__out0_has_been_sent_reg <= __systolic__out0_has_been_sent_reg_load_en ? __systolic__out0_not_stage_load : __systolic__out0_has_been_sent_reg;
      __systolic__arg0_reg <= systolic__arg0_load_en ? systolic__arg0_unflattened : __systolic__arg0_reg;
      __systolic__arg0_valid_reg <= systolic__arg0_valid_load_en ? systolic__arg0_vld : __systolic__arg0_valid_reg;
      __systolic__arg1_reg <= systolic__arg1_load_en ? systolic__arg1_unflattened : __systolic__arg1_reg;
      __systolic__arg1_valid_reg <= systolic__arg1_valid_load_en ? systolic__arg1_vld : __systolic__arg1_valid_reg;
      __systolic__hor_chans__0_4_reg <= systolic__hor_chans__0_4_load_en ? systolic__hor_chans__0_4 : __systolic__hor_chans__0_4_reg;
      __systolic__hor_chans__0_4_valid_reg <= systolic__hor_chans__0_4_valid_load_en ? systolic__hor_chans__0_4_vld : __systolic__hor_chans__0_4_valid_reg;
      __systolic__hor_chans__1_4_reg <= systolic__hor_chans__1_4_load_en ? systolic__hor_chans__1_4 : __systolic__hor_chans__1_4_reg;
      __systolic__hor_chans__1_4_valid_reg <= systolic__hor_chans__1_4_valid_load_en ? systolic__hor_chans__1_4_vld : __systolic__hor_chans__1_4_valid_reg;
      __systolic__hor_chans__2_4_reg <= systolic__hor_chans__2_4_load_en ? systolic__hor_chans__2_4 : __systolic__hor_chans__2_4_reg;
      __systolic__hor_chans__2_4_valid_reg <= systolic__hor_chans__2_4_valid_load_en ? systolic__hor_chans__2_4_vld : __systolic__hor_chans__2_4_valid_reg;
      __systolic__hor_chans__3_4_reg <= systolic__hor_chans__3_4_load_en ? systolic__hor_chans__3_4 : __systolic__hor_chans__3_4_reg;
      __systolic__hor_chans__3_4_valid_reg <= systolic__hor_chans__3_4_valid_load_en ? systolic__hor_chans__3_4_vld : __systolic__hor_chans__3_4_valid_reg;
      __systolic__vert_chans__4_0_reg <= systolic__vert_chans__4_0_load_en ? systolic__vert_chans__4_0 : __systolic__vert_chans__4_0_reg;
      __systolic__vert_chans__4_0_valid_reg <= systolic__vert_chans__4_0_valid_load_en ? systolic__vert_chans__4_0_vld : __systolic__vert_chans__4_0_valid_reg;
      __systolic__vert_chans__4_1_reg <= systolic__vert_chans__4_1_load_en ? systolic__vert_chans__4_1 : __systolic__vert_chans__4_1_reg;
      __systolic__vert_chans__4_1_valid_reg <= systolic__vert_chans__4_1_valid_load_en ? systolic__vert_chans__4_1_vld : __systolic__vert_chans__4_1_valid_reg;
      __systolic__vert_chans__4_2_reg <= systolic__vert_chans__4_2_load_en ? systolic__vert_chans__4_2 : __systolic__vert_chans__4_2_reg;
      __systolic__vert_chans__4_2_valid_reg <= systolic__vert_chans__4_2_valid_load_en ? systolic__vert_chans__4_2_vld : __systolic__vert_chans__4_2_valid_reg;
      __systolic__vert_chans__4_3_reg <= systolic__vert_chans__4_3_load_en ? systolic__vert_chans__4_3 : __systolic__vert_chans__4_3_reg;
      __systolic__vert_chans__4_3_valid_reg <= systolic__vert_chans__4_3_valid_load_en ? systolic__vert_chans__4_3_vld : __systolic__vert_chans__4_3_valid_reg;
      __systolic__result_chans__0_0_reg <= systolic__result_chans__0_0_load_en ? systolic__result_chans__0_0 : __systolic__result_chans__0_0_reg;
      __systolic__result_chans__0_0_valid_reg <= systolic__result_chans__0_0_valid_load_en ? systolic__result_chans__0_0_vld : __systolic__result_chans__0_0_valid_reg;
      __systolic__result_chans__0_1_reg <= systolic__result_chans__0_1_load_en ? systolic__result_chans__0_1 : __systolic__result_chans__0_1_reg;
      __systolic__result_chans__0_1_valid_reg <= systolic__result_chans__0_1_valid_load_en ? systolic__result_chans__0_1_vld : __systolic__result_chans__0_1_valid_reg;
      __systolic__result_chans__0_2_reg <= systolic__result_chans__0_2_load_en ? systolic__result_chans__0_2 : __systolic__result_chans__0_2_reg;
      __systolic__result_chans__0_2_valid_reg <= systolic__result_chans__0_2_valid_load_en ? systolic__result_chans__0_2_vld : __systolic__result_chans__0_2_valid_reg;
      __systolic__result_chans__0_3_reg <= systolic__result_chans__0_3_load_en ? systolic__result_chans__0_3 : __systolic__result_chans__0_3_reg;
      __systolic__result_chans__0_3_valid_reg <= systolic__result_chans__0_3_valid_load_en ? systolic__result_chans__0_3_vld : __systolic__result_chans__0_3_valid_reg;
      __systolic__result_chans__1_0_reg <= systolic__result_chans__1_0_load_en ? systolic__result_chans__1_0 : __systolic__result_chans__1_0_reg;
      __systolic__result_chans__1_0_valid_reg <= systolic__result_chans__1_0_valid_load_en ? systolic__result_chans__1_0_vld : __systolic__result_chans__1_0_valid_reg;
      __systolic__result_chans__1_1_reg <= systolic__result_chans__1_1_load_en ? systolic__result_chans__1_1 : __systolic__result_chans__1_1_reg;
      __systolic__result_chans__1_1_valid_reg <= systolic__result_chans__1_1_valid_load_en ? systolic__result_chans__1_1_vld : __systolic__result_chans__1_1_valid_reg;
      __systolic__result_chans__1_2_reg <= systolic__result_chans__1_2_load_en ? systolic__result_chans__1_2 : __systolic__result_chans__1_2_reg;
      __systolic__result_chans__1_2_valid_reg <= systolic__result_chans__1_2_valid_load_en ? systolic__result_chans__1_2_vld : __systolic__result_chans__1_2_valid_reg;
      __systolic__result_chans__1_3_reg <= systolic__result_chans__1_3_load_en ? systolic__result_chans__1_3 : __systolic__result_chans__1_3_reg;
      __systolic__result_chans__1_3_valid_reg <= systolic__result_chans__1_3_valid_load_en ? systolic__result_chans__1_3_vld : __systolic__result_chans__1_3_valid_reg;
      __systolic__result_chans__2_0_reg <= systolic__result_chans__2_0_load_en ? systolic__result_chans__2_0 : __systolic__result_chans__2_0_reg;
      __systolic__result_chans__2_0_valid_reg <= systolic__result_chans__2_0_valid_load_en ? systolic__result_chans__2_0_vld : __systolic__result_chans__2_0_valid_reg;
      __systolic__result_chans__2_1_reg <= systolic__result_chans__2_1_load_en ? systolic__result_chans__2_1 : __systolic__result_chans__2_1_reg;
      __systolic__result_chans__2_1_valid_reg <= systolic__result_chans__2_1_valid_load_en ? systolic__result_chans__2_1_vld : __systolic__result_chans__2_1_valid_reg;
      __systolic__result_chans__2_2_reg <= systolic__result_chans__2_2_load_en ? systolic__result_chans__2_2 : __systolic__result_chans__2_2_reg;
      __systolic__result_chans__2_2_valid_reg <= systolic__result_chans__2_2_valid_load_en ? systolic__result_chans__2_2_vld : __systolic__result_chans__2_2_valid_reg;
      __systolic__result_chans__2_3_reg <= systolic__result_chans__2_3_load_en ? systolic__result_chans__2_3 : __systolic__result_chans__2_3_reg;
      __systolic__result_chans__2_3_valid_reg <= systolic__result_chans__2_3_valid_load_en ? systolic__result_chans__2_3_vld : __systolic__result_chans__2_3_valid_reg;
      __systolic__result_chans__3_0_reg <= systolic__result_chans__3_0_load_en ? systolic__result_chans__3_0 : __systolic__result_chans__3_0_reg;
      __systolic__result_chans__3_0_valid_reg <= systolic__result_chans__3_0_valid_load_en ? systolic__result_chans__3_0_vld : __systolic__result_chans__3_0_valid_reg;
      __systolic__result_chans__3_1_reg <= systolic__result_chans__3_1_load_en ? systolic__result_chans__3_1 : __systolic__result_chans__3_1_reg;
      __systolic__result_chans__3_1_valid_reg <= systolic__result_chans__3_1_valid_load_en ? systolic__result_chans__3_1_vld : __systolic__result_chans__3_1_valid_reg;
      __systolic__result_chans__3_2_reg <= systolic__result_chans__3_2_load_en ? systolic__result_chans__3_2 : __systolic__result_chans__3_2_reg;
      __systolic__result_chans__3_2_valid_reg <= systolic__result_chans__3_2_valid_load_en ? systolic__result_chans__3_2_vld : __systolic__result_chans__3_2_valid_reg;
      __systolic__result_chans__3_3_reg <= systolic__result_chans__3_3_load_en ? systolic__result_chans__3_3 : __systolic__result_chans__3_3_reg;
      __systolic__result_chans__3_3_valid_reg <= systolic__result_chans__3_3_valid_load_en ? systolic__result_chans__3_3_vld : __systolic__result_chans__3_3_valid_reg;
      __systolic__hor_chans__0_0_reg <= systolic__hor_chans__0_0_load_en ? __systolic__hor_chans__0_0_buf : __systolic__hor_chans__0_0_reg;
      __systolic__hor_chans__0_0_valid_reg <= systolic__hor_chans__0_0_valid_load_en ? __systolic__hor_chans__0_0_valid_and_not_has_been_sent : __systolic__hor_chans__0_0_valid_reg;
      __systolic__vert_chans__0_0_reg <= systolic__vert_chans__0_0_load_en ? __systolic__vert_chans__0_0_buf : __systolic__vert_chans__0_0_reg;
      __systolic__vert_chans__0_0_valid_reg <= systolic__vert_chans__0_0_valid_load_en ? __systolic__vert_chans__0_0_valid_and_not_has_been_sent : __systolic__vert_chans__0_0_valid_reg;
      __systolic__hor_chans__1_0_reg <= systolic__hor_chans__1_0_load_en ? __systolic__hor_chans__1_0_buf : __systolic__hor_chans__1_0_reg;
      __systolic__hor_chans__1_0_valid_reg <= systolic__hor_chans__1_0_valid_load_en ? __systolic__hor_chans__1_0_valid_and_not_has_been_sent : __systolic__hor_chans__1_0_valid_reg;
      __systolic__vert_chans__0_1_reg <= systolic__vert_chans__0_1_load_en ? __systolic__vert_chans__0_1_buf : __systolic__vert_chans__0_1_reg;
      __systolic__vert_chans__0_1_valid_reg <= systolic__vert_chans__0_1_valid_load_en ? __systolic__vert_chans__0_1_valid_and_not_has_been_sent : __systolic__vert_chans__0_1_valid_reg;
      __systolic__hor_chans__2_0_reg <= systolic__hor_chans__2_0_load_en ? __systolic__hor_chans__2_0_buf : __systolic__hor_chans__2_0_reg;
      __systolic__hor_chans__2_0_valid_reg <= systolic__hor_chans__2_0_valid_load_en ? __systolic__hor_chans__2_0_valid_and_not_has_been_sent : __systolic__hor_chans__2_0_valid_reg;
      __systolic__vert_chans__0_2_reg <= systolic__vert_chans__0_2_load_en ? __systolic__vert_chans__0_2_buf : __systolic__vert_chans__0_2_reg;
      __systolic__vert_chans__0_2_valid_reg <= systolic__vert_chans__0_2_valid_load_en ? __systolic__vert_chans__0_2_valid_and_not_has_been_sent : __systolic__vert_chans__0_2_valid_reg;
      __systolic__hor_chans__3_0_reg <= systolic__hor_chans__3_0_load_en ? __systolic__hor_chans__3_0_buf : __systolic__hor_chans__3_0_reg;
      __systolic__hor_chans__3_0_valid_reg <= systolic__hor_chans__3_0_valid_load_en ? __systolic__hor_chans__3_0_valid_and_not_has_been_sent : __systolic__hor_chans__3_0_valid_reg;
      __systolic__vert_chans__0_3_reg <= systolic__vert_chans__0_3_load_en ? __systolic__vert_chans__0_3_buf : __systolic__vert_chans__0_3_reg;
      __systolic__vert_chans__0_3_valid_reg <= systolic__vert_chans__0_3_valid_load_en ? __systolic__vert_chans__0_3_valid_and_not_has_been_sent : __systolic__vert_chans__0_3_valid_reg;
      __systolic__out0_reg <= systolic__out0_load_en ? c : __systolic__out0_reg;
      __systolic__out0_valid_reg <= systolic__out0_valid_load_en ? __systolic__out0_valid_and_not_has_been_sent : __systolic__out0_valid_reg;
    end
  end
  assign systolic__arg0_rdy = systolic__arg0_load_en;
  assign systolic__arg1_rdy = systolic__arg1_load_en;
  assign systolic__hor_chans__0_0 = __systolic__hor_chans__0_0_reg;
  assign systolic__hor_chans__0_0_vld = __systolic__hor_chans__0_0_valid_reg;
  assign systolic__hor_chans__0_4_rdy = systolic__hor_chans__0_4_load_en;
  assign systolic__hor_chans__1_0 = __systolic__hor_chans__1_0_reg;
  assign systolic__hor_chans__1_0_vld = __systolic__hor_chans__1_0_valid_reg;
  assign systolic__hor_chans__1_4_rdy = systolic__hor_chans__1_4_load_en;
  assign systolic__hor_chans__2_0 = __systolic__hor_chans__2_0_reg;
  assign systolic__hor_chans__2_0_vld = __systolic__hor_chans__2_0_valid_reg;
  assign systolic__hor_chans__2_4_rdy = systolic__hor_chans__2_4_load_en;
  assign systolic__hor_chans__3_0 = __systolic__hor_chans__3_0_reg;
  assign systolic__hor_chans__3_0_vld = __systolic__hor_chans__3_0_valid_reg;
  assign systolic__hor_chans__3_4_rdy = systolic__hor_chans__3_4_load_en;
  assign systolic__out0 = {{__systolic__out0_reg[3][3], __systolic__out0_reg[3][2], __systolic__out0_reg[3][1], __systolic__out0_reg[3][0]}, {__systolic__out0_reg[2][3], __systolic__out0_reg[2][2], __systolic__out0_reg[2][1], __systolic__out0_reg[2][0]}, {__systolic__out0_reg[1][3], __systolic__out0_reg[1][2], __systolic__out0_reg[1][1], __systolic__out0_reg[1][0]}, {__systolic__out0_reg[0][3], __systolic__out0_reg[0][2], __systolic__out0_reg[0][1], __systolic__out0_reg[0][0]}};
  assign systolic__out0_vld = __systolic__out0_valid_reg;
  assign systolic__result_chans__0_0_rdy = systolic__result_chans__0_0_load_en;
  assign systolic__result_chans__0_1_rdy = systolic__result_chans__0_1_load_en;
  assign systolic__result_chans__0_2_rdy = systolic__result_chans__0_2_load_en;
  assign systolic__result_chans__0_3_rdy = systolic__result_chans__0_3_load_en;
  assign systolic__result_chans__1_0_rdy = systolic__result_chans__1_0_load_en;
  assign systolic__result_chans__1_1_rdy = systolic__result_chans__1_1_load_en;
  assign systolic__result_chans__1_2_rdy = systolic__result_chans__1_2_load_en;
  assign systolic__result_chans__1_3_rdy = systolic__result_chans__1_3_load_en;
  assign systolic__result_chans__2_0_rdy = systolic__result_chans__2_0_load_en;
  assign systolic__result_chans__2_1_rdy = systolic__result_chans__2_1_load_en;
  assign systolic__result_chans__2_2_rdy = systolic__result_chans__2_2_load_en;
  assign systolic__result_chans__2_3_rdy = systolic__result_chans__2_3_load_en;
  assign systolic__result_chans__3_0_rdy = systolic__result_chans__3_0_load_en;
  assign systolic__result_chans__3_1_rdy = systolic__result_chans__3_1_load_en;
  assign systolic__result_chans__3_2_rdy = systolic__result_chans__3_2_load_en;
  assign systolic__result_chans__3_3_rdy = systolic__result_chans__3_3_load_en;
  assign systolic__vert_chans__0_0 = __systolic__vert_chans__0_0_reg;
  assign systolic__vert_chans__0_0_vld = __systolic__vert_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_1 = __systolic__vert_chans__0_1_reg;
  assign systolic__vert_chans__0_1_vld = __systolic__vert_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_2 = __systolic__vert_chans__0_2_reg;
  assign systolic__vert_chans__0_2_vld = __systolic__vert_chans__0_2_valid_reg;
  assign systolic__vert_chans__0_3 = __systolic__vert_chans__0_3_reg;
  assign systolic__vert_chans__0_3_vld = __systolic__vert_chans__0_3_valid_reg;
  assign systolic__vert_chans__4_0_rdy = systolic__vert_chans__4_0_load_en;
  assign systolic__vert_chans__4_1_rdy = systolic__vert_chans__4_1_load_en;
  assign systolic__vert_chans__4_2_rdy = systolic__vert_chans__4_2_load_en;
  assign systolic__vert_chans__4_3_rdy = systolic__vert_chans__4_3_load_en;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8927))) or_8927) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8927))) or_8927) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8931))) or_8931) else $fatal(0, "More than one next_value fired for state element: __state_2");
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
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
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
  wire should_output;
  wire __systolic__result_chans__0_0_vld_buf;
  wire __systolic__result_chans__0_0_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_inv;
  wire __systolic__result_chans__0_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_0_valid_load_en;
  wire systolic__result_chans__0_0_load_en;
  wire or_9025;
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
  wire [2:0] one_hot_4365;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_0_valid_inv;
  wire systolic__vert_chans__0_0_valid_inv;
  wire and_4439;
  wire and_4440;
  wire systolic__hor_chans__0_0_valid_load_en;
  wire systolic__vert_chans__0_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4441;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_331_1_case_1;
  wire [1:0] unexpand_for_next_value_331_1_case_0;
  wire __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_0_valid_and_ready_txfr;
  wire __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_0_valid_and_ready_txfr;
  wire systolic__hor_chans__0_0_load_en;
  wire systolic__vert_chans__0_0_load_en;
  wire or_8933;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_4442;
  wire or_4443;
  wire [1:0] one_hot_sel_4448;
  wire __systolic__hor_chans__0_1_not_stage_load;
  wire __systolic__hor_chans__0_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_0_not_stage_load;
  wire __systolic__result_chans__0_0_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__0_0_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__0_0_not_has_been_sent = ~__systolic__result_chans__0_0_has_been_sent_reg;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign __systolic__result_chans__0_0_valid_and_not_has_been_sent = __systolic__result_chans__0_0_vld_buf & __systolic__result_chans__0_0_not_has_been_sent;
  assign systolic__result_chans__0_0_valid_load_en = systolic__result_chans__0_0_rdy | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_0_load_en = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_valid_load_en;
  assign or_9025 = ~should_output | systolic__result_chans__0_0_load_en | __systolic__result_chans__0_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9025;
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
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_4365 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_0_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign and_4439 = ~should_output & p3_stage_done;
  assign and_4440 = should_output & p3_stage_done;
  assign systolic__hor_chans__0_0_valid_load_en = p0_load_en | systolic__hor_chans__0_0_valid_inv;
  assign systolic__vert_chans__0_0_valid_load_en = p1_load_en | systolic__vert_chans__0_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_4365[1] & should_output == one_hot_4365[0];
  assign concat_4441 = {and_4439, and_4440};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_331_1_case_1 = 2'h0;
  assign unexpand_for_next_value_331_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_valid_and_ready_txfr = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_load_en;
  assign __systolic__vert_chans__1_0_valid_and_ready_txfr = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_load_en;
  assign __systolic__result_chans__0_0_valid_and_all_active_outputs_ready = __systolic__result_chans__0_0_vld_buf & or_9025;
  assign __systolic__result_chans__0_0_valid_and_ready_txfr = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_load_en;
  assign systolic__hor_chans__0_0_load_en = systolic__hor_chans__0_0_vld & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = systolic__vert_chans__0_0_vld & systolic__vert_chans__0_0_valid_load_en;
  assign or_8933 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_4442 = 32'h0000_0000 & {32{concat_4441[0]}} | new_accum & {32{concat_4441[1]}};
  assign or_4443 = and_4439 | and_4440;
  assign one_hot_sel_4448 = unexpand_for_next_value_331_1_case_1 & {2{concat_4441[0]}} | unexpand_for_next_value_331_1_case_0 & {2{concat_4441[1]}};
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
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_4443 ? one_hot_sel_4448 : ____state_1;
      ____state_0 <= or_4443 ? one_hot_sel_4442 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8933))) or_8933) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8933))) or_8933) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_10_next(
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
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
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
  wire should_output;
  wire __systolic__result_chans__2_2_vld_buf;
  wire __systolic__result_chans__2_2_not_has_been_sent;
  wire systolic__result_chans__2_2_valid_inv;
  wire __systolic__result_chans__2_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_2_valid_load_en;
  wire systolic__result_chans__2_2_load_en;
  wire or_9042;
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
  wire [2:0] one_hot_4606;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__2_2_valid_inv;
  wire systolic__vert_chans__2_2_valid_inv;
  wire and_4680;
  wire and_4681;
  wire systolic__hor_chans__2_2_valid_load_en;
  wire systolic__vert_chans__2_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4682;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_631_1_case_1;
  wire [1:0] unexpand_for_next_value_631_1_case_0;
  wire __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__2_3_valid_and_ready_txfr;
  wire __systolic__vert_chans__3_2_valid_and_ready_txfr;
  wire __systolic__result_chans__2_2_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__2_2_valid_and_ready_txfr;
  wire systolic__hor_chans__2_2_load_en;
  wire systolic__vert_chans__2_2_load_en;
  wire or_8937;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_4683;
  wire or_4684;
  wire [1:0] one_hot_sel_4689;
  wire __systolic__hor_chans__2_3_not_stage_load;
  wire __systolic__hor_chans__2_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_2_not_stage_load;
  wire __systolic__result_chans__2_2_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__2_2_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__2_2_not_has_been_sent = ~__systolic__result_chans__2_2_has_been_sent_reg;
  assign systolic__result_chans__2_2_valid_inv = ~__systolic__result_chans__2_2_valid_reg;
  assign __systolic__result_chans__2_2_valid_and_not_has_been_sent = __systolic__result_chans__2_2_vld_buf & __systolic__result_chans__2_2_not_has_been_sent;
  assign systolic__result_chans__2_2_valid_load_en = systolic__result_chans__2_2_rdy | systolic__result_chans__2_2_valid_inv;
  assign systolic__result_chans__2_2_load_en = __systolic__result_chans__2_2_valid_and_not_has_been_sent & systolic__result_chans__2_2_valid_load_en;
  assign or_9042 = ~should_output | systolic__result_chans__2_2_load_en | __systolic__result_chans__2_2_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9042;
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
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_4606 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__2_2_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__2_2_valid_inv = ~__systolic__hor_chans__2_2_valid_reg;
  assign systolic__vert_chans__2_2_valid_inv = ~__systolic__vert_chans__2_2_valid_reg;
  assign and_4680 = ~should_output & p3_stage_done;
  assign and_4681 = should_output & p3_stage_done;
  assign systolic__hor_chans__2_2_valid_load_en = p0_load_en | systolic__hor_chans__2_2_valid_inv;
  assign systolic__vert_chans__2_2_valid_load_en = p1_load_en | systolic__vert_chans__2_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_4606[1] & should_output == one_hot_4606[0];
  assign concat_4682 = {and_4680, and_4681};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_631_1_case_1 = 2'h0;
  assign unexpand_for_next_value_631_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_3_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__2_3_valid_and_ready_txfr = __systolic__hor_chans__2_3_valid_and_not_has_been_sent & systolic__hor_chans__2_3_load_en;
  assign __systolic__vert_chans__3_2_valid_and_ready_txfr = __systolic__vert_chans__3_2_valid_and_not_has_been_sent & systolic__vert_chans__3_2_load_en;
  assign __systolic__result_chans__2_2_valid_and_all_active_outputs_ready = __systolic__result_chans__2_2_vld_buf & or_9042;
  assign __systolic__result_chans__2_2_valid_and_ready_txfr = __systolic__result_chans__2_2_valid_and_not_has_been_sent & systolic__result_chans__2_2_load_en;
  assign systolic__hor_chans__2_2_load_en = systolic__hor_chans__2_2_vld & systolic__hor_chans__2_2_valid_load_en;
  assign systolic__vert_chans__2_2_load_en = systolic__vert_chans__2_2_vld & systolic__vert_chans__2_2_valid_load_en;
  assign or_8937 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_4683 = 32'h0000_0000 & {32{concat_4682[0]}} | new_accum & {32{concat_4682[1]}};
  assign or_4684 = and_4680 | and_4681;
  assign one_hot_sel_4689 = unexpand_for_next_value_631_1_case_1 & {2{concat_4682[0]}} | unexpand_for_next_value_631_1_case_0 & {2{concat_4682[1]}};
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
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_4684 ? one_hot_sel_4689 : ____state_1;
      ____state_0 <= or_4684 ? one_hot_sel_4683 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8937))) or_8937) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8937))) or_8937) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_11_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__2_3,
  input wire systolic__hor_chans__2_3_vld,
  input wire systolic__hor_chans__2_4_rdy,
  input wire systolic__result_chans__2_3_rdy,
  input wire [31:0] systolic__vert_chans__2_3,
  input wire systolic__vert_chans__2_3_vld,
  input wire systolic__vert_chans__3_3_rdy,
  output wire systolic__hor_chans__2_3_rdy,
  output wire [31:0] systolic__hor_chans__2_4,
  output wire systolic__hor_chans__2_4_vld,
  output wire [31:0] systolic__result_chans__2_3,
  output wire systolic__result_chans__2_3_vld,
  output wire systolic__vert_chans__2_3_rdy,
  output wire [31:0] systolic__vert_chans__3_3,
  output wire systolic__vert_chans__3_3_vld
);
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__2_4_has_been_sent_reg;
  reg __systolic__vert_chans__3_3_has_been_sent_reg;
  reg __systolic__result_chans__2_3_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__2_3_reg;
  reg __systolic__hor_chans__2_3_valid_reg;
  reg [31:0] __systolic__vert_chans__2_3_reg;
  reg __systolic__vert_chans__2_3_valid_reg;
  reg [31:0] __systolic__hor_chans__2_4_reg;
  reg __systolic__hor_chans__2_4_valid_reg;
  reg [31:0] __systolic__vert_chans__3_3_reg;
  reg __systolic__vert_chans__3_3_valid_reg;
  reg [31:0] __systolic__result_chans__2_3_reg;
  reg __systolic__result_chans__2_3_valid_reg;
  wire should_output;
  wire __systolic__result_chans__2_3_vld_buf;
  wire __systolic__result_chans__2_3_not_has_been_sent;
  wire systolic__result_chans__2_3_valid_inv;
  wire __systolic__result_chans__2_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_3_valid_load_en;
  wire systolic__result_chans__2_3_load_en;
  wire or_9059;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__2_4_vld_buf;
  wire __systolic__hor_chans__2_4_not_has_been_sent;
  wire systolic__hor_chans__2_4_valid_inv;
  wire __systolic__vert_chans__3_3_not_has_been_sent;
  wire systolic__vert_chans__3_3_valid_inv;
  wire __systolic__hor_chans__2_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_4_valid_load_en;
  wire __systolic__vert_chans__3_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_3_valid_load_en;
  wire systolic__hor_chans__2_4_load_en;
  wire systolic__vert_chans__3_3_load_en;
  wire __systolic__hor_chans__2_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_3_has_sent_or_is_ready;
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
  wire [2:0] one_hot_4847;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__2_3_valid_inv;
  wire systolic__vert_chans__2_3_valid_inv;
  wire and_4921;
  wire and_4922;
  wire systolic__hor_chans__2_3_valid_load_en;
  wire systolic__vert_chans__2_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4923;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_661_1_case_1;
  wire [1:0] unexpand_for_next_value_661_1_case_0;
  wire __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__2_4_valid_and_ready_txfr;
  wire __systolic__vert_chans__3_3_valid_and_ready_txfr;
  wire __systolic__result_chans__2_3_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__2_3_valid_and_ready_txfr;
  wire systolic__hor_chans__2_3_load_en;
  wire systolic__vert_chans__2_3_load_en;
  wire or_8941;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_4924;
  wire or_4925;
  wire [1:0] one_hot_sel_4930;
  wire __systolic__hor_chans__2_4_not_stage_load;
  wire __systolic__hor_chans__2_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_3_not_stage_load;
  wire __systolic__result_chans__2_3_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__2_3_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__2_3_not_has_been_sent = ~__systolic__result_chans__2_3_has_been_sent_reg;
  assign systolic__result_chans__2_3_valid_inv = ~__systolic__result_chans__2_3_valid_reg;
  assign __systolic__result_chans__2_3_valid_and_not_has_been_sent = __systolic__result_chans__2_3_vld_buf & __systolic__result_chans__2_3_not_has_been_sent;
  assign systolic__result_chans__2_3_valid_load_en = systolic__result_chans__2_3_rdy | systolic__result_chans__2_3_valid_inv;
  assign systolic__result_chans__2_3_load_en = __systolic__result_chans__2_3_valid_and_not_has_been_sent & systolic__result_chans__2_3_valid_load_en;
  assign or_9059 = ~should_output | systolic__result_chans__2_3_load_en | __systolic__result_chans__2_3_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9059;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__2_4_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__2_4_not_has_been_sent = ~__systolic__hor_chans__2_4_has_been_sent_reg;
  assign systolic__hor_chans__2_4_valid_inv = ~__systolic__hor_chans__2_4_valid_reg;
  assign __systolic__vert_chans__3_3_not_has_been_sent = ~__systolic__vert_chans__3_3_has_been_sent_reg;
  assign systolic__vert_chans__3_3_valid_inv = ~__systolic__vert_chans__3_3_valid_reg;
  assign __systolic__hor_chans__2_4_valid_and_not_has_been_sent = __systolic__hor_chans__2_4_vld_buf & __systolic__hor_chans__2_4_not_has_been_sent;
  assign systolic__hor_chans__2_4_valid_load_en = systolic__hor_chans__2_4_rdy | systolic__hor_chans__2_4_valid_inv;
  assign __systolic__vert_chans__3_3_valid_and_not_has_been_sent = __systolic__hor_chans__2_4_vld_buf & __systolic__vert_chans__3_3_not_has_been_sent;
  assign systolic__vert_chans__3_3_valid_load_en = systolic__vert_chans__3_3_rdy | systolic__vert_chans__3_3_valid_inv;
  assign systolic__hor_chans__2_4_load_en = __systolic__hor_chans__2_4_valid_and_not_has_been_sent & systolic__hor_chans__2_4_valid_load_en;
  assign systolic__vert_chans__3_3_load_en = __systolic__vert_chans__3_3_valid_and_not_has_been_sent & systolic__vert_chans__3_3_valid_load_en;
  assign __systolic__hor_chans__2_4_has_sent_or_is_ready = systolic__hor_chans__2_4_load_en | __systolic__hor_chans__2_4_has_been_sent_reg;
  assign __systolic__vert_chans__3_3_has_sent_or_is_ready = systolic__vert_chans__3_3_load_en | __systolic__vert_chans__3_3_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__2_4_has_sent_or_is_ready & __systolic__vert_chans__3_3_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__2_3_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_4847 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__2_3_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__2_3_valid_inv = ~__systolic__hor_chans__2_3_valid_reg;
  assign systolic__vert_chans__2_3_valid_inv = ~__systolic__vert_chans__2_3_valid_reg;
  assign and_4921 = ~should_output & p3_stage_done;
  assign and_4922 = should_output & p3_stage_done;
  assign systolic__hor_chans__2_3_valid_load_en = p0_load_en | systolic__hor_chans__2_3_valid_inv;
  assign systolic__vert_chans__2_3_valid_load_en = p1_load_en | systolic__vert_chans__2_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_4847[1] & should_output == one_hot_4847[0];
  assign concat_4923 = {and_4921, and_4922};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_661_1_case_1 = 2'h0;
  assign unexpand_for_next_value_661_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_4_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__2_4_valid_and_ready_txfr = __systolic__hor_chans__2_4_valid_and_not_has_been_sent & systolic__hor_chans__2_4_load_en;
  assign __systolic__vert_chans__3_3_valid_and_ready_txfr = __systolic__vert_chans__3_3_valid_and_not_has_been_sent & systolic__vert_chans__3_3_load_en;
  assign __systolic__result_chans__2_3_valid_and_all_active_outputs_ready = __systolic__result_chans__2_3_vld_buf & or_9059;
  assign __systolic__result_chans__2_3_valid_and_ready_txfr = __systolic__result_chans__2_3_valid_and_not_has_been_sent & systolic__result_chans__2_3_load_en;
  assign systolic__hor_chans__2_3_load_en = systolic__hor_chans__2_3_vld & systolic__hor_chans__2_3_valid_load_en;
  assign systolic__vert_chans__2_3_load_en = systolic__vert_chans__2_3_vld & systolic__vert_chans__2_3_valid_load_en;
  assign or_8941 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_4924 = 32'h0000_0000 & {32{concat_4923[0]}} | new_accum & {32{concat_4923[1]}};
  assign or_4925 = and_4921 | and_4922;
  assign one_hot_sel_4930 = unexpand_for_next_value_661_1_case_1 & {2{concat_4923[0]}} | unexpand_for_next_value_661_1_case_0 & {2{concat_4923[1]}};
  assign __systolic__hor_chans__2_4_not_stage_load = ~__systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_4_has_been_sent_reg_load_en = __systolic__hor_chans__2_4_valid_and_ready_txfr | __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_3_has_been_sent_reg_load_en = __systolic__vert_chans__3_3_valid_and_ready_txfr | __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_3_not_stage_load = ~__systolic__result_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_3_has_been_sent_reg_load_en = __systolic__result_chans__2_3_valid_and_ready_txfr | __systolic__result_chans__2_3_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__2_3_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__2_3_reg : p1_b;
    p2_prod <= p2_load_en ? prod : p2_prod;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__2_4_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__3_3_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__2_3_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__2_3_reg <= 32'h0000_0000;
      __systolic__hor_chans__2_3_valid_reg <= 1'h0;
      __systolic__vert_chans__2_3_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_3_valid_reg <= 1'h0;
      __systolic__hor_chans__2_4_reg <= 32'h0000_0000;
      __systolic__hor_chans__2_4_valid_reg <= 1'h0;
      __systolic__vert_chans__3_3_reg <= 32'h0000_0000;
      __systolic__vert_chans__3_3_valid_reg <= 1'h0;
      __systolic__result_chans__2_3_reg <= 32'h0000_0000;
      __systolic__result_chans__2_3_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_4925 ? one_hot_sel_4930 : ____state_1;
      ____state_0 <= or_4925 ? one_hot_sel_4924 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__2_3_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__2_4_has_been_sent_reg <= __systolic__hor_chans__2_4_has_been_sent_reg_load_en ? __systolic__hor_chans__2_4_not_stage_load : __systolic__hor_chans__2_4_has_been_sent_reg;
      __systolic__vert_chans__3_3_has_been_sent_reg <= __systolic__vert_chans__3_3_has_been_sent_reg_load_en ? __systolic__hor_chans__2_4_not_stage_load : __systolic__vert_chans__3_3_has_been_sent_reg;
      __systolic__result_chans__2_3_has_been_sent_reg <= __systolic__result_chans__2_3_has_been_sent_reg_load_en ? __systolic__result_chans__2_3_not_stage_load : __systolic__result_chans__2_3_has_been_sent_reg;
      __systolic__hor_chans__2_3_reg <= systolic__hor_chans__2_3_load_en ? systolic__hor_chans__2_3 : __systolic__hor_chans__2_3_reg;
      __systolic__hor_chans__2_3_valid_reg <= systolic__hor_chans__2_3_valid_load_en ? systolic__hor_chans__2_3_vld : __systolic__hor_chans__2_3_valid_reg;
      __systolic__vert_chans__2_3_reg <= systolic__vert_chans__2_3_load_en ? systolic__vert_chans__2_3 : __systolic__vert_chans__2_3_reg;
      __systolic__vert_chans__2_3_valid_reg <= systolic__vert_chans__2_3_valid_load_en ? systolic__vert_chans__2_3_vld : __systolic__vert_chans__2_3_valid_reg;
      __systolic__hor_chans__2_4_reg <= systolic__hor_chans__2_4_load_en ? p1_a : __systolic__hor_chans__2_4_reg;
      __systolic__hor_chans__2_4_valid_reg <= systolic__hor_chans__2_4_valid_load_en ? __systolic__hor_chans__2_4_valid_and_not_has_been_sent : __systolic__hor_chans__2_4_valid_reg;
      __systolic__vert_chans__3_3_reg <= systolic__vert_chans__3_3_load_en ? p1_b : __systolic__vert_chans__3_3_reg;
      __systolic__vert_chans__3_3_valid_reg <= systolic__vert_chans__3_3_valid_load_en ? __systolic__vert_chans__3_3_valid_and_not_has_been_sent : __systolic__vert_chans__3_3_valid_reg;
      __systolic__result_chans__2_3_reg <= systolic__result_chans__2_3_load_en ? new_accum : __systolic__result_chans__2_3_reg;
      __systolic__result_chans__2_3_valid_reg <= systolic__result_chans__2_3_valid_load_en ? __systolic__result_chans__2_3_valid_and_not_has_been_sent : __systolic__result_chans__2_3_valid_reg;
    end
  end
  assign systolic__hor_chans__2_3_rdy = systolic__hor_chans__2_3_load_en;
  assign systolic__hor_chans__2_4 = __systolic__hor_chans__2_4_reg;
  assign systolic__hor_chans__2_4_vld = __systolic__hor_chans__2_4_valid_reg;
  assign systolic__result_chans__2_3 = __systolic__result_chans__2_3_reg;
  assign systolic__result_chans__2_3_vld = __systolic__result_chans__2_3_valid_reg;
  assign systolic__vert_chans__2_3_rdy = systolic__vert_chans__2_3_load_en;
  assign systolic__vert_chans__3_3 = __systolic__vert_chans__3_3_reg;
  assign systolic__vert_chans__3_3_vld = __systolic__vert_chans__3_3_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8941))) or_8941) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8941))) or_8941) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_12_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__3_0,
  input wire systolic__hor_chans__3_0_vld,
  input wire systolic__hor_chans__3_1_rdy,
  input wire systolic__result_chans__3_0_rdy,
  input wire [31:0] systolic__vert_chans__3_0,
  input wire systolic__vert_chans__3_0_vld,
  input wire systolic__vert_chans__4_0_rdy,
  output wire systolic__hor_chans__3_0_rdy,
  output wire [31:0] systolic__hor_chans__3_1,
  output wire systolic__hor_chans__3_1_vld,
  output wire [31:0] systolic__result_chans__3_0,
  output wire systolic__result_chans__3_0_vld,
  output wire systolic__vert_chans__3_0_rdy,
  output wire [31:0] systolic__vert_chans__4_0,
  output wire systolic__vert_chans__4_0_vld
);
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__3_1_has_been_sent_reg;
  reg __systolic__vert_chans__4_0_has_been_sent_reg;
  reg __systolic__result_chans__3_0_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__3_0_reg;
  reg __systolic__hor_chans__3_0_valid_reg;
  reg [31:0] __systolic__vert_chans__3_0_reg;
  reg __systolic__vert_chans__3_0_valid_reg;
  reg [31:0] __systolic__hor_chans__3_1_reg;
  reg __systolic__hor_chans__3_1_valid_reg;
  reg [31:0] __systolic__vert_chans__4_0_reg;
  reg __systolic__vert_chans__4_0_valid_reg;
  reg [31:0] __systolic__result_chans__3_0_reg;
  reg __systolic__result_chans__3_0_valid_reg;
  wire should_output;
  wire __systolic__result_chans__3_0_vld_buf;
  wire __systolic__result_chans__3_0_not_has_been_sent;
  wire systolic__result_chans__3_0_valid_inv;
  wire __systolic__result_chans__3_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_0_valid_load_en;
  wire systolic__result_chans__3_0_load_en;
  wire or_9076;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__3_1_vld_buf;
  wire __systolic__hor_chans__3_1_not_has_been_sent;
  wire systolic__hor_chans__3_1_valid_inv;
  wire __systolic__vert_chans__4_0_not_has_been_sent;
  wire systolic__vert_chans__4_0_valid_inv;
  wire __systolic__hor_chans__3_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_1_valid_load_en;
  wire __systolic__vert_chans__4_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_0_valid_load_en;
  wire systolic__hor_chans__3_1_load_en;
  wire systolic__vert_chans__4_0_load_en;
  wire __systolic__hor_chans__3_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_0_has_sent_or_is_ready;
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
  wire [2:0] one_hot_5088;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__3_0_valid_inv;
  wire systolic__vert_chans__3_0_valid_inv;
  wire and_5162;
  wire and_5163;
  wire systolic__hor_chans__3_0_valid_load_en;
  wire systolic__vert_chans__3_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5164;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_691_1_case_1;
  wire [1:0] unexpand_for_next_value_691_1_case_0;
  wire __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__3_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__4_0_valid_and_ready_txfr;
  wire __systolic__result_chans__3_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__3_0_valid_and_ready_txfr;
  wire systolic__hor_chans__3_0_load_en;
  wire systolic__vert_chans__3_0_load_en;
  wire or_8945;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_5165;
  wire or_5166;
  wire [1:0] one_hot_sel_5171;
  wire __systolic__hor_chans__3_1_not_stage_load;
  wire __systolic__hor_chans__3_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_0_not_stage_load;
  wire __systolic__result_chans__3_0_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__3_0_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__3_0_not_has_been_sent = ~__systolic__result_chans__3_0_has_been_sent_reg;
  assign systolic__result_chans__3_0_valid_inv = ~__systolic__result_chans__3_0_valid_reg;
  assign __systolic__result_chans__3_0_valid_and_not_has_been_sent = __systolic__result_chans__3_0_vld_buf & __systolic__result_chans__3_0_not_has_been_sent;
  assign systolic__result_chans__3_0_valid_load_en = systolic__result_chans__3_0_rdy | systolic__result_chans__3_0_valid_inv;
  assign systolic__result_chans__3_0_load_en = __systolic__result_chans__3_0_valid_and_not_has_been_sent & systolic__result_chans__3_0_valid_load_en;
  assign or_9076 = ~should_output | systolic__result_chans__3_0_load_en | __systolic__result_chans__3_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9076;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__3_1_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__3_1_not_has_been_sent = ~__systolic__hor_chans__3_1_has_been_sent_reg;
  assign systolic__hor_chans__3_1_valid_inv = ~__systolic__hor_chans__3_1_valid_reg;
  assign __systolic__vert_chans__4_0_not_has_been_sent = ~__systolic__vert_chans__4_0_has_been_sent_reg;
  assign systolic__vert_chans__4_0_valid_inv = ~__systolic__vert_chans__4_0_valid_reg;
  assign __systolic__hor_chans__3_1_valid_and_not_has_been_sent = __systolic__hor_chans__3_1_vld_buf & __systolic__hor_chans__3_1_not_has_been_sent;
  assign systolic__hor_chans__3_1_valid_load_en = systolic__hor_chans__3_1_rdy | systolic__hor_chans__3_1_valid_inv;
  assign __systolic__vert_chans__4_0_valid_and_not_has_been_sent = __systolic__hor_chans__3_1_vld_buf & __systolic__vert_chans__4_0_not_has_been_sent;
  assign systolic__vert_chans__4_0_valid_load_en = systolic__vert_chans__4_0_rdy | systolic__vert_chans__4_0_valid_inv;
  assign systolic__hor_chans__3_1_load_en = __systolic__hor_chans__3_1_valid_and_not_has_been_sent & systolic__hor_chans__3_1_valid_load_en;
  assign systolic__vert_chans__4_0_load_en = __systolic__vert_chans__4_0_valid_and_not_has_been_sent & systolic__vert_chans__4_0_valid_load_en;
  assign __systolic__hor_chans__3_1_has_sent_or_is_ready = systolic__hor_chans__3_1_load_en | __systolic__hor_chans__3_1_has_been_sent_reg;
  assign __systolic__vert_chans__4_0_has_sent_or_is_ready = systolic__vert_chans__4_0_load_en | __systolic__vert_chans__4_0_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__3_1_has_sent_or_is_ready & __systolic__vert_chans__4_0_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__3_0_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_5088 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__3_0_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__3_0_valid_inv = ~__systolic__hor_chans__3_0_valid_reg;
  assign systolic__vert_chans__3_0_valid_inv = ~__systolic__vert_chans__3_0_valid_reg;
  assign and_5162 = ~should_output & p3_stage_done;
  assign and_5163 = should_output & p3_stage_done;
  assign systolic__hor_chans__3_0_valid_load_en = p0_load_en | systolic__hor_chans__3_0_valid_inv;
  assign systolic__vert_chans__3_0_valid_load_en = p1_load_en | systolic__vert_chans__3_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5088[1] & should_output == one_hot_5088[0];
  assign concat_5164 = {and_5162, and_5163};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_691_1_case_1 = 2'h0;
  assign unexpand_for_next_value_691_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__3_1_valid_and_ready_txfr = __systolic__hor_chans__3_1_valid_and_not_has_been_sent & systolic__hor_chans__3_1_load_en;
  assign __systolic__vert_chans__4_0_valid_and_ready_txfr = __systolic__vert_chans__4_0_valid_and_not_has_been_sent & systolic__vert_chans__4_0_load_en;
  assign __systolic__result_chans__3_0_valid_and_all_active_outputs_ready = __systolic__result_chans__3_0_vld_buf & or_9076;
  assign __systolic__result_chans__3_0_valid_and_ready_txfr = __systolic__result_chans__3_0_valid_and_not_has_been_sent & systolic__result_chans__3_0_load_en;
  assign systolic__hor_chans__3_0_load_en = systolic__hor_chans__3_0_vld & systolic__hor_chans__3_0_valid_load_en;
  assign systolic__vert_chans__3_0_load_en = systolic__vert_chans__3_0_vld & systolic__vert_chans__3_0_valid_load_en;
  assign or_8945 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_5165 = 32'h0000_0000 & {32{concat_5164[0]}} | new_accum & {32{concat_5164[1]}};
  assign or_5166 = and_5162 | and_5163;
  assign one_hot_sel_5171 = unexpand_for_next_value_691_1_case_1 & {2{concat_5164[0]}} | unexpand_for_next_value_691_1_case_0 & {2{concat_5164[1]}};
  assign __systolic__hor_chans__3_1_not_stage_load = ~__systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_1_has_been_sent_reg_load_en = __systolic__hor_chans__3_1_valid_and_ready_txfr | __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_0_has_been_sent_reg_load_en = __systolic__vert_chans__4_0_valid_and_ready_txfr | __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_0_not_stage_load = ~__systolic__result_chans__3_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_0_has_been_sent_reg_load_en = __systolic__result_chans__3_0_valid_and_ready_txfr | __systolic__result_chans__3_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__3_0_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__3_0_reg : p1_b;
    p2_prod <= p2_load_en ? prod : p2_prod;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__3_1_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__4_0_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__3_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__3_0_reg <= 32'h0000_0000;
      __systolic__hor_chans__3_0_valid_reg <= 1'h0;
      __systolic__vert_chans__3_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__3_0_valid_reg <= 1'h0;
      __systolic__hor_chans__3_1_reg <= 32'h0000_0000;
      __systolic__hor_chans__3_1_valid_reg <= 1'h0;
      __systolic__vert_chans__4_0_reg <= 32'h0000_0000;
      __systolic__vert_chans__4_0_valid_reg <= 1'h0;
      __systolic__result_chans__3_0_reg <= 32'h0000_0000;
      __systolic__result_chans__3_0_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_5166 ? one_hot_sel_5171 : ____state_1;
      ____state_0 <= or_5166 ? one_hot_sel_5165 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__3_0_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__3_1_has_been_sent_reg <= __systolic__hor_chans__3_1_has_been_sent_reg_load_en ? __systolic__hor_chans__3_1_not_stage_load : __systolic__hor_chans__3_1_has_been_sent_reg;
      __systolic__vert_chans__4_0_has_been_sent_reg <= __systolic__vert_chans__4_0_has_been_sent_reg_load_en ? __systolic__hor_chans__3_1_not_stage_load : __systolic__vert_chans__4_0_has_been_sent_reg;
      __systolic__result_chans__3_0_has_been_sent_reg <= __systolic__result_chans__3_0_has_been_sent_reg_load_en ? __systolic__result_chans__3_0_not_stage_load : __systolic__result_chans__3_0_has_been_sent_reg;
      __systolic__hor_chans__3_0_reg <= systolic__hor_chans__3_0_load_en ? systolic__hor_chans__3_0 : __systolic__hor_chans__3_0_reg;
      __systolic__hor_chans__3_0_valid_reg <= systolic__hor_chans__3_0_valid_load_en ? systolic__hor_chans__3_0_vld : __systolic__hor_chans__3_0_valid_reg;
      __systolic__vert_chans__3_0_reg <= systolic__vert_chans__3_0_load_en ? systolic__vert_chans__3_0 : __systolic__vert_chans__3_0_reg;
      __systolic__vert_chans__3_0_valid_reg <= systolic__vert_chans__3_0_valid_load_en ? systolic__vert_chans__3_0_vld : __systolic__vert_chans__3_0_valid_reg;
      __systolic__hor_chans__3_1_reg <= systolic__hor_chans__3_1_load_en ? p1_a : __systolic__hor_chans__3_1_reg;
      __systolic__hor_chans__3_1_valid_reg <= systolic__hor_chans__3_1_valid_load_en ? __systolic__hor_chans__3_1_valid_and_not_has_been_sent : __systolic__hor_chans__3_1_valid_reg;
      __systolic__vert_chans__4_0_reg <= systolic__vert_chans__4_0_load_en ? p1_b : __systolic__vert_chans__4_0_reg;
      __systolic__vert_chans__4_0_valid_reg <= systolic__vert_chans__4_0_valid_load_en ? __systolic__vert_chans__4_0_valid_and_not_has_been_sent : __systolic__vert_chans__4_0_valid_reg;
      __systolic__result_chans__3_0_reg <= systolic__result_chans__3_0_load_en ? new_accum : __systolic__result_chans__3_0_reg;
      __systolic__result_chans__3_0_valid_reg <= systolic__result_chans__3_0_valid_load_en ? __systolic__result_chans__3_0_valid_and_not_has_been_sent : __systolic__result_chans__3_0_valid_reg;
    end
  end
  assign systolic__hor_chans__3_0_rdy = systolic__hor_chans__3_0_load_en;
  assign systolic__hor_chans__3_1 = __systolic__hor_chans__3_1_reg;
  assign systolic__hor_chans__3_1_vld = __systolic__hor_chans__3_1_valid_reg;
  assign systolic__result_chans__3_0 = __systolic__result_chans__3_0_reg;
  assign systolic__result_chans__3_0_vld = __systolic__result_chans__3_0_valid_reg;
  assign systolic__vert_chans__3_0_rdy = systolic__vert_chans__3_0_load_en;
  assign systolic__vert_chans__4_0 = __systolic__vert_chans__4_0_reg;
  assign systolic__vert_chans__4_0_vld = __systolic__vert_chans__4_0_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8945))) or_8945) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8945))) or_8945) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_13_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__3_1,
  input wire systolic__hor_chans__3_1_vld,
  input wire systolic__hor_chans__3_2_rdy,
  input wire systolic__result_chans__3_1_rdy,
  input wire [31:0] systolic__vert_chans__3_1,
  input wire systolic__vert_chans__3_1_vld,
  input wire systolic__vert_chans__4_1_rdy,
  output wire systolic__hor_chans__3_1_rdy,
  output wire [31:0] systolic__hor_chans__3_2,
  output wire systolic__hor_chans__3_2_vld,
  output wire [31:0] systolic__result_chans__3_1,
  output wire systolic__result_chans__3_1_vld,
  output wire systolic__vert_chans__3_1_rdy,
  output wire [31:0] systolic__vert_chans__4_1,
  output wire systolic__vert_chans__4_1_vld
);
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__3_2_has_been_sent_reg;
  reg __systolic__vert_chans__4_1_has_been_sent_reg;
  reg __systolic__result_chans__3_1_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__3_1_reg;
  reg __systolic__hor_chans__3_1_valid_reg;
  reg [31:0] __systolic__vert_chans__3_1_reg;
  reg __systolic__vert_chans__3_1_valid_reg;
  reg [31:0] __systolic__hor_chans__3_2_reg;
  reg __systolic__hor_chans__3_2_valid_reg;
  reg [31:0] __systolic__vert_chans__4_1_reg;
  reg __systolic__vert_chans__4_1_valid_reg;
  reg [31:0] __systolic__result_chans__3_1_reg;
  reg __systolic__result_chans__3_1_valid_reg;
  wire should_output;
  wire __systolic__result_chans__3_1_vld_buf;
  wire __systolic__result_chans__3_1_not_has_been_sent;
  wire systolic__result_chans__3_1_valid_inv;
  wire __systolic__result_chans__3_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_1_valid_load_en;
  wire systolic__result_chans__3_1_load_en;
  wire or_9093;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__3_2_vld_buf;
  wire __systolic__hor_chans__3_2_not_has_been_sent;
  wire systolic__hor_chans__3_2_valid_inv;
  wire __systolic__vert_chans__4_1_not_has_been_sent;
  wire systolic__vert_chans__4_1_valid_inv;
  wire __systolic__hor_chans__3_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_2_valid_load_en;
  wire __systolic__vert_chans__4_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_1_valid_load_en;
  wire systolic__hor_chans__3_2_load_en;
  wire systolic__vert_chans__4_1_load_en;
  wire __systolic__hor_chans__3_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_1_has_sent_or_is_ready;
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
  wire [2:0] one_hot_5329;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__3_1_valid_inv;
  wire systolic__vert_chans__3_1_valid_inv;
  wire and_5403;
  wire and_5404;
  wire systolic__hor_chans__3_1_valid_load_en;
  wire systolic__vert_chans__3_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5405;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_721_1_case_1;
  wire [1:0] unexpand_for_next_value_721_1_case_0;
  wire __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__3_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__4_1_valid_and_ready_txfr;
  wire __systolic__result_chans__3_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__3_1_valid_and_ready_txfr;
  wire systolic__hor_chans__3_1_load_en;
  wire systolic__vert_chans__3_1_load_en;
  wire or_8949;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_5406;
  wire or_5407;
  wire [1:0] one_hot_sel_5412;
  wire __systolic__hor_chans__3_2_not_stage_load;
  wire __systolic__hor_chans__3_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_1_not_stage_load;
  wire __systolic__result_chans__3_1_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__3_1_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__3_1_not_has_been_sent = ~__systolic__result_chans__3_1_has_been_sent_reg;
  assign systolic__result_chans__3_1_valid_inv = ~__systolic__result_chans__3_1_valid_reg;
  assign __systolic__result_chans__3_1_valid_and_not_has_been_sent = __systolic__result_chans__3_1_vld_buf & __systolic__result_chans__3_1_not_has_been_sent;
  assign systolic__result_chans__3_1_valid_load_en = systolic__result_chans__3_1_rdy | systolic__result_chans__3_1_valid_inv;
  assign systolic__result_chans__3_1_load_en = __systolic__result_chans__3_1_valid_and_not_has_been_sent & systolic__result_chans__3_1_valid_load_en;
  assign or_9093 = ~should_output | systolic__result_chans__3_1_load_en | __systolic__result_chans__3_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9093;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__3_2_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__3_2_not_has_been_sent = ~__systolic__hor_chans__3_2_has_been_sent_reg;
  assign systolic__hor_chans__3_2_valid_inv = ~__systolic__hor_chans__3_2_valid_reg;
  assign __systolic__vert_chans__4_1_not_has_been_sent = ~__systolic__vert_chans__4_1_has_been_sent_reg;
  assign systolic__vert_chans__4_1_valid_inv = ~__systolic__vert_chans__4_1_valid_reg;
  assign __systolic__hor_chans__3_2_valid_and_not_has_been_sent = __systolic__hor_chans__3_2_vld_buf & __systolic__hor_chans__3_2_not_has_been_sent;
  assign systolic__hor_chans__3_2_valid_load_en = systolic__hor_chans__3_2_rdy | systolic__hor_chans__3_2_valid_inv;
  assign __systolic__vert_chans__4_1_valid_and_not_has_been_sent = __systolic__hor_chans__3_2_vld_buf & __systolic__vert_chans__4_1_not_has_been_sent;
  assign systolic__vert_chans__4_1_valid_load_en = systolic__vert_chans__4_1_rdy | systolic__vert_chans__4_1_valid_inv;
  assign systolic__hor_chans__3_2_load_en = __systolic__hor_chans__3_2_valid_and_not_has_been_sent & systolic__hor_chans__3_2_valid_load_en;
  assign systolic__vert_chans__4_1_load_en = __systolic__vert_chans__4_1_valid_and_not_has_been_sent & systolic__vert_chans__4_1_valid_load_en;
  assign __systolic__hor_chans__3_2_has_sent_or_is_ready = systolic__hor_chans__3_2_load_en | __systolic__hor_chans__3_2_has_been_sent_reg;
  assign __systolic__vert_chans__4_1_has_sent_or_is_ready = systolic__vert_chans__4_1_load_en | __systolic__vert_chans__4_1_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__3_2_has_sent_or_is_ready & __systolic__vert_chans__4_1_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__3_1_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_5329 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__3_1_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__3_1_valid_inv = ~__systolic__hor_chans__3_1_valid_reg;
  assign systolic__vert_chans__3_1_valid_inv = ~__systolic__vert_chans__3_1_valid_reg;
  assign and_5403 = ~should_output & p3_stage_done;
  assign and_5404 = should_output & p3_stage_done;
  assign systolic__hor_chans__3_1_valid_load_en = p0_load_en | systolic__hor_chans__3_1_valid_inv;
  assign systolic__vert_chans__3_1_valid_load_en = p1_load_en | systolic__vert_chans__3_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5329[1] & should_output == one_hot_5329[0];
  assign concat_5405 = {and_5403, and_5404};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_721_1_case_1 = 2'h0;
  assign unexpand_for_next_value_721_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__3_2_valid_and_ready_txfr = __systolic__hor_chans__3_2_valid_and_not_has_been_sent & systolic__hor_chans__3_2_load_en;
  assign __systolic__vert_chans__4_1_valid_and_ready_txfr = __systolic__vert_chans__4_1_valid_and_not_has_been_sent & systolic__vert_chans__4_1_load_en;
  assign __systolic__result_chans__3_1_valid_and_all_active_outputs_ready = __systolic__result_chans__3_1_vld_buf & or_9093;
  assign __systolic__result_chans__3_1_valid_and_ready_txfr = __systolic__result_chans__3_1_valid_and_not_has_been_sent & systolic__result_chans__3_1_load_en;
  assign systolic__hor_chans__3_1_load_en = systolic__hor_chans__3_1_vld & systolic__hor_chans__3_1_valid_load_en;
  assign systolic__vert_chans__3_1_load_en = systolic__vert_chans__3_1_vld & systolic__vert_chans__3_1_valid_load_en;
  assign or_8949 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_5406 = 32'h0000_0000 & {32{concat_5405[0]}} | new_accum & {32{concat_5405[1]}};
  assign or_5407 = and_5403 | and_5404;
  assign one_hot_sel_5412 = unexpand_for_next_value_721_1_case_1 & {2{concat_5405[0]}} | unexpand_for_next_value_721_1_case_0 & {2{concat_5405[1]}};
  assign __systolic__hor_chans__3_2_not_stage_load = ~__systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_2_has_been_sent_reg_load_en = __systolic__hor_chans__3_2_valid_and_ready_txfr | __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_1_has_been_sent_reg_load_en = __systolic__vert_chans__4_1_valid_and_ready_txfr | __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_1_not_stage_load = ~__systolic__result_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_1_has_been_sent_reg_load_en = __systolic__result_chans__3_1_valid_and_ready_txfr | __systolic__result_chans__3_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__3_1_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__3_1_reg : p1_b;
    p2_prod <= p2_load_en ? prod : p2_prod;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__3_2_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__4_1_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__3_1_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__3_1_reg <= 32'h0000_0000;
      __systolic__hor_chans__3_1_valid_reg <= 1'h0;
      __systolic__vert_chans__3_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__3_1_valid_reg <= 1'h0;
      __systolic__hor_chans__3_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__3_2_valid_reg <= 1'h0;
      __systolic__vert_chans__4_1_reg <= 32'h0000_0000;
      __systolic__vert_chans__4_1_valid_reg <= 1'h0;
      __systolic__result_chans__3_1_reg <= 32'h0000_0000;
      __systolic__result_chans__3_1_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_5407 ? one_hot_sel_5412 : ____state_1;
      ____state_0 <= or_5407 ? one_hot_sel_5406 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__3_1_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__3_2_has_been_sent_reg <= __systolic__hor_chans__3_2_has_been_sent_reg_load_en ? __systolic__hor_chans__3_2_not_stage_load : __systolic__hor_chans__3_2_has_been_sent_reg;
      __systolic__vert_chans__4_1_has_been_sent_reg <= __systolic__vert_chans__4_1_has_been_sent_reg_load_en ? __systolic__hor_chans__3_2_not_stage_load : __systolic__vert_chans__4_1_has_been_sent_reg;
      __systolic__result_chans__3_1_has_been_sent_reg <= __systolic__result_chans__3_1_has_been_sent_reg_load_en ? __systolic__result_chans__3_1_not_stage_load : __systolic__result_chans__3_1_has_been_sent_reg;
      __systolic__hor_chans__3_1_reg <= systolic__hor_chans__3_1_load_en ? systolic__hor_chans__3_1 : __systolic__hor_chans__3_1_reg;
      __systolic__hor_chans__3_1_valid_reg <= systolic__hor_chans__3_1_valid_load_en ? systolic__hor_chans__3_1_vld : __systolic__hor_chans__3_1_valid_reg;
      __systolic__vert_chans__3_1_reg <= systolic__vert_chans__3_1_load_en ? systolic__vert_chans__3_1 : __systolic__vert_chans__3_1_reg;
      __systolic__vert_chans__3_1_valid_reg <= systolic__vert_chans__3_1_valid_load_en ? systolic__vert_chans__3_1_vld : __systolic__vert_chans__3_1_valid_reg;
      __systolic__hor_chans__3_2_reg <= systolic__hor_chans__3_2_load_en ? p1_a : __systolic__hor_chans__3_2_reg;
      __systolic__hor_chans__3_2_valid_reg <= systolic__hor_chans__3_2_valid_load_en ? __systolic__hor_chans__3_2_valid_and_not_has_been_sent : __systolic__hor_chans__3_2_valid_reg;
      __systolic__vert_chans__4_1_reg <= systolic__vert_chans__4_1_load_en ? p1_b : __systolic__vert_chans__4_1_reg;
      __systolic__vert_chans__4_1_valid_reg <= systolic__vert_chans__4_1_valid_load_en ? __systolic__vert_chans__4_1_valid_and_not_has_been_sent : __systolic__vert_chans__4_1_valid_reg;
      __systolic__result_chans__3_1_reg <= systolic__result_chans__3_1_load_en ? new_accum : __systolic__result_chans__3_1_reg;
      __systolic__result_chans__3_1_valid_reg <= systolic__result_chans__3_1_valid_load_en ? __systolic__result_chans__3_1_valid_and_not_has_been_sent : __systolic__result_chans__3_1_valid_reg;
    end
  end
  assign systolic__hor_chans__3_1_rdy = systolic__hor_chans__3_1_load_en;
  assign systolic__hor_chans__3_2 = __systolic__hor_chans__3_2_reg;
  assign systolic__hor_chans__3_2_vld = __systolic__hor_chans__3_2_valid_reg;
  assign systolic__result_chans__3_1 = __systolic__result_chans__3_1_reg;
  assign systolic__result_chans__3_1_vld = __systolic__result_chans__3_1_valid_reg;
  assign systolic__vert_chans__3_1_rdy = systolic__vert_chans__3_1_load_en;
  assign systolic__vert_chans__4_1 = __systolic__vert_chans__4_1_reg;
  assign systolic__vert_chans__4_1_vld = __systolic__vert_chans__4_1_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8949))) or_8949) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8949))) or_8949) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_14_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__3_2,
  input wire systolic__hor_chans__3_2_vld,
  input wire systolic__hor_chans__3_3_rdy,
  input wire systolic__result_chans__3_2_rdy,
  input wire [31:0] systolic__vert_chans__3_2,
  input wire systolic__vert_chans__3_2_vld,
  input wire systolic__vert_chans__4_2_rdy,
  output wire systolic__hor_chans__3_2_rdy,
  output wire [31:0] systolic__hor_chans__3_3,
  output wire systolic__hor_chans__3_3_vld,
  output wire [31:0] systolic__result_chans__3_2,
  output wire systolic__result_chans__3_2_vld,
  output wire systolic__vert_chans__3_2_rdy,
  output wire [31:0] systolic__vert_chans__4_2,
  output wire systolic__vert_chans__4_2_vld
);
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__3_3_has_been_sent_reg;
  reg __systolic__vert_chans__4_2_has_been_sent_reg;
  reg __systolic__result_chans__3_2_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__3_2_reg;
  reg __systolic__hor_chans__3_2_valid_reg;
  reg [31:0] __systolic__vert_chans__3_2_reg;
  reg __systolic__vert_chans__3_2_valid_reg;
  reg [31:0] __systolic__hor_chans__3_3_reg;
  reg __systolic__hor_chans__3_3_valid_reg;
  reg [31:0] __systolic__vert_chans__4_2_reg;
  reg __systolic__vert_chans__4_2_valid_reg;
  reg [31:0] __systolic__result_chans__3_2_reg;
  reg __systolic__result_chans__3_2_valid_reg;
  wire should_output;
  wire __systolic__result_chans__3_2_vld_buf;
  wire __systolic__result_chans__3_2_not_has_been_sent;
  wire systolic__result_chans__3_2_valid_inv;
  wire __systolic__result_chans__3_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_2_valid_load_en;
  wire systolic__result_chans__3_2_load_en;
  wire or_9110;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__3_3_vld_buf;
  wire __systolic__hor_chans__3_3_not_has_been_sent;
  wire systolic__hor_chans__3_3_valid_inv;
  wire __systolic__vert_chans__4_2_not_has_been_sent;
  wire systolic__vert_chans__4_2_valid_inv;
  wire __systolic__hor_chans__3_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_3_valid_load_en;
  wire __systolic__vert_chans__4_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_2_valid_load_en;
  wire systolic__hor_chans__3_3_load_en;
  wire systolic__vert_chans__4_2_load_en;
  wire __systolic__hor_chans__3_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_2_has_sent_or_is_ready;
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
  wire [2:0] one_hot_5570;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__3_2_valid_inv;
  wire systolic__vert_chans__3_2_valid_inv;
  wire and_5644;
  wire and_5645;
  wire systolic__hor_chans__3_2_valid_load_en;
  wire systolic__vert_chans__3_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5646;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_751_1_case_1;
  wire [1:0] unexpand_for_next_value_751_1_case_0;
  wire __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__3_3_valid_and_ready_txfr;
  wire __systolic__vert_chans__4_2_valid_and_ready_txfr;
  wire __systolic__result_chans__3_2_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__3_2_valid_and_ready_txfr;
  wire systolic__hor_chans__3_2_load_en;
  wire systolic__vert_chans__3_2_load_en;
  wire or_8953;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_5647;
  wire or_5648;
  wire [1:0] one_hot_sel_5653;
  wire __systolic__hor_chans__3_3_not_stage_load;
  wire __systolic__hor_chans__3_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_2_not_stage_load;
  wire __systolic__result_chans__3_2_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__3_2_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__3_2_not_has_been_sent = ~__systolic__result_chans__3_2_has_been_sent_reg;
  assign systolic__result_chans__3_2_valid_inv = ~__systolic__result_chans__3_2_valid_reg;
  assign __systolic__result_chans__3_2_valid_and_not_has_been_sent = __systolic__result_chans__3_2_vld_buf & __systolic__result_chans__3_2_not_has_been_sent;
  assign systolic__result_chans__3_2_valid_load_en = systolic__result_chans__3_2_rdy | systolic__result_chans__3_2_valid_inv;
  assign systolic__result_chans__3_2_load_en = __systolic__result_chans__3_2_valid_and_not_has_been_sent & systolic__result_chans__3_2_valid_load_en;
  assign or_9110 = ~should_output | systolic__result_chans__3_2_load_en | __systolic__result_chans__3_2_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9110;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__3_3_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__3_3_not_has_been_sent = ~__systolic__hor_chans__3_3_has_been_sent_reg;
  assign systolic__hor_chans__3_3_valid_inv = ~__systolic__hor_chans__3_3_valid_reg;
  assign __systolic__vert_chans__4_2_not_has_been_sent = ~__systolic__vert_chans__4_2_has_been_sent_reg;
  assign systolic__vert_chans__4_2_valid_inv = ~__systolic__vert_chans__4_2_valid_reg;
  assign __systolic__hor_chans__3_3_valid_and_not_has_been_sent = __systolic__hor_chans__3_3_vld_buf & __systolic__hor_chans__3_3_not_has_been_sent;
  assign systolic__hor_chans__3_3_valid_load_en = systolic__hor_chans__3_3_rdy | systolic__hor_chans__3_3_valid_inv;
  assign __systolic__vert_chans__4_2_valid_and_not_has_been_sent = __systolic__hor_chans__3_3_vld_buf & __systolic__vert_chans__4_2_not_has_been_sent;
  assign systolic__vert_chans__4_2_valid_load_en = systolic__vert_chans__4_2_rdy | systolic__vert_chans__4_2_valid_inv;
  assign systolic__hor_chans__3_3_load_en = __systolic__hor_chans__3_3_valid_and_not_has_been_sent & systolic__hor_chans__3_3_valid_load_en;
  assign systolic__vert_chans__4_2_load_en = __systolic__vert_chans__4_2_valid_and_not_has_been_sent & systolic__vert_chans__4_2_valid_load_en;
  assign __systolic__hor_chans__3_3_has_sent_or_is_ready = systolic__hor_chans__3_3_load_en | __systolic__hor_chans__3_3_has_been_sent_reg;
  assign __systolic__vert_chans__4_2_has_sent_or_is_ready = systolic__vert_chans__4_2_load_en | __systolic__vert_chans__4_2_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__3_3_has_sent_or_is_ready & __systolic__vert_chans__4_2_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__3_2_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_5570 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__3_2_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__3_2_valid_inv = ~__systolic__hor_chans__3_2_valid_reg;
  assign systolic__vert_chans__3_2_valid_inv = ~__systolic__vert_chans__3_2_valid_reg;
  assign and_5644 = ~should_output & p3_stage_done;
  assign and_5645 = should_output & p3_stage_done;
  assign systolic__hor_chans__3_2_valid_load_en = p0_load_en | systolic__hor_chans__3_2_valid_inv;
  assign systolic__vert_chans__3_2_valid_load_en = p1_load_en | systolic__vert_chans__3_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5570[1] & should_output == one_hot_5570[0];
  assign concat_5646 = {and_5644, and_5645};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_751_1_case_1 = 2'h0;
  assign unexpand_for_next_value_751_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_3_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__3_3_valid_and_ready_txfr = __systolic__hor_chans__3_3_valid_and_not_has_been_sent & systolic__hor_chans__3_3_load_en;
  assign __systolic__vert_chans__4_2_valid_and_ready_txfr = __systolic__vert_chans__4_2_valid_and_not_has_been_sent & systolic__vert_chans__4_2_load_en;
  assign __systolic__result_chans__3_2_valid_and_all_active_outputs_ready = __systolic__result_chans__3_2_vld_buf & or_9110;
  assign __systolic__result_chans__3_2_valid_and_ready_txfr = __systolic__result_chans__3_2_valid_and_not_has_been_sent & systolic__result_chans__3_2_load_en;
  assign systolic__hor_chans__3_2_load_en = systolic__hor_chans__3_2_vld & systolic__hor_chans__3_2_valid_load_en;
  assign systolic__vert_chans__3_2_load_en = systolic__vert_chans__3_2_vld & systolic__vert_chans__3_2_valid_load_en;
  assign or_8953 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_5647 = 32'h0000_0000 & {32{concat_5646[0]}} | new_accum & {32{concat_5646[1]}};
  assign or_5648 = and_5644 | and_5645;
  assign one_hot_sel_5653 = unexpand_for_next_value_751_1_case_1 & {2{concat_5646[0]}} | unexpand_for_next_value_751_1_case_0 & {2{concat_5646[1]}};
  assign __systolic__hor_chans__3_3_not_stage_load = ~__systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_3_has_been_sent_reg_load_en = __systolic__hor_chans__3_3_valid_and_ready_txfr | __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_2_has_been_sent_reg_load_en = __systolic__vert_chans__4_2_valid_and_ready_txfr | __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_2_not_stage_load = ~__systolic__result_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_2_has_been_sent_reg_load_en = __systolic__result_chans__3_2_valid_and_ready_txfr | __systolic__result_chans__3_2_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__3_2_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__3_2_reg : p1_b;
    p2_prod <= p2_load_en ? prod : p2_prod;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__3_3_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__4_2_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__3_2_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__3_2_reg <= 32'h0000_0000;
      __systolic__hor_chans__3_2_valid_reg <= 1'h0;
      __systolic__vert_chans__3_2_reg <= 32'h0000_0000;
      __systolic__vert_chans__3_2_valid_reg <= 1'h0;
      __systolic__hor_chans__3_3_reg <= 32'h0000_0000;
      __systolic__hor_chans__3_3_valid_reg <= 1'h0;
      __systolic__vert_chans__4_2_reg <= 32'h0000_0000;
      __systolic__vert_chans__4_2_valid_reg <= 1'h0;
      __systolic__result_chans__3_2_reg <= 32'h0000_0000;
      __systolic__result_chans__3_2_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_5648 ? one_hot_sel_5653 : ____state_1;
      ____state_0 <= or_5648 ? one_hot_sel_5647 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__3_2_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__3_3_has_been_sent_reg <= __systolic__hor_chans__3_3_has_been_sent_reg_load_en ? __systolic__hor_chans__3_3_not_stage_load : __systolic__hor_chans__3_3_has_been_sent_reg;
      __systolic__vert_chans__4_2_has_been_sent_reg <= __systolic__vert_chans__4_2_has_been_sent_reg_load_en ? __systolic__hor_chans__3_3_not_stage_load : __systolic__vert_chans__4_2_has_been_sent_reg;
      __systolic__result_chans__3_2_has_been_sent_reg <= __systolic__result_chans__3_2_has_been_sent_reg_load_en ? __systolic__result_chans__3_2_not_stage_load : __systolic__result_chans__3_2_has_been_sent_reg;
      __systolic__hor_chans__3_2_reg <= systolic__hor_chans__3_2_load_en ? systolic__hor_chans__3_2 : __systolic__hor_chans__3_2_reg;
      __systolic__hor_chans__3_2_valid_reg <= systolic__hor_chans__3_2_valid_load_en ? systolic__hor_chans__3_2_vld : __systolic__hor_chans__3_2_valid_reg;
      __systolic__vert_chans__3_2_reg <= systolic__vert_chans__3_2_load_en ? systolic__vert_chans__3_2 : __systolic__vert_chans__3_2_reg;
      __systolic__vert_chans__3_2_valid_reg <= systolic__vert_chans__3_2_valid_load_en ? systolic__vert_chans__3_2_vld : __systolic__vert_chans__3_2_valid_reg;
      __systolic__hor_chans__3_3_reg <= systolic__hor_chans__3_3_load_en ? p1_a : __systolic__hor_chans__3_3_reg;
      __systolic__hor_chans__3_3_valid_reg <= systolic__hor_chans__3_3_valid_load_en ? __systolic__hor_chans__3_3_valid_and_not_has_been_sent : __systolic__hor_chans__3_3_valid_reg;
      __systolic__vert_chans__4_2_reg <= systolic__vert_chans__4_2_load_en ? p1_b : __systolic__vert_chans__4_2_reg;
      __systolic__vert_chans__4_2_valid_reg <= systolic__vert_chans__4_2_valid_load_en ? __systolic__vert_chans__4_2_valid_and_not_has_been_sent : __systolic__vert_chans__4_2_valid_reg;
      __systolic__result_chans__3_2_reg <= systolic__result_chans__3_2_load_en ? new_accum : __systolic__result_chans__3_2_reg;
      __systolic__result_chans__3_2_valid_reg <= systolic__result_chans__3_2_valid_load_en ? __systolic__result_chans__3_2_valid_and_not_has_been_sent : __systolic__result_chans__3_2_valid_reg;
    end
  end
  assign systolic__hor_chans__3_2_rdy = systolic__hor_chans__3_2_load_en;
  assign systolic__hor_chans__3_3 = __systolic__hor_chans__3_3_reg;
  assign systolic__hor_chans__3_3_vld = __systolic__hor_chans__3_3_valid_reg;
  assign systolic__result_chans__3_2 = __systolic__result_chans__3_2_reg;
  assign systolic__result_chans__3_2_vld = __systolic__result_chans__3_2_valid_reg;
  assign systolic__vert_chans__3_2_rdy = systolic__vert_chans__3_2_load_en;
  assign systolic__vert_chans__4_2 = __systolic__vert_chans__4_2_reg;
  assign systolic__vert_chans__4_2_vld = __systolic__vert_chans__4_2_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8953))) or_8953) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8953))) or_8953) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_15_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__3_3,
  input wire systolic__hor_chans__3_3_vld,
  input wire systolic__hor_chans__3_4_rdy,
  input wire systolic__result_chans__3_3_rdy,
  input wire [31:0] systolic__vert_chans__3_3,
  input wire systolic__vert_chans__3_3_vld,
  input wire systolic__vert_chans__4_3_rdy,
  output wire systolic__hor_chans__3_3_rdy,
  output wire [31:0] systolic__hor_chans__3_4,
  output wire systolic__hor_chans__3_4_vld,
  output wire [31:0] systolic__result_chans__3_3,
  output wire systolic__result_chans__3_3_vld,
  output wire systolic__vert_chans__3_3_rdy,
  output wire [31:0] systolic__vert_chans__4_3,
  output wire systolic__vert_chans__4_3_vld
);
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__3_4_has_been_sent_reg;
  reg __systolic__vert_chans__4_3_has_been_sent_reg;
  reg __systolic__result_chans__3_3_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__3_3_reg;
  reg __systolic__hor_chans__3_3_valid_reg;
  reg [31:0] __systolic__vert_chans__3_3_reg;
  reg __systolic__vert_chans__3_3_valid_reg;
  reg [31:0] __systolic__hor_chans__3_4_reg;
  reg __systolic__hor_chans__3_4_valid_reg;
  reg [31:0] __systolic__vert_chans__4_3_reg;
  reg __systolic__vert_chans__4_3_valid_reg;
  reg [31:0] __systolic__result_chans__3_3_reg;
  reg __systolic__result_chans__3_3_valid_reg;
  wire should_output;
  wire __systolic__result_chans__3_3_vld_buf;
  wire __systolic__result_chans__3_3_not_has_been_sent;
  wire systolic__result_chans__3_3_valid_inv;
  wire __systolic__result_chans__3_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_3_valid_load_en;
  wire systolic__result_chans__3_3_load_en;
  wire or_9127;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__3_4_vld_buf;
  wire __systolic__hor_chans__3_4_not_has_been_sent;
  wire systolic__hor_chans__3_4_valid_inv;
  wire __systolic__vert_chans__4_3_not_has_been_sent;
  wire systolic__vert_chans__4_3_valid_inv;
  wire __systolic__hor_chans__3_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_4_valid_load_en;
  wire __systolic__vert_chans__4_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_3_valid_load_en;
  wire systolic__hor_chans__3_4_load_en;
  wire systolic__vert_chans__4_3_load_en;
  wire __systolic__hor_chans__3_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_3_has_sent_or_is_ready;
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
  wire [2:0] one_hot_5811;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__3_3_valid_inv;
  wire systolic__vert_chans__3_3_valid_inv;
  wire and_5885;
  wire and_5886;
  wire systolic__hor_chans__3_3_valid_load_en;
  wire systolic__vert_chans__3_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5887;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_781_1_case_1;
  wire [1:0] unexpand_for_next_value_781_1_case_0;
  wire __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__3_4_valid_and_ready_txfr;
  wire __systolic__vert_chans__4_3_valid_and_ready_txfr;
  wire __systolic__result_chans__3_3_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__3_3_valid_and_ready_txfr;
  wire systolic__hor_chans__3_3_load_en;
  wire systolic__vert_chans__3_3_load_en;
  wire or_8957;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_5888;
  wire or_5889;
  wire [1:0] one_hot_sel_5894;
  wire __systolic__hor_chans__3_4_not_stage_load;
  wire __systolic__hor_chans__3_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_3_not_stage_load;
  wire __systolic__result_chans__3_3_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__3_3_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__3_3_not_has_been_sent = ~__systolic__result_chans__3_3_has_been_sent_reg;
  assign systolic__result_chans__3_3_valid_inv = ~__systolic__result_chans__3_3_valid_reg;
  assign __systolic__result_chans__3_3_valid_and_not_has_been_sent = __systolic__result_chans__3_3_vld_buf & __systolic__result_chans__3_3_not_has_been_sent;
  assign systolic__result_chans__3_3_valid_load_en = systolic__result_chans__3_3_rdy | systolic__result_chans__3_3_valid_inv;
  assign systolic__result_chans__3_3_load_en = __systolic__result_chans__3_3_valid_and_not_has_been_sent & systolic__result_chans__3_3_valid_load_en;
  assign or_9127 = ~should_output | systolic__result_chans__3_3_load_en | __systolic__result_chans__3_3_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9127;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__3_4_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__3_4_not_has_been_sent = ~__systolic__hor_chans__3_4_has_been_sent_reg;
  assign systolic__hor_chans__3_4_valid_inv = ~__systolic__hor_chans__3_4_valid_reg;
  assign __systolic__vert_chans__4_3_not_has_been_sent = ~__systolic__vert_chans__4_3_has_been_sent_reg;
  assign systolic__vert_chans__4_3_valid_inv = ~__systolic__vert_chans__4_3_valid_reg;
  assign __systolic__hor_chans__3_4_valid_and_not_has_been_sent = __systolic__hor_chans__3_4_vld_buf & __systolic__hor_chans__3_4_not_has_been_sent;
  assign systolic__hor_chans__3_4_valid_load_en = systolic__hor_chans__3_4_rdy | systolic__hor_chans__3_4_valid_inv;
  assign __systolic__vert_chans__4_3_valid_and_not_has_been_sent = __systolic__hor_chans__3_4_vld_buf & __systolic__vert_chans__4_3_not_has_been_sent;
  assign systolic__vert_chans__4_3_valid_load_en = systolic__vert_chans__4_3_rdy | systolic__vert_chans__4_3_valid_inv;
  assign systolic__hor_chans__3_4_load_en = __systolic__hor_chans__3_4_valid_and_not_has_been_sent & systolic__hor_chans__3_4_valid_load_en;
  assign systolic__vert_chans__4_3_load_en = __systolic__vert_chans__4_3_valid_and_not_has_been_sent & systolic__vert_chans__4_3_valid_load_en;
  assign __systolic__hor_chans__3_4_has_sent_or_is_ready = systolic__hor_chans__3_4_load_en | __systolic__hor_chans__3_4_has_been_sent_reg;
  assign __systolic__vert_chans__4_3_has_sent_or_is_ready = systolic__vert_chans__4_3_load_en | __systolic__vert_chans__4_3_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__3_4_has_sent_or_is_ready & __systolic__vert_chans__4_3_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__3_3_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_5811 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__3_3_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__3_3_valid_inv = ~__systolic__hor_chans__3_3_valid_reg;
  assign systolic__vert_chans__3_3_valid_inv = ~__systolic__vert_chans__3_3_valid_reg;
  assign and_5885 = ~should_output & p3_stage_done;
  assign and_5886 = should_output & p3_stage_done;
  assign systolic__hor_chans__3_3_valid_load_en = p0_load_en | systolic__hor_chans__3_3_valid_inv;
  assign systolic__vert_chans__3_3_valid_load_en = p1_load_en | systolic__vert_chans__3_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5811[1] & should_output == one_hot_5811[0];
  assign concat_5887 = {and_5885, and_5886};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_781_1_case_1 = 2'h0;
  assign unexpand_for_next_value_781_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_4_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__3_4_valid_and_ready_txfr = __systolic__hor_chans__3_4_valid_and_not_has_been_sent & systolic__hor_chans__3_4_load_en;
  assign __systolic__vert_chans__4_3_valid_and_ready_txfr = __systolic__vert_chans__4_3_valid_and_not_has_been_sent & systolic__vert_chans__4_3_load_en;
  assign __systolic__result_chans__3_3_valid_and_all_active_outputs_ready = __systolic__result_chans__3_3_vld_buf & or_9127;
  assign __systolic__result_chans__3_3_valid_and_ready_txfr = __systolic__result_chans__3_3_valid_and_not_has_been_sent & systolic__result_chans__3_3_load_en;
  assign systolic__hor_chans__3_3_load_en = systolic__hor_chans__3_3_vld & systolic__hor_chans__3_3_valid_load_en;
  assign systolic__vert_chans__3_3_load_en = systolic__vert_chans__3_3_vld & systolic__vert_chans__3_3_valid_load_en;
  assign or_8957 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_5888 = 32'h0000_0000 & {32{concat_5887[0]}} | new_accum & {32{concat_5887[1]}};
  assign or_5889 = and_5885 | and_5886;
  assign one_hot_sel_5894 = unexpand_for_next_value_781_1_case_1 & {2{concat_5887[0]}} | unexpand_for_next_value_781_1_case_0 & {2{concat_5887[1]}};
  assign __systolic__hor_chans__3_4_not_stage_load = ~__systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_4_has_been_sent_reg_load_en = __systolic__hor_chans__3_4_valid_and_ready_txfr | __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_3_has_been_sent_reg_load_en = __systolic__vert_chans__4_3_valid_and_ready_txfr | __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_3_not_stage_load = ~__systolic__result_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_3_has_been_sent_reg_load_en = __systolic__result_chans__3_3_valid_and_ready_txfr | __systolic__result_chans__3_3_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__3_3_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__3_3_reg : p1_b;
    p2_prod <= p2_load_en ? prod : p2_prod;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__3_4_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__4_3_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__3_3_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__3_3_reg <= 32'h0000_0000;
      __systolic__hor_chans__3_3_valid_reg <= 1'h0;
      __systolic__vert_chans__3_3_reg <= 32'h0000_0000;
      __systolic__vert_chans__3_3_valid_reg <= 1'h0;
      __systolic__hor_chans__3_4_reg <= 32'h0000_0000;
      __systolic__hor_chans__3_4_valid_reg <= 1'h0;
      __systolic__vert_chans__4_3_reg <= 32'h0000_0000;
      __systolic__vert_chans__4_3_valid_reg <= 1'h0;
      __systolic__result_chans__3_3_reg <= 32'h0000_0000;
      __systolic__result_chans__3_3_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_5889 ? one_hot_sel_5894 : ____state_1;
      ____state_0 <= or_5889 ? one_hot_sel_5888 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__3_3_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__3_4_has_been_sent_reg <= __systolic__hor_chans__3_4_has_been_sent_reg_load_en ? __systolic__hor_chans__3_4_not_stage_load : __systolic__hor_chans__3_4_has_been_sent_reg;
      __systolic__vert_chans__4_3_has_been_sent_reg <= __systolic__vert_chans__4_3_has_been_sent_reg_load_en ? __systolic__hor_chans__3_4_not_stage_load : __systolic__vert_chans__4_3_has_been_sent_reg;
      __systolic__result_chans__3_3_has_been_sent_reg <= __systolic__result_chans__3_3_has_been_sent_reg_load_en ? __systolic__result_chans__3_3_not_stage_load : __systolic__result_chans__3_3_has_been_sent_reg;
      __systolic__hor_chans__3_3_reg <= systolic__hor_chans__3_3_load_en ? systolic__hor_chans__3_3 : __systolic__hor_chans__3_3_reg;
      __systolic__hor_chans__3_3_valid_reg <= systolic__hor_chans__3_3_valid_load_en ? systolic__hor_chans__3_3_vld : __systolic__hor_chans__3_3_valid_reg;
      __systolic__vert_chans__3_3_reg <= systolic__vert_chans__3_3_load_en ? systolic__vert_chans__3_3 : __systolic__vert_chans__3_3_reg;
      __systolic__vert_chans__3_3_valid_reg <= systolic__vert_chans__3_3_valid_load_en ? systolic__vert_chans__3_3_vld : __systolic__vert_chans__3_3_valid_reg;
      __systolic__hor_chans__3_4_reg <= systolic__hor_chans__3_4_load_en ? p1_a : __systolic__hor_chans__3_4_reg;
      __systolic__hor_chans__3_4_valid_reg <= systolic__hor_chans__3_4_valid_load_en ? __systolic__hor_chans__3_4_valid_and_not_has_been_sent : __systolic__hor_chans__3_4_valid_reg;
      __systolic__vert_chans__4_3_reg <= systolic__vert_chans__4_3_load_en ? p1_b : __systolic__vert_chans__4_3_reg;
      __systolic__vert_chans__4_3_valid_reg <= systolic__vert_chans__4_3_valid_load_en ? __systolic__vert_chans__4_3_valid_and_not_has_been_sent : __systolic__vert_chans__4_3_valid_reg;
      __systolic__result_chans__3_3_reg <= systolic__result_chans__3_3_load_en ? new_accum : __systolic__result_chans__3_3_reg;
      __systolic__result_chans__3_3_valid_reg <= systolic__result_chans__3_3_valid_load_en ? __systolic__result_chans__3_3_valid_and_not_has_been_sent : __systolic__result_chans__3_3_valid_reg;
    end
  end
  assign systolic__hor_chans__3_3_rdy = systolic__hor_chans__3_3_load_en;
  assign systolic__hor_chans__3_4 = __systolic__hor_chans__3_4_reg;
  assign systolic__hor_chans__3_4_vld = __systolic__hor_chans__3_4_valid_reg;
  assign systolic__result_chans__3_3 = __systolic__result_chans__3_3_reg;
  assign systolic__result_chans__3_3_vld = __systolic__result_chans__3_3_valid_reg;
  assign systolic__vert_chans__3_3_rdy = systolic__vert_chans__3_3_load_en;
  assign systolic__vert_chans__4_3 = __systolic__vert_chans__4_3_reg;
  assign systolic__vert_chans__4_3_vld = __systolic__vert_chans__4_3_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8957))) or_8957) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8957))) or_8957) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
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
  wire should_output;
  wire __systolic__result_chans__0_1_vld_buf;
  wire __systolic__result_chans__0_1_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_inv;
  wire __systolic__result_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_1_valid_load_en;
  wire systolic__result_chans__0_1_load_en;
  wire or_9144;
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
  wire [2:0] one_hot_6052;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_1_valid_inv;
  wire systolic__vert_chans__0_1_valid_inv;
  wire and_6126;
  wire and_6127;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire systolic__vert_chans__0_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6128;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_361_1_case_1;
  wire [1:0] unexpand_for_next_value_361_1_case_0;
  wire __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_1_valid_and_ready_txfr;
  wire __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_1_valid_and_ready_txfr;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__0_1_load_en;
  wire or_8961;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_6129;
  wire or_6130;
  wire [1:0] one_hot_sel_6135;
  wire __systolic__hor_chans__0_2_not_stage_load;
  wire __systolic__hor_chans__0_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_1_not_stage_load;
  wire __systolic__result_chans__0_1_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__0_1_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__0_1_not_has_been_sent = ~__systolic__result_chans__0_1_has_been_sent_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign __systolic__result_chans__0_1_valid_and_not_has_been_sent = __systolic__result_chans__0_1_vld_buf & __systolic__result_chans__0_1_not_has_been_sent;
  assign systolic__result_chans__0_1_valid_load_en = systolic__result_chans__0_1_rdy | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__0_1_load_en = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_valid_load_en;
  assign or_9144 = ~should_output | systolic__result_chans__0_1_load_en | __systolic__result_chans__0_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9144;
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
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_6052 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_1_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign and_6126 = ~should_output & p3_stage_done;
  assign and_6127 = should_output & p3_stage_done;
  assign systolic__hor_chans__0_1_valid_load_en = p0_load_en | systolic__hor_chans__0_1_valid_inv;
  assign systolic__vert_chans__0_1_valid_load_en = p1_load_en | systolic__vert_chans__0_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6052[1] & should_output == one_hot_6052[0];
  assign concat_6128 = {and_6126, and_6127};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_361_1_case_1 = 2'h0;
  assign unexpand_for_next_value_361_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_valid_and_ready_txfr = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_load_en;
  assign __systolic__vert_chans__1_1_valid_and_ready_txfr = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_load_en;
  assign __systolic__result_chans__0_1_valid_and_all_active_outputs_ready = __systolic__result_chans__0_1_vld_buf & or_9144;
  assign __systolic__result_chans__0_1_valid_and_ready_txfr = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_load_en;
  assign systolic__hor_chans__0_1_load_en = systolic__hor_chans__0_1_vld & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = systolic__vert_chans__0_1_vld & systolic__vert_chans__0_1_valid_load_en;
  assign or_8961 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_6129 = 32'h0000_0000 & {32{concat_6128[0]}} | new_accum & {32{concat_6128[1]}};
  assign or_6130 = and_6126 | and_6127;
  assign one_hot_sel_6135 = unexpand_for_next_value_361_1_case_1 & {2{concat_6128[0]}} | unexpand_for_next_value_361_1_case_0 & {2{concat_6128[1]}};
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
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_6130 ? one_hot_sel_6135 : ____state_1;
      ____state_0 <= or_6130 ? one_hot_sel_6129 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8961))) or_8961) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8961))) or_8961) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
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
  wire should_output;
  wire __systolic__result_chans__0_2_vld_buf;
  wire __systolic__result_chans__0_2_not_has_been_sent;
  wire systolic__result_chans__0_2_valid_inv;
  wire __systolic__result_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_2_valid_load_en;
  wire systolic__result_chans__0_2_load_en;
  wire or_9161;
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
  wire [2:0] one_hot_6293;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_2_valid_inv;
  wire systolic__vert_chans__0_2_valid_inv;
  wire and_6367;
  wire and_6368;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire systolic__vert_chans__0_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6369;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_391_1_case_1;
  wire [1:0] unexpand_for_next_value_391_1_case_0;
  wire __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_3_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_2_valid_and_ready_txfr;
  wire __systolic__result_chans__0_2_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_2_valid_and_ready_txfr;
  wire systolic__hor_chans__0_2_load_en;
  wire systolic__vert_chans__0_2_load_en;
  wire or_8965;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_6370;
  wire or_6371;
  wire [1:0] one_hot_sel_6376;
  wire __systolic__hor_chans__0_3_not_stage_load;
  wire __systolic__hor_chans__0_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_2_not_stage_load;
  wire __systolic__result_chans__0_2_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__0_2_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__0_2_not_has_been_sent = ~__systolic__result_chans__0_2_has_been_sent_reg;
  assign systolic__result_chans__0_2_valid_inv = ~__systolic__result_chans__0_2_valid_reg;
  assign __systolic__result_chans__0_2_valid_and_not_has_been_sent = __systolic__result_chans__0_2_vld_buf & __systolic__result_chans__0_2_not_has_been_sent;
  assign systolic__result_chans__0_2_valid_load_en = systolic__result_chans__0_2_rdy | systolic__result_chans__0_2_valid_inv;
  assign systolic__result_chans__0_2_load_en = __systolic__result_chans__0_2_valid_and_not_has_been_sent & systolic__result_chans__0_2_valid_load_en;
  assign or_9161 = ~should_output | systolic__result_chans__0_2_load_en | __systolic__result_chans__0_2_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9161;
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
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_6293 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_2_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign systolic__vert_chans__0_2_valid_inv = ~__systolic__vert_chans__0_2_valid_reg;
  assign and_6367 = ~should_output & p3_stage_done;
  assign and_6368 = should_output & p3_stage_done;
  assign systolic__hor_chans__0_2_valid_load_en = p0_load_en | systolic__hor_chans__0_2_valid_inv;
  assign systolic__vert_chans__0_2_valid_load_en = p1_load_en | systolic__vert_chans__0_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6293[1] & should_output == one_hot_6293[0];
  assign concat_6369 = {and_6367, and_6368};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_391_1_case_1 = 2'h0;
  assign unexpand_for_next_value_391_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_3_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_3_valid_and_ready_txfr = __systolic__hor_chans__0_3_valid_and_not_has_been_sent & systolic__hor_chans__0_3_load_en;
  assign __systolic__vert_chans__1_2_valid_and_ready_txfr = __systolic__vert_chans__1_2_valid_and_not_has_been_sent & systolic__vert_chans__1_2_load_en;
  assign __systolic__result_chans__0_2_valid_and_all_active_outputs_ready = __systolic__result_chans__0_2_vld_buf & or_9161;
  assign __systolic__result_chans__0_2_valid_and_ready_txfr = __systolic__result_chans__0_2_valid_and_not_has_been_sent & systolic__result_chans__0_2_load_en;
  assign systolic__hor_chans__0_2_load_en = systolic__hor_chans__0_2_vld & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__vert_chans__0_2_load_en = systolic__vert_chans__0_2_vld & systolic__vert_chans__0_2_valid_load_en;
  assign or_8965 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_6370 = 32'h0000_0000 & {32{concat_6369[0]}} | new_accum & {32{concat_6369[1]}};
  assign or_6371 = and_6367 | and_6368;
  assign one_hot_sel_6376 = unexpand_for_next_value_391_1_case_1 & {2{concat_6369[0]}} | unexpand_for_next_value_391_1_case_0 & {2{concat_6369[1]}};
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
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_6371 ? one_hot_sel_6376 : ____state_1;
      ____state_0 <= or_6371 ? one_hot_sel_6370 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8965))) or_8965) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8965))) or_8965) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_3_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__0_3,
  input wire systolic__hor_chans__0_3_vld,
  input wire systolic__hor_chans__0_4_rdy,
  input wire systolic__result_chans__0_3_rdy,
  input wire [31:0] systolic__vert_chans__0_3,
  input wire systolic__vert_chans__0_3_vld,
  input wire systolic__vert_chans__1_3_rdy,
  output wire systolic__hor_chans__0_3_rdy,
  output wire [31:0] systolic__hor_chans__0_4,
  output wire systolic__hor_chans__0_4_vld,
  output wire [31:0] systolic__result_chans__0_3,
  output wire systolic__result_chans__0_3_vld,
  output wire systolic__vert_chans__0_3_rdy,
  output wire [31:0] systolic__vert_chans__1_3,
  output wire systolic__vert_chans__1_3_vld
);
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__0_4_has_been_sent_reg;
  reg __systolic__vert_chans__1_3_has_been_sent_reg;
  reg __systolic__result_chans__0_3_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__0_3_reg;
  reg __systolic__hor_chans__0_3_valid_reg;
  reg [31:0] __systolic__vert_chans__0_3_reg;
  reg __systolic__vert_chans__0_3_valid_reg;
  reg [31:0] __systolic__hor_chans__0_4_reg;
  reg __systolic__hor_chans__0_4_valid_reg;
  reg [31:0] __systolic__vert_chans__1_3_reg;
  reg __systolic__vert_chans__1_3_valid_reg;
  reg [31:0] __systolic__result_chans__0_3_reg;
  reg __systolic__result_chans__0_3_valid_reg;
  wire should_output;
  wire __systolic__result_chans__0_3_vld_buf;
  wire __systolic__result_chans__0_3_not_has_been_sent;
  wire systolic__result_chans__0_3_valid_inv;
  wire __systolic__result_chans__0_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_3_valid_load_en;
  wire systolic__result_chans__0_3_load_en;
  wire or_9178;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__0_4_vld_buf;
  wire __systolic__hor_chans__0_4_not_has_been_sent;
  wire systolic__hor_chans__0_4_valid_inv;
  wire __systolic__vert_chans__1_3_not_has_been_sent;
  wire systolic__vert_chans__1_3_valid_inv;
  wire __systolic__hor_chans__0_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_4_valid_load_en;
  wire __systolic__vert_chans__1_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_3_valid_load_en;
  wire systolic__hor_chans__0_4_load_en;
  wire systolic__vert_chans__1_3_load_en;
  wire __systolic__hor_chans__0_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_3_has_sent_or_is_ready;
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
  wire [2:0] one_hot_6534;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_3_valid_inv;
  wire systolic__vert_chans__0_3_valid_inv;
  wire and_6608;
  wire and_6609;
  wire systolic__hor_chans__0_3_valid_load_en;
  wire systolic__vert_chans__0_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6610;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_421_1_case_1;
  wire [1:0] unexpand_for_next_value_421_1_case_0;
  wire __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_4_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_3_valid_and_ready_txfr;
  wire __systolic__result_chans__0_3_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_3_valid_and_ready_txfr;
  wire systolic__hor_chans__0_3_load_en;
  wire systolic__vert_chans__0_3_load_en;
  wire or_8969;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_6611;
  wire or_6612;
  wire [1:0] one_hot_sel_6617;
  wire __systolic__hor_chans__0_4_not_stage_load;
  wire __systolic__hor_chans__0_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_3_not_stage_load;
  wire __systolic__result_chans__0_3_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__0_3_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__0_3_not_has_been_sent = ~__systolic__result_chans__0_3_has_been_sent_reg;
  assign systolic__result_chans__0_3_valid_inv = ~__systolic__result_chans__0_3_valid_reg;
  assign __systolic__result_chans__0_3_valid_and_not_has_been_sent = __systolic__result_chans__0_3_vld_buf & __systolic__result_chans__0_3_not_has_been_sent;
  assign systolic__result_chans__0_3_valid_load_en = systolic__result_chans__0_3_rdy | systolic__result_chans__0_3_valid_inv;
  assign systolic__result_chans__0_3_load_en = __systolic__result_chans__0_3_valid_and_not_has_been_sent & systolic__result_chans__0_3_valid_load_en;
  assign or_9178 = ~should_output | systolic__result_chans__0_3_load_en | __systolic__result_chans__0_3_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9178;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__0_4_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__0_4_not_has_been_sent = ~__systolic__hor_chans__0_4_has_been_sent_reg;
  assign systolic__hor_chans__0_4_valid_inv = ~__systolic__hor_chans__0_4_valid_reg;
  assign __systolic__vert_chans__1_3_not_has_been_sent = ~__systolic__vert_chans__1_3_has_been_sent_reg;
  assign systolic__vert_chans__1_3_valid_inv = ~__systolic__vert_chans__1_3_valid_reg;
  assign __systolic__hor_chans__0_4_valid_and_not_has_been_sent = __systolic__hor_chans__0_4_vld_buf & __systolic__hor_chans__0_4_not_has_been_sent;
  assign systolic__hor_chans__0_4_valid_load_en = systolic__hor_chans__0_4_rdy | systolic__hor_chans__0_4_valid_inv;
  assign __systolic__vert_chans__1_3_valid_and_not_has_been_sent = __systolic__hor_chans__0_4_vld_buf & __systolic__vert_chans__1_3_not_has_been_sent;
  assign systolic__vert_chans__1_3_valid_load_en = systolic__vert_chans__1_3_rdy | systolic__vert_chans__1_3_valid_inv;
  assign systolic__hor_chans__0_4_load_en = __systolic__hor_chans__0_4_valid_and_not_has_been_sent & systolic__hor_chans__0_4_valid_load_en;
  assign systolic__vert_chans__1_3_load_en = __systolic__vert_chans__1_3_valid_and_not_has_been_sent & systolic__vert_chans__1_3_valid_load_en;
  assign __systolic__hor_chans__0_4_has_sent_or_is_ready = systolic__hor_chans__0_4_load_en | __systolic__hor_chans__0_4_has_been_sent_reg;
  assign __systolic__vert_chans__1_3_has_sent_or_is_ready = systolic__vert_chans__1_3_load_en | __systolic__vert_chans__1_3_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__0_4_has_sent_or_is_ready & __systolic__vert_chans__1_3_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__0_3_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_6534 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_3_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_3_valid_inv = ~__systolic__hor_chans__0_3_valid_reg;
  assign systolic__vert_chans__0_3_valid_inv = ~__systolic__vert_chans__0_3_valid_reg;
  assign and_6608 = ~should_output & p3_stage_done;
  assign and_6609 = should_output & p3_stage_done;
  assign systolic__hor_chans__0_3_valid_load_en = p0_load_en | systolic__hor_chans__0_3_valid_inv;
  assign systolic__vert_chans__0_3_valid_load_en = p1_load_en | systolic__vert_chans__0_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6534[1] & should_output == one_hot_6534[0];
  assign concat_6610 = {and_6608, and_6609};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_421_1_case_1 = 2'h0;
  assign unexpand_for_next_value_421_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_4_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_4_valid_and_ready_txfr = __systolic__hor_chans__0_4_valid_and_not_has_been_sent & systolic__hor_chans__0_4_load_en;
  assign __systolic__vert_chans__1_3_valid_and_ready_txfr = __systolic__vert_chans__1_3_valid_and_not_has_been_sent & systolic__vert_chans__1_3_load_en;
  assign __systolic__result_chans__0_3_valid_and_all_active_outputs_ready = __systolic__result_chans__0_3_vld_buf & or_9178;
  assign __systolic__result_chans__0_3_valid_and_ready_txfr = __systolic__result_chans__0_3_valid_and_not_has_been_sent & systolic__result_chans__0_3_load_en;
  assign systolic__hor_chans__0_3_load_en = systolic__hor_chans__0_3_vld & systolic__hor_chans__0_3_valid_load_en;
  assign systolic__vert_chans__0_3_load_en = systolic__vert_chans__0_3_vld & systolic__vert_chans__0_3_valid_load_en;
  assign or_8969 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_6611 = 32'h0000_0000 & {32{concat_6610[0]}} | new_accum & {32{concat_6610[1]}};
  assign or_6612 = and_6608 | and_6609;
  assign one_hot_sel_6617 = unexpand_for_next_value_421_1_case_1 & {2{concat_6610[0]}} | unexpand_for_next_value_421_1_case_0 & {2{concat_6610[1]}};
  assign __systolic__hor_chans__0_4_not_stage_load = ~__systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_4_has_been_sent_reg_load_en = __systolic__hor_chans__0_4_valid_and_ready_txfr | __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_3_has_been_sent_reg_load_en = __systolic__vert_chans__1_3_valid_and_ready_txfr | __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_3_not_stage_load = ~__systolic__result_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_3_has_been_sent_reg_load_en = __systolic__result_chans__0_3_valid_and_ready_txfr | __systolic__result_chans__0_3_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_3_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__0_3_reg : p1_b;
    p2_prod <= p2_load_en ? prod : p2_prod;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__0_4_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__1_3_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__0_3_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_3_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_3_valid_reg <= 1'h0;
      __systolic__vert_chans__0_3_reg <= 32'h0000_0000;
      __systolic__vert_chans__0_3_valid_reg <= 1'h0;
      __systolic__hor_chans__0_4_reg <= 32'h0000_0000;
      __systolic__hor_chans__0_4_valid_reg <= 1'h0;
      __systolic__vert_chans__1_3_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_3_valid_reg <= 1'h0;
      __systolic__result_chans__0_3_reg <= 32'h0000_0000;
      __systolic__result_chans__0_3_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_6612 ? one_hot_sel_6617 : ____state_1;
      ____state_0 <= or_6612 ? one_hot_sel_6611 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__0_3_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__0_4_has_been_sent_reg <= __systolic__hor_chans__0_4_has_been_sent_reg_load_en ? __systolic__hor_chans__0_4_not_stage_load : __systolic__hor_chans__0_4_has_been_sent_reg;
      __systolic__vert_chans__1_3_has_been_sent_reg <= __systolic__vert_chans__1_3_has_been_sent_reg_load_en ? __systolic__hor_chans__0_4_not_stage_load : __systolic__vert_chans__1_3_has_been_sent_reg;
      __systolic__result_chans__0_3_has_been_sent_reg <= __systolic__result_chans__0_3_has_been_sent_reg_load_en ? __systolic__result_chans__0_3_not_stage_load : __systolic__result_chans__0_3_has_been_sent_reg;
      __systolic__hor_chans__0_3_reg <= systolic__hor_chans__0_3_load_en ? systolic__hor_chans__0_3 : __systolic__hor_chans__0_3_reg;
      __systolic__hor_chans__0_3_valid_reg <= systolic__hor_chans__0_3_valid_load_en ? systolic__hor_chans__0_3_vld : __systolic__hor_chans__0_3_valid_reg;
      __systolic__vert_chans__0_3_reg <= systolic__vert_chans__0_3_load_en ? systolic__vert_chans__0_3 : __systolic__vert_chans__0_3_reg;
      __systolic__vert_chans__0_3_valid_reg <= systolic__vert_chans__0_3_valid_load_en ? systolic__vert_chans__0_3_vld : __systolic__vert_chans__0_3_valid_reg;
      __systolic__hor_chans__0_4_reg <= systolic__hor_chans__0_4_load_en ? p1_a : __systolic__hor_chans__0_4_reg;
      __systolic__hor_chans__0_4_valid_reg <= systolic__hor_chans__0_4_valid_load_en ? __systolic__hor_chans__0_4_valid_and_not_has_been_sent : __systolic__hor_chans__0_4_valid_reg;
      __systolic__vert_chans__1_3_reg <= systolic__vert_chans__1_3_load_en ? p1_b : __systolic__vert_chans__1_3_reg;
      __systolic__vert_chans__1_3_valid_reg <= systolic__vert_chans__1_3_valid_load_en ? __systolic__vert_chans__1_3_valid_and_not_has_been_sent : __systolic__vert_chans__1_3_valid_reg;
      __systolic__result_chans__0_3_reg <= systolic__result_chans__0_3_load_en ? new_accum : __systolic__result_chans__0_3_reg;
      __systolic__result_chans__0_3_valid_reg <= systolic__result_chans__0_3_valid_load_en ? __systolic__result_chans__0_3_valid_and_not_has_been_sent : __systolic__result_chans__0_3_valid_reg;
    end
  end
  assign systolic__hor_chans__0_3_rdy = systolic__hor_chans__0_3_load_en;
  assign systolic__hor_chans__0_4 = __systolic__hor_chans__0_4_reg;
  assign systolic__hor_chans__0_4_vld = __systolic__hor_chans__0_4_valid_reg;
  assign systolic__result_chans__0_3 = __systolic__result_chans__0_3_reg;
  assign systolic__result_chans__0_3_vld = __systolic__result_chans__0_3_valid_reg;
  assign systolic__vert_chans__0_3_rdy = systolic__vert_chans__0_3_load_en;
  assign systolic__vert_chans__1_3 = __systolic__vert_chans__1_3_reg;
  assign systolic__vert_chans__1_3_vld = __systolic__vert_chans__1_3_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8969))) or_8969) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8969))) or_8969) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_4_next(
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
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
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
  wire should_output;
  wire __systolic__result_chans__1_0_vld_buf;
  wire __systolic__result_chans__1_0_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_inv;
  wire __systolic__result_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_0_valid_load_en;
  wire systolic__result_chans__1_0_load_en;
  wire or_9195;
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
  wire [2:0] one_hot_6775;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_0_valid_inv;
  wire systolic__vert_chans__1_0_valid_inv;
  wire and_6849;
  wire and_6850;
  wire systolic__hor_chans__1_0_valid_load_en;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6851;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_451_1_case_1;
  wire [1:0] unexpand_for_next_value_451_1_case_0;
  wire __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_0_valid_and_ready_txfr;
  wire __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_0_valid_and_ready_txfr;
  wire systolic__hor_chans__1_0_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire or_8973;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_6852;
  wire or_6853;
  wire [1:0] one_hot_sel_6858;
  wire __systolic__hor_chans__1_1_not_stage_load;
  wire __systolic__hor_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_0_not_stage_load;
  wire __systolic__result_chans__1_0_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__1_0_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__1_0_not_has_been_sent = ~__systolic__result_chans__1_0_has_been_sent_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign __systolic__result_chans__1_0_valid_and_not_has_been_sent = __systolic__result_chans__1_0_vld_buf & __systolic__result_chans__1_0_not_has_been_sent;
  assign systolic__result_chans__1_0_valid_load_en = systolic__result_chans__1_0_rdy | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_0_load_en = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_valid_load_en;
  assign or_9195 = ~should_output | systolic__result_chans__1_0_load_en | __systolic__result_chans__1_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9195;
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
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_6775 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_0_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign and_6849 = ~should_output & p3_stage_done;
  assign and_6850 = should_output & p3_stage_done;
  assign systolic__hor_chans__1_0_valid_load_en = p0_load_en | systolic__hor_chans__1_0_valid_inv;
  assign systolic__vert_chans__1_0_valid_load_en = p1_load_en | systolic__vert_chans__1_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6775[1] & should_output == one_hot_6775[0];
  assign concat_6851 = {and_6849, and_6850};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_451_1_case_1 = 2'h0;
  assign unexpand_for_next_value_451_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_valid_and_ready_txfr = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_load_en;
  assign __systolic__vert_chans__2_0_valid_and_ready_txfr = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_load_en;
  assign __systolic__result_chans__1_0_valid_and_all_active_outputs_ready = __systolic__result_chans__1_0_vld_buf & or_9195;
  assign __systolic__result_chans__1_0_valid_and_ready_txfr = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_load_en;
  assign systolic__hor_chans__1_0_load_en = systolic__hor_chans__1_0_vld & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = systolic__vert_chans__1_0_vld & systolic__vert_chans__1_0_valid_load_en;
  assign or_8973 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_6852 = 32'h0000_0000 & {32{concat_6851[0]}} | new_accum & {32{concat_6851[1]}};
  assign or_6853 = and_6849 | and_6850;
  assign one_hot_sel_6858 = unexpand_for_next_value_451_1_case_1 & {2{concat_6851[0]}} | unexpand_for_next_value_451_1_case_0 & {2{concat_6851[1]}};
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
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_6853 ? one_hot_sel_6858 : ____state_1;
      ____state_0 <= or_6853 ? one_hot_sel_6852 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8973))) or_8973) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8973))) or_8973) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_5_next(
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
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
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
  wire should_output;
  wire __systolic__result_chans__1_1_vld_buf;
  wire __systolic__result_chans__1_1_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_inv;
  wire __systolic__result_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_1_valid_load_en;
  wire systolic__result_chans__1_1_load_en;
  wire or_9212;
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
  wire [2:0] one_hot_7016;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_1_valid_inv;
  wire systolic__vert_chans__1_1_valid_inv;
  wire and_7090;
  wire and_7091;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_7092;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_481_1_case_1;
  wire [1:0] unexpand_for_next_value_481_1_case_0;
  wire __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_1_valid_and_ready_txfr;
  wire __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_1_valid_and_ready_txfr;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire or_8977;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_7093;
  wire or_7094;
  wire [1:0] one_hot_sel_7099;
  wire __systolic__hor_chans__1_2_not_stage_load;
  wire __systolic__hor_chans__1_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_1_not_stage_load;
  wire __systolic__result_chans__1_1_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__1_1_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__1_1_not_has_been_sent = ~__systolic__result_chans__1_1_has_been_sent_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign __systolic__result_chans__1_1_valid_and_not_has_been_sent = __systolic__result_chans__1_1_vld_buf & __systolic__result_chans__1_1_not_has_been_sent;
  assign systolic__result_chans__1_1_valid_load_en = systolic__result_chans__1_1_rdy | systolic__result_chans__1_1_valid_inv;
  assign systolic__result_chans__1_1_load_en = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_valid_load_en;
  assign or_9212 = ~should_output | systolic__result_chans__1_1_load_en | __systolic__result_chans__1_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9212;
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
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_7016 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_1_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign and_7090 = ~should_output & p3_stage_done;
  assign and_7091 = should_output & p3_stage_done;
  assign systolic__hor_chans__1_1_valid_load_en = p0_load_en | systolic__hor_chans__1_1_valid_inv;
  assign systolic__vert_chans__1_1_valid_load_en = p1_load_en | systolic__vert_chans__1_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_7016[1] & should_output == one_hot_7016[0];
  assign concat_7092 = {and_7090, and_7091};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_481_1_case_1 = 2'h0;
  assign unexpand_for_next_value_481_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_valid_and_ready_txfr = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_load_en;
  assign __systolic__vert_chans__2_1_valid_and_ready_txfr = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_load_en;
  assign __systolic__result_chans__1_1_valid_and_all_active_outputs_ready = __systolic__result_chans__1_1_vld_buf & or_9212;
  assign __systolic__result_chans__1_1_valid_and_ready_txfr = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_load_en;
  assign systolic__hor_chans__1_1_load_en = systolic__hor_chans__1_1_vld & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = systolic__vert_chans__1_1_vld & systolic__vert_chans__1_1_valid_load_en;
  assign or_8977 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_7093 = 32'h0000_0000 & {32{concat_7092[0]}} | new_accum & {32{concat_7092[1]}};
  assign or_7094 = and_7090 | and_7091;
  assign one_hot_sel_7099 = unexpand_for_next_value_481_1_case_1 & {2{concat_7092[0]}} | unexpand_for_next_value_481_1_case_0 & {2{concat_7092[1]}};
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
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_7094 ? one_hot_sel_7099 : ____state_1;
      ____state_0 <= or_7094 ? one_hot_sel_7093 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8977))) or_8977) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8977))) or_8977) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_6_next(
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
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
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
  wire should_output;
  wire __systolic__result_chans__1_2_vld_buf;
  wire __systolic__result_chans__1_2_not_has_been_sent;
  wire systolic__result_chans__1_2_valid_inv;
  wire __systolic__result_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_2_valid_load_en;
  wire systolic__result_chans__1_2_load_en;
  wire or_9229;
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
  wire [2:0] one_hot_7257;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_2_valid_inv;
  wire systolic__vert_chans__1_2_valid_inv;
  wire and_7331;
  wire and_7332;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire systolic__vert_chans__1_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_7333;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_511_1_case_1;
  wire [1:0] unexpand_for_next_value_511_1_case_0;
  wire __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_3_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_2_valid_and_ready_txfr;
  wire __systolic__result_chans__1_2_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_2_valid_and_ready_txfr;
  wire systolic__hor_chans__1_2_load_en;
  wire systolic__vert_chans__1_2_load_en;
  wire or_8981;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_7334;
  wire or_7335;
  wire [1:0] one_hot_sel_7340;
  wire __systolic__hor_chans__1_3_not_stage_load;
  wire __systolic__hor_chans__1_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_2_not_stage_load;
  wire __systolic__result_chans__1_2_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__1_2_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__1_2_not_has_been_sent = ~__systolic__result_chans__1_2_has_been_sent_reg;
  assign systolic__result_chans__1_2_valid_inv = ~__systolic__result_chans__1_2_valid_reg;
  assign __systolic__result_chans__1_2_valid_and_not_has_been_sent = __systolic__result_chans__1_2_vld_buf & __systolic__result_chans__1_2_not_has_been_sent;
  assign systolic__result_chans__1_2_valid_load_en = systolic__result_chans__1_2_rdy | systolic__result_chans__1_2_valid_inv;
  assign systolic__result_chans__1_2_load_en = __systolic__result_chans__1_2_valid_and_not_has_been_sent & systolic__result_chans__1_2_valid_load_en;
  assign or_9229 = ~should_output | systolic__result_chans__1_2_load_en | __systolic__result_chans__1_2_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9229;
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
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_7257 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_2_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign systolic__vert_chans__1_2_valid_inv = ~__systolic__vert_chans__1_2_valid_reg;
  assign and_7331 = ~should_output & p3_stage_done;
  assign and_7332 = should_output & p3_stage_done;
  assign systolic__hor_chans__1_2_valid_load_en = p0_load_en | systolic__hor_chans__1_2_valid_inv;
  assign systolic__vert_chans__1_2_valid_load_en = p1_load_en | systolic__vert_chans__1_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_7257[1] & should_output == one_hot_7257[0];
  assign concat_7333 = {and_7331, and_7332};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_511_1_case_1 = 2'h0;
  assign unexpand_for_next_value_511_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_3_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_3_valid_and_ready_txfr = __systolic__hor_chans__1_3_valid_and_not_has_been_sent & systolic__hor_chans__1_3_load_en;
  assign __systolic__vert_chans__2_2_valid_and_ready_txfr = __systolic__vert_chans__2_2_valid_and_not_has_been_sent & systolic__vert_chans__2_2_load_en;
  assign __systolic__result_chans__1_2_valid_and_all_active_outputs_ready = __systolic__result_chans__1_2_vld_buf & or_9229;
  assign __systolic__result_chans__1_2_valid_and_ready_txfr = __systolic__result_chans__1_2_valid_and_not_has_been_sent & systolic__result_chans__1_2_load_en;
  assign systolic__hor_chans__1_2_load_en = systolic__hor_chans__1_2_vld & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__vert_chans__1_2_load_en = systolic__vert_chans__1_2_vld & systolic__vert_chans__1_2_valid_load_en;
  assign or_8981 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_7334 = 32'h0000_0000 & {32{concat_7333[0]}} | new_accum & {32{concat_7333[1]}};
  assign or_7335 = and_7331 | and_7332;
  assign one_hot_sel_7340 = unexpand_for_next_value_511_1_case_1 & {2{concat_7333[0]}} | unexpand_for_next_value_511_1_case_0 & {2{concat_7333[1]}};
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
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_7335 ? one_hot_sel_7340 : ____state_1;
      ____state_0 <= or_7335 ? one_hot_sel_7334 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8981))) or_8981) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8981))) or_8981) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_7_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic__hor_chans__1_3,
  input wire systolic__hor_chans__1_3_vld,
  input wire systolic__hor_chans__1_4_rdy,
  input wire systolic__result_chans__1_3_rdy,
  input wire [31:0] systolic__vert_chans__1_3,
  input wire systolic__vert_chans__1_3_vld,
  input wire systolic__vert_chans__2_3_rdy,
  output wire systolic__hor_chans__1_3_rdy,
  output wire [31:0] systolic__hor_chans__1_4,
  output wire systolic__hor_chans__1_4_vld,
  output wire [31:0] systolic__result_chans__1_3,
  output wire systolic__result_chans__1_3_vld,
  output wire systolic__vert_chans__1_3_rdy,
  output wire [31:0] systolic__vert_chans__2_3,
  output wire systolic__vert_chans__2_3_vld
);
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic__hor_chans__1_4_has_been_sent_reg;
  reg __systolic__vert_chans__2_3_has_been_sent_reg;
  reg __systolic__result_chans__1_3_has_been_sent_reg;
  reg [31:0] __systolic__hor_chans__1_3_reg;
  reg __systolic__hor_chans__1_3_valid_reg;
  reg [31:0] __systolic__vert_chans__1_3_reg;
  reg __systolic__vert_chans__1_3_valid_reg;
  reg [31:0] __systolic__hor_chans__1_4_reg;
  reg __systolic__hor_chans__1_4_valid_reg;
  reg [31:0] __systolic__vert_chans__2_3_reg;
  reg __systolic__vert_chans__2_3_valid_reg;
  reg [31:0] __systolic__result_chans__1_3_reg;
  reg __systolic__result_chans__1_3_valid_reg;
  wire should_output;
  wire __systolic__result_chans__1_3_vld_buf;
  wire __systolic__result_chans__1_3_not_has_been_sent;
  wire systolic__result_chans__1_3_valid_inv;
  wire __systolic__result_chans__1_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_3_valid_load_en;
  wire systolic__result_chans__1_3_load_en;
  wire or_9246;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic__hor_chans__1_4_vld_buf;
  wire __systolic__hor_chans__1_4_not_has_been_sent;
  wire systolic__hor_chans__1_4_valid_inv;
  wire __systolic__vert_chans__2_3_not_has_been_sent;
  wire systolic__vert_chans__2_3_valid_inv;
  wire __systolic__hor_chans__1_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_4_valid_load_en;
  wire __systolic__vert_chans__2_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_3_valid_load_en;
  wire systolic__hor_chans__1_4_load_en;
  wire systolic__vert_chans__2_3_load_en;
  wire __systolic__hor_chans__1_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_3_has_sent_or_is_ready;
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
  wire [2:0] one_hot_7498;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_3_valid_inv;
  wire systolic__vert_chans__1_3_valid_inv;
  wire and_7572;
  wire and_7573;
  wire systolic__hor_chans__1_3_valid_load_en;
  wire systolic__vert_chans__1_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_7574;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_541_1_case_1;
  wire [1:0] unexpand_for_next_value_541_1_case_0;
  wire __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_4_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_3_valid_and_ready_txfr;
  wire __systolic__result_chans__1_3_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_3_valid_and_ready_txfr;
  wire systolic__hor_chans__1_3_load_en;
  wire systolic__vert_chans__1_3_load_en;
  wire or_8985;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_7575;
  wire or_7576;
  wire [1:0] one_hot_sel_7581;
  wire __systolic__hor_chans__1_4_not_stage_load;
  wire __systolic__hor_chans__1_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_3_not_stage_load;
  wire __systolic__result_chans__1_3_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__1_3_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__1_3_not_has_been_sent = ~__systolic__result_chans__1_3_has_been_sent_reg;
  assign systolic__result_chans__1_3_valid_inv = ~__systolic__result_chans__1_3_valid_reg;
  assign __systolic__result_chans__1_3_valid_and_not_has_been_sent = __systolic__result_chans__1_3_vld_buf & __systolic__result_chans__1_3_not_has_been_sent;
  assign systolic__result_chans__1_3_valid_load_en = systolic__result_chans__1_3_rdy | systolic__result_chans__1_3_valid_inv;
  assign systolic__result_chans__1_3_load_en = __systolic__result_chans__1_3_valid_and_not_has_been_sent & systolic__result_chans__1_3_valid_load_en;
  assign or_9246 = ~should_output | systolic__result_chans__1_3_load_en | __systolic__result_chans__1_3_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9246;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | rst | p3_not_valid;
  assign __systolic__hor_chans__1_4_vld_buf = p1_valid & p2_enable;
  assign __systolic__hor_chans__1_4_not_has_been_sent = ~__systolic__hor_chans__1_4_has_been_sent_reg;
  assign systolic__hor_chans__1_4_valid_inv = ~__systolic__hor_chans__1_4_valid_reg;
  assign __systolic__vert_chans__2_3_not_has_been_sent = ~__systolic__vert_chans__2_3_has_been_sent_reg;
  assign systolic__vert_chans__2_3_valid_inv = ~__systolic__vert_chans__2_3_valid_reg;
  assign __systolic__hor_chans__1_4_valid_and_not_has_been_sent = __systolic__hor_chans__1_4_vld_buf & __systolic__hor_chans__1_4_not_has_been_sent;
  assign systolic__hor_chans__1_4_valid_load_en = systolic__hor_chans__1_4_rdy | systolic__hor_chans__1_4_valid_inv;
  assign __systolic__vert_chans__2_3_valid_and_not_has_been_sent = __systolic__hor_chans__1_4_vld_buf & __systolic__vert_chans__2_3_not_has_been_sent;
  assign systolic__vert_chans__2_3_valid_load_en = systolic__vert_chans__2_3_rdy | systolic__vert_chans__2_3_valid_inv;
  assign systolic__hor_chans__1_4_load_en = __systolic__hor_chans__1_4_valid_and_not_has_been_sent & systolic__hor_chans__1_4_valid_load_en;
  assign systolic__vert_chans__2_3_load_en = __systolic__vert_chans__2_3_valid_and_not_has_been_sent & systolic__vert_chans__2_3_valid_load_en;
  assign __systolic__hor_chans__1_4_has_sent_or_is_ready = systolic__hor_chans__1_4_load_en | __systolic__hor_chans__1_4_has_been_sent_reg;
  assign __systolic__vert_chans__2_3_has_sent_or_is_ready = systolic__vert_chans__2_3_load_en | __systolic__vert_chans__2_3_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic__hor_chans__1_4_has_sent_or_is_ready & __systolic__vert_chans__2_3_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_load_en = p2_data_enable | rst;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_load_en | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__1_3_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_load_en = p1_data_enable | rst;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_7498 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_3_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_3_valid_inv = ~__systolic__hor_chans__1_3_valid_reg;
  assign systolic__vert_chans__1_3_valid_inv = ~__systolic__vert_chans__1_3_valid_reg;
  assign and_7572 = ~should_output & p3_stage_done;
  assign and_7573 = should_output & p3_stage_done;
  assign systolic__hor_chans__1_3_valid_load_en = p0_load_en | systolic__hor_chans__1_3_valid_inv;
  assign systolic__vert_chans__1_3_valid_load_en = p1_load_en | systolic__vert_chans__1_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_7498[1] & should_output == one_hot_7498[0];
  assign concat_7574 = {and_7572, and_7573};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_541_1_case_1 = 2'h0;
  assign unexpand_for_next_value_541_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_4_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_4_valid_and_ready_txfr = __systolic__hor_chans__1_4_valid_and_not_has_been_sent & systolic__hor_chans__1_4_load_en;
  assign __systolic__vert_chans__2_3_valid_and_ready_txfr = __systolic__vert_chans__2_3_valid_and_not_has_been_sent & systolic__vert_chans__2_3_load_en;
  assign __systolic__result_chans__1_3_valid_and_all_active_outputs_ready = __systolic__result_chans__1_3_vld_buf & or_9246;
  assign __systolic__result_chans__1_3_valid_and_ready_txfr = __systolic__result_chans__1_3_valid_and_not_has_been_sent & systolic__result_chans__1_3_load_en;
  assign systolic__hor_chans__1_3_load_en = systolic__hor_chans__1_3_vld & systolic__hor_chans__1_3_valid_load_en;
  assign systolic__vert_chans__1_3_load_en = systolic__vert_chans__1_3_vld & systolic__vert_chans__1_3_valid_load_en;
  assign or_8985 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_7575 = 32'h0000_0000 & {32{concat_7574[0]}} | new_accum & {32{concat_7574[1]}};
  assign or_7576 = and_7572 | and_7573;
  assign one_hot_sel_7581 = unexpand_for_next_value_541_1_case_1 & {2{concat_7574[0]}} | unexpand_for_next_value_541_1_case_0 & {2{concat_7574[1]}};
  assign __systolic__hor_chans__1_4_not_stage_load = ~__systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_4_has_been_sent_reg_load_en = __systolic__hor_chans__1_4_valid_and_ready_txfr | __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_3_has_been_sent_reg_load_en = __systolic__vert_chans__2_3_valid_and_ready_txfr | __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_3_not_stage_load = ~__systolic__result_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_3_has_been_sent_reg_load_en = __systolic__result_chans__1_3_valid_and_ready_txfr | __systolic__result_chans__1_3_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_3_reg : p0_a;
    p1_a <= p1_load_en ? p0_a : p1_a;
    p1_b <= p1_load_en ? __systolic__vert_chans__1_3_reg : p1_b;
    p2_prod <= p2_load_en ? prod : p2_prod;
  end
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__1_4_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__2_3_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__1_3_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_3_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_3_valid_reg <= 1'h0;
      __systolic__vert_chans__1_3_reg <= 32'h0000_0000;
      __systolic__vert_chans__1_3_valid_reg <= 1'h0;
      __systolic__hor_chans__1_4_reg <= 32'h0000_0000;
      __systolic__hor_chans__1_4_valid_reg <= 1'h0;
      __systolic__vert_chans__2_3_reg <= 32'h0000_0000;
      __systolic__vert_chans__2_3_valid_reg <= 1'h0;
      __systolic__result_chans__1_3_reg <= 32'h0000_0000;
      __systolic__result_chans__1_3_valid_reg <= 1'h0;
    end else begin
      ____state_1 <= or_7576 ? one_hot_sel_7581 : ____state_1;
      ____state_0 <= or_7576 ? one_hot_sel_7575 : ____state_0;
      p0_valid <= p0_enable ? __systolic__hor_chans__1_3_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic__hor_chans__1_4_has_been_sent_reg <= __systolic__hor_chans__1_4_has_been_sent_reg_load_en ? __systolic__hor_chans__1_4_not_stage_load : __systolic__hor_chans__1_4_has_been_sent_reg;
      __systolic__vert_chans__2_3_has_been_sent_reg <= __systolic__vert_chans__2_3_has_been_sent_reg_load_en ? __systolic__hor_chans__1_4_not_stage_load : __systolic__vert_chans__2_3_has_been_sent_reg;
      __systolic__result_chans__1_3_has_been_sent_reg <= __systolic__result_chans__1_3_has_been_sent_reg_load_en ? __systolic__result_chans__1_3_not_stage_load : __systolic__result_chans__1_3_has_been_sent_reg;
      __systolic__hor_chans__1_3_reg <= systolic__hor_chans__1_3_load_en ? systolic__hor_chans__1_3 : __systolic__hor_chans__1_3_reg;
      __systolic__hor_chans__1_3_valid_reg <= systolic__hor_chans__1_3_valid_load_en ? systolic__hor_chans__1_3_vld : __systolic__hor_chans__1_3_valid_reg;
      __systolic__vert_chans__1_3_reg <= systolic__vert_chans__1_3_load_en ? systolic__vert_chans__1_3 : __systolic__vert_chans__1_3_reg;
      __systolic__vert_chans__1_3_valid_reg <= systolic__vert_chans__1_3_valid_load_en ? systolic__vert_chans__1_3_vld : __systolic__vert_chans__1_3_valid_reg;
      __systolic__hor_chans__1_4_reg <= systolic__hor_chans__1_4_load_en ? p1_a : __systolic__hor_chans__1_4_reg;
      __systolic__hor_chans__1_4_valid_reg <= systolic__hor_chans__1_4_valid_load_en ? __systolic__hor_chans__1_4_valid_and_not_has_been_sent : __systolic__hor_chans__1_4_valid_reg;
      __systolic__vert_chans__2_3_reg <= systolic__vert_chans__2_3_load_en ? p1_b : __systolic__vert_chans__2_3_reg;
      __systolic__vert_chans__2_3_valid_reg <= systolic__vert_chans__2_3_valid_load_en ? __systolic__vert_chans__2_3_valid_and_not_has_been_sent : __systolic__vert_chans__2_3_valid_reg;
      __systolic__result_chans__1_3_reg <= systolic__result_chans__1_3_load_en ? new_accum : __systolic__result_chans__1_3_reg;
      __systolic__result_chans__1_3_valid_reg <= systolic__result_chans__1_3_valid_load_en ? __systolic__result_chans__1_3_valid_and_not_has_been_sent : __systolic__result_chans__1_3_valid_reg;
    end
  end
  assign systolic__hor_chans__1_3_rdy = systolic__hor_chans__1_3_load_en;
  assign systolic__hor_chans__1_4 = __systolic__hor_chans__1_4_reg;
  assign systolic__hor_chans__1_4_vld = __systolic__hor_chans__1_4_valid_reg;
  assign systolic__result_chans__1_3 = __systolic__result_chans__1_3_reg;
  assign systolic__result_chans__1_3_vld = __systolic__result_chans__1_3_valid_reg;
  assign systolic__vert_chans__1_3_rdy = systolic__vert_chans__1_3_load_en;
  assign systolic__vert_chans__2_3 = __systolic__vert_chans__2_3_reg;
  assign systolic__vert_chans__2_3_vld = __systolic__vert_chans__2_3_valid_reg;
  `ifdef ASSERT_ON
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8985))) or_8985) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8985))) or_8985) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_8_next(
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
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
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
  wire should_output;
  wire __systolic__result_chans__2_0_vld_buf;
  wire __systolic__result_chans__2_0_not_has_been_sent;
  wire systolic__result_chans__2_0_valid_inv;
  wire __systolic__result_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_0_valid_load_en;
  wire systolic__result_chans__2_0_load_en;
  wire or_9263;
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
  wire [2:0] one_hot_7739;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__2_0_valid_inv;
  wire systolic__vert_chans__2_0_valid_inv;
  wire and_7813;
  wire and_7814;
  wire systolic__hor_chans__2_0_valid_load_en;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_7815;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_571_1_case_1;
  wire [1:0] unexpand_for_next_value_571_1_case_0;
  wire __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__2_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__3_0_valid_and_ready_txfr;
  wire __systolic__result_chans__2_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__2_0_valid_and_ready_txfr;
  wire systolic__hor_chans__2_0_load_en;
  wire systolic__vert_chans__2_0_load_en;
  wire or_8989;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_7816;
  wire or_7817;
  wire [1:0] one_hot_sel_7822;
  wire __systolic__hor_chans__2_1_not_stage_load;
  wire __systolic__hor_chans__2_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_0_not_stage_load;
  wire __systolic__result_chans__2_0_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__2_0_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__2_0_not_has_been_sent = ~__systolic__result_chans__2_0_has_been_sent_reg;
  assign systolic__result_chans__2_0_valid_inv = ~__systolic__result_chans__2_0_valid_reg;
  assign __systolic__result_chans__2_0_valid_and_not_has_been_sent = __systolic__result_chans__2_0_vld_buf & __systolic__result_chans__2_0_not_has_been_sent;
  assign systolic__result_chans__2_0_valid_load_en = systolic__result_chans__2_0_rdy | systolic__result_chans__2_0_valid_inv;
  assign systolic__result_chans__2_0_load_en = __systolic__result_chans__2_0_valid_and_not_has_been_sent & systolic__result_chans__2_0_valid_load_en;
  assign or_9263 = ~should_output | systolic__result_chans__2_0_load_en | __systolic__result_chans__2_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9263;
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
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_7739 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__2_0_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__2_0_valid_inv = ~__systolic__hor_chans__2_0_valid_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign and_7813 = ~should_output & p3_stage_done;
  assign and_7814 = should_output & p3_stage_done;
  assign systolic__hor_chans__2_0_valid_load_en = p0_load_en | systolic__hor_chans__2_0_valid_inv;
  assign systolic__vert_chans__2_0_valid_load_en = p1_load_en | systolic__vert_chans__2_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_7739[1] & should_output == one_hot_7739[0];
  assign concat_7815 = {and_7813, and_7814};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_571_1_case_1 = 2'h0;
  assign unexpand_for_next_value_571_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__2_1_valid_and_ready_txfr = __systolic__hor_chans__2_1_valid_and_not_has_been_sent & systolic__hor_chans__2_1_load_en;
  assign __systolic__vert_chans__3_0_valid_and_ready_txfr = __systolic__vert_chans__3_0_valid_and_not_has_been_sent & systolic__vert_chans__3_0_load_en;
  assign __systolic__result_chans__2_0_valid_and_all_active_outputs_ready = __systolic__result_chans__2_0_vld_buf & or_9263;
  assign __systolic__result_chans__2_0_valid_and_ready_txfr = __systolic__result_chans__2_0_valid_and_not_has_been_sent & systolic__result_chans__2_0_load_en;
  assign systolic__hor_chans__2_0_load_en = systolic__hor_chans__2_0_vld & systolic__hor_chans__2_0_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = systolic__vert_chans__2_0_vld & systolic__vert_chans__2_0_valid_load_en;
  assign or_8989 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_7816 = 32'h0000_0000 & {32{concat_7815[0]}} | new_accum & {32{concat_7815[1]}};
  assign or_7817 = and_7813 | and_7814;
  assign one_hot_sel_7822 = unexpand_for_next_value_571_1_case_1 & {2{concat_7815[0]}} | unexpand_for_next_value_571_1_case_0 & {2{concat_7815[1]}};
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
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_7817 ? one_hot_sel_7822 : ____state_1;
      ____state_0 <= or_7817 ? one_hot_sel_7816 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8989))) or_8989) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8989))) or_8989) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray__PE_9_next(
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
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE
  reg [31:0] p0_a;
  reg [31:0] p1_a;
  reg [31:0] p1_b;
  reg [31:0] p2_prod;
  reg [1:0] ____state_1;
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
  wire should_output;
  wire __systolic__result_chans__2_1_vld_buf;
  wire __systolic__result_chans__2_1_not_has_been_sent;
  wire systolic__result_chans__2_1_valid_inv;
  wire __systolic__result_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_1_valid_load_en;
  wire systolic__result_chans__2_1_load_en;
  wire or_9280;
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
  wire [2:0] one_hot_7980;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__2_1_valid_inv;
  wire systolic__vert_chans__2_1_valid_inv;
  wire and_8054;
  wire and_8055;
  wire systolic__hor_chans__2_1_valid_load_en;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_8056;
  wire [31:0] new_accum;
  wire [1:0] unexpand_for_next_value_601_1_case_1;
  wire [1:0] unexpand_for_next_value_601_1_case_0;
  wire __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__2_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__3_1_valid_and_ready_txfr;
  wire __systolic__result_chans__2_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__2_1_valid_and_ready_txfr;
  wire systolic__hor_chans__2_1_load_en;
  wire systolic__vert_chans__2_1_load_en;
  wire or_8993;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_8057;
  wire or_8058;
  wire [1:0] one_hot_sel_8063;
  wire __systolic__hor_chans__2_2_not_stage_load;
  wire __systolic__hor_chans__2_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_1_not_stage_load;
  wire __systolic__result_chans__2_1_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__result_chans__2_1_vld_buf = p2_valid & should_output;
  assign __systolic__result_chans__2_1_not_has_been_sent = ~__systolic__result_chans__2_1_has_been_sent_reg;
  assign systolic__result_chans__2_1_valid_inv = ~__systolic__result_chans__2_1_valid_reg;
  assign __systolic__result_chans__2_1_valid_and_not_has_been_sent = __systolic__result_chans__2_1_vld_buf & __systolic__result_chans__2_1_not_has_been_sent;
  assign systolic__result_chans__2_1_valid_load_en = systolic__result_chans__2_1_rdy | systolic__result_chans__2_1_valid_inv;
  assign systolic__result_chans__2_1_load_en = __systolic__result_chans__2_1_valid_and_not_has_been_sent & systolic__result_chans__2_1_valid_load_en;
  assign or_9280 = ~should_output | systolic__result_chans__2_1_load_en | __systolic__result_chans__2_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9280;
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
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_load_en | p1_not_valid;
  assign one_hot_7980 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & __systolic__hor_chans__2_1_valid_reg;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__2_1_valid_inv = ~__systolic__hor_chans__2_1_valid_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign and_8054 = ~should_output & p3_stage_done;
  assign and_8055 = should_output & p3_stage_done;
  assign systolic__hor_chans__2_1_valid_load_en = p0_load_en | systolic__hor_chans__2_1_valid_inv;
  assign systolic__vert_chans__2_1_valid_load_en = p1_load_en | systolic__vert_chans__2_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_7980[1] & should_output == one_hot_7980[0];
  assign concat_8056 = {and_8054, and_8055};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_601_1_case_1 = 2'h0;
  assign unexpand_for_next_value_601_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__2_2_valid_and_ready_txfr = __systolic__hor_chans__2_2_valid_and_not_has_been_sent & systolic__hor_chans__2_2_load_en;
  assign __systolic__vert_chans__3_1_valid_and_ready_txfr = __systolic__vert_chans__3_1_valid_and_not_has_been_sent & systolic__vert_chans__3_1_load_en;
  assign __systolic__result_chans__2_1_valid_and_all_active_outputs_ready = __systolic__result_chans__2_1_vld_buf & or_9280;
  assign __systolic__result_chans__2_1_valid_and_ready_txfr = __systolic__result_chans__2_1_valid_and_not_has_been_sent & systolic__result_chans__2_1_load_en;
  assign systolic__hor_chans__2_1_load_en = systolic__hor_chans__2_1_vld & systolic__hor_chans__2_1_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = systolic__vert_chans__2_1_vld & systolic__vert_chans__2_1_valid_load_en;
  assign or_8993 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = smul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_8057 = 32'h0000_0000 & {32{concat_8056[0]}} | new_accum & {32{concat_8056[1]}};
  assign or_8058 = and_8054 | and_8055;
  assign one_hot_sel_8063 = unexpand_for_next_value_601_1_case_1 & {2{concat_8056[0]}} | unexpand_for_next_value_601_1_case_0 & {2{concat_8056[1]}};
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
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_8058 ? one_hot_sel_8063 : ____state_1;
      ____state_0 <= or_8058 ? one_hot_sel_8057 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8993))) or_8993) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8993))) or_8993) else $fatal(0, "More than one next_value fired for state element: __state_1");
  `endif  // ASSERT_ON
endmodule


module __systolic__SystolicArray_0_next(
  input wire clk,
  input wire rst,
  input wire [511:0] systolic__arg0,
  input wire systolic__arg0_vld,
  input wire [511:0] systolic__arg1,
  input wire systolic__arg1_vld,
  input wire systolic__out0_rdy,
  output wire systolic__arg0_rdy,
  output wire systolic__arg1_rdy,
  output wire [511:0] systolic__out0,
  output wire systolic__out0_vld
);
  wire [31:0] systolic__arg0_unflattened[4][4];
  assign systolic__arg0_unflattened[0][0] = systolic__arg0[31:0];
  assign systolic__arg0_unflattened[0][1] = systolic__arg0[63:32];
  assign systolic__arg0_unflattened[0][2] = systolic__arg0[95:64];
  assign systolic__arg0_unflattened[0][3] = systolic__arg0[127:96];
  assign systolic__arg0_unflattened[1][0] = systolic__arg0[159:128];
  assign systolic__arg0_unflattened[1][1] = systolic__arg0[191:160];
  assign systolic__arg0_unflattened[1][2] = systolic__arg0[223:192];
  assign systolic__arg0_unflattened[1][3] = systolic__arg0[255:224];
  assign systolic__arg0_unflattened[2][0] = systolic__arg0[287:256];
  assign systolic__arg0_unflattened[2][1] = systolic__arg0[319:288];
  assign systolic__arg0_unflattened[2][2] = systolic__arg0[351:320];
  assign systolic__arg0_unflattened[2][3] = systolic__arg0[383:352];
  assign systolic__arg0_unflattened[3][0] = systolic__arg0[415:384];
  assign systolic__arg0_unflattened[3][1] = systolic__arg0[447:416];
  assign systolic__arg0_unflattened[3][2] = systolic__arg0[479:448];
  assign systolic__arg0_unflattened[3][3] = systolic__arg0[511:480];
  wire [31:0] systolic__arg1_unflattened[4][4];
  assign systolic__arg1_unflattened[0][0] = systolic__arg1[31:0];
  assign systolic__arg1_unflattened[0][1] = systolic__arg1[63:32];
  assign systolic__arg1_unflattened[0][2] = systolic__arg1[95:64];
  assign systolic__arg1_unflattened[0][3] = systolic__arg1[127:96];
  assign systolic__arg1_unflattened[1][0] = systolic__arg1[159:128];
  assign systolic__arg1_unflattened[1][1] = systolic__arg1[191:160];
  assign systolic__arg1_unflattened[1][2] = systolic__arg1[223:192];
  assign systolic__arg1_unflattened[1][3] = systolic__arg1[255:224];
  assign systolic__arg1_unflattened[2][0] = systolic__arg1[287:256];
  assign systolic__arg1_unflattened[2][1] = systolic__arg1[319:288];
  assign systolic__arg1_unflattened[2][2] = systolic__arg1[351:320];
  assign systolic__arg1_unflattened[2][3] = systolic__arg1[383:352];
  assign systolic__arg1_unflattened[3][0] = systolic__arg1[415:384];
  assign systolic__arg1_unflattened[3][1] = systolic__arg1[447:416];
  assign systolic__arg1_unflattened[3][2] = systolic__arg1[479:448];
  assign systolic__arg1_unflattened[3][3] = systolic__arg1[511:480];
  wire instantiation_output_8182;
  wire instantiation_output_8188;
  wire [31:0] instantiation_output_8193;
  wire instantiation_output_8194;
  wire instantiation_output_8253;
  wire [31:0] instantiation_output_8258;
  wire instantiation_output_8259;
  wire instantiation_output_8318;
  wire [31:0] instantiation_output_8323;
  wire instantiation_output_8324;
  wire instantiation_output_8383;
  wire [31:0] instantiation_output_8388;
  wire instantiation_output_8389;
  wire instantiation_output_8448;
  wire [31:0] instantiation_output_8452[4][4];
  wire instantiation_output_8453;
  wire instantiation_output_8467;
  wire instantiation_output_8480;
  wire instantiation_output_8493;
  wire instantiation_output_8506;
  wire instantiation_output_8519;
  wire instantiation_output_8532;
  wire instantiation_output_8545;
  wire instantiation_output_8558;
  wire instantiation_output_8571;
  wire instantiation_output_8584;
  wire instantiation_output_8597;
  wire instantiation_output_8610;
  wire instantiation_output_8623;
  wire instantiation_output_8636;
  wire instantiation_output_8649;
  wire instantiation_output_8662;
  wire [31:0] instantiation_output_8667;
  wire instantiation_output_8668;
  wire [31:0] instantiation_output_8680;
  wire instantiation_output_8681;
  wire [31:0] instantiation_output_8693;
  wire instantiation_output_8694;
  wire [31:0] instantiation_output_8706;
  wire instantiation_output_8707;
  wire instantiation_output_8883;
  wire instantiation_output_8896;
  wire instantiation_output_8909;
  wire instantiation_output_8922;
  wire instantiation_output_8201;
  wire [31:0] instantiation_output_8206;
  wire instantiation_output_8207;
  wire [31:0] instantiation_output_8459;
  wire instantiation_output_8460;
  wire instantiation_output_8675;
  wire [31:0] instantiation_output_8719;
  wire instantiation_output_8720;
  wire instantiation_output_8357;
  wire [31:0] instantiation_output_8362;
  wire instantiation_output_8363;
  wire [31:0] instantiation_output_8589;
  wire instantiation_output_8590;
  wire instantiation_output_8805;
  wire [31:0] instantiation_output_8849;
  wire instantiation_output_8850;
  wire instantiation_output_8370;
  wire [31:0] instantiation_output_8375;
  wire instantiation_output_8376;
  wire [31:0] instantiation_output_8602;
  wire instantiation_output_8603;
  wire instantiation_output_8818;
  wire [31:0] instantiation_output_8862;
  wire instantiation_output_8863;
  wire instantiation_output_8396;
  wire [31:0] instantiation_output_8401;
  wire instantiation_output_8402;
  wire [31:0] instantiation_output_8615;
  wire instantiation_output_8616;
  wire instantiation_output_8831;
  wire [31:0] instantiation_output_8875;
  wire instantiation_output_8876;
  wire instantiation_output_8409;
  wire [31:0] instantiation_output_8414;
  wire instantiation_output_8415;
  wire [31:0] instantiation_output_8628;
  wire instantiation_output_8629;
  wire instantiation_output_8844;
  wire [31:0] instantiation_output_8888;
  wire instantiation_output_8889;
  wire instantiation_output_8422;
  wire [31:0] instantiation_output_8427;
  wire instantiation_output_8428;
  wire [31:0] instantiation_output_8641;
  wire instantiation_output_8642;
  wire instantiation_output_8857;
  wire [31:0] instantiation_output_8901;
  wire instantiation_output_8902;
  wire instantiation_output_8435;
  wire [31:0] instantiation_output_8440;
  wire instantiation_output_8441;
  wire [31:0] instantiation_output_8654;
  wire instantiation_output_8655;
  wire instantiation_output_8870;
  wire [31:0] instantiation_output_8914;
  wire instantiation_output_8915;
  wire instantiation_output_8214;
  wire [31:0] instantiation_output_8219;
  wire instantiation_output_8220;
  wire [31:0] instantiation_output_8472;
  wire instantiation_output_8473;
  wire instantiation_output_8688;
  wire [31:0] instantiation_output_8732;
  wire instantiation_output_8733;
  wire instantiation_output_8227;
  wire [31:0] instantiation_output_8232;
  wire instantiation_output_8233;
  wire [31:0] instantiation_output_8485;
  wire instantiation_output_8486;
  wire instantiation_output_8701;
  wire [31:0] instantiation_output_8745;
  wire instantiation_output_8746;
  wire instantiation_output_8240;
  wire [31:0] instantiation_output_8245;
  wire instantiation_output_8246;
  wire [31:0] instantiation_output_8498;
  wire instantiation_output_8499;
  wire instantiation_output_8714;
  wire [31:0] instantiation_output_8758;
  wire instantiation_output_8759;
  wire instantiation_output_8266;
  wire [31:0] instantiation_output_8271;
  wire instantiation_output_8272;
  wire [31:0] instantiation_output_8511;
  wire instantiation_output_8512;
  wire instantiation_output_8727;
  wire [31:0] instantiation_output_8771;
  wire instantiation_output_8772;
  wire instantiation_output_8279;
  wire [31:0] instantiation_output_8284;
  wire instantiation_output_8285;
  wire [31:0] instantiation_output_8524;
  wire instantiation_output_8525;
  wire instantiation_output_8740;
  wire [31:0] instantiation_output_8784;
  wire instantiation_output_8785;
  wire instantiation_output_8292;
  wire [31:0] instantiation_output_8297;
  wire instantiation_output_8298;
  wire [31:0] instantiation_output_8537;
  wire instantiation_output_8538;
  wire instantiation_output_8753;
  wire [31:0] instantiation_output_8797;
  wire instantiation_output_8798;
  wire instantiation_output_8305;
  wire [31:0] instantiation_output_8310;
  wire instantiation_output_8311;
  wire [31:0] instantiation_output_8550;
  wire instantiation_output_8551;
  wire instantiation_output_8766;
  wire [31:0] instantiation_output_8810;
  wire instantiation_output_8811;
  wire instantiation_output_8331;
  wire [31:0] instantiation_output_8336;
  wire instantiation_output_8337;
  wire [31:0] instantiation_output_8563;
  wire instantiation_output_8564;
  wire instantiation_output_8779;
  wire [31:0] instantiation_output_8823;
  wire instantiation_output_8824;
  wire instantiation_output_8344;
  wire [31:0] instantiation_output_8349;
  wire instantiation_output_8350;
  wire [31:0] instantiation_output_8576;
  wire instantiation_output_8577;
  wire instantiation_output_8792;
  wire [31:0] instantiation_output_8836;
  wire instantiation_output_8837;
  wire instantiation_output_8195;
  wire [31:0] instantiation_output_8199;
  wire instantiation_output_8200;
  wire instantiation_output_8208;
  wire [31:0] instantiation_output_8212;
  wire instantiation_output_8213;
  wire instantiation_output_8221;
  wire [31:0] instantiation_output_8225;
  wire instantiation_output_8226;
  wire instantiation_output_8234;
  wire [31:0] instantiation_output_8238;
  wire instantiation_output_8239;
  wire instantiation_output_8247;
  wire [31:0] instantiation_output_8251;
  wire instantiation_output_8252;
  wire instantiation_output_8260;
  wire [31:0] instantiation_output_8264;
  wire instantiation_output_8265;
  wire instantiation_output_8273;
  wire [31:0] instantiation_output_8277;
  wire instantiation_output_8278;
  wire instantiation_output_8286;
  wire [31:0] instantiation_output_8290;
  wire instantiation_output_8291;
  wire instantiation_output_8299;
  wire [31:0] instantiation_output_8303;
  wire instantiation_output_8304;
  wire instantiation_output_8312;
  wire [31:0] instantiation_output_8316;
  wire instantiation_output_8317;
  wire instantiation_output_8325;
  wire [31:0] instantiation_output_8329;
  wire instantiation_output_8330;
  wire instantiation_output_8338;
  wire [31:0] instantiation_output_8342;
  wire instantiation_output_8343;
  wire instantiation_output_8351;
  wire [31:0] instantiation_output_8355;
  wire instantiation_output_8356;
  wire instantiation_output_8364;
  wire [31:0] instantiation_output_8368;
  wire instantiation_output_8369;
  wire instantiation_output_8377;
  wire [31:0] instantiation_output_8381;
  wire instantiation_output_8382;
  wire instantiation_output_8390;
  wire [31:0] instantiation_output_8394;
  wire instantiation_output_8395;
  wire instantiation_output_8403;
  wire [31:0] instantiation_output_8407;
  wire instantiation_output_8408;
  wire instantiation_output_8416;
  wire [31:0] instantiation_output_8420;
  wire instantiation_output_8421;
  wire instantiation_output_8429;
  wire [31:0] instantiation_output_8433;
  wire instantiation_output_8434;
  wire instantiation_output_8442;
  wire [31:0] instantiation_output_8446;
  wire instantiation_output_8447;
  wire instantiation_output_8461;
  wire [31:0] instantiation_output_8465;
  wire instantiation_output_8466;
  wire instantiation_output_8474;
  wire [31:0] instantiation_output_8478;
  wire instantiation_output_8479;
  wire instantiation_output_8487;
  wire [31:0] instantiation_output_8491;
  wire instantiation_output_8492;
  wire instantiation_output_8500;
  wire [31:0] instantiation_output_8504;
  wire instantiation_output_8505;
  wire instantiation_output_8513;
  wire [31:0] instantiation_output_8517;
  wire instantiation_output_8518;
  wire instantiation_output_8526;
  wire [31:0] instantiation_output_8530;
  wire instantiation_output_8531;
  wire instantiation_output_8539;
  wire [31:0] instantiation_output_8543;
  wire instantiation_output_8544;
  wire instantiation_output_8552;
  wire [31:0] instantiation_output_8556;
  wire instantiation_output_8557;
  wire instantiation_output_8565;
  wire [31:0] instantiation_output_8569;
  wire instantiation_output_8570;
  wire instantiation_output_8578;
  wire [31:0] instantiation_output_8582;
  wire instantiation_output_8583;
  wire instantiation_output_8591;
  wire [31:0] instantiation_output_8595;
  wire instantiation_output_8596;
  wire instantiation_output_8604;
  wire [31:0] instantiation_output_8608;
  wire instantiation_output_8609;
  wire instantiation_output_8617;
  wire [31:0] instantiation_output_8621;
  wire instantiation_output_8622;
  wire instantiation_output_8630;
  wire [31:0] instantiation_output_8634;
  wire instantiation_output_8635;
  wire instantiation_output_8643;
  wire [31:0] instantiation_output_8647;
  wire instantiation_output_8648;
  wire instantiation_output_8656;
  wire [31:0] instantiation_output_8660;
  wire instantiation_output_8661;
  wire instantiation_output_8669;
  wire [31:0] instantiation_output_8673;
  wire instantiation_output_8674;
  wire instantiation_output_8682;
  wire [31:0] instantiation_output_8686;
  wire instantiation_output_8687;
  wire instantiation_output_8695;
  wire [31:0] instantiation_output_8699;
  wire instantiation_output_8700;
  wire instantiation_output_8708;
  wire [31:0] instantiation_output_8712;
  wire instantiation_output_8713;
  wire instantiation_output_8721;
  wire [31:0] instantiation_output_8725;
  wire instantiation_output_8726;
  wire instantiation_output_8734;
  wire [31:0] instantiation_output_8738;
  wire instantiation_output_8739;
  wire instantiation_output_8747;
  wire [31:0] instantiation_output_8751;
  wire instantiation_output_8752;
  wire instantiation_output_8760;
  wire [31:0] instantiation_output_8764;
  wire instantiation_output_8765;
  wire instantiation_output_8773;
  wire [31:0] instantiation_output_8777;
  wire instantiation_output_8778;
  wire instantiation_output_8786;
  wire [31:0] instantiation_output_8790;
  wire instantiation_output_8791;
  wire instantiation_output_8799;
  wire [31:0] instantiation_output_8803;
  wire instantiation_output_8804;
  wire instantiation_output_8812;
  wire [31:0] instantiation_output_8816;
  wire instantiation_output_8817;
  wire instantiation_output_8825;
  wire [31:0] instantiation_output_8829;
  wire instantiation_output_8830;
  wire instantiation_output_8838;
  wire [31:0] instantiation_output_8842;
  wire instantiation_output_8843;
  wire instantiation_output_8851;
  wire [31:0] instantiation_output_8855;
  wire instantiation_output_8856;
  wire instantiation_output_8864;
  wire [31:0] instantiation_output_8868;
  wire instantiation_output_8869;
  wire instantiation_output_8877;
  wire [31:0] instantiation_output_8881;
  wire instantiation_output_8882;
  wire instantiation_output_8890;
  wire [31:0] instantiation_output_8894;
  wire instantiation_output_8895;
  wire instantiation_output_8903;
  wire [31:0] instantiation_output_8907;
  wire instantiation_output_8908;
  wire instantiation_output_8916;
  wire [31:0] instantiation_output_8920;
  wire instantiation_output_8921;

  // ===== Instantiations
  __systolic__SystolicArray_0_next__1 __systolic__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .systolic__arg0({{systolic__arg0_unflattened[3][3], systolic__arg0_unflattened[3][2], systolic__arg0_unflattened[3][1], systolic__arg0_unflattened[3][0]}, {systolic__arg0_unflattened[2][3], systolic__arg0_unflattened[2][2], systolic__arg0_unflattened[2][1], systolic__arg0_unflattened[2][0]}, {systolic__arg0_unflattened[1][3], systolic__arg0_unflattened[1][2], systolic__arg0_unflattened[1][1], systolic__arg0_unflattened[1][0]}, {systolic__arg0_unflattened[0][3], systolic__arg0_unflattened[0][2], systolic__arg0_unflattened[0][1], systolic__arg0_unflattened[0][0]}}),
    .systolic__arg0_vld(systolic__arg0_vld),
    .systolic__arg1({{systolic__arg1_unflattened[3][3], systolic__arg1_unflattened[3][2], systolic__arg1_unflattened[3][1], systolic__arg1_unflattened[3][0]}, {systolic__arg1_unflattened[2][3], systolic__arg1_unflattened[2][2], systolic__arg1_unflattened[2][1], systolic__arg1_unflattened[2][0]}, {systolic__arg1_unflattened[1][3], systolic__arg1_unflattened[1][2], systolic__arg1_unflattened[1][1], systolic__arg1_unflattened[1][0]}, {systolic__arg1_unflattened[0][3], systolic__arg1_unflattened[0][2], systolic__arg1_unflattened[0][1], systolic__arg1_unflattened[0][0]}}),
    .systolic__arg1_vld(systolic__arg1_vld),
    .systolic__hor_chans__0_0_rdy(instantiation_output_8195),
    .systolic__hor_chans__0_4(instantiation_output_8251),
    .systolic__hor_chans__0_4_vld(instantiation_output_8252),
    .systolic__hor_chans__1_0_rdy(instantiation_output_8260),
    .systolic__hor_chans__1_4(instantiation_output_8316),
    .systolic__hor_chans__1_4_vld(instantiation_output_8317),
    .systolic__hor_chans__2_0_rdy(instantiation_output_8325),
    .systolic__hor_chans__2_4(instantiation_output_8381),
    .systolic__hor_chans__2_4_vld(instantiation_output_8382),
    .systolic__hor_chans__3_0_rdy(instantiation_output_8390),
    .systolic__hor_chans__3_4(instantiation_output_8446),
    .systolic__hor_chans__3_4_vld(instantiation_output_8447),
    .systolic__out0_rdy(systolic__out0_rdy),
    .systolic__result_chans__0_0(instantiation_output_8465),
    .systolic__result_chans__0_0_vld(instantiation_output_8466),
    .systolic__result_chans__0_1(instantiation_output_8478),
    .systolic__result_chans__0_1_vld(instantiation_output_8479),
    .systolic__result_chans__0_2(instantiation_output_8491),
    .systolic__result_chans__0_2_vld(instantiation_output_8492),
    .systolic__result_chans__0_3(instantiation_output_8504),
    .systolic__result_chans__0_3_vld(instantiation_output_8505),
    .systolic__result_chans__1_0(instantiation_output_8517),
    .systolic__result_chans__1_0_vld(instantiation_output_8518),
    .systolic__result_chans__1_1(instantiation_output_8530),
    .systolic__result_chans__1_1_vld(instantiation_output_8531),
    .systolic__result_chans__1_2(instantiation_output_8543),
    .systolic__result_chans__1_2_vld(instantiation_output_8544),
    .systolic__result_chans__1_3(instantiation_output_8556),
    .systolic__result_chans__1_3_vld(instantiation_output_8557),
    .systolic__result_chans__2_0(instantiation_output_8569),
    .systolic__result_chans__2_0_vld(instantiation_output_8570),
    .systolic__result_chans__2_1(instantiation_output_8582),
    .systolic__result_chans__2_1_vld(instantiation_output_8583),
    .systolic__result_chans__2_2(instantiation_output_8595),
    .systolic__result_chans__2_2_vld(instantiation_output_8596),
    .systolic__result_chans__2_3(instantiation_output_8608),
    .systolic__result_chans__2_3_vld(instantiation_output_8609),
    .systolic__result_chans__3_0(instantiation_output_8621),
    .systolic__result_chans__3_0_vld(instantiation_output_8622),
    .systolic__result_chans__3_1(instantiation_output_8634),
    .systolic__result_chans__3_1_vld(instantiation_output_8635),
    .systolic__result_chans__3_2(instantiation_output_8647),
    .systolic__result_chans__3_2_vld(instantiation_output_8648),
    .systolic__result_chans__3_3(instantiation_output_8660),
    .systolic__result_chans__3_3_vld(instantiation_output_8661),
    .systolic__vert_chans__0_0_rdy(instantiation_output_8669),
    .systolic__vert_chans__0_1_rdy(instantiation_output_8682),
    .systolic__vert_chans__0_2_rdy(instantiation_output_8695),
    .systolic__vert_chans__0_3_rdy(instantiation_output_8708),
    .systolic__vert_chans__4_0(instantiation_output_8881),
    .systolic__vert_chans__4_0_vld(instantiation_output_8882),
    .systolic__vert_chans__4_1(instantiation_output_8894),
    .systolic__vert_chans__4_1_vld(instantiation_output_8895),
    .systolic__vert_chans__4_2(instantiation_output_8907),
    .systolic__vert_chans__4_2_vld(instantiation_output_8908),
    .systolic__vert_chans__4_3(instantiation_output_8920),
    .systolic__vert_chans__4_3_vld(instantiation_output_8921),
    .systolic__arg0_rdy(instantiation_output_8182),
    .systolic__arg1_rdy(instantiation_output_8188),
    .systolic__hor_chans__0_0(instantiation_output_8193),
    .systolic__hor_chans__0_0_vld(instantiation_output_8194),
    .systolic__hor_chans__0_4_rdy(instantiation_output_8253),
    .systolic__hor_chans__1_0(instantiation_output_8258),
    .systolic__hor_chans__1_0_vld(instantiation_output_8259),
    .systolic__hor_chans__1_4_rdy(instantiation_output_8318),
    .systolic__hor_chans__2_0(instantiation_output_8323),
    .systolic__hor_chans__2_0_vld(instantiation_output_8324),
    .systolic__hor_chans__2_4_rdy(instantiation_output_8383),
    .systolic__hor_chans__3_0(instantiation_output_8388),
    .systolic__hor_chans__3_0_vld(instantiation_output_8389),
    .systolic__hor_chans__3_4_rdy(instantiation_output_8448),
    .systolic__out0({{instantiation_output_8452[3][3], instantiation_output_8452[3][2], instantiation_output_8452[3][1], instantiation_output_8452[3][0]}, {instantiation_output_8452[2][3], instantiation_output_8452[2][2], instantiation_output_8452[2][1], instantiation_output_8452[2][0]}, {instantiation_output_8452[1][3], instantiation_output_8452[1][2], instantiation_output_8452[1][1], instantiation_output_8452[1][0]}, {instantiation_output_8452[0][3], instantiation_output_8452[0][2], instantiation_output_8452[0][1], instantiation_output_8452[0][0]}}),
    .systolic__out0_vld(instantiation_output_8453),
    .systolic__result_chans__0_0_rdy(instantiation_output_8467),
    .systolic__result_chans__0_1_rdy(instantiation_output_8480),
    .systolic__result_chans__0_2_rdy(instantiation_output_8493),
    .systolic__result_chans__0_3_rdy(instantiation_output_8506),
    .systolic__result_chans__1_0_rdy(instantiation_output_8519),
    .systolic__result_chans__1_1_rdy(instantiation_output_8532),
    .systolic__result_chans__1_2_rdy(instantiation_output_8545),
    .systolic__result_chans__1_3_rdy(instantiation_output_8558),
    .systolic__result_chans__2_0_rdy(instantiation_output_8571),
    .systolic__result_chans__2_1_rdy(instantiation_output_8584),
    .systolic__result_chans__2_2_rdy(instantiation_output_8597),
    .systolic__result_chans__2_3_rdy(instantiation_output_8610),
    .systolic__result_chans__3_0_rdy(instantiation_output_8623),
    .systolic__result_chans__3_1_rdy(instantiation_output_8636),
    .systolic__result_chans__3_2_rdy(instantiation_output_8649),
    .systolic__result_chans__3_3_rdy(instantiation_output_8662),
    .systolic__vert_chans__0_0(instantiation_output_8667),
    .systolic__vert_chans__0_0_vld(instantiation_output_8668),
    .systolic__vert_chans__0_1(instantiation_output_8680),
    .systolic__vert_chans__0_1_vld(instantiation_output_8681),
    .systolic__vert_chans__0_2(instantiation_output_8693),
    .systolic__vert_chans__0_2_vld(instantiation_output_8694),
    .systolic__vert_chans__0_3(instantiation_output_8706),
    .systolic__vert_chans__0_3_vld(instantiation_output_8707),
    .systolic__vert_chans__4_0_rdy(instantiation_output_8883),
    .systolic__vert_chans__4_1_rdy(instantiation_output_8896),
    .systolic__vert_chans__4_2_rdy(instantiation_output_8909),
    .systolic__vert_chans__4_3_rdy(instantiation_output_8922),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_0_next __systolic__SystolicArray__PE_0_next_inst1 (
    .rst(rst),
    .systolic__hor_chans__0_0(instantiation_output_8199),
    .systolic__hor_chans__0_0_vld(instantiation_output_8200),
    .systolic__hor_chans__0_1_rdy(instantiation_output_8208),
    .systolic__result_chans__0_0_rdy(instantiation_output_8461),
    .systolic__vert_chans__0_0(instantiation_output_8673),
    .systolic__vert_chans__0_0_vld(instantiation_output_8674),
    .systolic__vert_chans__1_0_rdy(instantiation_output_8721),
    .systolic__hor_chans__0_0_rdy(instantiation_output_8201),
    .systolic__hor_chans__0_1(instantiation_output_8206),
    .systolic__hor_chans__0_1_vld(instantiation_output_8207),
    .systolic__result_chans__0_0(instantiation_output_8459),
    .systolic__result_chans__0_0_vld(instantiation_output_8460),
    .systolic__vert_chans__0_0_rdy(instantiation_output_8675),
    .systolic__vert_chans__1_0(instantiation_output_8719),
    .systolic__vert_chans__1_0_vld(instantiation_output_8720),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_10_next __systolic__SystolicArray__PE_10_next_inst2 (
    .rst(rst),
    .systolic__hor_chans__2_2(instantiation_output_8355),
    .systolic__hor_chans__2_2_vld(instantiation_output_8356),
    .systolic__hor_chans__2_3_rdy(instantiation_output_8364),
    .systolic__result_chans__2_2_rdy(instantiation_output_8591),
    .systolic__vert_chans__2_2(instantiation_output_8803),
    .systolic__vert_chans__2_2_vld(instantiation_output_8804),
    .systolic__vert_chans__3_2_rdy(instantiation_output_8851),
    .systolic__hor_chans__2_2_rdy(instantiation_output_8357),
    .systolic__hor_chans__2_3(instantiation_output_8362),
    .systolic__hor_chans__2_3_vld(instantiation_output_8363),
    .systolic__result_chans__2_2(instantiation_output_8589),
    .systolic__result_chans__2_2_vld(instantiation_output_8590),
    .systolic__vert_chans__2_2_rdy(instantiation_output_8805),
    .systolic__vert_chans__3_2(instantiation_output_8849),
    .systolic__vert_chans__3_2_vld(instantiation_output_8850),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_11_next __systolic__SystolicArray__PE_11_next_inst3 (
    .rst(rst),
    .systolic__hor_chans__2_3(instantiation_output_8368),
    .systolic__hor_chans__2_3_vld(instantiation_output_8369),
    .systolic__hor_chans__2_4_rdy(instantiation_output_8377),
    .systolic__result_chans__2_3_rdy(instantiation_output_8604),
    .systolic__vert_chans__2_3(instantiation_output_8816),
    .systolic__vert_chans__2_3_vld(instantiation_output_8817),
    .systolic__vert_chans__3_3_rdy(instantiation_output_8864),
    .systolic__hor_chans__2_3_rdy(instantiation_output_8370),
    .systolic__hor_chans__2_4(instantiation_output_8375),
    .systolic__hor_chans__2_4_vld(instantiation_output_8376),
    .systolic__result_chans__2_3(instantiation_output_8602),
    .systolic__result_chans__2_3_vld(instantiation_output_8603),
    .systolic__vert_chans__2_3_rdy(instantiation_output_8818),
    .systolic__vert_chans__3_3(instantiation_output_8862),
    .systolic__vert_chans__3_3_vld(instantiation_output_8863),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_12_next __systolic__SystolicArray__PE_12_next_inst4 (
    .rst(rst),
    .systolic__hor_chans__3_0(instantiation_output_8394),
    .systolic__hor_chans__3_0_vld(instantiation_output_8395),
    .systolic__hor_chans__3_1_rdy(instantiation_output_8403),
    .systolic__result_chans__3_0_rdy(instantiation_output_8617),
    .systolic__vert_chans__3_0(instantiation_output_8829),
    .systolic__vert_chans__3_0_vld(instantiation_output_8830),
    .systolic__vert_chans__4_0_rdy(instantiation_output_8877),
    .systolic__hor_chans__3_0_rdy(instantiation_output_8396),
    .systolic__hor_chans__3_1(instantiation_output_8401),
    .systolic__hor_chans__3_1_vld(instantiation_output_8402),
    .systolic__result_chans__3_0(instantiation_output_8615),
    .systolic__result_chans__3_0_vld(instantiation_output_8616),
    .systolic__vert_chans__3_0_rdy(instantiation_output_8831),
    .systolic__vert_chans__4_0(instantiation_output_8875),
    .systolic__vert_chans__4_0_vld(instantiation_output_8876),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_13_next __systolic__SystolicArray__PE_13_next_inst5 (
    .rst(rst),
    .systolic__hor_chans__3_1(instantiation_output_8407),
    .systolic__hor_chans__3_1_vld(instantiation_output_8408),
    .systolic__hor_chans__3_2_rdy(instantiation_output_8416),
    .systolic__result_chans__3_1_rdy(instantiation_output_8630),
    .systolic__vert_chans__3_1(instantiation_output_8842),
    .systolic__vert_chans__3_1_vld(instantiation_output_8843),
    .systolic__vert_chans__4_1_rdy(instantiation_output_8890),
    .systolic__hor_chans__3_1_rdy(instantiation_output_8409),
    .systolic__hor_chans__3_2(instantiation_output_8414),
    .systolic__hor_chans__3_2_vld(instantiation_output_8415),
    .systolic__result_chans__3_1(instantiation_output_8628),
    .systolic__result_chans__3_1_vld(instantiation_output_8629),
    .systolic__vert_chans__3_1_rdy(instantiation_output_8844),
    .systolic__vert_chans__4_1(instantiation_output_8888),
    .systolic__vert_chans__4_1_vld(instantiation_output_8889),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_14_next __systolic__SystolicArray__PE_14_next_inst6 (
    .rst(rst),
    .systolic__hor_chans__3_2(instantiation_output_8420),
    .systolic__hor_chans__3_2_vld(instantiation_output_8421),
    .systolic__hor_chans__3_3_rdy(instantiation_output_8429),
    .systolic__result_chans__3_2_rdy(instantiation_output_8643),
    .systolic__vert_chans__3_2(instantiation_output_8855),
    .systolic__vert_chans__3_2_vld(instantiation_output_8856),
    .systolic__vert_chans__4_2_rdy(instantiation_output_8903),
    .systolic__hor_chans__3_2_rdy(instantiation_output_8422),
    .systolic__hor_chans__3_3(instantiation_output_8427),
    .systolic__hor_chans__3_3_vld(instantiation_output_8428),
    .systolic__result_chans__3_2(instantiation_output_8641),
    .systolic__result_chans__3_2_vld(instantiation_output_8642),
    .systolic__vert_chans__3_2_rdy(instantiation_output_8857),
    .systolic__vert_chans__4_2(instantiation_output_8901),
    .systolic__vert_chans__4_2_vld(instantiation_output_8902),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_15_next __systolic__SystolicArray__PE_15_next_inst7 (
    .rst(rst),
    .systolic__hor_chans__3_3(instantiation_output_8433),
    .systolic__hor_chans__3_3_vld(instantiation_output_8434),
    .systolic__hor_chans__3_4_rdy(instantiation_output_8442),
    .systolic__result_chans__3_3_rdy(instantiation_output_8656),
    .systolic__vert_chans__3_3(instantiation_output_8868),
    .systolic__vert_chans__3_3_vld(instantiation_output_8869),
    .systolic__vert_chans__4_3_rdy(instantiation_output_8916),
    .systolic__hor_chans__3_3_rdy(instantiation_output_8435),
    .systolic__hor_chans__3_4(instantiation_output_8440),
    .systolic__hor_chans__3_4_vld(instantiation_output_8441),
    .systolic__result_chans__3_3(instantiation_output_8654),
    .systolic__result_chans__3_3_vld(instantiation_output_8655),
    .systolic__vert_chans__3_3_rdy(instantiation_output_8870),
    .systolic__vert_chans__4_3(instantiation_output_8914),
    .systolic__vert_chans__4_3_vld(instantiation_output_8915),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_1_next __systolic__SystolicArray__PE_1_next_inst8 (
    .rst(rst),
    .systolic__hor_chans__0_1(instantiation_output_8212),
    .systolic__hor_chans__0_1_vld(instantiation_output_8213),
    .systolic__hor_chans__0_2_rdy(instantiation_output_8221),
    .systolic__result_chans__0_1_rdy(instantiation_output_8474),
    .systolic__vert_chans__0_1(instantiation_output_8686),
    .systolic__vert_chans__0_1_vld(instantiation_output_8687),
    .systolic__vert_chans__1_1_rdy(instantiation_output_8734),
    .systolic__hor_chans__0_1_rdy(instantiation_output_8214),
    .systolic__hor_chans__0_2(instantiation_output_8219),
    .systolic__hor_chans__0_2_vld(instantiation_output_8220),
    .systolic__result_chans__0_1(instantiation_output_8472),
    .systolic__result_chans__0_1_vld(instantiation_output_8473),
    .systolic__vert_chans__0_1_rdy(instantiation_output_8688),
    .systolic__vert_chans__1_1(instantiation_output_8732),
    .systolic__vert_chans__1_1_vld(instantiation_output_8733),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_2_next __systolic__SystolicArray__PE_2_next_inst9 (
    .rst(rst),
    .systolic__hor_chans__0_2(instantiation_output_8225),
    .systolic__hor_chans__0_2_vld(instantiation_output_8226),
    .systolic__hor_chans__0_3_rdy(instantiation_output_8234),
    .systolic__result_chans__0_2_rdy(instantiation_output_8487),
    .systolic__vert_chans__0_2(instantiation_output_8699),
    .systolic__vert_chans__0_2_vld(instantiation_output_8700),
    .systolic__vert_chans__1_2_rdy(instantiation_output_8747),
    .systolic__hor_chans__0_2_rdy(instantiation_output_8227),
    .systolic__hor_chans__0_3(instantiation_output_8232),
    .systolic__hor_chans__0_3_vld(instantiation_output_8233),
    .systolic__result_chans__0_2(instantiation_output_8485),
    .systolic__result_chans__0_2_vld(instantiation_output_8486),
    .systolic__vert_chans__0_2_rdy(instantiation_output_8701),
    .systolic__vert_chans__1_2(instantiation_output_8745),
    .systolic__vert_chans__1_2_vld(instantiation_output_8746),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_3_next __systolic__SystolicArray__PE_3_next_inst10 (
    .rst(rst),
    .systolic__hor_chans__0_3(instantiation_output_8238),
    .systolic__hor_chans__0_3_vld(instantiation_output_8239),
    .systolic__hor_chans__0_4_rdy(instantiation_output_8247),
    .systolic__result_chans__0_3_rdy(instantiation_output_8500),
    .systolic__vert_chans__0_3(instantiation_output_8712),
    .systolic__vert_chans__0_3_vld(instantiation_output_8713),
    .systolic__vert_chans__1_3_rdy(instantiation_output_8760),
    .systolic__hor_chans__0_3_rdy(instantiation_output_8240),
    .systolic__hor_chans__0_4(instantiation_output_8245),
    .systolic__hor_chans__0_4_vld(instantiation_output_8246),
    .systolic__result_chans__0_3(instantiation_output_8498),
    .systolic__result_chans__0_3_vld(instantiation_output_8499),
    .systolic__vert_chans__0_3_rdy(instantiation_output_8714),
    .systolic__vert_chans__1_3(instantiation_output_8758),
    .systolic__vert_chans__1_3_vld(instantiation_output_8759),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_4_next __systolic__SystolicArray__PE_4_next_inst11 (
    .rst(rst),
    .systolic__hor_chans__1_0(instantiation_output_8264),
    .systolic__hor_chans__1_0_vld(instantiation_output_8265),
    .systolic__hor_chans__1_1_rdy(instantiation_output_8273),
    .systolic__result_chans__1_0_rdy(instantiation_output_8513),
    .systolic__vert_chans__1_0(instantiation_output_8725),
    .systolic__vert_chans__1_0_vld(instantiation_output_8726),
    .systolic__vert_chans__2_0_rdy(instantiation_output_8773),
    .systolic__hor_chans__1_0_rdy(instantiation_output_8266),
    .systolic__hor_chans__1_1(instantiation_output_8271),
    .systolic__hor_chans__1_1_vld(instantiation_output_8272),
    .systolic__result_chans__1_0(instantiation_output_8511),
    .systolic__result_chans__1_0_vld(instantiation_output_8512),
    .systolic__vert_chans__1_0_rdy(instantiation_output_8727),
    .systolic__vert_chans__2_0(instantiation_output_8771),
    .systolic__vert_chans__2_0_vld(instantiation_output_8772),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_5_next __systolic__SystolicArray__PE_5_next_inst12 (
    .rst(rst),
    .systolic__hor_chans__1_1(instantiation_output_8277),
    .systolic__hor_chans__1_1_vld(instantiation_output_8278),
    .systolic__hor_chans__1_2_rdy(instantiation_output_8286),
    .systolic__result_chans__1_1_rdy(instantiation_output_8526),
    .systolic__vert_chans__1_1(instantiation_output_8738),
    .systolic__vert_chans__1_1_vld(instantiation_output_8739),
    .systolic__vert_chans__2_1_rdy(instantiation_output_8786),
    .systolic__hor_chans__1_1_rdy(instantiation_output_8279),
    .systolic__hor_chans__1_2(instantiation_output_8284),
    .systolic__hor_chans__1_2_vld(instantiation_output_8285),
    .systolic__result_chans__1_1(instantiation_output_8524),
    .systolic__result_chans__1_1_vld(instantiation_output_8525),
    .systolic__vert_chans__1_1_rdy(instantiation_output_8740),
    .systolic__vert_chans__2_1(instantiation_output_8784),
    .systolic__vert_chans__2_1_vld(instantiation_output_8785),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_6_next __systolic__SystolicArray__PE_6_next_inst13 (
    .rst(rst),
    .systolic__hor_chans__1_2(instantiation_output_8290),
    .systolic__hor_chans__1_2_vld(instantiation_output_8291),
    .systolic__hor_chans__1_3_rdy(instantiation_output_8299),
    .systolic__result_chans__1_2_rdy(instantiation_output_8539),
    .systolic__vert_chans__1_2(instantiation_output_8751),
    .systolic__vert_chans__1_2_vld(instantiation_output_8752),
    .systolic__vert_chans__2_2_rdy(instantiation_output_8799),
    .systolic__hor_chans__1_2_rdy(instantiation_output_8292),
    .systolic__hor_chans__1_3(instantiation_output_8297),
    .systolic__hor_chans__1_3_vld(instantiation_output_8298),
    .systolic__result_chans__1_2(instantiation_output_8537),
    .systolic__result_chans__1_2_vld(instantiation_output_8538),
    .systolic__vert_chans__1_2_rdy(instantiation_output_8753),
    .systolic__vert_chans__2_2(instantiation_output_8797),
    .systolic__vert_chans__2_2_vld(instantiation_output_8798),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_7_next __systolic__SystolicArray__PE_7_next_inst14 (
    .rst(rst),
    .systolic__hor_chans__1_3(instantiation_output_8303),
    .systolic__hor_chans__1_3_vld(instantiation_output_8304),
    .systolic__hor_chans__1_4_rdy(instantiation_output_8312),
    .systolic__result_chans__1_3_rdy(instantiation_output_8552),
    .systolic__vert_chans__1_3(instantiation_output_8764),
    .systolic__vert_chans__1_3_vld(instantiation_output_8765),
    .systolic__vert_chans__2_3_rdy(instantiation_output_8812),
    .systolic__hor_chans__1_3_rdy(instantiation_output_8305),
    .systolic__hor_chans__1_4(instantiation_output_8310),
    .systolic__hor_chans__1_4_vld(instantiation_output_8311),
    .systolic__result_chans__1_3(instantiation_output_8550),
    .systolic__result_chans__1_3_vld(instantiation_output_8551),
    .systolic__vert_chans__1_3_rdy(instantiation_output_8766),
    .systolic__vert_chans__2_3(instantiation_output_8810),
    .systolic__vert_chans__2_3_vld(instantiation_output_8811),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_8_next __systolic__SystolicArray__PE_8_next_inst15 (
    .rst(rst),
    .systolic__hor_chans__2_0(instantiation_output_8329),
    .systolic__hor_chans__2_0_vld(instantiation_output_8330),
    .systolic__hor_chans__2_1_rdy(instantiation_output_8338),
    .systolic__result_chans__2_0_rdy(instantiation_output_8565),
    .systolic__vert_chans__2_0(instantiation_output_8777),
    .systolic__vert_chans__2_0_vld(instantiation_output_8778),
    .systolic__vert_chans__3_0_rdy(instantiation_output_8825),
    .systolic__hor_chans__2_0_rdy(instantiation_output_8331),
    .systolic__hor_chans__2_1(instantiation_output_8336),
    .systolic__hor_chans__2_1_vld(instantiation_output_8337),
    .systolic__result_chans__2_0(instantiation_output_8563),
    .systolic__result_chans__2_0_vld(instantiation_output_8564),
    .systolic__vert_chans__2_0_rdy(instantiation_output_8779),
    .systolic__vert_chans__3_0(instantiation_output_8823),
    .systolic__vert_chans__3_0_vld(instantiation_output_8824),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_9_next __systolic__SystolicArray__PE_9_next_inst16 (
    .rst(rst),
    .systolic__hor_chans__2_1(instantiation_output_8342),
    .systolic__hor_chans__2_1_vld(instantiation_output_8343),
    .systolic__hor_chans__2_2_rdy(instantiation_output_8351),
    .systolic__result_chans__2_1_rdy(instantiation_output_8578),
    .systolic__vert_chans__2_1(instantiation_output_8790),
    .systolic__vert_chans__2_1_vld(instantiation_output_8791),
    .systolic__vert_chans__3_1_rdy(instantiation_output_8838),
    .systolic__hor_chans__2_1_rdy(instantiation_output_8344),
    .systolic__hor_chans__2_2(instantiation_output_8349),
    .systolic__hor_chans__2_2_vld(instantiation_output_8350),
    .systolic__result_chans__2_1(instantiation_output_8576),
    .systolic__result_chans__2_1_vld(instantiation_output_8577),
    .systolic__vert_chans__2_1_rdy(instantiation_output_8792),
    .systolic__vert_chans__3_1(instantiation_output_8836),
    .systolic__vert_chans__3_1_vld(instantiation_output_8837),
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
    .push_data(instantiation_output_8193),
    .push_valid(instantiation_output_8194),
    .pop_ready(instantiation_output_8201),
    .push_ready(instantiation_output_8195),
    .pop_data(instantiation_output_8199),
    .pop_valid(instantiation_output_8200)
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
    .push_data(instantiation_output_8206),
    .push_valid(instantiation_output_8207),
    .pop_ready(instantiation_output_8214),
    .push_ready(instantiation_output_8208),
    .pop_data(instantiation_output_8212),
    .pop_valid(instantiation_output_8213)
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
    .push_data(instantiation_output_8219),
    .push_valid(instantiation_output_8220),
    .pop_ready(instantiation_output_8227),
    .push_ready(instantiation_output_8221),
    .pop_data(instantiation_output_8225),
    .pop_valid(instantiation_output_8226)
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
    .push_data(instantiation_output_8232),
    .push_valid(instantiation_output_8233),
    .pop_ready(instantiation_output_8240),
    .push_ready(instantiation_output_8234),
    .pop_data(instantiation_output_8238),
    .pop_valid(instantiation_output_8239)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__0_4 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8245),
    .push_valid(instantiation_output_8246),
    .pop_ready(instantiation_output_8253),
    .push_ready(instantiation_output_8247),
    .pop_data(instantiation_output_8251),
    .pop_valid(instantiation_output_8252)
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
    .push_data(instantiation_output_8258),
    .push_valid(instantiation_output_8259),
    .pop_ready(instantiation_output_8266),
    .push_ready(instantiation_output_8260),
    .pop_data(instantiation_output_8264),
    .pop_valid(instantiation_output_8265)
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
    .push_data(instantiation_output_8271),
    .push_valid(instantiation_output_8272),
    .pop_ready(instantiation_output_8279),
    .push_ready(instantiation_output_8273),
    .pop_data(instantiation_output_8277),
    .pop_valid(instantiation_output_8278)
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
    .push_data(instantiation_output_8284),
    .push_valid(instantiation_output_8285),
    .pop_ready(instantiation_output_8292),
    .push_ready(instantiation_output_8286),
    .pop_data(instantiation_output_8290),
    .pop_valid(instantiation_output_8291)
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
    .push_data(instantiation_output_8297),
    .push_valid(instantiation_output_8298),
    .pop_ready(instantiation_output_8305),
    .push_ready(instantiation_output_8299),
    .pop_data(instantiation_output_8303),
    .pop_valid(instantiation_output_8304)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__1_4 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8310),
    .push_valid(instantiation_output_8311),
    .pop_ready(instantiation_output_8318),
    .push_ready(instantiation_output_8312),
    .pop_data(instantiation_output_8316),
    .pop_valid(instantiation_output_8317)
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
    .push_data(instantiation_output_8323),
    .push_valid(instantiation_output_8324),
    .pop_ready(instantiation_output_8331),
    .push_ready(instantiation_output_8325),
    .pop_data(instantiation_output_8329),
    .pop_valid(instantiation_output_8330)
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
    .push_data(instantiation_output_8336),
    .push_valid(instantiation_output_8337),
    .pop_ready(instantiation_output_8344),
    .push_ready(instantiation_output_8338),
    .pop_data(instantiation_output_8342),
    .pop_valid(instantiation_output_8343)
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
    .push_data(instantiation_output_8349),
    .push_valid(instantiation_output_8350),
    .pop_ready(instantiation_output_8357),
    .push_ready(instantiation_output_8351),
    .pop_data(instantiation_output_8355),
    .pop_valid(instantiation_output_8356)
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
    .push_data(instantiation_output_8362),
    .push_valid(instantiation_output_8363),
    .pop_ready(instantiation_output_8370),
    .push_ready(instantiation_output_8364),
    .pop_data(instantiation_output_8368),
    .pop_valid(instantiation_output_8369)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__2_4 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8375),
    .push_valid(instantiation_output_8376),
    .pop_ready(instantiation_output_8383),
    .push_ready(instantiation_output_8377),
    .pop_data(instantiation_output_8381),
    .pop_valid(instantiation_output_8382)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__3_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8388),
    .push_valid(instantiation_output_8389),
    .pop_ready(instantiation_output_8396),
    .push_ready(instantiation_output_8390),
    .pop_data(instantiation_output_8394),
    .pop_valid(instantiation_output_8395)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__3_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8401),
    .push_valid(instantiation_output_8402),
    .pop_ready(instantiation_output_8409),
    .push_ready(instantiation_output_8403),
    .pop_data(instantiation_output_8407),
    .pop_valid(instantiation_output_8408)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__3_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8414),
    .push_valid(instantiation_output_8415),
    .pop_ready(instantiation_output_8422),
    .push_ready(instantiation_output_8416),
    .pop_data(instantiation_output_8420),
    .pop_valid(instantiation_output_8421)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__3_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8427),
    .push_valid(instantiation_output_8428),
    .pop_ready(instantiation_output_8435),
    .push_ready(instantiation_output_8429),
    .pop_data(instantiation_output_8433),
    .pop_valid(instantiation_output_8434)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__hor_chans__3_4 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8440),
    .push_valid(instantiation_output_8441),
    .pop_ready(instantiation_output_8448),
    .push_ready(instantiation_output_8442),
    .pop_data(instantiation_output_8446),
    .pop_valid(instantiation_output_8447)
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
    .push_data(instantiation_output_8459),
    .push_valid(instantiation_output_8460),
    .pop_ready(instantiation_output_8467),
    .push_ready(instantiation_output_8461),
    .pop_data(instantiation_output_8465),
    .pop_valid(instantiation_output_8466)
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
    .push_data(instantiation_output_8472),
    .push_valid(instantiation_output_8473),
    .pop_ready(instantiation_output_8480),
    .push_ready(instantiation_output_8474),
    .pop_data(instantiation_output_8478),
    .pop_valid(instantiation_output_8479)
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
    .push_data(instantiation_output_8485),
    .push_valid(instantiation_output_8486),
    .pop_ready(instantiation_output_8493),
    .push_ready(instantiation_output_8487),
    .pop_data(instantiation_output_8491),
    .pop_valid(instantiation_output_8492)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__0_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8498),
    .push_valid(instantiation_output_8499),
    .pop_ready(instantiation_output_8506),
    .push_ready(instantiation_output_8500),
    .pop_data(instantiation_output_8504),
    .pop_valid(instantiation_output_8505)
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
    .push_data(instantiation_output_8511),
    .push_valid(instantiation_output_8512),
    .pop_ready(instantiation_output_8519),
    .push_ready(instantiation_output_8513),
    .pop_data(instantiation_output_8517),
    .pop_valid(instantiation_output_8518)
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
    .push_data(instantiation_output_8524),
    .push_valid(instantiation_output_8525),
    .pop_ready(instantiation_output_8532),
    .push_ready(instantiation_output_8526),
    .pop_data(instantiation_output_8530),
    .pop_valid(instantiation_output_8531)
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
    .push_data(instantiation_output_8537),
    .push_valid(instantiation_output_8538),
    .pop_ready(instantiation_output_8545),
    .push_ready(instantiation_output_8539),
    .pop_data(instantiation_output_8543),
    .pop_valid(instantiation_output_8544)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__1_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8550),
    .push_valid(instantiation_output_8551),
    .pop_ready(instantiation_output_8558),
    .push_ready(instantiation_output_8552),
    .pop_data(instantiation_output_8556),
    .pop_valid(instantiation_output_8557)
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
    .push_data(instantiation_output_8563),
    .push_valid(instantiation_output_8564),
    .pop_ready(instantiation_output_8571),
    .push_ready(instantiation_output_8565),
    .pop_data(instantiation_output_8569),
    .pop_valid(instantiation_output_8570)
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
    .push_data(instantiation_output_8576),
    .push_valid(instantiation_output_8577),
    .pop_ready(instantiation_output_8584),
    .push_ready(instantiation_output_8578),
    .pop_data(instantiation_output_8582),
    .pop_valid(instantiation_output_8583)
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
    .push_data(instantiation_output_8589),
    .push_valid(instantiation_output_8590),
    .pop_ready(instantiation_output_8597),
    .push_ready(instantiation_output_8591),
    .pop_data(instantiation_output_8595),
    .pop_valid(instantiation_output_8596)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__2_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8602),
    .push_valid(instantiation_output_8603),
    .pop_ready(instantiation_output_8610),
    .push_ready(instantiation_output_8604),
    .pop_data(instantiation_output_8608),
    .pop_valid(instantiation_output_8609)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__3_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8615),
    .push_valid(instantiation_output_8616),
    .pop_ready(instantiation_output_8623),
    .push_ready(instantiation_output_8617),
    .pop_data(instantiation_output_8621),
    .pop_valid(instantiation_output_8622)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__3_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8628),
    .push_valid(instantiation_output_8629),
    .pop_ready(instantiation_output_8636),
    .push_ready(instantiation_output_8630),
    .pop_data(instantiation_output_8634),
    .pop_valid(instantiation_output_8635)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__3_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8641),
    .push_valid(instantiation_output_8642),
    .pop_ready(instantiation_output_8649),
    .push_ready(instantiation_output_8643),
    .pop_data(instantiation_output_8647),
    .pop_valid(instantiation_output_8648)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__result_chans__3_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8654),
    .push_valid(instantiation_output_8655),
    .pop_ready(instantiation_output_8662),
    .push_ready(instantiation_output_8656),
    .pop_data(instantiation_output_8660),
    .pop_valid(instantiation_output_8661)
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
    .push_data(instantiation_output_8667),
    .push_valid(instantiation_output_8668),
    .pop_ready(instantiation_output_8675),
    .push_ready(instantiation_output_8669),
    .pop_data(instantiation_output_8673),
    .pop_valid(instantiation_output_8674)
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
    .push_data(instantiation_output_8680),
    .push_valid(instantiation_output_8681),
    .pop_ready(instantiation_output_8688),
    .push_ready(instantiation_output_8682),
    .pop_data(instantiation_output_8686),
    .pop_valid(instantiation_output_8687)
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
    .push_data(instantiation_output_8693),
    .push_valid(instantiation_output_8694),
    .pop_ready(instantiation_output_8701),
    .push_ready(instantiation_output_8695),
    .pop_data(instantiation_output_8699),
    .pop_valid(instantiation_output_8700)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__0_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8706),
    .push_valid(instantiation_output_8707),
    .pop_ready(instantiation_output_8714),
    .push_ready(instantiation_output_8708),
    .pop_data(instantiation_output_8712),
    .pop_valid(instantiation_output_8713)
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
    .push_data(instantiation_output_8719),
    .push_valid(instantiation_output_8720),
    .pop_ready(instantiation_output_8727),
    .push_ready(instantiation_output_8721),
    .pop_data(instantiation_output_8725),
    .pop_valid(instantiation_output_8726)
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
    .push_data(instantiation_output_8732),
    .push_valid(instantiation_output_8733),
    .pop_ready(instantiation_output_8740),
    .push_ready(instantiation_output_8734),
    .pop_data(instantiation_output_8738),
    .pop_valid(instantiation_output_8739)
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
    .push_data(instantiation_output_8745),
    .push_valid(instantiation_output_8746),
    .pop_ready(instantiation_output_8753),
    .push_ready(instantiation_output_8747),
    .pop_data(instantiation_output_8751),
    .pop_valid(instantiation_output_8752)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__1_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8758),
    .push_valid(instantiation_output_8759),
    .pop_ready(instantiation_output_8766),
    .push_ready(instantiation_output_8760),
    .pop_data(instantiation_output_8764),
    .pop_valid(instantiation_output_8765)
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
    .push_data(instantiation_output_8771),
    .push_valid(instantiation_output_8772),
    .pop_ready(instantiation_output_8779),
    .push_ready(instantiation_output_8773),
    .pop_data(instantiation_output_8777),
    .pop_valid(instantiation_output_8778)
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
    .push_data(instantiation_output_8784),
    .push_valid(instantiation_output_8785),
    .pop_ready(instantiation_output_8792),
    .push_ready(instantiation_output_8786),
    .pop_data(instantiation_output_8790),
    .pop_valid(instantiation_output_8791)
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
    .push_data(instantiation_output_8797),
    .push_valid(instantiation_output_8798),
    .pop_ready(instantiation_output_8805),
    .push_ready(instantiation_output_8799),
    .pop_data(instantiation_output_8803),
    .pop_valid(instantiation_output_8804)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__2_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8810),
    .push_valid(instantiation_output_8811),
    .pop_ready(instantiation_output_8818),
    .push_ready(instantiation_output_8812),
    .pop_data(instantiation_output_8816),
    .pop_valid(instantiation_output_8817)
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
    .push_data(instantiation_output_8823),
    .push_valid(instantiation_output_8824),
    .pop_ready(instantiation_output_8831),
    .push_ready(instantiation_output_8825),
    .pop_data(instantiation_output_8829),
    .pop_valid(instantiation_output_8830)
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
    .push_data(instantiation_output_8836),
    .push_valid(instantiation_output_8837),
    .pop_ready(instantiation_output_8844),
    .push_ready(instantiation_output_8838),
    .pop_data(instantiation_output_8842),
    .pop_valid(instantiation_output_8843)
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
    .push_data(instantiation_output_8849),
    .push_valid(instantiation_output_8850),
    .pop_ready(instantiation_output_8857),
    .push_ready(instantiation_output_8851),
    .pop_data(instantiation_output_8855),
    .pop_valid(instantiation_output_8856)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__3_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8862),
    .push_valid(instantiation_output_8863),
    .pop_ready(instantiation_output_8870),
    .push_ready(instantiation_output_8864),
    .pop_data(instantiation_output_8868),
    .pop_valid(instantiation_output_8869)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__4_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8875),
    .push_valid(instantiation_output_8876),
    .pop_ready(instantiation_output_8883),
    .push_ready(instantiation_output_8877),
    .pop_data(instantiation_output_8881),
    .pop_valid(instantiation_output_8882)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__4_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8888),
    .push_valid(instantiation_output_8889),
    .pop_ready(instantiation_output_8896),
    .push_ready(instantiation_output_8890),
    .pop_data(instantiation_output_8894),
    .pop_valid(instantiation_output_8895)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__4_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8901),
    .push_valid(instantiation_output_8902),
    .pop_ready(instantiation_output_8909),
    .push_ready(instantiation_output_8903),
    .pop_data(instantiation_output_8907),
    .pop_valid(instantiation_output_8908)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic__vert_chans__4_3 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_8914),
    .push_valid(instantiation_output_8915),
    .pop_ready(instantiation_output_8922),
    .push_ready(instantiation_output_8916),
    .pop_data(instantiation_output_8920),
    .pop_valid(instantiation_output_8921)
  );
  assign systolic__arg0_rdy = instantiation_output_8182;
  assign systolic__arg1_rdy = instantiation_output_8188;
  assign systolic__out0 = {{instantiation_output_8452[3][3], instantiation_output_8452[3][2], instantiation_output_8452[3][1], instantiation_output_8452[3][0]}, {instantiation_output_8452[2][3], instantiation_output_8452[2][2], instantiation_output_8452[2][1], instantiation_output_8452[2][0]}, {instantiation_output_8452[1][3], instantiation_output_8452[1][2], instantiation_output_8452[1][1], instantiation_output_8452[1][0]}, {instantiation_output_8452[0][3], instantiation_output_8452[0][2], instantiation_output_8452[0][1], instantiation_output_8452[0][0]}};
  assign systolic__out0_vld = instantiation_output_8453;
endmodule
