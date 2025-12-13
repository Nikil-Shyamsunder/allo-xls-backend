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
  wire [31:0] p1_array_3581_init[4];
  assign p1_array_3581_init = '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000};
  wire [31:0] p2_array_3581_init[4];
  assign p2_array_3581_init = '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000};
  wire [31:0] p2_array_3631_init[4];
  assign p2_array_3631_init = '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000};
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
  wire or_8937;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_all_active_inputs_valid;
  wire [2:0] unexpand_for_next_value_301_2_case_1;
  wire p2_enable;
  wire p2_stage_done;
  wire eq_3437;
  wire p2_data_enable;
  wire p2_not_valid;
  wire p1_all_active_inputs_valid;
  wire systolic__arg0_not_pred;
  wire p1_enable;
  wire p1_stage_done;
  wire p1_data_enable;
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
  wire [1:0] ____state_0__next_value_predicates;
  wire [1:0] ____state_2__next_value_predicates;
  wire p0_stage_done;
  wire [2:0] one_hot_3484;
  wire [2:0] one_hot_3485;
  wire p0_data_enable;
  wire and_3830;
  wire systolic__arg0_valid_inv;
  wire systolic__arg1_valid_inv;
  wire systolic__hor_chans__0_4_valid_inv;
  wire systolic__hor_chans__1_4_valid_inv;
  wire systolic__hor_chans__2_4_valid_inv;
  wire systolic__hor_chans__3_4_valid_inv;
  wire and_3832;
  wire systolic__result_chans__0_0_valid_inv;
  wire systolic__result_chans__0_1_valid_inv;
  wire systolic__result_chans__0_2_valid_inv;
  wire systolic__result_chans__0_3_valid_inv;
  wire systolic__result_chans__1_0_valid_inv;
  wire systolic__result_chans__1_1_valid_inv;
  wire and_3838;
  wire systolic__result_chans__1_2_valid_inv;
  wire systolic__result_chans__1_3_valid_inv;
  wire systolic__result_chans__2_0_valid_inv;
  wire systolic__result_chans__2_1_valid_inv;
  wire systolic__result_chans__2_2_valid_inv;
  wire systolic__result_chans__2_3_valid_inv;
  wire and_3844;
  wire systolic__result_chans__3_0_valid_inv;
  wire systolic__result_chans__3_1_valid_inv;
  wire systolic__result_chans__3_2_valid_inv;
  wire systolic__result_chans__3_3_valid_inv;
  wire systolic__vert_chans__4_0_valid_inv;
  wire systolic__vert_chans__4_1_valid_inv;
  wire systolic__vert_chans__4_2_valid_inv;
  wire systolic__vert_chans__4_3_valid_inv;
  wire and_3801;
  wire and_3815;
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
  wire [1:0] concat_3804;
  wire [1:0] concat_3817;
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
  wire or_8859;
  wire or_8863;
  wire p3_enable;
  wire [31:0] systolic__result_chans__2_3_select;
  wire [31:0] systolic__result_chans__2_0_select;
  wire [31:0] systolic__result_chans__2_1_select;
  wire [31:0] systolic__result_chans__2_2_select;
  wire [31:0] array_3631[4];
  wire [31:0] systolic__result_chans__1_1_select;
  wire [31:0] systolic__result_chans__1_0_select;
  wire [31:0] array_3581[4];
  wire [31:0] one_hot_sel_3805[4][4];
  wire or_3806;
  wire [31:0] one_hot_sel_3812[4][4];
  wire [2:0] one_hot_sel_3818;
  wire or_3819;
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
  assign or_8937 = ~p2_eq_3480 | systolic__out0_load_en | __systolic__out0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & p3_all_active_inputs_valid & or_8937;
  assign p3_not_valid = ~p2_valid;
  assign p2_all_active_inputs_valid = (~p1_eq_3480 | __systolic__result_chans__1_2_valid_reg) & (~p1_eq_3480 | __systolic__result_chans__1_3_valid_reg) & (~p1_eq_3480 | __systolic__result_chans__2_0_valid_reg) & (~p1_eq_3480 | __systolic__result_chans__2_1_valid_reg) & (~p1_eq_3480 | __systolic__result_chans__2_2_valid_reg) & (~p1_eq_3480 | __systolic__result_chans__2_3_valid_reg);
  assign unexpand_for_next_value_301_2_case_1 = 3'h0;
  assign p2_enable = p3_stage_done | p3_not_valid;
  assign p2_stage_done = p1_valid & p2_all_active_inputs_valid;
  assign eq_3437 = ____state_2 == unexpand_for_next_value_301_2_case_1;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_not_valid = ~p1_valid;
  assign p1_all_active_inputs_valid = (~p0_eq_3480 | __systolic__result_chans__0_0_valid_reg) & (~p0_eq_3480 | __systolic__result_chans__0_1_valid_reg) & (~p0_eq_3480 | __systolic__result_chans__0_2_valid_reg) & (~p0_eq_3480 | __systolic__result_chans__0_3_valid_reg) & (~p0_eq_3480 | __systolic__result_chans__1_0_valid_reg) & (~p0_eq_3480 | __systolic__result_chans__1_1_valid_reg);
  assign systolic__arg0_not_pred = ~eq_3437;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & p1_all_active_inputs_valid;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign systolic__hor_chans__0_0_not_pred = ____state_2[2];
  assign p0_all_active_inputs_valid = (systolic__arg0_not_pred | __systolic__arg0_valid_reg) & (systolic__arg0_not_pred | __systolic__arg1_valid_reg);
  assign p0_enable = p1_data_enable | p1_not_valid;
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
  assign ____state_0__next_value_predicates = {eq_3480, eq_3437};
  assign ____state_2__next_value_predicates = {~eq_3480, eq_3480};
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign one_hot_3484 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign one_hot_3485 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign and_3830 = p0_data_enable & eq_3437;
  assign systolic__arg0_valid_inv = ~__systolic__arg0_valid_reg;
  assign systolic__arg1_valid_inv = ~__systolic__arg1_valid_reg;
  assign systolic__hor_chans__0_4_valid_inv = ~__systolic__hor_chans__0_4_valid_reg;
  assign systolic__hor_chans__1_4_valid_inv = ~__systolic__hor_chans__1_4_valid_reg;
  assign systolic__hor_chans__2_4_valid_inv = ~__systolic__hor_chans__2_4_valid_reg;
  assign systolic__hor_chans__3_4_valid_inv = ~__systolic__hor_chans__3_4_valid_reg;
  assign and_3832 = p1_data_enable & p0_eq_3480;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign systolic__result_chans__0_2_valid_inv = ~__systolic__result_chans__0_2_valid_reg;
  assign systolic__result_chans__0_3_valid_inv = ~__systolic__result_chans__0_3_valid_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign and_3838 = p2_data_enable & p1_eq_3480;
  assign systolic__result_chans__1_2_valid_inv = ~__systolic__result_chans__1_2_valid_reg;
  assign systolic__result_chans__1_3_valid_inv = ~__systolic__result_chans__1_3_valid_reg;
  assign systolic__result_chans__2_0_valid_inv = ~__systolic__result_chans__2_0_valid_reg;
  assign systolic__result_chans__2_1_valid_inv = ~__systolic__result_chans__2_1_valid_reg;
  assign systolic__result_chans__2_2_valid_inv = ~__systolic__result_chans__2_2_valid_reg;
  assign systolic__result_chans__2_3_valid_inv = ~__systolic__result_chans__2_3_valid_reg;
  assign and_3844 = p3_stage_done & p2_eq_3480;
  assign systolic__result_chans__3_0_valid_inv = ~__systolic__result_chans__3_0_valid_reg;
  assign systolic__result_chans__3_1_valid_inv = ~__systolic__result_chans__3_1_valid_reg;
  assign systolic__result_chans__3_2_valid_inv = ~__systolic__result_chans__3_2_valid_reg;
  assign systolic__result_chans__3_3_valid_inv = ~__systolic__result_chans__3_3_valid_reg;
  assign systolic__vert_chans__4_0_valid_inv = ~__systolic__vert_chans__4_0_valid_reg;
  assign systolic__vert_chans__4_1_valid_inv = ~__systolic__vert_chans__4_1_valid_reg;
  assign systolic__vert_chans__4_2_valid_inv = ~__systolic__vert_chans__4_2_valid_reg;
  assign systolic__vert_chans__4_3_valid_inv = ~__systolic__vert_chans__4_3_valid_reg;
  assign and_3801 = eq_3480 & p0_data_enable;
  assign and_3815 = ~eq_3480 & p0_data_enable;
  assign systolic__arg0_select = eq_3437 == 1'h0 ? literal_3439 : __systolic__arg0_reg;
  assign systolic__arg1_select = eq_3437 == 1'h0 ? literal_3443 : __systolic__arg1_reg;
  assign systolic__result_chans__3_0_select = p2_eq_3480 ? __systolic__result_chans__3_0_reg : 32'h0000_0000;
  assign systolic__result_chans__3_1_select = p2_eq_3480 ? __systolic__result_chans__3_1_reg : 32'h0000_0000;
  assign systolic__result_chans__3_2_select = p2_eq_3480 ? __systolic__result_chans__3_2_reg : 32'h0000_0000;
  assign systolic__result_chans__3_3_select = p2_eq_3480 ? __systolic__result_chans__3_3_reg : 32'h0000_0000;
  assign systolic__arg0_valid_load_en = and_3830 | systolic__arg0_valid_inv;
  assign systolic__arg1_valid_load_en = and_3830 | systolic__arg1_valid_inv;
  assign systolic__hor_chans__0_4_valid_load_en = p0_data_enable | systolic__hor_chans__0_4_valid_inv;
  assign systolic__hor_chans__1_4_valid_load_en = p0_data_enable | systolic__hor_chans__1_4_valid_inv;
  assign systolic__hor_chans__2_4_valid_load_en = p0_data_enable | systolic__hor_chans__2_4_valid_inv;
  assign systolic__hor_chans__3_4_valid_load_en = p0_data_enable | systolic__hor_chans__3_4_valid_inv;
  assign systolic__result_chans__0_0_valid_load_en = and_3832 | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_1_valid_load_en = and_3832 | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__0_2_valid_load_en = and_3832 | systolic__result_chans__0_2_valid_inv;
  assign systolic__result_chans__0_3_valid_load_en = and_3832 | systolic__result_chans__0_3_valid_inv;
  assign systolic__result_chans__1_0_valid_load_en = and_3832 | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_1_valid_load_en = and_3832 | systolic__result_chans__1_1_valid_inv;
  assign systolic__result_chans__1_2_valid_load_en = and_3838 | systolic__result_chans__1_2_valid_inv;
  assign systolic__result_chans__1_3_valid_load_en = and_3838 | systolic__result_chans__1_3_valid_inv;
  assign systolic__result_chans__2_0_valid_load_en = and_3838 | systolic__result_chans__2_0_valid_inv;
  assign systolic__result_chans__2_1_valid_load_en = and_3838 | systolic__result_chans__2_1_valid_inv;
  assign systolic__result_chans__2_2_valid_load_en = and_3838 | systolic__result_chans__2_2_valid_inv;
  assign systolic__result_chans__2_3_valid_load_en = and_3838 | systolic__result_chans__2_3_valid_inv;
  assign systolic__result_chans__3_0_valid_load_en = and_3844 | systolic__result_chans__3_0_valid_inv;
  assign systolic__result_chans__3_1_valid_load_en = and_3844 | systolic__result_chans__3_1_valid_inv;
  assign systolic__result_chans__3_2_valid_load_en = and_3844 | systolic__result_chans__3_2_valid_inv;
  assign systolic__result_chans__3_3_valid_load_en = and_3844 | systolic__result_chans__3_3_valid_inv;
  assign systolic__vert_chans__4_0_valid_load_en = p0_data_enable | systolic__vert_chans__4_0_valid_inv;
  assign systolic__vert_chans__4_1_valid_load_en = p0_data_enable | systolic__vert_chans__4_1_valid_inv;
  assign systolic__vert_chans__4_2_valid_load_en = p0_data_enable | systolic__vert_chans__4_2_valid_inv;
  assign systolic__vert_chans__4_3_valid_load_en = p0_data_enable | systolic__vert_chans__4_3_valid_inv;
  assign ____state_0__at_most_one_next_value = eq_3480 == one_hot_3484[1] & eq_3437 == one_hot_3484[0];
  assign ____state_2__at_most_one_next_value = ~eq_3480 == one_hot_3485[1] & eq_3480 == one_hot_3485[0];
  assign systolic__result_chans__1_2_select = p1_eq_3480 ? __systolic__result_chans__1_2_reg : 32'h0000_0000;
  assign systolic__result_chans__1_3_select = p1_eq_3480 ? __systolic__result_chans__1_3_reg : 32'h0000_0000;
  assign systolic__result_chans__0_0_select = p0_eq_3480 ? __systolic__result_chans__0_0_reg : 32'h0000_0000;
  assign systolic__result_chans__0_1_select = p0_eq_3480 ? __systolic__result_chans__0_1_reg : 32'h0000_0000;
  assign systolic__result_chans__0_2_select = p0_eq_3480 ? __systolic__result_chans__0_2_reg : 32'h0000_0000;
  assign systolic__result_chans__0_3_select = p0_eq_3480 ? __systolic__result_chans__0_3_reg : 32'h0000_0000;
  assign concat_3804 = {and_3801, and_3830};
  assign concat_3817 = {and_3815, and_3801};
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
  assign __systolic__out0_valid_and_all_active_outputs_ready = __systolic__out0_vld_buf & or_8937;
  assign __systolic__out0_valid_and_ready_txfr = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_load_en;
  assign a_mat2 = eq_3437 == 1'h0 ? ____state_0 : systolic__arg0_select;
  assign b_mat2 = eq_3437 == 1'h0 ? ____state_1 : systolic__arg1_select;
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
  assign or_8859 = ~p0_stage_done | ____state_0__at_most_one_next_value | rst;
  assign or_8863 = ~p0_stage_done | ____state_2__at_most_one_next_value | rst;
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
  assign one_hot_sel_3805[0][0] = systolic__arg0_select[0][0] & {32{concat_3804[0]}} | literal_3286[0][0] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[0][1] = systolic__arg0_select[0][1] & {32{concat_3804[0]}} | literal_3286[0][1] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[0][2] = systolic__arg0_select[0][2] & {32{concat_3804[0]}} | literal_3286[0][2] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[0][3] = systolic__arg0_select[0][3] & {32{concat_3804[0]}} | literal_3286[0][3] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[1][0] = systolic__arg0_select[1][0] & {32{concat_3804[0]}} | literal_3286[1][0] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[1][1] = systolic__arg0_select[1][1] & {32{concat_3804[0]}} | literal_3286[1][1] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[1][2] = systolic__arg0_select[1][2] & {32{concat_3804[0]}} | literal_3286[1][2] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[1][3] = systolic__arg0_select[1][3] & {32{concat_3804[0]}} | literal_3286[1][3] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[2][0] = systolic__arg0_select[2][0] & {32{concat_3804[0]}} | literal_3286[2][0] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[2][1] = systolic__arg0_select[2][1] & {32{concat_3804[0]}} | literal_3286[2][1] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[2][2] = systolic__arg0_select[2][2] & {32{concat_3804[0]}} | literal_3286[2][2] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[2][3] = systolic__arg0_select[2][3] & {32{concat_3804[0]}} | literal_3286[2][3] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[3][0] = systolic__arg0_select[3][0] & {32{concat_3804[0]}} | literal_3286[3][0] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[3][1] = systolic__arg0_select[3][1] & {32{concat_3804[0]}} | literal_3286[3][1] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[3][2] = systolic__arg0_select[3][2] & {32{concat_3804[0]}} | literal_3286[3][2] & {32{concat_3804[1]}};
  assign one_hot_sel_3805[3][3] = systolic__arg0_select[3][3] & {32{concat_3804[0]}} | literal_3286[3][3] & {32{concat_3804[1]}};
  assign or_3806 = and_3801 | and_3830;
  assign one_hot_sel_3812[0][0] = systolic__arg1_select[0][0] & {32{concat_3804[0]}} | literal_3286[0][0] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[0][1] = systolic__arg1_select[0][1] & {32{concat_3804[0]}} | literal_3286[0][1] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[0][2] = systolic__arg1_select[0][2] & {32{concat_3804[0]}} | literal_3286[0][2] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[0][3] = systolic__arg1_select[0][3] & {32{concat_3804[0]}} | literal_3286[0][3] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[1][0] = systolic__arg1_select[1][0] & {32{concat_3804[0]}} | literal_3286[1][0] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[1][1] = systolic__arg1_select[1][1] & {32{concat_3804[0]}} | literal_3286[1][1] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[1][2] = systolic__arg1_select[1][2] & {32{concat_3804[0]}} | literal_3286[1][2] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[1][3] = systolic__arg1_select[1][3] & {32{concat_3804[0]}} | literal_3286[1][3] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[2][0] = systolic__arg1_select[2][0] & {32{concat_3804[0]}} | literal_3286[2][0] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[2][1] = systolic__arg1_select[2][1] & {32{concat_3804[0]}} | literal_3286[2][1] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[2][2] = systolic__arg1_select[2][2] & {32{concat_3804[0]}} | literal_3286[2][2] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[2][3] = systolic__arg1_select[2][3] & {32{concat_3804[0]}} | literal_3286[2][3] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[3][0] = systolic__arg1_select[3][0] & {32{concat_3804[0]}} | literal_3286[3][0] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[3][1] = systolic__arg1_select[3][1] & {32{concat_3804[0]}} | literal_3286[3][1] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[3][2] = systolic__arg1_select[3][2] & {32{concat_3804[0]}} | literal_3286[3][2] & {32{concat_3804[1]}};
  assign one_hot_sel_3812[3][3] = systolic__arg1_select[3][3] & {32{concat_3804[0]}} | literal_3286[3][3] & {32{concat_3804[1]}};
  assign one_hot_sel_3818 = unexpand_for_next_value_301_2_case_1 & {3{concat_3817[0]}} | unexpand_for_next_value_301_2_case_0 & {3{concat_3817[1]}};
  assign or_3819 = and_3815 | and_3801;
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
    if (rst) begin
      ____state_2 <= 3'h0;
      ____state_0 <= ____state_0_init;
      ____state_1 <= ____state_1_init;
      p0_bit_slice_3454 <= 1'h0;
      p0_eq_3480 <= 1'h0;
      p1_eq_3480 <= 1'h0;
      p1_tuple_3575_index1 <= 32'h0000_0000;
      p1_c10 <= 32'h0000_0000;
      p1_array_3581 <= p1_array_3581_init;
      p2_eq_3480 <= 1'h0;
      p2_tuple_3624_index1 <= 32'h0000_0000;
      p2_c20 <= 32'h0000_0000;
      p2_c21 <= 32'h0000_0000;
      p2_c22 <= 32'h0000_0000;
      p2_array_3581 <= p2_array_3581_init;
      p2_array_3631 <= p2_array_3631_init;
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
      ____state_2 <= or_3819 ? one_hot_sel_3818 : ____state_2;
      ____state_0 <= or_3806 ? one_hot_sel_3805 : ____state_0;
      ____state_1 <= or_3806 ? one_hot_sel_3812 : ____state_1;
      p0_bit_slice_3454 <= p0_data_enable ? systolic__hor_chans__0_0_not_pred : p0_bit_slice_3454;
      p0_eq_3480 <= p0_data_enable ? eq_3480 : p0_eq_3480;
      p1_eq_3480 <= p1_data_enable ? p0_eq_3480 : p1_eq_3480;
      p1_tuple_3575_index1 <= p1_data_enable ? systolic__result_chans__1_1_select : p1_tuple_3575_index1;
      p1_c10 <= p1_data_enable ? systolic__result_chans__1_0_select : p1_c10;
      p1_array_3581 <= p1_data_enable ? array_3581 : p1_array_3581;
      p2_eq_3480 <= p2_data_enable ? p1_eq_3480 : p2_eq_3480;
      p2_tuple_3624_index1 <= p2_data_enable ? systolic__result_chans__2_3_select : p2_tuple_3624_index1;
      p2_c20 <= p2_data_enable ? systolic__result_chans__2_0_select : p2_c20;
      p2_c21 <= p2_data_enable ? systolic__result_chans__2_1_select : p2_c21;
      p2_c22 <= p2_data_enable ? systolic__result_chans__2_2_select : p2_c22;
      p2_array_3581 <= p2_data_enable ? p1_array_3581 : p2_array_3581;
      p2_array_3631 <= p2_data_enable ? array_3631 : p2_array_3631;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8859))) or_8859) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8859))) or_8859) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8863))) or_8863) else $fatal(0, "More than one next_value fired for state element: __state_2");
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
  wire or_8957;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_4361;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__0_0_valid_inv;
  wire systolic__vert_chans__0_0_valid_inv;
  wire and_4431;
  wire and_4432;
  wire systolic__hor_chans__0_0_valid_load_en;
  wire systolic__vert_chans__0_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4433;
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
  wire or_8865;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_4434;
  wire or_4435;
  wire [1:0] one_hot_sel_4440;
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
  assign or_8957 = ~should_output | systolic__result_chans__0_0_load_en | __systolic__result_chans__0_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_8957;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__0_0_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_4361 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_0_valid_reg;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign and_4431 = ~should_output & p3_stage_done;
  assign and_4432 = should_output & p3_stage_done;
  assign systolic__hor_chans__0_0_valid_load_en = p0_data_enable | systolic__hor_chans__0_0_valid_inv;
  assign systolic__vert_chans__0_0_valid_load_en = p1_data_enable | systolic__vert_chans__0_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_4361[1] & should_output == one_hot_4361[0];
  assign concat_4433 = {and_4431, and_4432};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_331_1_case_1 = 2'h0;
  assign unexpand_for_next_value_331_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_valid_and_ready_txfr = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_load_en;
  assign __systolic__vert_chans__1_0_valid_and_ready_txfr = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_load_en;
  assign __systolic__result_chans__0_0_valid_and_all_active_outputs_ready = __systolic__result_chans__0_0_vld_buf & or_8957;
  assign __systolic__result_chans__0_0_valid_and_ready_txfr = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_load_en;
  assign systolic__hor_chans__0_0_load_en = systolic__hor_chans__0_0_vld & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = systolic__vert_chans__0_0_vld & systolic__vert_chans__0_0_valid_load_en;
  assign or_8865 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_4434 = 32'h0000_0000 & {32{concat_4433[0]}} | new_accum & {32{concat_4433[1]}};
  assign or_4435 = and_4431 | and_4432;
  assign one_hot_sel_4440 = unexpand_for_next_value_331_1_case_1 & {2{concat_4433[0]}} | unexpand_for_next_value_331_1_case_0 & {2{concat_4433[1]}};
  assign __systolic__hor_chans__0_1_not_stage_load = ~__systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_has_been_sent_reg_load_en = __systolic__hor_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_0_has_been_sent_reg_load_en = __systolic__vert_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_not_stage_load = ~__systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_has_been_sent_reg_load_en = __systolic__result_chans__0_0_valid_and_ready_txfr | __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__0_0_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__0_0_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_4435 ? one_hot_sel_4440 : ____state_1;
      ____state_0 <= or_4435 ? one_hot_sel_4434 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8865))) or_8865) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8865))) or_8865) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_8973;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_4598;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__2_2_valid_inv;
  wire systolic__vert_chans__2_2_valid_inv;
  wire and_4668;
  wire and_4669;
  wire systolic__hor_chans__2_2_valid_load_en;
  wire systolic__vert_chans__2_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4670;
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
  wire or_8869;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_4671;
  wire or_4672;
  wire [1:0] one_hot_sel_4677;
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
  assign or_8973 = ~should_output | systolic__result_chans__2_2_load_en | __systolic__result_chans__2_2_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_8973;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__2_2_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_4598 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__2_2_valid_reg;
  assign systolic__hor_chans__2_2_valid_inv = ~__systolic__hor_chans__2_2_valid_reg;
  assign systolic__vert_chans__2_2_valid_inv = ~__systolic__vert_chans__2_2_valid_reg;
  assign and_4668 = ~should_output & p3_stage_done;
  assign and_4669 = should_output & p3_stage_done;
  assign systolic__hor_chans__2_2_valid_load_en = p0_data_enable | systolic__hor_chans__2_2_valid_inv;
  assign systolic__vert_chans__2_2_valid_load_en = p1_data_enable | systolic__vert_chans__2_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_4598[1] & should_output == one_hot_4598[0];
  assign concat_4670 = {and_4668, and_4669};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_631_1_case_1 = 2'h0;
  assign unexpand_for_next_value_631_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_3_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__2_3_valid_and_ready_txfr = __systolic__hor_chans__2_3_valid_and_not_has_been_sent & systolic__hor_chans__2_3_load_en;
  assign __systolic__vert_chans__3_2_valid_and_ready_txfr = __systolic__vert_chans__3_2_valid_and_not_has_been_sent & systolic__vert_chans__3_2_load_en;
  assign __systolic__result_chans__2_2_valid_and_all_active_outputs_ready = __systolic__result_chans__2_2_vld_buf & or_8973;
  assign __systolic__result_chans__2_2_valid_and_ready_txfr = __systolic__result_chans__2_2_valid_and_not_has_been_sent & systolic__result_chans__2_2_load_en;
  assign systolic__hor_chans__2_2_load_en = systolic__hor_chans__2_2_vld & systolic__hor_chans__2_2_valid_load_en;
  assign systolic__vert_chans__2_2_load_en = systolic__vert_chans__2_2_vld & systolic__vert_chans__2_2_valid_load_en;
  assign or_8869 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_4671 = 32'h0000_0000 & {32{concat_4670[0]}} | new_accum & {32{concat_4670[1]}};
  assign or_4672 = and_4668 | and_4669;
  assign one_hot_sel_4677 = unexpand_for_next_value_631_1_case_1 & {2{concat_4670[0]}} | unexpand_for_next_value_631_1_case_0 & {2{concat_4670[1]}};
  assign __systolic__hor_chans__2_3_not_stage_load = ~__systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_3_has_been_sent_reg_load_en = __systolic__hor_chans__2_3_valid_and_ready_txfr | __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_2_has_been_sent_reg_load_en = __systolic__vert_chans__3_2_valid_and_ready_txfr | __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_2_not_stage_load = ~__systolic__result_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_2_has_been_sent_reg_load_en = __systolic__result_chans__2_2_valid_and_ready_txfr | __systolic__result_chans__2_2_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__2_2_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__2_2_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_4672 ? one_hot_sel_4677 : ____state_1;
      ____state_0 <= or_4672 ? one_hot_sel_4671 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8869))) or_8869) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8869))) or_8869) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_8989;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_4835;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__2_3_valid_inv;
  wire systolic__vert_chans__2_3_valid_inv;
  wire and_4905;
  wire and_4906;
  wire systolic__hor_chans__2_3_valid_load_en;
  wire systolic__vert_chans__2_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4907;
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
  wire or_8873;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_4908;
  wire or_4909;
  wire [1:0] one_hot_sel_4914;
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
  assign or_8989 = ~should_output | systolic__result_chans__2_3_load_en | __systolic__result_chans__2_3_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_8989;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__2_3_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_4835 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__2_3_valid_reg;
  assign systolic__hor_chans__2_3_valid_inv = ~__systolic__hor_chans__2_3_valid_reg;
  assign systolic__vert_chans__2_3_valid_inv = ~__systolic__vert_chans__2_3_valid_reg;
  assign and_4905 = ~should_output & p3_stage_done;
  assign and_4906 = should_output & p3_stage_done;
  assign systolic__hor_chans__2_3_valid_load_en = p0_data_enable | systolic__hor_chans__2_3_valid_inv;
  assign systolic__vert_chans__2_3_valid_load_en = p1_data_enable | systolic__vert_chans__2_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_4835[1] & should_output == one_hot_4835[0];
  assign concat_4907 = {and_4905, and_4906};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_661_1_case_1 = 2'h0;
  assign unexpand_for_next_value_661_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_4_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__2_4_valid_and_ready_txfr = __systolic__hor_chans__2_4_valid_and_not_has_been_sent & systolic__hor_chans__2_4_load_en;
  assign __systolic__vert_chans__3_3_valid_and_ready_txfr = __systolic__vert_chans__3_3_valid_and_not_has_been_sent & systolic__vert_chans__3_3_load_en;
  assign __systolic__result_chans__2_3_valid_and_all_active_outputs_ready = __systolic__result_chans__2_3_vld_buf & or_8989;
  assign __systolic__result_chans__2_3_valid_and_ready_txfr = __systolic__result_chans__2_3_valid_and_not_has_been_sent & systolic__result_chans__2_3_load_en;
  assign systolic__hor_chans__2_3_load_en = systolic__hor_chans__2_3_vld & systolic__hor_chans__2_3_valid_load_en;
  assign systolic__vert_chans__2_3_load_en = systolic__vert_chans__2_3_vld & systolic__vert_chans__2_3_valid_load_en;
  assign or_8873 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_4908 = 32'h0000_0000 & {32{concat_4907[0]}} | new_accum & {32{concat_4907[1]}};
  assign or_4909 = and_4905 | and_4906;
  assign one_hot_sel_4914 = unexpand_for_next_value_661_1_case_1 & {2{concat_4907[0]}} | unexpand_for_next_value_661_1_case_0 & {2{concat_4907[1]}};
  assign __systolic__hor_chans__2_4_not_stage_load = ~__systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_4_has_been_sent_reg_load_en = __systolic__hor_chans__2_4_valid_and_ready_txfr | __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_3_has_been_sent_reg_load_en = __systolic__vert_chans__3_3_valid_and_ready_txfr | __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_3_not_stage_load = ~__systolic__result_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_3_has_been_sent_reg_load_en = __systolic__result_chans__2_3_valid_and_ready_txfr | __systolic__result_chans__2_3_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__2_3_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__2_3_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_4909 ? one_hot_sel_4914 : ____state_1;
      ____state_0 <= or_4909 ? one_hot_sel_4908 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8873))) or_8873) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8873))) or_8873) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9005;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_5072;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__3_0_valid_inv;
  wire systolic__vert_chans__3_0_valid_inv;
  wire and_5142;
  wire and_5143;
  wire systolic__hor_chans__3_0_valid_load_en;
  wire systolic__vert_chans__3_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5144;
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
  wire or_8877;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_5145;
  wire or_5146;
  wire [1:0] one_hot_sel_5151;
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
  assign or_9005 = ~should_output | systolic__result_chans__3_0_load_en | __systolic__result_chans__3_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9005;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__3_0_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_5072 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__3_0_valid_reg;
  assign systolic__hor_chans__3_0_valid_inv = ~__systolic__hor_chans__3_0_valid_reg;
  assign systolic__vert_chans__3_0_valid_inv = ~__systolic__vert_chans__3_0_valid_reg;
  assign and_5142 = ~should_output & p3_stage_done;
  assign and_5143 = should_output & p3_stage_done;
  assign systolic__hor_chans__3_0_valid_load_en = p0_data_enable | systolic__hor_chans__3_0_valid_inv;
  assign systolic__vert_chans__3_0_valid_load_en = p1_data_enable | systolic__vert_chans__3_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5072[1] & should_output == one_hot_5072[0];
  assign concat_5144 = {and_5142, and_5143};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_691_1_case_1 = 2'h0;
  assign unexpand_for_next_value_691_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__3_1_valid_and_ready_txfr = __systolic__hor_chans__3_1_valid_and_not_has_been_sent & systolic__hor_chans__3_1_load_en;
  assign __systolic__vert_chans__4_0_valid_and_ready_txfr = __systolic__vert_chans__4_0_valid_and_not_has_been_sent & systolic__vert_chans__4_0_load_en;
  assign __systolic__result_chans__3_0_valid_and_all_active_outputs_ready = __systolic__result_chans__3_0_vld_buf & or_9005;
  assign __systolic__result_chans__3_0_valid_and_ready_txfr = __systolic__result_chans__3_0_valid_and_not_has_been_sent & systolic__result_chans__3_0_load_en;
  assign systolic__hor_chans__3_0_load_en = systolic__hor_chans__3_0_vld & systolic__hor_chans__3_0_valid_load_en;
  assign systolic__vert_chans__3_0_load_en = systolic__vert_chans__3_0_vld & systolic__vert_chans__3_0_valid_load_en;
  assign or_8877 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_5145 = 32'h0000_0000 & {32{concat_5144[0]}} | new_accum & {32{concat_5144[1]}};
  assign or_5146 = and_5142 | and_5143;
  assign one_hot_sel_5151 = unexpand_for_next_value_691_1_case_1 & {2{concat_5144[0]}} | unexpand_for_next_value_691_1_case_0 & {2{concat_5144[1]}};
  assign __systolic__hor_chans__3_1_not_stage_load = ~__systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_1_has_been_sent_reg_load_en = __systolic__hor_chans__3_1_valid_and_ready_txfr | __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_0_has_been_sent_reg_load_en = __systolic__vert_chans__4_0_valid_and_ready_txfr | __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_0_not_stage_load = ~__systolic__result_chans__3_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_0_has_been_sent_reg_load_en = __systolic__result_chans__3_0_valid_and_ready_txfr | __systolic__result_chans__3_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__3_0_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__3_0_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_5146 ? one_hot_sel_5151 : ____state_1;
      ____state_0 <= or_5146 ? one_hot_sel_5145 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8877))) or_8877) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8877))) or_8877) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9021;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_5309;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__3_1_valid_inv;
  wire systolic__vert_chans__3_1_valid_inv;
  wire and_5379;
  wire and_5380;
  wire systolic__hor_chans__3_1_valid_load_en;
  wire systolic__vert_chans__3_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5381;
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
  wire or_8881;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_5382;
  wire or_5383;
  wire [1:0] one_hot_sel_5388;
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
  assign or_9021 = ~should_output | systolic__result_chans__3_1_load_en | __systolic__result_chans__3_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9021;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__3_1_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_5309 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__3_1_valid_reg;
  assign systolic__hor_chans__3_1_valid_inv = ~__systolic__hor_chans__3_1_valid_reg;
  assign systolic__vert_chans__3_1_valid_inv = ~__systolic__vert_chans__3_1_valid_reg;
  assign and_5379 = ~should_output & p3_stage_done;
  assign and_5380 = should_output & p3_stage_done;
  assign systolic__hor_chans__3_1_valid_load_en = p0_data_enable | systolic__hor_chans__3_1_valid_inv;
  assign systolic__vert_chans__3_1_valid_load_en = p1_data_enable | systolic__vert_chans__3_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5309[1] & should_output == one_hot_5309[0];
  assign concat_5381 = {and_5379, and_5380};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_721_1_case_1 = 2'h0;
  assign unexpand_for_next_value_721_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__3_2_valid_and_ready_txfr = __systolic__hor_chans__3_2_valid_and_not_has_been_sent & systolic__hor_chans__3_2_load_en;
  assign __systolic__vert_chans__4_1_valid_and_ready_txfr = __systolic__vert_chans__4_1_valid_and_not_has_been_sent & systolic__vert_chans__4_1_load_en;
  assign __systolic__result_chans__3_1_valid_and_all_active_outputs_ready = __systolic__result_chans__3_1_vld_buf & or_9021;
  assign __systolic__result_chans__3_1_valid_and_ready_txfr = __systolic__result_chans__3_1_valid_and_not_has_been_sent & systolic__result_chans__3_1_load_en;
  assign systolic__hor_chans__3_1_load_en = systolic__hor_chans__3_1_vld & systolic__hor_chans__3_1_valid_load_en;
  assign systolic__vert_chans__3_1_load_en = systolic__vert_chans__3_1_vld & systolic__vert_chans__3_1_valid_load_en;
  assign or_8881 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_5382 = 32'h0000_0000 & {32{concat_5381[0]}} | new_accum & {32{concat_5381[1]}};
  assign or_5383 = and_5379 | and_5380;
  assign one_hot_sel_5388 = unexpand_for_next_value_721_1_case_1 & {2{concat_5381[0]}} | unexpand_for_next_value_721_1_case_0 & {2{concat_5381[1]}};
  assign __systolic__hor_chans__3_2_not_stage_load = ~__systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_2_has_been_sent_reg_load_en = __systolic__hor_chans__3_2_valid_and_ready_txfr | __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_1_has_been_sent_reg_load_en = __systolic__vert_chans__4_1_valid_and_ready_txfr | __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_1_not_stage_load = ~__systolic__result_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_1_has_been_sent_reg_load_en = __systolic__result_chans__3_1_valid_and_ready_txfr | __systolic__result_chans__3_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__3_1_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__3_1_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_5383 ? one_hot_sel_5388 : ____state_1;
      ____state_0 <= or_5383 ? one_hot_sel_5382 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8881))) or_8881) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8881))) or_8881) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9037;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_5546;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__3_2_valid_inv;
  wire systolic__vert_chans__3_2_valid_inv;
  wire and_5616;
  wire and_5617;
  wire systolic__hor_chans__3_2_valid_load_en;
  wire systolic__vert_chans__3_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5618;
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
  wire or_8885;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_5619;
  wire or_5620;
  wire [1:0] one_hot_sel_5625;
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
  assign or_9037 = ~should_output | systolic__result_chans__3_2_load_en | __systolic__result_chans__3_2_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9037;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__3_2_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_5546 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__3_2_valid_reg;
  assign systolic__hor_chans__3_2_valid_inv = ~__systolic__hor_chans__3_2_valid_reg;
  assign systolic__vert_chans__3_2_valid_inv = ~__systolic__vert_chans__3_2_valid_reg;
  assign and_5616 = ~should_output & p3_stage_done;
  assign and_5617 = should_output & p3_stage_done;
  assign systolic__hor_chans__3_2_valid_load_en = p0_data_enable | systolic__hor_chans__3_2_valid_inv;
  assign systolic__vert_chans__3_2_valid_load_en = p1_data_enable | systolic__vert_chans__3_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5546[1] & should_output == one_hot_5546[0];
  assign concat_5618 = {and_5616, and_5617};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_751_1_case_1 = 2'h0;
  assign unexpand_for_next_value_751_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_3_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__3_3_valid_and_ready_txfr = __systolic__hor_chans__3_3_valid_and_not_has_been_sent & systolic__hor_chans__3_3_load_en;
  assign __systolic__vert_chans__4_2_valid_and_ready_txfr = __systolic__vert_chans__4_2_valid_and_not_has_been_sent & systolic__vert_chans__4_2_load_en;
  assign __systolic__result_chans__3_2_valid_and_all_active_outputs_ready = __systolic__result_chans__3_2_vld_buf & or_9037;
  assign __systolic__result_chans__3_2_valid_and_ready_txfr = __systolic__result_chans__3_2_valid_and_not_has_been_sent & systolic__result_chans__3_2_load_en;
  assign systolic__hor_chans__3_2_load_en = systolic__hor_chans__3_2_vld & systolic__hor_chans__3_2_valid_load_en;
  assign systolic__vert_chans__3_2_load_en = systolic__vert_chans__3_2_vld & systolic__vert_chans__3_2_valid_load_en;
  assign or_8885 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_5619 = 32'h0000_0000 & {32{concat_5618[0]}} | new_accum & {32{concat_5618[1]}};
  assign or_5620 = and_5616 | and_5617;
  assign one_hot_sel_5625 = unexpand_for_next_value_751_1_case_1 & {2{concat_5618[0]}} | unexpand_for_next_value_751_1_case_0 & {2{concat_5618[1]}};
  assign __systolic__hor_chans__3_3_not_stage_load = ~__systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_3_has_been_sent_reg_load_en = __systolic__hor_chans__3_3_valid_and_ready_txfr | __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_2_has_been_sent_reg_load_en = __systolic__vert_chans__4_2_valid_and_ready_txfr | __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_2_not_stage_load = ~__systolic__result_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_2_has_been_sent_reg_load_en = __systolic__result_chans__3_2_valid_and_ready_txfr | __systolic__result_chans__3_2_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__3_2_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__3_2_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_5620 ? one_hot_sel_5625 : ____state_1;
      ____state_0 <= or_5620 ? one_hot_sel_5619 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8885))) or_8885) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8885))) or_8885) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9053;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_5783;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__3_3_valid_inv;
  wire systolic__vert_chans__3_3_valid_inv;
  wire and_5853;
  wire and_5854;
  wire systolic__hor_chans__3_3_valid_load_en;
  wire systolic__vert_chans__3_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5855;
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
  wire or_8889;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_5856;
  wire or_5857;
  wire [1:0] one_hot_sel_5862;
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
  assign or_9053 = ~should_output | systolic__result_chans__3_3_load_en | __systolic__result_chans__3_3_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9053;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__3_3_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_5783 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__3_3_valid_reg;
  assign systolic__hor_chans__3_3_valid_inv = ~__systolic__hor_chans__3_3_valid_reg;
  assign systolic__vert_chans__3_3_valid_inv = ~__systolic__vert_chans__3_3_valid_reg;
  assign and_5853 = ~should_output & p3_stage_done;
  assign and_5854 = should_output & p3_stage_done;
  assign systolic__hor_chans__3_3_valid_load_en = p0_data_enable | systolic__hor_chans__3_3_valid_inv;
  assign systolic__vert_chans__3_3_valid_load_en = p1_data_enable | systolic__vert_chans__3_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5783[1] & should_output == one_hot_5783[0];
  assign concat_5855 = {and_5853, and_5854};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_781_1_case_1 = 2'h0;
  assign unexpand_for_next_value_781_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_4_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__3_4_valid_and_ready_txfr = __systolic__hor_chans__3_4_valid_and_not_has_been_sent & systolic__hor_chans__3_4_load_en;
  assign __systolic__vert_chans__4_3_valid_and_ready_txfr = __systolic__vert_chans__4_3_valid_and_not_has_been_sent & systolic__vert_chans__4_3_load_en;
  assign __systolic__result_chans__3_3_valid_and_all_active_outputs_ready = __systolic__result_chans__3_3_vld_buf & or_9053;
  assign __systolic__result_chans__3_3_valid_and_ready_txfr = __systolic__result_chans__3_3_valid_and_not_has_been_sent & systolic__result_chans__3_3_load_en;
  assign systolic__hor_chans__3_3_load_en = systolic__hor_chans__3_3_vld & systolic__hor_chans__3_3_valid_load_en;
  assign systolic__vert_chans__3_3_load_en = systolic__vert_chans__3_3_vld & systolic__vert_chans__3_3_valid_load_en;
  assign or_8889 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_5856 = 32'h0000_0000 & {32{concat_5855[0]}} | new_accum & {32{concat_5855[1]}};
  assign or_5857 = and_5853 | and_5854;
  assign one_hot_sel_5862 = unexpand_for_next_value_781_1_case_1 & {2{concat_5855[0]}} | unexpand_for_next_value_781_1_case_0 & {2{concat_5855[1]}};
  assign __systolic__hor_chans__3_4_not_stage_load = ~__systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_4_has_been_sent_reg_load_en = __systolic__hor_chans__3_4_valid_and_ready_txfr | __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_3_has_been_sent_reg_load_en = __systolic__vert_chans__4_3_valid_and_ready_txfr | __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_3_not_stage_load = ~__systolic__result_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_3_has_been_sent_reg_load_en = __systolic__result_chans__3_3_valid_and_ready_txfr | __systolic__result_chans__3_3_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__3_3_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__3_3_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_5857 ? one_hot_sel_5862 : ____state_1;
      ____state_0 <= or_5857 ? one_hot_sel_5856 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8889))) or_8889) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8889))) or_8889) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9069;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_6020;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__0_1_valid_inv;
  wire systolic__vert_chans__0_1_valid_inv;
  wire and_6090;
  wire and_6091;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire systolic__vert_chans__0_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6092;
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
  wire or_8893;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_6093;
  wire or_6094;
  wire [1:0] one_hot_sel_6099;
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
  assign or_9069 = ~should_output | systolic__result_chans__0_1_load_en | __systolic__result_chans__0_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9069;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__0_1_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_6020 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_1_valid_reg;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign and_6090 = ~should_output & p3_stage_done;
  assign and_6091 = should_output & p3_stage_done;
  assign systolic__hor_chans__0_1_valid_load_en = p0_data_enable | systolic__hor_chans__0_1_valid_inv;
  assign systolic__vert_chans__0_1_valid_load_en = p1_data_enable | systolic__vert_chans__0_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6020[1] & should_output == one_hot_6020[0];
  assign concat_6092 = {and_6090, and_6091};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_361_1_case_1 = 2'h0;
  assign unexpand_for_next_value_361_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_valid_and_ready_txfr = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_load_en;
  assign __systolic__vert_chans__1_1_valid_and_ready_txfr = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_load_en;
  assign __systolic__result_chans__0_1_valid_and_all_active_outputs_ready = __systolic__result_chans__0_1_vld_buf & or_9069;
  assign __systolic__result_chans__0_1_valid_and_ready_txfr = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_load_en;
  assign systolic__hor_chans__0_1_load_en = systolic__hor_chans__0_1_vld & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = systolic__vert_chans__0_1_vld & systolic__vert_chans__0_1_valid_load_en;
  assign or_8893 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_6093 = 32'h0000_0000 & {32{concat_6092[0]}} | new_accum & {32{concat_6092[1]}};
  assign or_6094 = and_6090 | and_6091;
  assign one_hot_sel_6099 = unexpand_for_next_value_361_1_case_1 & {2{concat_6092[0]}} | unexpand_for_next_value_361_1_case_0 & {2{concat_6092[1]}};
  assign __systolic__hor_chans__0_2_not_stage_load = ~__systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_has_been_sent_reg_load_en = __systolic__hor_chans__0_2_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_1_has_been_sent_reg_load_en = __systolic__vert_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_not_stage_load = ~__systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_has_been_sent_reg_load_en = __systolic__result_chans__0_1_valid_and_ready_txfr | __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__0_1_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__0_1_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_6094 ? one_hot_sel_6099 : ____state_1;
      ____state_0 <= or_6094 ? one_hot_sel_6093 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8893))) or_8893) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8893))) or_8893) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9085;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_6257;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__0_2_valid_inv;
  wire systolic__vert_chans__0_2_valid_inv;
  wire and_6327;
  wire and_6328;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire systolic__vert_chans__0_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6329;
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
  wire or_8897;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_6330;
  wire or_6331;
  wire [1:0] one_hot_sel_6336;
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
  assign or_9085 = ~should_output | systolic__result_chans__0_2_load_en | __systolic__result_chans__0_2_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9085;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__0_2_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_6257 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_2_valid_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign systolic__vert_chans__0_2_valid_inv = ~__systolic__vert_chans__0_2_valid_reg;
  assign and_6327 = ~should_output & p3_stage_done;
  assign and_6328 = should_output & p3_stage_done;
  assign systolic__hor_chans__0_2_valid_load_en = p0_data_enable | systolic__hor_chans__0_2_valid_inv;
  assign systolic__vert_chans__0_2_valid_load_en = p1_data_enable | systolic__vert_chans__0_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6257[1] & should_output == one_hot_6257[0];
  assign concat_6329 = {and_6327, and_6328};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_391_1_case_1 = 2'h0;
  assign unexpand_for_next_value_391_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_3_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_3_valid_and_ready_txfr = __systolic__hor_chans__0_3_valid_and_not_has_been_sent & systolic__hor_chans__0_3_load_en;
  assign __systolic__vert_chans__1_2_valid_and_ready_txfr = __systolic__vert_chans__1_2_valid_and_not_has_been_sent & systolic__vert_chans__1_2_load_en;
  assign __systolic__result_chans__0_2_valid_and_all_active_outputs_ready = __systolic__result_chans__0_2_vld_buf & or_9085;
  assign __systolic__result_chans__0_2_valid_and_ready_txfr = __systolic__result_chans__0_2_valid_and_not_has_been_sent & systolic__result_chans__0_2_load_en;
  assign systolic__hor_chans__0_2_load_en = systolic__hor_chans__0_2_vld & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__vert_chans__0_2_load_en = systolic__vert_chans__0_2_vld & systolic__vert_chans__0_2_valid_load_en;
  assign or_8897 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_6330 = 32'h0000_0000 & {32{concat_6329[0]}} | new_accum & {32{concat_6329[1]}};
  assign or_6331 = and_6327 | and_6328;
  assign one_hot_sel_6336 = unexpand_for_next_value_391_1_case_1 & {2{concat_6329[0]}} | unexpand_for_next_value_391_1_case_0 & {2{concat_6329[1]}};
  assign __systolic__hor_chans__0_3_not_stage_load = ~__systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_3_has_been_sent_reg_load_en = __systolic__hor_chans__0_3_valid_and_ready_txfr | __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_2_has_been_sent_reg_load_en = __systolic__vert_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_2_not_stage_load = ~__systolic__result_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_2_has_been_sent_reg_load_en = __systolic__result_chans__0_2_valid_and_ready_txfr | __systolic__result_chans__0_2_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__0_2_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__0_2_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_6331 ? one_hot_sel_6336 : ____state_1;
      ____state_0 <= or_6331 ? one_hot_sel_6330 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8897))) or_8897) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8897))) or_8897) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9101;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_6494;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__0_3_valid_inv;
  wire systolic__vert_chans__0_3_valid_inv;
  wire and_6564;
  wire and_6565;
  wire systolic__hor_chans__0_3_valid_load_en;
  wire systolic__vert_chans__0_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6566;
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
  wire or_8901;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_6567;
  wire or_6568;
  wire [1:0] one_hot_sel_6573;
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
  assign or_9101 = ~should_output | systolic__result_chans__0_3_load_en | __systolic__result_chans__0_3_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9101;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__0_3_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_6494 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__0_3_valid_reg;
  assign systolic__hor_chans__0_3_valid_inv = ~__systolic__hor_chans__0_3_valid_reg;
  assign systolic__vert_chans__0_3_valid_inv = ~__systolic__vert_chans__0_3_valid_reg;
  assign and_6564 = ~should_output & p3_stage_done;
  assign and_6565 = should_output & p3_stage_done;
  assign systolic__hor_chans__0_3_valid_load_en = p0_data_enable | systolic__hor_chans__0_3_valid_inv;
  assign systolic__vert_chans__0_3_valid_load_en = p1_data_enable | systolic__vert_chans__0_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6494[1] & should_output == one_hot_6494[0];
  assign concat_6566 = {and_6564, and_6565};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_421_1_case_1 = 2'h0;
  assign unexpand_for_next_value_421_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_4_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__0_4_valid_and_ready_txfr = __systolic__hor_chans__0_4_valid_and_not_has_been_sent & systolic__hor_chans__0_4_load_en;
  assign __systolic__vert_chans__1_3_valid_and_ready_txfr = __systolic__vert_chans__1_3_valid_and_not_has_been_sent & systolic__vert_chans__1_3_load_en;
  assign __systolic__result_chans__0_3_valid_and_all_active_outputs_ready = __systolic__result_chans__0_3_vld_buf & or_9101;
  assign __systolic__result_chans__0_3_valid_and_ready_txfr = __systolic__result_chans__0_3_valid_and_not_has_been_sent & systolic__result_chans__0_3_load_en;
  assign systolic__hor_chans__0_3_load_en = systolic__hor_chans__0_3_vld & systolic__hor_chans__0_3_valid_load_en;
  assign systolic__vert_chans__0_3_load_en = systolic__vert_chans__0_3_vld & systolic__vert_chans__0_3_valid_load_en;
  assign or_8901 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_6567 = 32'h0000_0000 & {32{concat_6566[0]}} | new_accum & {32{concat_6566[1]}};
  assign or_6568 = and_6564 | and_6565;
  assign one_hot_sel_6573 = unexpand_for_next_value_421_1_case_1 & {2{concat_6566[0]}} | unexpand_for_next_value_421_1_case_0 & {2{concat_6566[1]}};
  assign __systolic__hor_chans__0_4_not_stage_load = ~__systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_4_has_been_sent_reg_load_en = __systolic__hor_chans__0_4_valid_and_ready_txfr | __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_3_has_been_sent_reg_load_en = __systolic__vert_chans__1_3_valid_and_ready_txfr | __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_3_not_stage_load = ~__systolic__result_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_3_has_been_sent_reg_load_en = __systolic__result_chans__0_3_valid_and_ready_txfr | __systolic__result_chans__0_3_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__0_3_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__0_3_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_6568 ? one_hot_sel_6573 : ____state_1;
      ____state_0 <= or_6568 ? one_hot_sel_6567 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8901))) or_8901) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8901))) or_8901) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9117;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_6731;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__1_0_valid_inv;
  wire systolic__vert_chans__1_0_valid_inv;
  wire and_6801;
  wire and_6802;
  wire systolic__hor_chans__1_0_valid_load_en;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6803;
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
  wire or_8905;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_6804;
  wire or_6805;
  wire [1:0] one_hot_sel_6810;
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
  assign or_9117 = ~should_output | systolic__result_chans__1_0_load_en | __systolic__result_chans__1_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9117;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__1_0_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_6731 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_0_valid_reg;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign and_6801 = ~should_output & p3_stage_done;
  assign and_6802 = should_output & p3_stage_done;
  assign systolic__hor_chans__1_0_valid_load_en = p0_data_enable | systolic__hor_chans__1_0_valid_inv;
  assign systolic__vert_chans__1_0_valid_load_en = p1_data_enable | systolic__vert_chans__1_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6731[1] & should_output == one_hot_6731[0];
  assign concat_6803 = {and_6801, and_6802};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_451_1_case_1 = 2'h0;
  assign unexpand_for_next_value_451_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_valid_and_ready_txfr = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_load_en;
  assign __systolic__vert_chans__2_0_valid_and_ready_txfr = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_load_en;
  assign __systolic__result_chans__1_0_valid_and_all_active_outputs_ready = __systolic__result_chans__1_0_vld_buf & or_9117;
  assign __systolic__result_chans__1_0_valid_and_ready_txfr = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_load_en;
  assign systolic__hor_chans__1_0_load_en = systolic__hor_chans__1_0_vld & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = systolic__vert_chans__1_0_vld & systolic__vert_chans__1_0_valid_load_en;
  assign or_8905 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_6804 = 32'h0000_0000 & {32{concat_6803[0]}} | new_accum & {32{concat_6803[1]}};
  assign or_6805 = and_6801 | and_6802;
  assign one_hot_sel_6810 = unexpand_for_next_value_451_1_case_1 & {2{concat_6803[0]}} | unexpand_for_next_value_451_1_case_0 & {2{concat_6803[1]}};
  assign __systolic__hor_chans__1_1_not_stage_load = ~__systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_has_been_sent_reg_load_en = __systolic__hor_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_0_has_been_sent_reg_load_en = __systolic__vert_chans__2_0_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_not_stage_load = ~__systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_has_been_sent_reg_load_en = __systolic__result_chans__1_0_valid_and_ready_txfr | __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__1_0_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__1_0_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_6805 ? one_hot_sel_6810 : ____state_1;
      ____state_0 <= or_6805 ? one_hot_sel_6804 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8905))) or_8905) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8905))) or_8905) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9133;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_6968;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__1_1_valid_inv;
  wire systolic__vert_chans__1_1_valid_inv;
  wire and_7038;
  wire and_7039;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_7040;
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
  wire or_8909;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_7041;
  wire or_7042;
  wire [1:0] one_hot_sel_7047;
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
  assign or_9133 = ~should_output | systolic__result_chans__1_1_load_en | __systolic__result_chans__1_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9133;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__1_1_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_6968 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_1_valid_reg;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign and_7038 = ~should_output & p3_stage_done;
  assign and_7039 = should_output & p3_stage_done;
  assign systolic__hor_chans__1_1_valid_load_en = p0_data_enable | systolic__hor_chans__1_1_valid_inv;
  assign systolic__vert_chans__1_1_valid_load_en = p1_data_enable | systolic__vert_chans__1_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6968[1] & should_output == one_hot_6968[0];
  assign concat_7040 = {and_7038, and_7039};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_481_1_case_1 = 2'h0;
  assign unexpand_for_next_value_481_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_valid_and_ready_txfr = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_load_en;
  assign __systolic__vert_chans__2_1_valid_and_ready_txfr = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_load_en;
  assign __systolic__result_chans__1_1_valid_and_all_active_outputs_ready = __systolic__result_chans__1_1_vld_buf & or_9133;
  assign __systolic__result_chans__1_1_valid_and_ready_txfr = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_load_en;
  assign systolic__hor_chans__1_1_load_en = systolic__hor_chans__1_1_vld & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = systolic__vert_chans__1_1_vld & systolic__vert_chans__1_1_valid_load_en;
  assign or_8909 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_7041 = 32'h0000_0000 & {32{concat_7040[0]}} | new_accum & {32{concat_7040[1]}};
  assign or_7042 = and_7038 | and_7039;
  assign one_hot_sel_7047 = unexpand_for_next_value_481_1_case_1 & {2{concat_7040[0]}} | unexpand_for_next_value_481_1_case_0 & {2{concat_7040[1]}};
  assign __systolic__hor_chans__1_2_not_stage_load = ~__systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_has_been_sent_reg_load_en = __systolic__hor_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_1_has_been_sent_reg_load_en = __systolic__vert_chans__2_1_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_not_stage_load = ~__systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_has_been_sent_reg_load_en = __systolic__result_chans__1_1_valid_and_ready_txfr | __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__1_1_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__1_1_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_7042 ? one_hot_sel_7047 : ____state_1;
      ____state_0 <= or_7042 ? one_hot_sel_7041 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8909))) or_8909) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8909))) or_8909) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9149;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_7205;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__1_2_valid_inv;
  wire systolic__vert_chans__1_2_valid_inv;
  wire and_7275;
  wire and_7276;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire systolic__vert_chans__1_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_7277;
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
  wire or_8913;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_7278;
  wire or_7279;
  wire [1:0] one_hot_sel_7284;
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
  assign or_9149 = ~should_output | systolic__result_chans__1_2_load_en | __systolic__result_chans__1_2_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9149;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__1_2_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_7205 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_2_valid_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign systolic__vert_chans__1_2_valid_inv = ~__systolic__vert_chans__1_2_valid_reg;
  assign and_7275 = ~should_output & p3_stage_done;
  assign and_7276 = should_output & p3_stage_done;
  assign systolic__hor_chans__1_2_valid_load_en = p0_data_enable | systolic__hor_chans__1_2_valid_inv;
  assign systolic__vert_chans__1_2_valid_load_en = p1_data_enable | systolic__vert_chans__1_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_7205[1] & should_output == one_hot_7205[0];
  assign concat_7277 = {and_7275, and_7276};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_511_1_case_1 = 2'h0;
  assign unexpand_for_next_value_511_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_3_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_3_valid_and_ready_txfr = __systolic__hor_chans__1_3_valid_and_not_has_been_sent & systolic__hor_chans__1_3_load_en;
  assign __systolic__vert_chans__2_2_valid_and_ready_txfr = __systolic__vert_chans__2_2_valid_and_not_has_been_sent & systolic__vert_chans__2_2_load_en;
  assign __systolic__result_chans__1_2_valid_and_all_active_outputs_ready = __systolic__result_chans__1_2_vld_buf & or_9149;
  assign __systolic__result_chans__1_2_valid_and_ready_txfr = __systolic__result_chans__1_2_valid_and_not_has_been_sent & systolic__result_chans__1_2_load_en;
  assign systolic__hor_chans__1_2_load_en = systolic__hor_chans__1_2_vld & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__vert_chans__1_2_load_en = systolic__vert_chans__1_2_vld & systolic__vert_chans__1_2_valid_load_en;
  assign or_8913 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_7278 = 32'h0000_0000 & {32{concat_7277[0]}} | new_accum & {32{concat_7277[1]}};
  assign or_7279 = and_7275 | and_7276;
  assign one_hot_sel_7284 = unexpand_for_next_value_511_1_case_1 & {2{concat_7277[0]}} | unexpand_for_next_value_511_1_case_0 & {2{concat_7277[1]}};
  assign __systolic__hor_chans__1_3_not_stage_load = ~__systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_3_has_been_sent_reg_load_en = __systolic__hor_chans__1_3_valid_and_ready_txfr | __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_2_has_been_sent_reg_load_en = __systolic__vert_chans__2_2_valid_and_ready_txfr | __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_2_not_stage_load = ~__systolic__result_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_2_has_been_sent_reg_load_en = __systolic__result_chans__1_2_valid_and_ready_txfr | __systolic__result_chans__1_2_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__1_2_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__1_2_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_7279 ? one_hot_sel_7284 : ____state_1;
      ____state_0 <= or_7279 ? one_hot_sel_7278 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8913))) or_8913) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8913))) or_8913) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9165;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_7442;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__1_3_valid_inv;
  wire systolic__vert_chans__1_3_valid_inv;
  wire and_7512;
  wire and_7513;
  wire systolic__hor_chans__1_3_valid_load_en;
  wire systolic__vert_chans__1_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_7514;
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
  wire or_8917;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_7515;
  wire or_7516;
  wire [1:0] one_hot_sel_7521;
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
  assign or_9165 = ~should_output | systolic__result_chans__1_3_load_en | __systolic__result_chans__1_3_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9165;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__1_3_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_7442 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__1_3_valid_reg;
  assign systolic__hor_chans__1_3_valid_inv = ~__systolic__hor_chans__1_3_valid_reg;
  assign systolic__vert_chans__1_3_valid_inv = ~__systolic__vert_chans__1_3_valid_reg;
  assign and_7512 = ~should_output & p3_stage_done;
  assign and_7513 = should_output & p3_stage_done;
  assign systolic__hor_chans__1_3_valid_load_en = p0_data_enable | systolic__hor_chans__1_3_valid_inv;
  assign systolic__vert_chans__1_3_valid_load_en = p1_data_enable | systolic__vert_chans__1_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_7442[1] & should_output == one_hot_7442[0];
  assign concat_7514 = {and_7512, and_7513};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_541_1_case_1 = 2'h0;
  assign unexpand_for_next_value_541_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_4_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__1_4_valid_and_ready_txfr = __systolic__hor_chans__1_4_valid_and_not_has_been_sent & systolic__hor_chans__1_4_load_en;
  assign __systolic__vert_chans__2_3_valid_and_ready_txfr = __systolic__vert_chans__2_3_valid_and_not_has_been_sent & systolic__vert_chans__2_3_load_en;
  assign __systolic__result_chans__1_3_valid_and_all_active_outputs_ready = __systolic__result_chans__1_3_vld_buf & or_9165;
  assign __systolic__result_chans__1_3_valid_and_ready_txfr = __systolic__result_chans__1_3_valid_and_not_has_been_sent & systolic__result_chans__1_3_load_en;
  assign systolic__hor_chans__1_3_load_en = systolic__hor_chans__1_3_vld & systolic__hor_chans__1_3_valid_load_en;
  assign systolic__vert_chans__1_3_load_en = systolic__vert_chans__1_3_vld & systolic__vert_chans__1_3_valid_load_en;
  assign or_8917 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_7515 = 32'h0000_0000 & {32{concat_7514[0]}} | new_accum & {32{concat_7514[1]}};
  assign or_7516 = and_7512 | and_7513;
  assign one_hot_sel_7521 = unexpand_for_next_value_541_1_case_1 & {2{concat_7514[0]}} | unexpand_for_next_value_541_1_case_0 & {2{concat_7514[1]}};
  assign __systolic__hor_chans__1_4_not_stage_load = ~__systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_4_has_been_sent_reg_load_en = __systolic__hor_chans__1_4_valid_and_ready_txfr | __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_3_has_been_sent_reg_load_en = __systolic__vert_chans__2_3_valid_and_ready_txfr | __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_3_not_stage_load = ~__systolic__result_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_3_has_been_sent_reg_load_en = __systolic__result_chans__1_3_valid_and_ready_txfr | __systolic__result_chans__1_3_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__1_3_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__1_3_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_7516 ? one_hot_sel_7521 : ____state_1;
      ____state_0 <= or_7516 ? one_hot_sel_7515 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8917))) or_8917) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8917))) or_8917) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9181;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_7679;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__2_0_valid_inv;
  wire systolic__vert_chans__2_0_valid_inv;
  wire and_7749;
  wire and_7750;
  wire systolic__hor_chans__2_0_valid_load_en;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_7751;
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
  wire or_8921;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_7752;
  wire or_7753;
  wire [1:0] one_hot_sel_7758;
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
  assign or_9181 = ~should_output | systolic__result_chans__2_0_load_en | __systolic__result_chans__2_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9181;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__2_0_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_7679 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__2_0_valid_reg;
  assign systolic__hor_chans__2_0_valid_inv = ~__systolic__hor_chans__2_0_valid_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign and_7749 = ~should_output & p3_stage_done;
  assign and_7750 = should_output & p3_stage_done;
  assign systolic__hor_chans__2_0_valid_load_en = p0_data_enable | systolic__hor_chans__2_0_valid_inv;
  assign systolic__vert_chans__2_0_valid_load_en = p1_data_enable | systolic__vert_chans__2_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_7679[1] & should_output == one_hot_7679[0];
  assign concat_7751 = {and_7749, and_7750};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_571_1_case_1 = 2'h0;
  assign unexpand_for_next_value_571_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__2_1_valid_and_ready_txfr = __systolic__hor_chans__2_1_valid_and_not_has_been_sent & systolic__hor_chans__2_1_load_en;
  assign __systolic__vert_chans__3_0_valid_and_ready_txfr = __systolic__vert_chans__3_0_valid_and_not_has_been_sent & systolic__vert_chans__3_0_load_en;
  assign __systolic__result_chans__2_0_valid_and_all_active_outputs_ready = __systolic__result_chans__2_0_vld_buf & or_9181;
  assign __systolic__result_chans__2_0_valid_and_ready_txfr = __systolic__result_chans__2_0_valid_and_not_has_been_sent & systolic__result_chans__2_0_load_en;
  assign systolic__hor_chans__2_0_load_en = systolic__hor_chans__2_0_vld & systolic__hor_chans__2_0_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = systolic__vert_chans__2_0_vld & systolic__vert_chans__2_0_valid_load_en;
  assign or_8921 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_7752 = 32'h0000_0000 & {32{concat_7751[0]}} | new_accum & {32{concat_7751[1]}};
  assign or_7753 = and_7749 | and_7750;
  assign one_hot_sel_7758 = unexpand_for_next_value_571_1_case_1 & {2{concat_7751[0]}} | unexpand_for_next_value_571_1_case_0 & {2{concat_7751[1]}};
  assign __systolic__hor_chans__2_1_not_stage_load = ~__systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_1_has_been_sent_reg_load_en = __systolic__hor_chans__2_1_valid_and_ready_txfr | __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_0_has_been_sent_reg_load_en = __systolic__vert_chans__3_0_valid_and_ready_txfr | __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_0_not_stage_load = ~__systolic__result_chans__2_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_0_has_been_sent_reg_load_en = __systolic__result_chans__2_0_valid_and_ready_txfr | __systolic__result_chans__2_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__2_0_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__2_0_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_7753 ? one_hot_sel_7758 : ____state_1;
      ____state_0 <= or_7753 ? one_hot_sel_7752 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8921))) or_8921) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8921))) or_8921) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire or_9197;
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
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire p1_data_enable;
  wire p1_not_valid;
  wire [2:0] one_hot_7916;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic__hor_chans__2_1_valid_inv;
  wire systolic__vert_chans__2_1_valid_inv;
  wire and_7986;
  wire and_7987;
  wire systolic__hor_chans__2_1_valid_load_en;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_7988;
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
  wire or_8925;
  wire p3_enable;
  wire [31:0] prod;
  wire [31:0] one_hot_sel_7989;
  wire or_7990;
  wire [1:0] one_hot_sel_7995;
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
  assign or_9197 = ~should_output | systolic__result_chans__2_1_load_en | __systolic__result_chans__2_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & or_9197;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
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
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic__vert_chans__2_1_valid_reg;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign one_hot_7916 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic__hor_chans__2_1_valid_reg;
  assign systolic__hor_chans__2_1_valid_inv = ~__systolic__hor_chans__2_1_valid_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign and_7986 = ~should_output & p3_stage_done;
  assign and_7987 = should_output & p3_stage_done;
  assign systolic__hor_chans__2_1_valid_load_en = p0_data_enable | systolic__hor_chans__2_1_valid_inv;
  assign systolic__vert_chans__2_1_valid_load_en = p1_data_enable | systolic__vert_chans__2_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_7916[1] & should_output == one_hot_7916[0];
  assign concat_7988 = {and_7986, and_7987};
  assign new_accum = ____state_0 + p2_prod;
  assign unexpand_for_next_value_601_1_case_1 = 2'h0;
  assign unexpand_for_next_value_601_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic__hor_chans__2_2_valid_and_ready_txfr = __systolic__hor_chans__2_2_valid_and_not_has_been_sent & systolic__hor_chans__2_2_load_en;
  assign __systolic__vert_chans__3_1_valid_and_ready_txfr = __systolic__vert_chans__3_1_valid_and_not_has_been_sent & systolic__vert_chans__3_1_load_en;
  assign __systolic__result_chans__2_1_valid_and_all_active_outputs_ready = __systolic__result_chans__2_1_vld_buf & or_9197;
  assign __systolic__result_chans__2_1_valid_and_ready_txfr = __systolic__result_chans__2_1_valid_and_not_has_been_sent & systolic__result_chans__2_1_load_en;
  assign systolic__hor_chans__2_1_load_en = systolic__hor_chans__2_1_vld & systolic__hor_chans__2_1_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = systolic__vert_chans__2_1_vld & systolic__vert_chans__2_1_valid_load_en;
  assign or_8925 = ~p3_stage_done | ____state_0__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign one_hot_sel_7989 = 32'h0000_0000 & {32{concat_7988[0]}} | new_accum & {32{concat_7988[1]}};
  assign or_7990 = and_7986 | and_7987;
  assign one_hot_sel_7995 = unexpand_for_next_value_601_1_case_1 & {2{concat_7988[0]}} | unexpand_for_next_value_601_1_case_0 & {2{concat_7988[1]}};
  assign __systolic__hor_chans__2_2_not_stage_load = ~__systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_2_has_been_sent_reg_load_en = __systolic__hor_chans__2_2_valid_and_ready_txfr | __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_1_has_been_sent_reg_load_en = __systolic__vert_chans__3_1_valid_and_ready_txfr | __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_1_not_stage_load = ~__systolic__result_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_1_has_been_sent_reg_load_en = __systolic__result_chans__2_1_valid_and_ready_txfr | __systolic__result_chans__2_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
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
      p0_a <= p0_data_enable ? __systolic__hor_chans__2_1_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic__vert_chans__2_1_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      ____state_1 <= or_7990 ? one_hot_sel_7995 : ____state_1;
      ____state_0 <= or_7990 ? one_hot_sel_7989 : ____state_0;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8925))) or_8925) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_8925))) or_8925) else $fatal(0, "More than one next_value fired for state element: __state_1");
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
  wire instantiation_output_8114;
  wire instantiation_output_8120;
  wire [31:0] instantiation_output_8125;
  wire instantiation_output_8126;
  wire instantiation_output_8185;
  wire [31:0] instantiation_output_8190;
  wire instantiation_output_8191;
  wire instantiation_output_8250;
  wire [31:0] instantiation_output_8255;
  wire instantiation_output_8256;
  wire instantiation_output_8315;
  wire [31:0] instantiation_output_8320;
  wire instantiation_output_8321;
  wire instantiation_output_8380;
  wire [31:0] instantiation_output_8384[4][4];
  wire instantiation_output_8385;
  wire instantiation_output_8399;
  wire instantiation_output_8412;
  wire instantiation_output_8425;
  wire instantiation_output_8438;
  wire instantiation_output_8451;
  wire instantiation_output_8464;
  wire instantiation_output_8477;
  wire instantiation_output_8490;
  wire instantiation_output_8503;
  wire instantiation_output_8516;
  wire instantiation_output_8529;
  wire instantiation_output_8542;
  wire instantiation_output_8555;
  wire instantiation_output_8568;
  wire instantiation_output_8581;
  wire instantiation_output_8594;
  wire [31:0] instantiation_output_8599;
  wire instantiation_output_8600;
  wire [31:0] instantiation_output_8612;
  wire instantiation_output_8613;
  wire [31:0] instantiation_output_8625;
  wire instantiation_output_8626;
  wire [31:0] instantiation_output_8638;
  wire instantiation_output_8639;
  wire instantiation_output_8815;
  wire instantiation_output_8828;
  wire instantiation_output_8841;
  wire instantiation_output_8854;
  wire instantiation_output_8133;
  wire [31:0] instantiation_output_8138;
  wire instantiation_output_8139;
  wire [31:0] instantiation_output_8391;
  wire instantiation_output_8392;
  wire instantiation_output_8607;
  wire [31:0] instantiation_output_8651;
  wire instantiation_output_8652;
  wire instantiation_output_8289;
  wire [31:0] instantiation_output_8294;
  wire instantiation_output_8295;
  wire [31:0] instantiation_output_8521;
  wire instantiation_output_8522;
  wire instantiation_output_8737;
  wire [31:0] instantiation_output_8781;
  wire instantiation_output_8782;
  wire instantiation_output_8302;
  wire [31:0] instantiation_output_8307;
  wire instantiation_output_8308;
  wire [31:0] instantiation_output_8534;
  wire instantiation_output_8535;
  wire instantiation_output_8750;
  wire [31:0] instantiation_output_8794;
  wire instantiation_output_8795;
  wire instantiation_output_8328;
  wire [31:0] instantiation_output_8333;
  wire instantiation_output_8334;
  wire [31:0] instantiation_output_8547;
  wire instantiation_output_8548;
  wire instantiation_output_8763;
  wire [31:0] instantiation_output_8807;
  wire instantiation_output_8808;
  wire instantiation_output_8341;
  wire [31:0] instantiation_output_8346;
  wire instantiation_output_8347;
  wire [31:0] instantiation_output_8560;
  wire instantiation_output_8561;
  wire instantiation_output_8776;
  wire [31:0] instantiation_output_8820;
  wire instantiation_output_8821;
  wire instantiation_output_8354;
  wire [31:0] instantiation_output_8359;
  wire instantiation_output_8360;
  wire [31:0] instantiation_output_8573;
  wire instantiation_output_8574;
  wire instantiation_output_8789;
  wire [31:0] instantiation_output_8833;
  wire instantiation_output_8834;
  wire instantiation_output_8367;
  wire [31:0] instantiation_output_8372;
  wire instantiation_output_8373;
  wire [31:0] instantiation_output_8586;
  wire instantiation_output_8587;
  wire instantiation_output_8802;
  wire [31:0] instantiation_output_8846;
  wire instantiation_output_8847;
  wire instantiation_output_8146;
  wire [31:0] instantiation_output_8151;
  wire instantiation_output_8152;
  wire [31:0] instantiation_output_8404;
  wire instantiation_output_8405;
  wire instantiation_output_8620;
  wire [31:0] instantiation_output_8664;
  wire instantiation_output_8665;
  wire instantiation_output_8159;
  wire [31:0] instantiation_output_8164;
  wire instantiation_output_8165;
  wire [31:0] instantiation_output_8417;
  wire instantiation_output_8418;
  wire instantiation_output_8633;
  wire [31:0] instantiation_output_8677;
  wire instantiation_output_8678;
  wire instantiation_output_8172;
  wire [31:0] instantiation_output_8177;
  wire instantiation_output_8178;
  wire [31:0] instantiation_output_8430;
  wire instantiation_output_8431;
  wire instantiation_output_8646;
  wire [31:0] instantiation_output_8690;
  wire instantiation_output_8691;
  wire instantiation_output_8198;
  wire [31:0] instantiation_output_8203;
  wire instantiation_output_8204;
  wire [31:0] instantiation_output_8443;
  wire instantiation_output_8444;
  wire instantiation_output_8659;
  wire [31:0] instantiation_output_8703;
  wire instantiation_output_8704;
  wire instantiation_output_8211;
  wire [31:0] instantiation_output_8216;
  wire instantiation_output_8217;
  wire [31:0] instantiation_output_8456;
  wire instantiation_output_8457;
  wire instantiation_output_8672;
  wire [31:0] instantiation_output_8716;
  wire instantiation_output_8717;
  wire instantiation_output_8224;
  wire [31:0] instantiation_output_8229;
  wire instantiation_output_8230;
  wire [31:0] instantiation_output_8469;
  wire instantiation_output_8470;
  wire instantiation_output_8685;
  wire [31:0] instantiation_output_8729;
  wire instantiation_output_8730;
  wire instantiation_output_8237;
  wire [31:0] instantiation_output_8242;
  wire instantiation_output_8243;
  wire [31:0] instantiation_output_8482;
  wire instantiation_output_8483;
  wire instantiation_output_8698;
  wire [31:0] instantiation_output_8742;
  wire instantiation_output_8743;
  wire instantiation_output_8263;
  wire [31:0] instantiation_output_8268;
  wire instantiation_output_8269;
  wire [31:0] instantiation_output_8495;
  wire instantiation_output_8496;
  wire instantiation_output_8711;
  wire [31:0] instantiation_output_8755;
  wire instantiation_output_8756;
  wire instantiation_output_8276;
  wire [31:0] instantiation_output_8281;
  wire instantiation_output_8282;
  wire [31:0] instantiation_output_8508;
  wire instantiation_output_8509;
  wire instantiation_output_8724;
  wire [31:0] instantiation_output_8768;
  wire instantiation_output_8769;
  wire instantiation_output_8127;
  wire [31:0] instantiation_output_8131;
  wire instantiation_output_8132;
  wire instantiation_output_8140;
  wire [31:0] instantiation_output_8144;
  wire instantiation_output_8145;
  wire instantiation_output_8153;
  wire [31:0] instantiation_output_8157;
  wire instantiation_output_8158;
  wire instantiation_output_8166;
  wire [31:0] instantiation_output_8170;
  wire instantiation_output_8171;
  wire instantiation_output_8179;
  wire [31:0] instantiation_output_8183;
  wire instantiation_output_8184;
  wire instantiation_output_8192;
  wire [31:0] instantiation_output_8196;
  wire instantiation_output_8197;
  wire instantiation_output_8205;
  wire [31:0] instantiation_output_8209;
  wire instantiation_output_8210;
  wire instantiation_output_8218;
  wire [31:0] instantiation_output_8222;
  wire instantiation_output_8223;
  wire instantiation_output_8231;
  wire [31:0] instantiation_output_8235;
  wire instantiation_output_8236;
  wire instantiation_output_8244;
  wire [31:0] instantiation_output_8248;
  wire instantiation_output_8249;
  wire instantiation_output_8257;
  wire [31:0] instantiation_output_8261;
  wire instantiation_output_8262;
  wire instantiation_output_8270;
  wire [31:0] instantiation_output_8274;
  wire instantiation_output_8275;
  wire instantiation_output_8283;
  wire [31:0] instantiation_output_8287;
  wire instantiation_output_8288;
  wire instantiation_output_8296;
  wire [31:0] instantiation_output_8300;
  wire instantiation_output_8301;
  wire instantiation_output_8309;
  wire [31:0] instantiation_output_8313;
  wire instantiation_output_8314;
  wire instantiation_output_8322;
  wire [31:0] instantiation_output_8326;
  wire instantiation_output_8327;
  wire instantiation_output_8335;
  wire [31:0] instantiation_output_8339;
  wire instantiation_output_8340;
  wire instantiation_output_8348;
  wire [31:0] instantiation_output_8352;
  wire instantiation_output_8353;
  wire instantiation_output_8361;
  wire [31:0] instantiation_output_8365;
  wire instantiation_output_8366;
  wire instantiation_output_8374;
  wire [31:0] instantiation_output_8378;
  wire instantiation_output_8379;
  wire instantiation_output_8393;
  wire [31:0] instantiation_output_8397;
  wire instantiation_output_8398;
  wire instantiation_output_8406;
  wire [31:0] instantiation_output_8410;
  wire instantiation_output_8411;
  wire instantiation_output_8419;
  wire [31:0] instantiation_output_8423;
  wire instantiation_output_8424;
  wire instantiation_output_8432;
  wire [31:0] instantiation_output_8436;
  wire instantiation_output_8437;
  wire instantiation_output_8445;
  wire [31:0] instantiation_output_8449;
  wire instantiation_output_8450;
  wire instantiation_output_8458;
  wire [31:0] instantiation_output_8462;
  wire instantiation_output_8463;
  wire instantiation_output_8471;
  wire [31:0] instantiation_output_8475;
  wire instantiation_output_8476;
  wire instantiation_output_8484;
  wire [31:0] instantiation_output_8488;
  wire instantiation_output_8489;
  wire instantiation_output_8497;
  wire [31:0] instantiation_output_8501;
  wire instantiation_output_8502;
  wire instantiation_output_8510;
  wire [31:0] instantiation_output_8514;
  wire instantiation_output_8515;
  wire instantiation_output_8523;
  wire [31:0] instantiation_output_8527;
  wire instantiation_output_8528;
  wire instantiation_output_8536;
  wire [31:0] instantiation_output_8540;
  wire instantiation_output_8541;
  wire instantiation_output_8549;
  wire [31:0] instantiation_output_8553;
  wire instantiation_output_8554;
  wire instantiation_output_8562;
  wire [31:0] instantiation_output_8566;
  wire instantiation_output_8567;
  wire instantiation_output_8575;
  wire [31:0] instantiation_output_8579;
  wire instantiation_output_8580;
  wire instantiation_output_8588;
  wire [31:0] instantiation_output_8592;
  wire instantiation_output_8593;
  wire instantiation_output_8601;
  wire [31:0] instantiation_output_8605;
  wire instantiation_output_8606;
  wire instantiation_output_8614;
  wire [31:0] instantiation_output_8618;
  wire instantiation_output_8619;
  wire instantiation_output_8627;
  wire [31:0] instantiation_output_8631;
  wire instantiation_output_8632;
  wire instantiation_output_8640;
  wire [31:0] instantiation_output_8644;
  wire instantiation_output_8645;
  wire instantiation_output_8653;
  wire [31:0] instantiation_output_8657;
  wire instantiation_output_8658;
  wire instantiation_output_8666;
  wire [31:0] instantiation_output_8670;
  wire instantiation_output_8671;
  wire instantiation_output_8679;
  wire [31:0] instantiation_output_8683;
  wire instantiation_output_8684;
  wire instantiation_output_8692;
  wire [31:0] instantiation_output_8696;
  wire instantiation_output_8697;
  wire instantiation_output_8705;
  wire [31:0] instantiation_output_8709;
  wire instantiation_output_8710;
  wire instantiation_output_8718;
  wire [31:0] instantiation_output_8722;
  wire instantiation_output_8723;
  wire instantiation_output_8731;
  wire [31:0] instantiation_output_8735;
  wire instantiation_output_8736;
  wire instantiation_output_8744;
  wire [31:0] instantiation_output_8748;
  wire instantiation_output_8749;
  wire instantiation_output_8757;
  wire [31:0] instantiation_output_8761;
  wire instantiation_output_8762;
  wire instantiation_output_8770;
  wire [31:0] instantiation_output_8774;
  wire instantiation_output_8775;
  wire instantiation_output_8783;
  wire [31:0] instantiation_output_8787;
  wire instantiation_output_8788;
  wire instantiation_output_8796;
  wire [31:0] instantiation_output_8800;
  wire instantiation_output_8801;
  wire instantiation_output_8809;
  wire [31:0] instantiation_output_8813;
  wire instantiation_output_8814;
  wire instantiation_output_8822;
  wire [31:0] instantiation_output_8826;
  wire instantiation_output_8827;
  wire instantiation_output_8835;
  wire [31:0] instantiation_output_8839;
  wire instantiation_output_8840;
  wire instantiation_output_8848;
  wire [31:0] instantiation_output_8852;
  wire instantiation_output_8853;

  // ===== Instantiations
  __systolic__SystolicArray_0_next__1 __systolic__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .systolic__arg0({{systolic__arg0_unflattened[3][3], systolic__arg0_unflattened[3][2], systolic__arg0_unflattened[3][1], systolic__arg0_unflattened[3][0]}, {systolic__arg0_unflattened[2][3], systolic__arg0_unflattened[2][2], systolic__arg0_unflattened[2][1], systolic__arg0_unflattened[2][0]}, {systolic__arg0_unflattened[1][3], systolic__arg0_unflattened[1][2], systolic__arg0_unflattened[1][1], systolic__arg0_unflattened[1][0]}, {systolic__arg0_unflattened[0][3], systolic__arg0_unflattened[0][2], systolic__arg0_unflattened[0][1], systolic__arg0_unflattened[0][0]}}),
    .systolic__arg0_vld(systolic__arg0_vld),
    .systolic__arg1({{systolic__arg1_unflattened[3][3], systolic__arg1_unflattened[3][2], systolic__arg1_unflattened[3][1], systolic__arg1_unflattened[3][0]}, {systolic__arg1_unflattened[2][3], systolic__arg1_unflattened[2][2], systolic__arg1_unflattened[2][1], systolic__arg1_unflattened[2][0]}, {systolic__arg1_unflattened[1][3], systolic__arg1_unflattened[1][2], systolic__arg1_unflattened[1][1], systolic__arg1_unflattened[1][0]}, {systolic__arg1_unflattened[0][3], systolic__arg1_unflattened[0][2], systolic__arg1_unflattened[0][1], systolic__arg1_unflattened[0][0]}}),
    .systolic__arg1_vld(systolic__arg1_vld),
    .systolic__hor_chans__0_0_rdy(instantiation_output_8127),
    .systolic__hor_chans__0_4(instantiation_output_8183),
    .systolic__hor_chans__0_4_vld(instantiation_output_8184),
    .systolic__hor_chans__1_0_rdy(instantiation_output_8192),
    .systolic__hor_chans__1_4(instantiation_output_8248),
    .systolic__hor_chans__1_4_vld(instantiation_output_8249),
    .systolic__hor_chans__2_0_rdy(instantiation_output_8257),
    .systolic__hor_chans__2_4(instantiation_output_8313),
    .systolic__hor_chans__2_4_vld(instantiation_output_8314),
    .systolic__hor_chans__3_0_rdy(instantiation_output_8322),
    .systolic__hor_chans__3_4(instantiation_output_8378),
    .systolic__hor_chans__3_4_vld(instantiation_output_8379),
    .systolic__out0_rdy(systolic__out0_rdy),
    .systolic__result_chans__0_0(instantiation_output_8397),
    .systolic__result_chans__0_0_vld(instantiation_output_8398),
    .systolic__result_chans__0_1(instantiation_output_8410),
    .systolic__result_chans__0_1_vld(instantiation_output_8411),
    .systolic__result_chans__0_2(instantiation_output_8423),
    .systolic__result_chans__0_2_vld(instantiation_output_8424),
    .systolic__result_chans__0_3(instantiation_output_8436),
    .systolic__result_chans__0_3_vld(instantiation_output_8437),
    .systolic__result_chans__1_0(instantiation_output_8449),
    .systolic__result_chans__1_0_vld(instantiation_output_8450),
    .systolic__result_chans__1_1(instantiation_output_8462),
    .systolic__result_chans__1_1_vld(instantiation_output_8463),
    .systolic__result_chans__1_2(instantiation_output_8475),
    .systolic__result_chans__1_2_vld(instantiation_output_8476),
    .systolic__result_chans__1_3(instantiation_output_8488),
    .systolic__result_chans__1_3_vld(instantiation_output_8489),
    .systolic__result_chans__2_0(instantiation_output_8501),
    .systolic__result_chans__2_0_vld(instantiation_output_8502),
    .systolic__result_chans__2_1(instantiation_output_8514),
    .systolic__result_chans__2_1_vld(instantiation_output_8515),
    .systolic__result_chans__2_2(instantiation_output_8527),
    .systolic__result_chans__2_2_vld(instantiation_output_8528),
    .systolic__result_chans__2_3(instantiation_output_8540),
    .systolic__result_chans__2_3_vld(instantiation_output_8541),
    .systolic__result_chans__3_0(instantiation_output_8553),
    .systolic__result_chans__3_0_vld(instantiation_output_8554),
    .systolic__result_chans__3_1(instantiation_output_8566),
    .systolic__result_chans__3_1_vld(instantiation_output_8567),
    .systolic__result_chans__3_2(instantiation_output_8579),
    .systolic__result_chans__3_2_vld(instantiation_output_8580),
    .systolic__result_chans__3_3(instantiation_output_8592),
    .systolic__result_chans__3_3_vld(instantiation_output_8593),
    .systolic__vert_chans__0_0_rdy(instantiation_output_8601),
    .systolic__vert_chans__0_1_rdy(instantiation_output_8614),
    .systolic__vert_chans__0_2_rdy(instantiation_output_8627),
    .systolic__vert_chans__0_3_rdy(instantiation_output_8640),
    .systolic__vert_chans__4_0(instantiation_output_8813),
    .systolic__vert_chans__4_0_vld(instantiation_output_8814),
    .systolic__vert_chans__4_1(instantiation_output_8826),
    .systolic__vert_chans__4_1_vld(instantiation_output_8827),
    .systolic__vert_chans__4_2(instantiation_output_8839),
    .systolic__vert_chans__4_2_vld(instantiation_output_8840),
    .systolic__vert_chans__4_3(instantiation_output_8852),
    .systolic__vert_chans__4_3_vld(instantiation_output_8853),
    .systolic__arg0_rdy(instantiation_output_8114),
    .systolic__arg1_rdy(instantiation_output_8120),
    .systolic__hor_chans__0_0(instantiation_output_8125),
    .systolic__hor_chans__0_0_vld(instantiation_output_8126),
    .systolic__hor_chans__0_4_rdy(instantiation_output_8185),
    .systolic__hor_chans__1_0(instantiation_output_8190),
    .systolic__hor_chans__1_0_vld(instantiation_output_8191),
    .systolic__hor_chans__1_4_rdy(instantiation_output_8250),
    .systolic__hor_chans__2_0(instantiation_output_8255),
    .systolic__hor_chans__2_0_vld(instantiation_output_8256),
    .systolic__hor_chans__2_4_rdy(instantiation_output_8315),
    .systolic__hor_chans__3_0(instantiation_output_8320),
    .systolic__hor_chans__3_0_vld(instantiation_output_8321),
    .systolic__hor_chans__3_4_rdy(instantiation_output_8380),
    .systolic__out0({{instantiation_output_8384[3][3], instantiation_output_8384[3][2], instantiation_output_8384[3][1], instantiation_output_8384[3][0]}, {instantiation_output_8384[2][3], instantiation_output_8384[2][2], instantiation_output_8384[2][1], instantiation_output_8384[2][0]}, {instantiation_output_8384[1][3], instantiation_output_8384[1][2], instantiation_output_8384[1][1], instantiation_output_8384[1][0]}, {instantiation_output_8384[0][3], instantiation_output_8384[0][2], instantiation_output_8384[0][1], instantiation_output_8384[0][0]}}),
    .systolic__out0_vld(instantiation_output_8385),
    .systolic__result_chans__0_0_rdy(instantiation_output_8399),
    .systolic__result_chans__0_1_rdy(instantiation_output_8412),
    .systolic__result_chans__0_2_rdy(instantiation_output_8425),
    .systolic__result_chans__0_3_rdy(instantiation_output_8438),
    .systolic__result_chans__1_0_rdy(instantiation_output_8451),
    .systolic__result_chans__1_1_rdy(instantiation_output_8464),
    .systolic__result_chans__1_2_rdy(instantiation_output_8477),
    .systolic__result_chans__1_3_rdy(instantiation_output_8490),
    .systolic__result_chans__2_0_rdy(instantiation_output_8503),
    .systolic__result_chans__2_1_rdy(instantiation_output_8516),
    .systolic__result_chans__2_2_rdy(instantiation_output_8529),
    .systolic__result_chans__2_3_rdy(instantiation_output_8542),
    .systolic__result_chans__3_0_rdy(instantiation_output_8555),
    .systolic__result_chans__3_1_rdy(instantiation_output_8568),
    .systolic__result_chans__3_2_rdy(instantiation_output_8581),
    .systolic__result_chans__3_3_rdy(instantiation_output_8594),
    .systolic__vert_chans__0_0(instantiation_output_8599),
    .systolic__vert_chans__0_0_vld(instantiation_output_8600),
    .systolic__vert_chans__0_1(instantiation_output_8612),
    .systolic__vert_chans__0_1_vld(instantiation_output_8613),
    .systolic__vert_chans__0_2(instantiation_output_8625),
    .systolic__vert_chans__0_2_vld(instantiation_output_8626),
    .systolic__vert_chans__0_3(instantiation_output_8638),
    .systolic__vert_chans__0_3_vld(instantiation_output_8639),
    .systolic__vert_chans__4_0_rdy(instantiation_output_8815),
    .systolic__vert_chans__4_1_rdy(instantiation_output_8828),
    .systolic__vert_chans__4_2_rdy(instantiation_output_8841),
    .systolic__vert_chans__4_3_rdy(instantiation_output_8854),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_0_next __systolic__SystolicArray__PE_0_next_inst1 (
    .rst(rst),
    .systolic__hor_chans__0_0(instantiation_output_8131),
    .systolic__hor_chans__0_0_vld(instantiation_output_8132),
    .systolic__hor_chans__0_1_rdy(instantiation_output_8140),
    .systolic__result_chans__0_0_rdy(instantiation_output_8393),
    .systolic__vert_chans__0_0(instantiation_output_8605),
    .systolic__vert_chans__0_0_vld(instantiation_output_8606),
    .systolic__vert_chans__1_0_rdy(instantiation_output_8653),
    .systolic__hor_chans__0_0_rdy(instantiation_output_8133),
    .systolic__hor_chans__0_1(instantiation_output_8138),
    .systolic__hor_chans__0_1_vld(instantiation_output_8139),
    .systolic__result_chans__0_0(instantiation_output_8391),
    .systolic__result_chans__0_0_vld(instantiation_output_8392),
    .systolic__vert_chans__0_0_rdy(instantiation_output_8607),
    .systolic__vert_chans__1_0(instantiation_output_8651),
    .systolic__vert_chans__1_0_vld(instantiation_output_8652),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_10_next __systolic__SystolicArray__PE_10_next_inst2 (
    .rst(rst),
    .systolic__hor_chans__2_2(instantiation_output_8287),
    .systolic__hor_chans__2_2_vld(instantiation_output_8288),
    .systolic__hor_chans__2_3_rdy(instantiation_output_8296),
    .systolic__result_chans__2_2_rdy(instantiation_output_8523),
    .systolic__vert_chans__2_2(instantiation_output_8735),
    .systolic__vert_chans__2_2_vld(instantiation_output_8736),
    .systolic__vert_chans__3_2_rdy(instantiation_output_8783),
    .systolic__hor_chans__2_2_rdy(instantiation_output_8289),
    .systolic__hor_chans__2_3(instantiation_output_8294),
    .systolic__hor_chans__2_3_vld(instantiation_output_8295),
    .systolic__result_chans__2_2(instantiation_output_8521),
    .systolic__result_chans__2_2_vld(instantiation_output_8522),
    .systolic__vert_chans__2_2_rdy(instantiation_output_8737),
    .systolic__vert_chans__3_2(instantiation_output_8781),
    .systolic__vert_chans__3_2_vld(instantiation_output_8782),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_11_next __systolic__SystolicArray__PE_11_next_inst3 (
    .rst(rst),
    .systolic__hor_chans__2_3(instantiation_output_8300),
    .systolic__hor_chans__2_3_vld(instantiation_output_8301),
    .systolic__hor_chans__2_4_rdy(instantiation_output_8309),
    .systolic__result_chans__2_3_rdy(instantiation_output_8536),
    .systolic__vert_chans__2_3(instantiation_output_8748),
    .systolic__vert_chans__2_3_vld(instantiation_output_8749),
    .systolic__vert_chans__3_3_rdy(instantiation_output_8796),
    .systolic__hor_chans__2_3_rdy(instantiation_output_8302),
    .systolic__hor_chans__2_4(instantiation_output_8307),
    .systolic__hor_chans__2_4_vld(instantiation_output_8308),
    .systolic__result_chans__2_3(instantiation_output_8534),
    .systolic__result_chans__2_3_vld(instantiation_output_8535),
    .systolic__vert_chans__2_3_rdy(instantiation_output_8750),
    .systolic__vert_chans__3_3(instantiation_output_8794),
    .systolic__vert_chans__3_3_vld(instantiation_output_8795),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_12_next __systolic__SystolicArray__PE_12_next_inst4 (
    .rst(rst),
    .systolic__hor_chans__3_0(instantiation_output_8326),
    .systolic__hor_chans__3_0_vld(instantiation_output_8327),
    .systolic__hor_chans__3_1_rdy(instantiation_output_8335),
    .systolic__result_chans__3_0_rdy(instantiation_output_8549),
    .systolic__vert_chans__3_0(instantiation_output_8761),
    .systolic__vert_chans__3_0_vld(instantiation_output_8762),
    .systolic__vert_chans__4_0_rdy(instantiation_output_8809),
    .systolic__hor_chans__3_0_rdy(instantiation_output_8328),
    .systolic__hor_chans__3_1(instantiation_output_8333),
    .systolic__hor_chans__3_1_vld(instantiation_output_8334),
    .systolic__result_chans__3_0(instantiation_output_8547),
    .systolic__result_chans__3_0_vld(instantiation_output_8548),
    .systolic__vert_chans__3_0_rdy(instantiation_output_8763),
    .systolic__vert_chans__4_0(instantiation_output_8807),
    .systolic__vert_chans__4_0_vld(instantiation_output_8808),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_13_next __systolic__SystolicArray__PE_13_next_inst5 (
    .rst(rst),
    .systolic__hor_chans__3_1(instantiation_output_8339),
    .systolic__hor_chans__3_1_vld(instantiation_output_8340),
    .systolic__hor_chans__3_2_rdy(instantiation_output_8348),
    .systolic__result_chans__3_1_rdy(instantiation_output_8562),
    .systolic__vert_chans__3_1(instantiation_output_8774),
    .systolic__vert_chans__3_1_vld(instantiation_output_8775),
    .systolic__vert_chans__4_1_rdy(instantiation_output_8822),
    .systolic__hor_chans__3_1_rdy(instantiation_output_8341),
    .systolic__hor_chans__3_2(instantiation_output_8346),
    .systolic__hor_chans__3_2_vld(instantiation_output_8347),
    .systolic__result_chans__3_1(instantiation_output_8560),
    .systolic__result_chans__3_1_vld(instantiation_output_8561),
    .systolic__vert_chans__3_1_rdy(instantiation_output_8776),
    .systolic__vert_chans__4_1(instantiation_output_8820),
    .systolic__vert_chans__4_1_vld(instantiation_output_8821),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_14_next __systolic__SystolicArray__PE_14_next_inst6 (
    .rst(rst),
    .systolic__hor_chans__3_2(instantiation_output_8352),
    .systolic__hor_chans__3_2_vld(instantiation_output_8353),
    .systolic__hor_chans__3_3_rdy(instantiation_output_8361),
    .systolic__result_chans__3_2_rdy(instantiation_output_8575),
    .systolic__vert_chans__3_2(instantiation_output_8787),
    .systolic__vert_chans__3_2_vld(instantiation_output_8788),
    .systolic__vert_chans__4_2_rdy(instantiation_output_8835),
    .systolic__hor_chans__3_2_rdy(instantiation_output_8354),
    .systolic__hor_chans__3_3(instantiation_output_8359),
    .systolic__hor_chans__3_3_vld(instantiation_output_8360),
    .systolic__result_chans__3_2(instantiation_output_8573),
    .systolic__result_chans__3_2_vld(instantiation_output_8574),
    .systolic__vert_chans__3_2_rdy(instantiation_output_8789),
    .systolic__vert_chans__4_2(instantiation_output_8833),
    .systolic__vert_chans__4_2_vld(instantiation_output_8834),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_15_next __systolic__SystolicArray__PE_15_next_inst7 (
    .rst(rst),
    .systolic__hor_chans__3_3(instantiation_output_8365),
    .systolic__hor_chans__3_3_vld(instantiation_output_8366),
    .systolic__hor_chans__3_4_rdy(instantiation_output_8374),
    .systolic__result_chans__3_3_rdy(instantiation_output_8588),
    .systolic__vert_chans__3_3(instantiation_output_8800),
    .systolic__vert_chans__3_3_vld(instantiation_output_8801),
    .systolic__vert_chans__4_3_rdy(instantiation_output_8848),
    .systolic__hor_chans__3_3_rdy(instantiation_output_8367),
    .systolic__hor_chans__3_4(instantiation_output_8372),
    .systolic__hor_chans__3_4_vld(instantiation_output_8373),
    .systolic__result_chans__3_3(instantiation_output_8586),
    .systolic__result_chans__3_3_vld(instantiation_output_8587),
    .systolic__vert_chans__3_3_rdy(instantiation_output_8802),
    .systolic__vert_chans__4_3(instantiation_output_8846),
    .systolic__vert_chans__4_3_vld(instantiation_output_8847),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_1_next __systolic__SystolicArray__PE_1_next_inst8 (
    .rst(rst),
    .systolic__hor_chans__0_1(instantiation_output_8144),
    .systolic__hor_chans__0_1_vld(instantiation_output_8145),
    .systolic__hor_chans__0_2_rdy(instantiation_output_8153),
    .systolic__result_chans__0_1_rdy(instantiation_output_8406),
    .systolic__vert_chans__0_1(instantiation_output_8618),
    .systolic__vert_chans__0_1_vld(instantiation_output_8619),
    .systolic__vert_chans__1_1_rdy(instantiation_output_8666),
    .systolic__hor_chans__0_1_rdy(instantiation_output_8146),
    .systolic__hor_chans__0_2(instantiation_output_8151),
    .systolic__hor_chans__0_2_vld(instantiation_output_8152),
    .systolic__result_chans__0_1(instantiation_output_8404),
    .systolic__result_chans__0_1_vld(instantiation_output_8405),
    .systolic__vert_chans__0_1_rdy(instantiation_output_8620),
    .systolic__vert_chans__1_1(instantiation_output_8664),
    .systolic__vert_chans__1_1_vld(instantiation_output_8665),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_2_next __systolic__SystolicArray__PE_2_next_inst9 (
    .rst(rst),
    .systolic__hor_chans__0_2(instantiation_output_8157),
    .systolic__hor_chans__0_2_vld(instantiation_output_8158),
    .systolic__hor_chans__0_3_rdy(instantiation_output_8166),
    .systolic__result_chans__0_2_rdy(instantiation_output_8419),
    .systolic__vert_chans__0_2(instantiation_output_8631),
    .systolic__vert_chans__0_2_vld(instantiation_output_8632),
    .systolic__vert_chans__1_2_rdy(instantiation_output_8679),
    .systolic__hor_chans__0_2_rdy(instantiation_output_8159),
    .systolic__hor_chans__0_3(instantiation_output_8164),
    .systolic__hor_chans__0_3_vld(instantiation_output_8165),
    .systolic__result_chans__0_2(instantiation_output_8417),
    .systolic__result_chans__0_2_vld(instantiation_output_8418),
    .systolic__vert_chans__0_2_rdy(instantiation_output_8633),
    .systolic__vert_chans__1_2(instantiation_output_8677),
    .systolic__vert_chans__1_2_vld(instantiation_output_8678),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_3_next __systolic__SystolicArray__PE_3_next_inst10 (
    .rst(rst),
    .systolic__hor_chans__0_3(instantiation_output_8170),
    .systolic__hor_chans__0_3_vld(instantiation_output_8171),
    .systolic__hor_chans__0_4_rdy(instantiation_output_8179),
    .systolic__result_chans__0_3_rdy(instantiation_output_8432),
    .systolic__vert_chans__0_3(instantiation_output_8644),
    .systolic__vert_chans__0_3_vld(instantiation_output_8645),
    .systolic__vert_chans__1_3_rdy(instantiation_output_8692),
    .systolic__hor_chans__0_3_rdy(instantiation_output_8172),
    .systolic__hor_chans__0_4(instantiation_output_8177),
    .systolic__hor_chans__0_4_vld(instantiation_output_8178),
    .systolic__result_chans__0_3(instantiation_output_8430),
    .systolic__result_chans__0_3_vld(instantiation_output_8431),
    .systolic__vert_chans__0_3_rdy(instantiation_output_8646),
    .systolic__vert_chans__1_3(instantiation_output_8690),
    .systolic__vert_chans__1_3_vld(instantiation_output_8691),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_4_next __systolic__SystolicArray__PE_4_next_inst11 (
    .rst(rst),
    .systolic__hor_chans__1_0(instantiation_output_8196),
    .systolic__hor_chans__1_0_vld(instantiation_output_8197),
    .systolic__hor_chans__1_1_rdy(instantiation_output_8205),
    .systolic__result_chans__1_0_rdy(instantiation_output_8445),
    .systolic__vert_chans__1_0(instantiation_output_8657),
    .systolic__vert_chans__1_0_vld(instantiation_output_8658),
    .systolic__vert_chans__2_0_rdy(instantiation_output_8705),
    .systolic__hor_chans__1_0_rdy(instantiation_output_8198),
    .systolic__hor_chans__1_1(instantiation_output_8203),
    .systolic__hor_chans__1_1_vld(instantiation_output_8204),
    .systolic__result_chans__1_0(instantiation_output_8443),
    .systolic__result_chans__1_0_vld(instantiation_output_8444),
    .systolic__vert_chans__1_0_rdy(instantiation_output_8659),
    .systolic__vert_chans__2_0(instantiation_output_8703),
    .systolic__vert_chans__2_0_vld(instantiation_output_8704),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_5_next __systolic__SystolicArray__PE_5_next_inst12 (
    .rst(rst),
    .systolic__hor_chans__1_1(instantiation_output_8209),
    .systolic__hor_chans__1_1_vld(instantiation_output_8210),
    .systolic__hor_chans__1_2_rdy(instantiation_output_8218),
    .systolic__result_chans__1_1_rdy(instantiation_output_8458),
    .systolic__vert_chans__1_1(instantiation_output_8670),
    .systolic__vert_chans__1_1_vld(instantiation_output_8671),
    .systolic__vert_chans__2_1_rdy(instantiation_output_8718),
    .systolic__hor_chans__1_1_rdy(instantiation_output_8211),
    .systolic__hor_chans__1_2(instantiation_output_8216),
    .systolic__hor_chans__1_2_vld(instantiation_output_8217),
    .systolic__result_chans__1_1(instantiation_output_8456),
    .systolic__result_chans__1_1_vld(instantiation_output_8457),
    .systolic__vert_chans__1_1_rdy(instantiation_output_8672),
    .systolic__vert_chans__2_1(instantiation_output_8716),
    .systolic__vert_chans__2_1_vld(instantiation_output_8717),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_6_next __systolic__SystolicArray__PE_6_next_inst13 (
    .rst(rst),
    .systolic__hor_chans__1_2(instantiation_output_8222),
    .systolic__hor_chans__1_2_vld(instantiation_output_8223),
    .systolic__hor_chans__1_3_rdy(instantiation_output_8231),
    .systolic__result_chans__1_2_rdy(instantiation_output_8471),
    .systolic__vert_chans__1_2(instantiation_output_8683),
    .systolic__vert_chans__1_2_vld(instantiation_output_8684),
    .systolic__vert_chans__2_2_rdy(instantiation_output_8731),
    .systolic__hor_chans__1_2_rdy(instantiation_output_8224),
    .systolic__hor_chans__1_3(instantiation_output_8229),
    .systolic__hor_chans__1_3_vld(instantiation_output_8230),
    .systolic__result_chans__1_2(instantiation_output_8469),
    .systolic__result_chans__1_2_vld(instantiation_output_8470),
    .systolic__vert_chans__1_2_rdy(instantiation_output_8685),
    .systolic__vert_chans__2_2(instantiation_output_8729),
    .systolic__vert_chans__2_2_vld(instantiation_output_8730),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_7_next __systolic__SystolicArray__PE_7_next_inst14 (
    .rst(rst),
    .systolic__hor_chans__1_3(instantiation_output_8235),
    .systolic__hor_chans__1_3_vld(instantiation_output_8236),
    .systolic__hor_chans__1_4_rdy(instantiation_output_8244),
    .systolic__result_chans__1_3_rdy(instantiation_output_8484),
    .systolic__vert_chans__1_3(instantiation_output_8696),
    .systolic__vert_chans__1_3_vld(instantiation_output_8697),
    .systolic__vert_chans__2_3_rdy(instantiation_output_8744),
    .systolic__hor_chans__1_3_rdy(instantiation_output_8237),
    .systolic__hor_chans__1_4(instantiation_output_8242),
    .systolic__hor_chans__1_4_vld(instantiation_output_8243),
    .systolic__result_chans__1_3(instantiation_output_8482),
    .systolic__result_chans__1_3_vld(instantiation_output_8483),
    .systolic__vert_chans__1_3_rdy(instantiation_output_8698),
    .systolic__vert_chans__2_3(instantiation_output_8742),
    .systolic__vert_chans__2_3_vld(instantiation_output_8743),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_8_next __systolic__SystolicArray__PE_8_next_inst15 (
    .rst(rst),
    .systolic__hor_chans__2_0(instantiation_output_8261),
    .systolic__hor_chans__2_0_vld(instantiation_output_8262),
    .systolic__hor_chans__2_1_rdy(instantiation_output_8270),
    .systolic__result_chans__2_0_rdy(instantiation_output_8497),
    .systolic__vert_chans__2_0(instantiation_output_8709),
    .systolic__vert_chans__2_0_vld(instantiation_output_8710),
    .systolic__vert_chans__3_0_rdy(instantiation_output_8757),
    .systolic__hor_chans__2_0_rdy(instantiation_output_8263),
    .systolic__hor_chans__2_1(instantiation_output_8268),
    .systolic__hor_chans__2_1_vld(instantiation_output_8269),
    .systolic__result_chans__2_0(instantiation_output_8495),
    .systolic__result_chans__2_0_vld(instantiation_output_8496),
    .systolic__vert_chans__2_0_rdy(instantiation_output_8711),
    .systolic__vert_chans__3_0(instantiation_output_8755),
    .systolic__vert_chans__3_0_vld(instantiation_output_8756),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_9_next __systolic__SystolicArray__PE_9_next_inst16 (
    .rst(rst),
    .systolic__hor_chans__2_1(instantiation_output_8274),
    .systolic__hor_chans__2_1_vld(instantiation_output_8275),
    .systolic__hor_chans__2_2_rdy(instantiation_output_8283),
    .systolic__result_chans__2_1_rdy(instantiation_output_8510),
    .systolic__vert_chans__2_1(instantiation_output_8722),
    .systolic__vert_chans__2_1_vld(instantiation_output_8723),
    .systolic__vert_chans__3_1_rdy(instantiation_output_8770),
    .systolic__hor_chans__2_1_rdy(instantiation_output_8276),
    .systolic__hor_chans__2_2(instantiation_output_8281),
    .systolic__hor_chans__2_2_vld(instantiation_output_8282),
    .systolic__result_chans__2_1(instantiation_output_8508),
    .systolic__result_chans__2_1_vld(instantiation_output_8509),
    .systolic__vert_chans__2_1_rdy(instantiation_output_8724),
    .systolic__vert_chans__3_1(instantiation_output_8768),
    .systolic__vert_chans__3_1_vld(instantiation_output_8769),
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
    .push_data(instantiation_output_8125),
    .push_valid(instantiation_output_8126),
    .pop_ready(instantiation_output_8133),
    .push_ready(instantiation_output_8127),
    .pop_data(instantiation_output_8131),
    .pop_valid(instantiation_output_8132)
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
    .push_data(instantiation_output_8138),
    .push_valid(instantiation_output_8139),
    .pop_ready(instantiation_output_8146),
    .push_ready(instantiation_output_8140),
    .pop_data(instantiation_output_8144),
    .pop_valid(instantiation_output_8145)
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
    .push_data(instantiation_output_8151),
    .push_valid(instantiation_output_8152),
    .pop_ready(instantiation_output_8159),
    .push_ready(instantiation_output_8153),
    .pop_data(instantiation_output_8157),
    .pop_valid(instantiation_output_8158)
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
    .push_data(instantiation_output_8164),
    .push_valid(instantiation_output_8165),
    .pop_ready(instantiation_output_8172),
    .push_ready(instantiation_output_8166),
    .pop_data(instantiation_output_8170),
    .pop_valid(instantiation_output_8171)
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
    .push_data(instantiation_output_8177),
    .push_valid(instantiation_output_8178),
    .pop_ready(instantiation_output_8185),
    .push_ready(instantiation_output_8179),
    .pop_data(instantiation_output_8183),
    .pop_valid(instantiation_output_8184)
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
    .push_data(instantiation_output_8190),
    .push_valid(instantiation_output_8191),
    .pop_ready(instantiation_output_8198),
    .push_ready(instantiation_output_8192),
    .pop_data(instantiation_output_8196),
    .pop_valid(instantiation_output_8197)
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
    .push_data(instantiation_output_8203),
    .push_valid(instantiation_output_8204),
    .pop_ready(instantiation_output_8211),
    .push_ready(instantiation_output_8205),
    .pop_data(instantiation_output_8209),
    .pop_valid(instantiation_output_8210)
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
    .push_data(instantiation_output_8216),
    .push_valid(instantiation_output_8217),
    .pop_ready(instantiation_output_8224),
    .push_ready(instantiation_output_8218),
    .pop_data(instantiation_output_8222),
    .pop_valid(instantiation_output_8223)
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
    .push_data(instantiation_output_8229),
    .push_valid(instantiation_output_8230),
    .pop_ready(instantiation_output_8237),
    .push_ready(instantiation_output_8231),
    .pop_data(instantiation_output_8235),
    .pop_valid(instantiation_output_8236)
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
    .push_data(instantiation_output_8242),
    .push_valid(instantiation_output_8243),
    .pop_ready(instantiation_output_8250),
    .push_ready(instantiation_output_8244),
    .pop_data(instantiation_output_8248),
    .pop_valid(instantiation_output_8249)
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
    .push_data(instantiation_output_8255),
    .push_valid(instantiation_output_8256),
    .pop_ready(instantiation_output_8263),
    .push_ready(instantiation_output_8257),
    .pop_data(instantiation_output_8261),
    .pop_valid(instantiation_output_8262)
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
    .push_data(instantiation_output_8268),
    .push_valid(instantiation_output_8269),
    .pop_ready(instantiation_output_8276),
    .push_ready(instantiation_output_8270),
    .pop_data(instantiation_output_8274),
    .pop_valid(instantiation_output_8275)
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
    .push_data(instantiation_output_8281),
    .push_valid(instantiation_output_8282),
    .pop_ready(instantiation_output_8289),
    .push_ready(instantiation_output_8283),
    .pop_data(instantiation_output_8287),
    .pop_valid(instantiation_output_8288)
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
    .push_data(instantiation_output_8294),
    .push_valid(instantiation_output_8295),
    .pop_ready(instantiation_output_8302),
    .push_ready(instantiation_output_8296),
    .pop_data(instantiation_output_8300),
    .pop_valid(instantiation_output_8301)
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
    .push_data(instantiation_output_8307),
    .push_valid(instantiation_output_8308),
    .pop_ready(instantiation_output_8315),
    .push_ready(instantiation_output_8309),
    .pop_data(instantiation_output_8313),
    .pop_valid(instantiation_output_8314)
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
    .push_data(instantiation_output_8320),
    .push_valid(instantiation_output_8321),
    .pop_ready(instantiation_output_8328),
    .push_ready(instantiation_output_8322),
    .pop_data(instantiation_output_8326),
    .pop_valid(instantiation_output_8327)
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
    .push_data(instantiation_output_8333),
    .push_valid(instantiation_output_8334),
    .pop_ready(instantiation_output_8341),
    .push_ready(instantiation_output_8335),
    .pop_data(instantiation_output_8339),
    .pop_valid(instantiation_output_8340)
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
    .push_data(instantiation_output_8346),
    .push_valid(instantiation_output_8347),
    .pop_ready(instantiation_output_8354),
    .push_ready(instantiation_output_8348),
    .pop_data(instantiation_output_8352),
    .pop_valid(instantiation_output_8353)
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
    .push_data(instantiation_output_8359),
    .push_valid(instantiation_output_8360),
    .pop_ready(instantiation_output_8367),
    .push_ready(instantiation_output_8361),
    .pop_data(instantiation_output_8365),
    .pop_valid(instantiation_output_8366)
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
    .push_data(instantiation_output_8372),
    .push_valid(instantiation_output_8373),
    .pop_ready(instantiation_output_8380),
    .push_ready(instantiation_output_8374),
    .pop_data(instantiation_output_8378),
    .pop_valid(instantiation_output_8379)
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
    .push_data(instantiation_output_8391),
    .push_valid(instantiation_output_8392),
    .pop_ready(instantiation_output_8399),
    .push_ready(instantiation_output_8393),
    .pop_data(instantiation_output_8397),
    .pop_valid(instantiation_output_8398)
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
    .push_data(instantiation_output_8404),
    .push_valid(instantiation_output_8405),
    .pop_ready(instantiation_output_8412),
    .push_ready(instantiation_output_8406),
    .pop_data(instantiation_output_8410),
    .pop_valid(instantiation_output_8411)
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
    .push_data(instantiation_output_8417),
    .push_valid(instantiation_output_8418),
    .pop_ready(instantiation_output_8425),
    .push_ready(instantiation_output_8419),
    .pop_data(instantiation_output_8423),
    .pop_valid(instantiation_output_8424)
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
    .push_data(instantiation_output_8430),
    .push_valid(instantiation_output_8431),
    .pop_ready(instantiation_output_8438),
    .push_ready(instantiation_output_8432),
    .pop_data(instantiation_output_8436),
    .pop_valid(instantiation_output_8437)
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
    .push_data(instantiation_output_8443),
    .push_valid(instantiation_output_8444),
    .pop_ready(instantiation_output_8451),
    .push_ready(instantiation_output_8445),
    .pop_data(instantiation_output_8449),
    .pop_valid(instantiation_output_8450)
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
    .push_data(instantiation_output_8456),
    .push_valid(instantiation_output_8457),
    .pop_ready(instantiation_output_8464),
    .push_ready(instantiation_output_8458),
    .pop_data(instantiation_output_8462),
    .pop_valid(instantiation_output_8463)
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
    .push_data(instantiation_output_8469),
    .push_valid(instantiation_output_8470),
    .pop_ready(instantiation_output_8477),
    .push_ready(instantiation_output_8471),
    .pop_data(instantiation_output_8475),
    .pop_valid(instantiation_output_8476)
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
    .push_data(instantiation_output_8482),
    .push_valid(instantiation_output_8483),
    .pop_ready(instantiation_output_8490),
    .push_ready(instantiation_output_8484),
    .pop_data(instantiation_output_8488),
    .pop_valid(instantiation_output_8489)
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
    .push_data(instantiation_output_8495),
    .push_valid(instantiation_output_8496),
    .pop_ready(instantiation_output_8503),
    .push_ready(instantiation_output_8497),
    .pop_data(instantiation_output_8501),
    .pop_valid(instantiation_output_8502)
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
    .push_data(instantiation_output_8508),
    .push_valid(instantiation_output_8509),
    .pop_ready(instantiation_output_8516),
    .push_ready(instantiation_output_8510),
    .pop_data(instantiation_output_8514),
    .pop_valid(instantiation_output_8515)
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
    .push_data(instantiation_output_8521),
    .push_valid(instantiation_output_8522),
    .pop_ready(instantiation_output_8529),
    .push_ready(instantiation_output_8523),
    .pop_data(instantiation_output_8527),
    .pop_valid(instantiation_output_8528)
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
    .push_data(instantiation_output_8534),
    .push_valid(instantiation_output_8535),
    .pop_ready(instantiation_output_8542),
    .push_ready(instantiation_output_8536),
    .pop_data(instantiation_output_8540),
    .pop_valid(instantiation_output_8541)
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
    .push_data(instantiation_output_8547),
    .push_valid(instantiation_output_8548),
    .pop_ready(instantiation_output_8555),
    .push_ready(instantiation_output_8549),
    .pop_data(instantiation_output_8553),
    .pop_valid(instantiation_output_8554)
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
    .push_data(instantiation_output_8560),
    .push_valid(instantiation_output_8561),
    .pop_ready(instantiation_output_8568),
    .push_ready(instantiation_output_8562),
    .pop_data(instantiation_output_8566),
    .pop_valid(instantiation_output_8567)
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
    .push_data(instantiation_output_8573),
    .push_valid(instantiation_output_8574),
    .pop_ready(instantiation_output_8581),
    .push_ready(instantiation_output_8575),
    .pop_data(instantiation_output_8579),
    .pop_valid(instantiation_output_8580)
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
    .push_data(instantiation_output_8586),
    .push_valid(instantiation_output_8587),
    .pop_ready(instantiation_output_8594),
    .push_ready(instantiation_output_8588),
    .pop_data(instantiation_output_8592),
    .pop_valid(instantiation_output_8593)
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
    .push_data(instantiation_output_8599),
    .push_valid(instantiation_output_8600),
    .pop_ready(instantiation_output_8607),
    .push_ready(instantiation_output_8601),
    .pop_data(instantiation_output_8605),
    .pop_valid(instantiation_output_8606)
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
    .push_data(instantiation_output_8612),
    .push_valid(instantiation_output_8613),
    .pop_ready(instantiation_output_8620),
    .push_ready(instantiation_output_8614),
    .pop_data(instantiation_output_8618),
    .pop_valid(instantiation_output_8619)
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
    .push_data(instantiation_output_8625),
    .push_valid(instantiation_output_8626),
    .pop_ready(instantiation_output_8633),
    .push_ready(instantiation_output_8627),
    .pop_data(instantiation_output_8631),
    .pop_valid(instantiation_output_8632)
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
    .push_data(instantiation_output_8638),
    .push_valid(instantiation_output_8639),
    .pop_ready(instantiation_output_8646),
    .push_ready(instantiation_output_8640),
    .pop_data(instantiation_output_8644),
    .pop_valid(instantiation_output_8645)
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
    .push_data(instantiation_output_8651),
    .push_valid(instantiation_output_8652),
    .pop_ready(instantiation_output_8659),
    .push_ready(instantiation_output_8653),
    .pop_data(instantiation_output_8657),
    .pop_valid(instantiation_output_8658)
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
    .push_data(instantiation_output_8664),
    .push_valid(instantiation_output_8665),
    .pop_ready(instantiation_output_8672),
    .push_ready(instantiation_output_8666),
    .pop_data(instantiation_output_8670),
    .pop_valid(instantiation_output_8671)
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
    .push_data(instantiation_output_8677),
    .push_valid(instantiation_output_8678),
    .pop_ready(instantiation_output_8685),
    .push_ready(instantiation_output_8679),
    .pop_data(instantiation_output_8683),
    .pop_valid(instantiation_output_8684)
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
    .push_data(instantiation_output_8690),
    .push_valid(instantiation_output_8691),
    .pop_ready(instantiation_output_8698),
    .push_ready(instantiation_output_8692),
    .pop_data(instantiation_output_8696),
    .pop_valid(instantiation_output_8697)
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
    .push_data(instantiation_output_8703),
    .push_valid(instantiation_output_8704),
    .pop_ready(instantiation_output_8711),
    .push_ready(instantiation_output_8705),
    .pop_data(instantiation_output_8709),
    .pop_valid(instantiation_output_8710)
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
    .push_data(instantiation_output_8716),
    .push_valid(instantiation_output_8717),
    .pop_ready(instantiation_output_8724),
    .push_ready(instantiation_output_8718),
    .pop_data(instantiation_output_8722),
    .pop_valid(instantiation_output_8723)
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
    .push_data(instantiation_output_8729),
    .push_valid(instantiation_output_8730),
    .pop_ready(instantiation_output_8737),
    .push_ready(instantiation_output_8731),
    .pop_data(instantiation_output_8735),
    .pop_valid(instantiation_output_8736)
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
    .push_data(instantiation_output_8742),
    .push_valid(instantiation_output_8743),
    .pop_ready(instantiation_output_8750),
    .push_ready(instantiation_output_8744),
    .pop_data(instantiation_output_8748),
    .pop_valid(instantiation_output_8749)
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
    .push_data(instantiation_output_8755),
    .push_valid(instantiation_output_8756),
    .pop_ready(instantiation_output_8763),
    .push_ready(instantiation_output_8757),
    .pop_data(instantiation_output_8761),
    .pop_valid(instantiation_output_8762)
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
    .push_data(instantiation_output_8768),
    .push_valid(instantiation_output_8769),
    .pop_ready(instantiation_output_8776),
    .push_ready(instantiation_output_8770),
    .pop_data(instantiation_output_8774),
    .pop_valid(instantiation_output_8775)
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
    .push_data(instantiation_output_8781),
    .push_valid(instantiation_output_8782),
    .pop_ready(instantiation_output_8789),
    .push_ready(instantiation_output_8783),
    .pop_data(instantiation_output_8787),
    .pop_valid(instantiation_output_8788)
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
    .push_data(instantiation_output_8794),
    .push_valid(instantiation_output_8795),
    .pop_ready(instantiation_output_8802),
    .push_ready(instantiation_output_8796),
    .pop_data(instantiation_output_8800),
    .pop_valid(instantiation_output_8801)
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
    .push_data(instantiation_output_8807),
    .push_valid(instantiation_output_8808),
    .pop_ready(instantiation_output_8815),
    .push_ready(instantiation_output_8809),
    .pop_data(instantiation_output_8813),
    .pop_valid(instantiation_output_8814)
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
    .push_data(instantiation_output_8820),
    .push_valid(instantiation_output_8821),
    .pop_ready(instantiation_output_8828),
    .push_ready(instantiation_output_8822),
    .pop_data(instantiation_output_8826),
    .pop_valid(instantiation_output_8827)
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
    .push_data(instantiation_output_8833),
    .push_valid(instantiation_output_8834),
    .pop_ready(instantiation_output_8841),
    .push_ready(instantiation_output_8835),
    .pop_data(instantiation_output_8839),
    .pop_valid(instantiation_output_8840)
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
    .push_data(instantiation_output_8846),
    .push_valid(instantiation_output_8847),
    .pop_ready(instantiation_output_8854),
    .push_ready(instantiation_output_8848),
    .pop_data(instantiation_output_8852),
    .pop_valid(instantiation_output_8853)
  );
  assign systolic__arg0_rdy = instantiation_output_8114;
  assign systolic__arg1_rdy = instantiation_output_8120;
  assign systolic__out0 = {{instantiation_output_8384[3][3], instantiation_output_8384[3][2], instantiation_output_8384[3][1], instantiation_output_8384[3][0]}, {instantiation_output_8384[2][3], instantiation_output_8384[2][2], instantiation_output_8384[2][1], instantiation_output_8384[2][0]}, {instantiation_output_8384[1][3], instantiation_output_8384[1][2], instantiation_output_8384[1][1], instantiation_output_8384[1][0]}, {instantiation_output_8384[0][3], instantiation_output_8384[0][2], instantiation_output_8384[0][1], instantiation_output_8384[0][0]}};
  assign systolic__out0_vld = instantiation_output_8385;
endmodule
