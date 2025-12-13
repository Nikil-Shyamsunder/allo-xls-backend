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
  assign ____state_0_init = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] ____state_1_init[4][4];
  assign ____state_1_init = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] p1_tuple_61917_index1_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] p1_c10_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] p1_array_61923_init[4];
  assign p1_array_61923_init = '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}};
  wire [31:0] p2_tuple_61966_index1_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] p2_c20_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] p2_c21_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] p2_c22_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] p2_array_61923_init[4];
  assign p2_array_61923_init = '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}};
  wire [31:0] p2_array_61973_init[4];
  assign p2_array_61973_init = '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}};
  wire [31:0] __systolic__arg0_reg_init[4][4];
  assign __systolic__arg0_reg_init = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] __systolic__arg1_reg_init[4][4];
  assign __systolic__arg1_reg_init = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] __systolic__hor_chans__0_4_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__1_4_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__2_4_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__3_4_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__4_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__4_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__4_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__4_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__0_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__0_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__0_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__2_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__2_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__2_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__2_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__3_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__3_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__3_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__3_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__1_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__2_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__3_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__out0_reg_init[4][4];
  assign __systolic__out0_reg_init = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] literal_61781[4][4];
  assign literal_61781 = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] literal_61785[4][4];
  assign literal_61785 = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
  wire [31:0] literal_61995 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_62000 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_62005 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_62010 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61939 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61944 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61890 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61895 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61900 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61905 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61964 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61949 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61954 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61959 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61915 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61910 = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] literal_61628[4][4];
  assign literal_61628 = '{'{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}, '{{1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}, {1'h0, 8'h00, 23'h00_0000}}};
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
  reg p0_bit_slice_61796;
  reg p0_eq_61822;
  reg p1_eq_61822;
  reg [31:0] p1_tuple_61917_index1;
  reg [31:0] p1_c10;
  reg [31:0] p1_array_61923[4];
  reg p2_eq_61822;
  reg [31:0] p2_tuple_61966_index1;
  reg [31:0] p2_c20;
  reg [31:0] p2_c21;
  reg [31:0] p2_c22;
  reg [31:0] p2_array_61923[4];
  reg [31:0] p2_array_61973[4];
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
  wire or_74639;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_all_active_inputs_valid;
  wire [2:0] unexpand_for_next_value_1337_2_case_1;
  wire p2_enable;
  wire p2_stage_done;
  wire eq_61779;
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
  wire eq_61822;
  wire p0_all_active_outputs_ready;
  wire [1:0] ____state_0__next_value_predicates;
  wire [1:0] ____state_2__next_value_predicates;
  wire p0_stage_done;
  wire [2:0] one_hot_61826;
  wire [2:0] one_hot_61827;
  wire p0_data_enable;
  wire and_62172;
  wire systolic__arg0_valid_inv;
  wire systolic__arg1_valid_inv;
  wire systolic__hor_chans__0_4_valid_inv;
  wire systolic__hor_chans__1_4_valid_inv;
  wire systolic__hor_chans__2_4_valid_inv;
  wire systolic__hor_chans__3_4_valid_inv;
  wire and_62174;
  wire systolic__result_chans__0_0_valid_inv;
  wire systolic__result_chans__0_1_valid_inv;
  wire systolic__result_chans__0_2_valid_inv;
  wire systolic__result_chans__0_3_valid_inv;
  wire systolic__result_chans__1_0_valid_inv;
  wire systolic__result_chans__1_1_valid_inv;
  wire and_62180;
  wire systolic__result_chans__1_2_valid_inv;
  wire systolic__result_chans__1_3_valid_inv;
  wire systolic__result_chans__2_0_valid_inv;
  wire systolic__result_chans__2_1_valid_inv;
  wire systolic__result_chans__2_2_valid_inv;
  wire systolic__result_chans__2_3_valid_inv;
  wire and_62186;
  wire systolic__result_chans__3_0_valid_inv;
  wire systolic__result_chans__3_1_valid_inv;
  wire systolic__result_chans__3_2_valid_inv;
  wire systolic__result_chans__3_3_valid_inv;
  wire systolic__vert_chans__4_0_valid_inv;
  wire systolic__vert_chans__4_1_valid_inv;
  wire systolic__vert_chans__4_2_valid_inv;
  wire systolic__vert_chans__4_3_valid_inv;
  wire and_62143;
  wire and_62157;
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
  wire [1:0] concat_62146;
  wire [1:0] concat_62159;
  wire [2:0] unexpand_for_next_value_1337_2_case_0;
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
  wire [31:0] array_62018[4];
  wire [31:0] array_62019[4];
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
  wire or_74529;
  wire or_74533;
  wire p3_enable;
  wire [31:0] systolic__result_chans__2_3_select;
  wire [31:0] systolic__result_chans__2_0_select;
  wire [31:0] systolic__result_chans__2_1_select;
  wire [31:0] systolic__result_chans__2_2_select;
  wire [31:0] array_61973[4];
  wire [31:0] systolic__result_chans__1_1_select;
  wire [31:0] systolic__result_chans__1_0_select;
  wire [31:0] array_61923[4];
  wire [31:0] one_hot_sel_62147[4][4];
  wire or_62148;
  wire [31:0] one_hot_sel_62154[4][4];
  wire [2:0] one_hot_sel_62160;
  wire or_62161;
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
  assign p3_all_active_inputs_valid = (~p2_eq_61822 | __systolic__result_chans__3_0_valid_reg) & (~p2_eq_61822 | __systolic__result_chans__3_1_valid_reg) & (~p2_eq_61822 | __systolic__result_chans__3_2_valid_reg) & (~p2_eq_61822 | __systolic__result_chans__3_3_valid_reg);
  assign __systolic__out0_vld_buf = p3_all_active_inputs_valid & p2_valid & p2_eq_61822;
  assign __systolic__out0_not_has_been_sent = ~__systolic__out0_has_been_sent_reg;
  assign systolic__out0_valid_inv = ~__systolic__out0_valid_reg;
  assign __systolic__out0_valid_and_not_has_been_sent = __systolic__out0_vld_buf & __systolic__out0_not_has_been_sent;
  assign systolic__out0_valid_load_en = systolic__out0_rdy | systolic__out0_valid_inv;
  assign systolic__out0_load_en = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_valid_load_en;
  assign or_74639 = ~p2_eq_61822 | systolic__out0_load_en | __systolic__out0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & p3_all_active_inputs_valid & or_74639;
  assign p3_not_valid = ~p2_valid;
  assign p2_all_active_inputs_valid = (~p1_eq_61822 | __systolic__result_chans__1_2_valid_reg) & (~p1_eq_61822 | __systolic__result_chans__1_3_valid_reg) & (~p1_eq_61822 | __systolic__result_chans__2_0_valid_reg) & (~p1_eq_61822 | __systolic__result_chans__2_1_valid_reg) & (~p1_eq_61822 | __systolic__result_chans__2_2_valid_reg) & (~p1_eq_61822 | __systolic__result_chans__2_3_valid_reg);
  assign unexpand_for_next_value_1337_2_case_1 = 3'h0;
  assign p2_enable = p3_stage_done | p3_not_valid;
  assign p2_stage_done = p1_valid & p2_all_active_inputs_valid;
  assign eq_61779 = ____state_2 == unexpand_for_next_value_1337_2_case_1;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_not_valid = ~p1_valid;
  assign p1_all_active_inputs_valid = (~p0_eq_61822 | __systolic__result_chans__0_0_valid_reg) & (~p0_eq_61822 | __systolic__result_chans__0_1_valid_reg) & (~p0_eq_61822 | __systolic__result_chans__0_2_valid_reg) & (~p0_eq_61822 | __systolic__result_chans__0_3_valid_reg) & (~p0_eq_61822 | __systolic__result_chans__1_0_valid_reg) & (~p0_eq_61822 | __systolic__result_chans__1_1_valid_reg);
  assign systolic__arg0_not_pred = ~eq_61779;
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
  assign eq_61822 = ____state_2 == 3'h4;
  assign p0_all_active_outputs_ready = (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__0_0_load_en | __systolic__hor_chans__0_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_0_load_en | __systolic__vert_chans__0_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__1_0_load_en | __systolic__hor_chans__1_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_1_load_en | __systolic__vert_chans__0_1_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__2_0_load_en | __systolic__hor_chans__2_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_2_load_en | __systolic__vert_chans__0_2_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__3_0_load_en | __systolic__hor_chans__3_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_3_load_en | __systolic__vert_chans__0_3_has_been_sent_reg);
  assign ____state_0__next_value_predicates = {eq_61822, eq_61779};
  assign ____state_2__next_value_predicates = {~eq_61822, eq_61822};
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign one_hot_61826 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign one_hot_61827 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign and_62172 = p0_data_enable & eq_61779;
  assign systolic__arg0_valid_inv = ~__systolic__arg0_valid_reg;
  assign systolic__arg1_valid_inv = ~__systolic__arg1_valid_reg;
  assign systolic__hor_chans__0_4_valid_inv = ~__systolic__hor_chans__0_4_valid_reg;
  assign systolic__hor_chans__1_4_valid_inv = ~__systolic__hor_chans__1_4_valid_reg;
  assign systolic__hor_chans__2_4_valid_inv = ~__systolic__hor_chans__2_4_valid_reg;
  assign systolic__hor_chans__3_4_valid_inv = ~__systolic__hor_chans__3_4_valid_reg;
  assign and_62174 = p1_data_enable & p0_eq_61822;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign systolic__result_chans__0_2_valid_inv = ~__systolic__result_chans__0_2_valid_reg;
  assign systolic__result_chans__0_3_valid_inv = ~__systolic__result_chans__0_3_valid_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign and_62180 = p2_data_enable & p1_eq_61822;
  assign systolic__result_chans__1_2_valid_inv = ~__systolic__result_chans__1_2_valid_reg;
  assign systolic__result_chans__1_3_valid_inv = ~__systolic__result_chans__1_3_valid_reg;
  assign systolic__result_chans__2_0_valid_inv = ~__systolic__result_chans__2_0_valid_reg;
  assign systolic__result_chans__2_1_valid_inv = ~__systolic__result_chans__2_1_valid_reg;
  assign systolic__result_chans__2_2_valid_inv = ~__systolic__result_chans__2_2_valid_reg;
  assign systolic__result_chans__2_3_valid_inv = ~__systolic__result_chans__2_3_valid_reg;
  assign and_62186 = p3_stage_done & p2_eq_61822;
  assign systolic__result_chans__3_0_valid_inv = ~__systolic__result_chans__3_0_valid_reg;
  assign systolic__result_chans__3_1_valid_inv = ~__systolic__result_chans__3_1_valid_reg;
  assign systolic__result_chans__3_2_valid_inv = ~__systolic__result_chans__3_2_valid_reg;
  assign systolic__result_chans__3_3_valid_inv = ~__systolic__result_chans__3_3_valid_reg;
  assign systolic__vert_chans__4_0_valid_inv = ~__systolic__vert_chans__4_0_valid_reg;
  assign systolic__vert_chans__4_1_valid_inv = ~__systolic__vert_chans__4_1_valid_reg;
  assign systolic__vert_chans__4_2_valid_inv = ~__systolic__vert_chans__4_2_valid_reg;
  assign systolic__vert_chans__4_3_valid_inv = ~__systolic__vert_chans__4_3_valid_reg;
  assign and_62143 = eq_61822 & p0_data_enable;
  assign and_62157 = ~eq_61822 & p0_data_enable;
  assign systolic__arg0_select = eq_61779 == 1'h0 ? literal_61781 : __systolic__arg0_reg;
  assign systolic__arg1_select = eq_61779 == 1'h0 ? literal_61785 : __systolic__arg1_reg;
  assign systolic__result_chans__3_0_select = p2_eq_61822 ? __systolic__result_chans__3_0_reg : literal_61995;
  assign systolic__result_chans__3_1_select = p2_eq_61822 ? __systolic__result_chans__3_1_reg : literal_62000;
  assign systolic__result_chans__3_2_select = p2_eq_61822 ? __systolic__result_chans__3_2_reg : literal_62005;
  assign systolic__result_chans__3_3_select = p2_eq_61822 ? __systolic__result_chans__3_3_reg : literal_62010;
  assign systolic__arg0_valid_load_en = and_62172 | systolic__arg0_valid_inv;
  assign systolic__arg1_valid_load_en = and_62172 | systolic__arg1_valid_inv;
  assign systolic__hor_chans__0_4_valid_load_en = p0_data_enable | systolic__hor_chans__0_4_valid_inv;
  assign systolic__hor_chans__1_4_valid_load_en = p0_data_enable | systolic__hor_chans__1_4_valid_inv;
  assign systolic__hor_chans__2_4_valid_load_en = p0_data_enable | systolic__hor_chans__2_4_valid_inv;
  assign systolic__hor_chans__3_4_valid_load_en = p0_data_enable | systolic__hor_chans__3_4_valid_inv;
  assign systolic__result_chans__0_0_valid_load_en = and_62174 | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_1_valid_load_en = and_62174 | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__0_2_valid_load_en = and_62174 | systolic__result_chans__0_2_valid_inv;
  assign systolic__result_chans__0_3_valid_load_en = and_62174 | systolic__result_chans__0_3_valid_inv;
  assign systolic__result_chans__1_0_valid_load_en = and_62174 | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_1_valid_load_en = and_62174 | systolic__result_chans__1_1_valid_inv;
  assign systolic__result_chans__1_2_valid_load_en = and_62180 | systolic__result_chans__1_2_valid_inv;
  assign systolic__result_chans__1_3_valid_load_en = and_62180 | systolic__result_chans__1_3_valid_inv;
  assign systolic__result_chans__2_0_valid_load_en = and_62180 | systolic__result_chans__2_0_valid_inv;
  assign systolic__result_chans__2_1_valid_load_en = and_62180 | systolic__result_chans__2_1_valid_inv;
  assign systolic__result_chans__2_2_valid_load_en = and_62180 | systolic__result_chans__2_2_valid_inv;
  assign systolic__result_chans__2_3_valid_load_en = and_62180 | systolic__result_chans__2_3_valid_inv;
  assign systolic__result_chans__3_0_valid_load_en = and_62186 | systolic__result_chans__3_0_valid_inv;
  assign systolic__result_chans__3_1_valid_load_en = and_62186 | systolic__result_chans__3_1_valid_inv;
  assign systolic__result_chans__3_2_valid_load_en = and_62186 | systolic__result_chans__3_2_valid_inv;
  assign systolic__result_chans__3_3_valid_load_en = and_62186 | systolic__result_chans__3_3_valid_inv;
  assign systolic__vert_chans__4_0_valid_load_en = p0_data_enable | systolic__vert_chans__4_0_valid_inv;
  assign systolic__vert_chans__4_1_valid_load_en = p0_data_enable | systolic__vert_chans__4_1_valid_inv;
  assign systolic__vert_chans__4_2_valid_load_en = p0_data_enable | systolic__vert_chans__4_2_valid_inv;
  assign systolic__vert_chans__4_3_valid_load_en = p0_data_enable | systolic__vert_chans__4_3_valid_inv;
  assign ____state_0__at_most_one_next_value = eq_61822 == one_hot_61826[1] & eq_61779 == one_hot_61826[0];
  assign ____state_2__at_most_one_next_value = ~eq_61822 == one_hot_61827[1] & eq_61822 == one_hot_61827[0];
  assign systolic__result_chans__1_2_select = p1_eq_61822 ? __systolic__result_chans__1_2_reg : literal_61939;
  assign systolic__result_chans__1_3_select = p1_eq_61822 ? __systolic__result_chans__1_3_reg : literal_61944;
  assign systolic__result_chans__0_0_select = p0_eq_61822 ? __systolic__result_chans__0_0_reg : literal_61890;
  assign systolic__result_chans__0_1_select = p0_eq_61822 ? __systolic__result_chans__0_1_reg : literal_61895;
  assign systolic__result_chans__0_2_select = p0_eq_61822 ? __systolic__result_chans__0_2_reg : literal_61900;
  assign systolic__result_chans__0_3_select = p0_eq_61822 ? __systolic__result_chans__0_3_reg : literal_61905;
  assign concat_62146 = {and_62143, and_62172};
  assign concat_62159 = {and_62157, and_62143};
  assign unexpand_for_next_value_1337_2_case_0 = ____state_2 + 3'h1;
  assign __systolic__hor_chans__0_0_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_0_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_0_valid_and_ready_txfr = __systolic__hor_chans__0_0_valid_and_not_has_been_sent & systolic__hor_chans__0_0_load_en;
  assign __systolic__vert_chans__0_0_valid_and_ready_txfr = __systolic__vert_chans__0_0_valid_and_not_has_been_sent & systolic__vert_chans__0_0_load_en;
  assign __systolic__hor_chans__1_0_valid_and_ready_txfr = __systolic__hor_chans__1_0_valid_and_not_has_been_sent & systolic__hor_chans__1_0_load_en;
  assign __systolic__vert_chans__0_1_valid_and_ready_txfr = __systolic__vert_chans__0_1_valid_and_not_has_been_sent & systolic__vert_chans__0_1_load_en;
  assign __systolic__hor_chans__2_0_valid_and_ready_txfr = __systolic__hor_chans__2_0_valid_and_not_has_been_sent & systolic__hor_chans__2_0_load_en;
  assign __systolic__vert_chans__0_2_valid_and_ready_txfr = __systolic__vert_chans__0_2_valid_and_not_has_been_sent & systolic__vert_chans__0_2_load_en;
  assign __systolic__hor_chans__3_0_valid_and_ready_txfr = __systolic__hor_chans__3_0_valid_and_not_has_been_sent & systolic__hor_chans__3_0_load_en;
  assign __systolic__vert_chans__0_3_valid_and_ready_txfr = __systolic__vert_chans__0_3_valid_and_not_has_been_sent & systolic__vert_chans__0_3_load_en;
  assign __systolic__out0_valid_and_all_active_outputs_ready = __systolic__out0_vld_buf & or_74639;
  assign __systolic__out0_valid_and_ready_txfr = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_load_en;
  assign a_mat2 = eq_61779 == 1'h0 ? ____state_0 : systolic__arg0_select;
  assign b_mat2 = eq_61779 == 1'h0 ? ____state_1 : systolic__arg1_select;
  assign array_62018[0] = p2_c20;
  assign array_62018[1] = p2_c21;
  assign array_62018[2] = p2_c22;
  assign array_62018[3] = p2_tuple_61966_index1;
  assign array_62019[0] = systolic__result_chans__3_0_select;
  assign array_62019[1] = systolic__result_chans__3_1_select;
  assign array_62019[2] = systolic__result_chans__3_2_select;
  assign array_62019[3] = systolic__result_chans__3_3_select;
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
  assign or_74529 = ~p0_stage_done | ____state_0__at_most_one_next_value | rst;
  assign or_74533 = ~p0_stage_done | ____state_2__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign systolic__result_chans__2_3_select = p1_eq_61822 ? __systolic__result_chans__2_3_reg : literal_61964;
  assign systolic__result_chans__2_0_select = p1_eq_61822 ? __systolic__result_chans__2_0_reg : literal_61949;
  assign systolic__result_chans__2_1_select = p1_eq_61822 ? __systolic__result_chans__2_1_reg : literal_61954;
  assign systolic__result_chans__2_2_select = p1_eq_61822 ? __systolic__result_chans__2_2_reg : literal_61959;
  assign array_61973[0] = p1_c10;
  assign array_61973[1] = p1_tuple_61917_index1;
  assign array_61973[2] = systolic__result_chans__1_2_select;
  assign array_61973[3] = systolic__result_chans__1_3_select;
  assign systolic__result_chans__1_1_select = p0_eq_61822 ? __systolic__result_chans__1_1_reg : literal_61915;
  assign systolic__result_chans__1_0_select = p0_eq_61822 ? __systolic__result_chans__1_0_reg : literal_61910;
  assign array_61923[0] = systolic__result_chans__0_0_select;
  assign array_61923[1] = systolic__result_chans__0_1_select;
  assign array_61923[2] = systolic__result_chans__0_2_select;
  assign array_61923[3] = systolic__result_chans__0_3_select;
  assign one_hot_sel_62147[0][0] = systolic__arg0_select[0][0] & {32{concat_62146[0]}} | literal_61628[0][0] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[0][1] = systolic__arg0_select[0][1] & {32{concat_62146[0]}} | literal_61628[0][1] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[0][2] = systolic__arg0_select[0][2] & {32{concat_62146[0]}} | literal_61628[0][2] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[0][3] = systolic__arg0_select[0][3] & {32{concat_62146[0]}} | literal_61628[0][3] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[1][0] = systolic__arg0_select[1][0] & {32{concat_62146[0]}} | literal_61628[1][0] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[1][1] = systolic__arg0_select[1][1] & {32{concat_62146[0]}} | literal_61628[1][1] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[1][2] = systolic__arg0_select[1][2] & {32{concat_62146[0]}} | literal_61628[1][2] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[1][3] = systolic__arg0_select[1][3] & {32{concat_62146[0]}} | literal_61628[1][3] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[2][0] = systolic__arg0_select[2][0] & {32{concat_62146[0]}} | literal_61628[2][0] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[2][1] = systolic__arg0_select[2][1] & {32{concat_62146[0]}} | literal_61628[2][1] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[2][2] = systolic__arg0_select[2][2] & {32{concat_62146[0]}} | literal_61628[2][2] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[2][3] = systolic__arg0_select[2][3] & {32{concat_62146[0]}} | literal_61628[2][3] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[3][0] = systolic__arg0_select[3][0] & {32{concat_62146[0]}} | literal_61628[3][0] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[3][1] = systolic__arg0_select[3][1] & {32{concat_62146[0]}} | literal_61628[3][1] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[3][2] = systolic__arg0_select[3][2] & {32{concat_62146[0]}} | literal_61628[3][2] & {32{concat_62146[1]}};
  assign one_hot_sel_62147[3][3] = systolic__arg0_select[3][3] & {32{concat_62146[0]}} | literal_61628[3][3] & {32{concat_62146[1]}};
  assign or_62148 = and_62143 | and_62172;
  assign one_hot_sel_62154[0][0] = systolic__arg1_select[0][0] & {32{concat_62146[0]}} | literal_61628[0][0] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[0][1] = systolic__arg1_select[0][1] & {32{concat_62146[0]}} | literal_61628[0][1] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[0][2] = systolic__arg1_select[0][2] & {32{concat_62146[0]}} | literal_61628[0][2] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[0][3] = systolic__arg1_select[0][3] & {32{concat_62146[0]}} | literal_61628[0][3] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[1][0] = systolic__arg1_select[1][0] & {32{concat_62146[0]}} | literal_61628[1][0] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[1][1] = systolic__arg1_select[1][1] & {32{concat_62146[0]}} | literal_61628[1][1] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[1][2] = systolic__arg1_select[1][2] & {32{concat_62146[0]}} | literal_61628[1][2] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[1][3] = systolic__arg1_select[1][3] & {32{concat_62146[0]}} | literal_61628[1][3] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[2][0] = systolic__arg1_select[2][0] & {32{concat_62146[0]}} | literal_61628[2][0] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[2][1] = systolic__arg1_select[2][1] & {32{concat_62146[0]}} | literal_61628[2][1] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[2][2] = systolic__arg1_select[2][2] & {32{concat_62146[0]}} | literal_61628[2][2] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[2][3] = systolic__arg1_select[2][3] & {32{concat_62146[0]}} | literal_61628[2][3] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[3][0] = systolic__arg1_select[3][0] & {32{concat_62146[0]}} | literal_61628[3][0] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[3][1] = systolic__arg1_select[3][1] & {32{concat_62146[0]}} | literal_61628[3][1] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[3][2] = systolic__arg1_select[3][2] & {32{concat_62146[0]}} | literal_61628[3][2] & {32{concat_62146[1]}};
  assign one_hot_sel_62154[3][3] = systolic__arg1_select[3][3] & {32{concat_62146[0]}} | literal_61628[3][3] & {32{concat_62146[1]}};
  assign one_hot_sel_62160 = unexpand_for_next_value_1337_2_case_1 & {3{concat_62159[0]}} | unexpand_for_next_value_1337_2_case_0 & {3{concat_62159[1]}};
  assign or_62161 = and_62157 | and_62143;
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
  assign c[0] = p2_array_61923;
  assign c[1] = p2_array_61973;
  assign c[2] = array_62018;
  assign c[3] = array_62019;
  always_ff @ (posedge clk) begin
    if (rst) begin
      ____state_2 <= 3'h0;
      ____state_0 <= ____state_0_init;
      ____state_1 <= ____state_1_init;
      p0_bit_slice_61796 <= 1'h0;
      p0_eq_61822 <= 1'h0;
      p1_eq_61822 <= 1'h0;
      p1_tuple_61917_index1 <= p1_tuple_61917_index1_init;
      p1_c10 <= p1_c10_init;
      p1_array_61923 <= p1_array_61923_init;
      p2_eq_61822 <= 1'h0;
      p2_tuple_61966_index1 <= p2_tuple_61966_index1_init;
      p2_c20 <= p2_c20_init;
      p2_c21 <= p2_c21_init;
      p2_c22 <= p2_c22_init;
      p2_array_61923 <= p2_array_61923_init;
      p2_array_61973 <= p2_array_61973_init;
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
      __systolic__hor_chans__0_4_reg <= __systolic__hor_chans__0_4_reg_init;
      __systolic__hor_chans__0_4_valid_reg <= 1'h0;
      __systolic__hor_chans__1_4_reg <= __systolic__hor_chans__1_4_reg_init;
      __systolic__hor_chans__1_4_valid_reg <= 1'h0;
      __systolic__hor_chans__2_4_reg <= __systolic__hor_chans__2_4_reg_init;
      __systolic__hor_chans__2_4_valid_reg <= 1'h0;
      __systolic__hor_chans__3_4_reg <= __systolic__hor_chans__3_4_reg_init;
      __systolic__hor_chans__3_4_valid_reg <= 1'h0;
      __systolic__vert_chans__4_0_reg <= __systolic__vert_chans__4_0_reg_init;
      __systolic__vert_chans__4_0_valid_reg <= 1'h0;
      __systolic__vert_chans__4_1_reg <= __systolic__vert_chans__4_1_reg_init;
      __systolic__vert_chans__4_1_valid_reg <= 1'h0;
      __systolic__vert_chans__4_2_reg <= __systolic__vert_chans__4_2_reg_init;
      __systolic__vert_chans__4_2_valid_reg <= 1'h0;
      __systolic__vert_chans__4_3_reg <= __systolic__vert_chans__4_3_reg_init;
      __systolic__vert_chans__4_3_valid_reg <= 1'h0;
      __systolic__result_chans__0_0_reg <= __systolic__result_chans__0_0_reg_init;
      __systolic__result_chans__0_0_valid_reg <= 1'h0;
      __systolic__result_chans__0_1_reg <= __systolic__result_chans__0_1_reg_init;
      __systolic__result_chans__0_1_valid_reg <= 1'h0;
      __systolic__result_chans__0_2_reg <= __systolic__result_chans__0_2_reg_init;
      __systolic__result_chans__0_2_valid_reg <= 1'h0;
      __systolic__result_chans__0_3_reg <= __systolic__result_chans__0_3_reg_init;
      __systolic__result_chans__0_3_valid_reg <= 1'h0;
      __systolic__result_chans__1_0_reg <= __systolic__result_chans__1_0_reg_init;
      __systolic__result_chans__1_0_valid_reg <= 1'h0;
      __systolic__result_chans__1_1_reg <= __systolic__result_chans__1_1_reg_init;
      __systolic__result_chans__1_1_valid_reg <= 1'h0;
      __systolic__result_chans__1_2_reg <= __systolic__result_chans__1_2_reg_init;
      __systolic__result_chans__1_2_valid_reg <= 1'h0;
      __systolic__result_chans__1_3_reg <= __systolic__result_chans__1_3_reg_init;
      __systolic__result_chans__1_3_valid_reg <= 1'h0;
      __systolic__result_chans__2_0_reg <= __systolic__result_chans__2_0_reg_init;
      __systolic__result_chans__2_0_valid_reg <= 1'h0;
      __systolic__result_chans__2_1_reg <= __systolic__result_chans__2_1_reg_init;
      __systolic__result_chans__2_1_valid_reg <= 1'h0;
      __systolic__result_chans__2_2_reg <= __systolic__result_chans__2_2_reg_init;
      __systolic__result_chans__2_2_valid_reg <= 1'h0;
      __systolic__result_chans__2_3_reg <= __systolic__result_chans__2_3_reg_init;
      __systolic__result_chans__2_3_valid_reg <= 1'h0;
      __systolic__result_chans__3_0_reg <= __systolic__result_chans__3_0_reg_init;
      __systolic__result_chans__3_0_valid_reg <= 1'h0;
      __systolic__result_chans__3_1_reg <= __systolic__result_chans__3_1_reg_init;
      __systolic__result_chans__3_1_valid_reg <= 1'h0;
      __systolic__result_chans__3_2_reg <= __systolic__result_chans__3_2_reg_init;
      __systolic__result_chans__3_2_valid_reg <= 1'h0;
      __systolic__result_chans__3_3_reg <= __systolic__result_chans__3_3_reg_init;
      __systolic__result_chans__3_3_valid_reg <= 1'h0;
      __systolic__hor_chans__0_0_reg <= __systolic__hor_chans__0_0_reg_init;
      __systolic__hor_chans__0_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_0_reg <= __systolic__vert_chans__0_0_reg_init;
      __systolic__vert_chans__0_0_valid_reg <= 1'h0;
      __systolic__hor_chans__1_0_reg <= __systolic__hor_chans__1_0_reg_init;
      __systolic__hor_chans__1_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_1_reg <= __systolic__vert_chans__0_1_reg_init;
      __systolic__vert_chans__0_1_valid_reg <= 1'h0;
      __systolic__hor_chans__2_0_reg <= __systolic__hor_chans__2_0_reg_init;
      __systolic__hor_chans__2_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_2_reg <= __systolic__vert_chans__0_2_reg_init;
      __systolic__vert_chans__0_2_valid_reg <= 1'h0;
      __systolic__hor_chans__3_0_reg <= __systolic__hor_chans__3_0_reg_init;
      __systolic__hor_chans__3_0_valid_reg <= 1'h0;
      __systolic__vert_chans__0_3_reg <= __systolic__vert_chans__0_3_reg_init;
      __systolic__vert_chans__0_3_valid_reg <= 1'h0;
      __systolic__out0_reg <= __systolic__out0_reg_init;
      __systolic__out0_valid_reg <= 1'h0;
    end else begin
      ____state_2 <= or_62161 ? one_hot_sel_62160 : ____state_2;
      ____state_0 <= or_62148 ? one_hot_sel_62147 : ____state_0;
      ____state_1 <= or_62148 ? one_hot_sel_62154 : ____state_1;
      p0_bit_slice_61796 <= p0_data_enable ? systolic__hor_chans__0_0_not_pred : p0_bit_slice_61796;
      p0_eq_61822 <= p0_data_enable ? eq_61822 : p0_eq_61822;
      p1_eq_61822 <= p1_data_enable ? p0_eq_61822 : p1_eq_61822;
      p1_tuple_61917_index1 <= p1_data_enable ? systolic__result_chans__1_1_select : p1_tuple_61917_index1;
      p1_c10 <= p1_data_enable ? systolic__result_chans__1_0_select : p1_c10;
      p1_array_61923 <= p1_data_enable ? array_61923 : p1_array_61923;
      p2_eq_61822 <= p2_data_enable ? p1_eq_61822 : p2_eq_61822;
      p2_tuple_61966_index1 <= p2_data_enable ? systolic__result_chans__2_3_select : p2_tuple_61966_index1;
      p2_c20 <= p2_data_enable ? systolic__result_chans__2_0_select : p2_c20;
      p2_c21 <= p2_data_enable ? systolic__result_chans__2_1_select : p2_c21;
      p2_c22 <= p2_data_enable ? systolic__result_chans__2_2_select : p2_c22;
      p2_array_61923 <= p2_data_enable ? p1_array_61923 : p2_array_61923;
      p2_array_61973 <= p2_data_enable ? array_61973 : p2_array_61973;
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
  ____state_0__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74529))) or_74529) else $fatal(0, "More than one next_value fired for state element: __state_0");
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74529))) or_74529) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74533))) or_74533) else $fatal(0, "More than one next_value fired for state element: __state_2");
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
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_62815;
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
  wire [26:0] shrl_62830;
  wire [27:0] shll_62832;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1368_3_case_1;
  wire [25:0] add_62841;
  wire sticky__2;
  wire [27:0] concat_62847;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_62888;
  wire nor_62883;
  wire nor_62884;
  wire nor_62874;
  wire nor_62875;
  wire and_62917;
  wire nor_62919;
  wire nor_62921;
  wire and_62914;
  wire nor_62910;
  wire and_62906;
  wire nor_62907;
  wire nor_62901;
  wire nor_62903;
  wire and_62946;
  wire nor_62927;
  wire nor_62928;
  wire and_62967;
  wire [1:0] priority_sel_62968;
  wire and_62963;
  wire and_62959;
  wire and_62955;
  wire [2:0] concat_62981;
  wire [2:0] concat_62978;
  wire [2:0] concat_62977;
  wire [2:0] concat_62975;
  wire [2:0] concat_62974;
  wire and_62986;
  wire [3:0] concat_62990;
  wire [3:0] sel_74401;
  wire [4:0] concat_62998;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_62705;
  wire eq_62706;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_62709;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_62712;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_62714;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_63016;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_63026;
  wire [5:0] sub_63027;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_62737;
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
  wire eq_63036;
  wire eq_63037;
  wire eq_63038;
  wire eq_63039;
  wire [23:0] fraction__6;
  wire or_74659;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_62748;
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
  wire and_reduce_63067;
  wire should_output;
  wire __systolic__hor_chans__0_1_vld_buf;
  wire __systolic__hor_chans__0_1_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_inv;
  wire __systolic__vert_chans__1_0_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_inv;
  wire or_63070;
  wire or_63073;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__0_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire __systolic__vert_chans__1_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire and_63075;
  wire eq_62751;
  wire eq_62752;
  wire eq_62753;
  wire eq_62754;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire and_63082;
  wire and_63083;
  wire and_63084;
  wire and_63085;
  wire and_63086;
  wire __systolic__hor_chans__0_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_0_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_62771;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_63096;
  wire [4:0] one_hot_63097;
  wire [2:0] one_hot_63098;
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
  wire [27:0] shrl_63087;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_63213;
  wire and_63214;
  wire and_63215;
  wire and_63222;
  wire and_63223;
  wire and_63224;
  wire and_63230;
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
  wire [2:0] concat_63217;
  wire [3:0] concat_63226;
  wire [1:0] concat_63232;
  wire [1:0] unexpand_for_next_value_1368_3_case_0;
  wire __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_0_valid_and_ready_txfr;
  wire __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_0_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__0_0_load_en;
  wire systolic__vert_chans__0_0_load_en;
  wire or_74535;
  wire or_74537;
  wire or_74539;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_63121;
  wire [7:0] one_hot_sel_63218;
  wire or_63219;
  wire [22:0] one_hot_sel_63227;
  wire or_63228;
  wire [1:0] one_hot_sel_63233;
  wire or_63234;
  wire __systolic__hor_chans__0_1_not_stage_load;
  wire __systolic__hor_chans__0_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_0_not_stage_load;
  wire __systolic__result_chans__0_0_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_62815 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_62815;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_62830 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_62832 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1368_3_case_1 = 2'h0;
  assign add_62841 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1368_3_case_1, shrl_62830[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_62815 | shll_62832[26:3]) != 24'h00_0000;
  assign concat_62847 = {add_62841[24:0], shrl_62830[2:1], shrl_62830[0] | sticky__2};
  assign accumbs_fraction = add_62841[25] ? -concat_62847 : concat_62847;
  assign carry_bit = accumbs_fraction[27];
  assign nor_62888 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_62883 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_62884 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_62874 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_62875 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_62917 = ~(carry_bit | accumbs_fraction[26]) & nor_62888;
  assign nor_62919 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_62921 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_62914 = nor_62884 & nor_62883;
  assign nor_62910 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_62906 = nor_62875 & nor_62874;
  assign nor_62907 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_62901 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_62903 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_62946 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_62919;
  assign nor_62927 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_62928 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_62967 = and_62917 & and_62946;
  assign priority_sel_62968 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_62888), and_62917}, {nor_62921, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_62921});
  assign and_62963 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_62910;
  assign and_62959 = nor_62903 & nor_62901;
  assign and_62955 = nor_62928 & nor_62927;
  assign concat_62981 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_62919) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_62978 = {and_62914, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_62883), and_62914}, unexpand_for_next_value_1368_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_62884, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_62977 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_62910) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_62975 = {and_62906, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_62874), and_62906}, {nor_62907, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_62875, nor_62907})};
  assign concat_62974 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_62901) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_62903, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_62986 = and_62914 & and_62963;
  assign concat_62990 = {1'h1, and_62955, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_62927), and_62955}, unexpand_for_next_value_1368_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_62928, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74401 = ~(~and_62967 | and_62986) ? {1'h1, ~(~and_62914 | and_62963) ? concat_62977 : concat_62978} : {and_62967, priority_sel_3b_2way({~(~and_62917 | and_62946), and_62967}, {priority_sel_62968, 1'h0}, concat_62981, {1'h0, priority_sel_62968})};
  assign concat_62998 = {1'h1, and_62906 & and_62959 ? concat_62990 : {1'h0, ~(~and_62906 | and_62959) ? concat_62974 : concat_62975}};
  assign leading_zeroes = and_62967 & and_62986 ? concat_62998 : {1'h0, sel_74401};
  assign a_bexp__1 = __systolic__hor_chans__0_0_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__0_0_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__0_0_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__0_0_reg[22:0];
  assign eq_62705 = a_bexp__1 == 8'h00;
  assign eq_62706 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_62709 = ~(eq_62705 | eq_62706);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_62712 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_62714 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_62712 & {48{nor_62709}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_62714} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_62709}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_63016 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_63016[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_63026 = {1'h0, accum_bexp} + 9'h001;
  assign sub_63027 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_62841 == 26'h000_0000 & ~(shrl_62830[1] | shrl_62830[2]) & ~(shrl_62830[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_63026};
  assign wide_exponent_associative_element__1 = {{4{sub_63027[5]}}, sub_63027};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_62737 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__0_0_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__0_0_not_has_been_sent = ~__systolic__result_chans__0_0_has_been_sent_reg;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_62737;
  assign __systolic__result_chans__0_0_valid_and_not_has_been_sent = __systolic__result_chans__0_0_vld_buf & __systolic__result_chans__0_0_not_has_been_sent;
  assign systolic__result_chans__0_0_valid_load_en = systolic__result_chans__0_0_rdy | systolic__result_chans__0_0_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_62737 | ~fraction__4[23]);
  assign systolic__result_chans__0_0_load_en = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_valid_load_en;
  assign eq_63036 = accum_bexp == high_exp;
  assign eq_63037 = accum_fraction == 23'h00_0000;
  assign eq_63038 = prod_bexp == high_exp;
  assign eq_63039 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74659 = ~p1_should_output | systolic__result_chans__0_0_load_en | __systolic__result_chans__0_0_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74659;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_62748 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_63036 | ~eq_63037 | accum_sign) | ~(~eq_63038 | ~eq_63039 | prod_sign);
  assign has_neg_inf = eq_63036 & eq_63037 & accum_sign | eq_63038 & eq_63039 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_62748 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_0_valid_reg & __systolic__vert_chans__0_0_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_63036 | eq_63037) | ~(~eq_63038 | eq_63039) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_63036 & eq_63037 | eq_63038 & eq_63039;
  assign and_reduce_63067 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__0_1_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__0_1_not_has_been_sent = ~__systolic__hor_chans__0_1_has_been_sent_reg;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign __systolic__vert_chans__1_0_not_has_been_sent = ~__systolic__vert_chans__1_0_has_been_sent_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign or_63070 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_63067;
  assign or_63073 = is_operand_inf | wide_exponent__2[8] | and_reduce_63067 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__0_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_vld_buf & __systolic__hor_chans__0_1_not_has_been_sent;
  assign systolic__hor_chans__0_1_valid_load_en = systolic__hor_chans__0_1_rdy | systolic__hor_chans__0_1_valid_inv;
  assign __systolic__vert_chans__1_0_valid_and_not_has_been_sent = __systolic__hor_chans__0_1_vld_buf & __systolic__vert_chans__1_0_not_has_been_sent;
  assign systolic__vert_chans__1_0_valid_load_en = systolic__vert_chans__1_0_rdy | systolic__vert_chans__1_0_valid_inv;
  assign and_63075 = ~should_output & ~is_result_nan__1;
  assign eq_62751 = a_bexp__1 == high_exp;
  assign eq_62752 = a_fraction__1 == 23'h00_0000;
  assign eq_62753 = b_bexp__2 == high_exp;
  assign eq_62754 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__0_1_load_en = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_valid_load_en;
  assign and_63082 = ~should_output & ~or_63070;
  assign and_63083 = ~should_output & or_63070;
  assign and_63084 = ~should_output & is_result_nan__1;
  assign and_63085 = and_63075 & ~or_63073;
  assign and_63086 = and_63075 & or_63073;
  assign __systolic__hor_chans__0_1_has_sent_or_is_ready = systolic__hor_chans__0_1_load_en | __systolic__hor_chans__0_1_has_been_sent_reg;
  assign __systolic__vert_chans__1_0_has_sent_or_is_ready = systolic__vert_chans__1_0_load_en | __systolic__vert_chans__1_0_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_63082, and_63083};
  assign ____state_2__next_value_predicates = {should_output, and_63084, and_63085, and_63086};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_62705 | eq_62706;
  assign has_inf_arg = eq_62751 & eq_62752 | eq_62753 & eq_62754;
  assign and_reduce_62771 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__0_1_has_sent_or_is_ready & __systolic__vert_chans__1_0_has_sent_or_is_ready;
  assign one_hot_63096 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_63097 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_63098 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_62841[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_63016, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_62751 | eq_62752) | ~(~eq_62753 | eq_62754) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign shrl_63087 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__0_0_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__0_0_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_63213 = should_output & p1_data_enable;
  assign and_63214 = and_63082 & p1_data_enable;
  assign and_63215 = and_63083 & p1_data_enable;
  assign and_63222 = and_63084 & p1_data_enable;
  assign and_63223 = and_63085 & p1_data_enable;
  assign and_63224 = and_63086 & p1_data_enable;
  assign and_63230 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__0_0_valid_load_en = p0_data_enable | systolic__hor_chans__0_0_valid_inv;
  assign systolic__vert_chans__0_0_valid_load_en = p0_data_enable | systolic__vert_chans__0_0_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_63096[2] & and_63082 == one_hot_63096[1] & and_63083 == one_hot_63096[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_63097[3] & and_63084 == one_hot_63097[2] & and_63085 == one_hot_63097[1] & and_63086 == one_hot_63097[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_63098[1] & should_output == one_hot_63098[0];
  assign result_fraction__1 = shrl_63087[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_62771 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_62771 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_63217 = {and_63213, and_63214, and_63215};
  assign concat_63226 = {and_63213, and_63222, and_63223, and_63224};
  assign concat_63232 = {and_63230, and_63213};
  assign unexpand_for_next_value_1368_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_1_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_valid_and_ready_txfr = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_load_en;
  assign __systolic__vert_chans__1_0_valid_and_ready_txfr = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_load_en;
  assign __systolic__result_chans__0_0_valid_and_all_active_outputs_ready = __systolic__result_chans__0_0_vld_buf & or_74659;
  assign __systolic__result_chans__0_0_valid_and_ready_txfr = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__0_0_load_en = systolic__hor_chans__0_0_vld & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = systolic__vert_chans__0_0_vld & systolic__vert_chans__0_0_valid_load_en;
  assign or_74535 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74537 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74539 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_63073}};
  assign result_exponent__2 = or_63070 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_63121 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_63218 = high_exp & {8{concat_63217[0]}} | wide_exponent__2[7:0] & {8{concat_63217[1]}} | 8'h00 & {8{concat_63217[2]}};
  assign or_63219 = and_63213 | and_63214 | and_63215;
  assign one_hot_sel_63227 = 23'h00_0000 & {23{concat_63226[0]}} | result_fraction__1 & {23{concat_63226[1]}} | nan_fraction & {23{concat_63226[2]}} | 23'h00_0000 & {23{concat_63226[3]}};
  assign or_63228 = and_63213 | and_63222 | and_63223 | and_63224;
  assign one_hot_sel_63233 = unexpand_for_next_value_1368_3_case_1 & {2{concat_63232[0]}} | unexpand_for_next_value_1368_3_case_0 & {2{concat_63232[1]}};
  assign or_63234 = and_63230 | and_63213;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
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
      ____state_1 <= or_63219 ? one_hot_sel_63218 : ____state_1;
      ____state_2 <= or_63228 ? one_hot_sel_63227 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_63121 : ____state_0;
      ____state_3 <= or_63234 ? one_hot_sel_63233 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74535))) or_74535) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74537))) or_74537) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74539))) or_74539) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__2_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__2_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__3_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__2_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_63502;
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
  wire [26:0] shrl_63517;
  wire [27:0] shll_63519;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1678_3_case_1;
  wire [25:0] add_63528;
  wire sticky__2;
  wire [27:0] concat_63534;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_63575;
  wire nor_63570;
  wire nor_63571;
  wire nor_63561;
  wire nor_63562;
  wire and_63604;
  wire nor_63606;
  wire nor_63608;
  wire and_63601;
  wire nor_63597;
  wire and_63593;
  wire nor_63594;
  wire nor_63588;
  wire nor_63590;
  wire and_63633;
  wire nor_63614;
  wire nor_63615;
  wire and_63654;
  wire [1:0] priority_sel_63655;
  wire and_63650;
  wire and_63646;
  wire and_63642;
  wire [2:0] concat_63668;
  wire [2:0] concat_63665;
  wire [2:0] concat_63664;
  wire [2:0] concat_63662;
  wire [2:0] concat_63661;
  wire and_63673;
  wire [3:0] concat_63677;
  wire [3:0] sel_74409;
  wire [4:0] concat_63685;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_63392;
  wire eq_63393;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_63396;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_63399;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_63401;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_63703;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_63713;
  wire [5:0] sub_63714;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_63424;
  wire __systolic__result_chans__2_2_vld_buf;
  wire __systolic__result_chans__2_2_not_has_been_sent;
  wire systolic__result_chans__2_2_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__2_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_2_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__2_2_load_en;
  wire eq_63723;
  wire eq_63724;
  wire eq_63725;
  wire eq_63726;
  wire [23:0] fraction__6;
  wire or_74677;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_63435;
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
  wire and_reduce_63754;
  wire should_output;
  wire __systolic__hor_chans__2_3_vld_buf;
  wire __systolic__hor_chans__2_3_not_has_been_sent;
  wire systolic__hor_chans__2_3_valid_inv;
  wire __systolic__vert_chans__3_2_not_has_been_sent;
  wire systolic__vert_chans__3_2_valid_inv;
  wire or_63757;
  wire or_63760;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__2_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_3_valid_load_en;
  wire __systolic__vert_chans__3_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_2_valid_load_en;
  wire and_63762;
  wire eq_63438;
  wire eq_63439;
  wire eq_63440;
  wire eq_63441;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__2_3_load_en;
  wire systolic__vert_chans__3_2_load_en;
  wire and_63769;
  wire and_63770;
  wire and_63771;
  wire and_63772;
  wire and_63773;
  wire __systolic__hor_chans__2_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_2_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_63458;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_63783;
  wire [4:0] one_hot_63784;
  wire [2:0] one_hot_63785;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__2_2_valid_inv;
  wire systolic__vert_chans__2_2_valid_inv;
  wire [27:0] shrl_63774;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_63900;
  wire and_63901;
  wire and_63902;
  wire and_63909;
  wire and_63910;
  wire and_63911;
  wire and_63917;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__2_2_valid_load_en;
  wire systolic__vert_chans__2_2_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_63904;
  wire [3:0] concat_63913;
  wire [1:0] concat_63919;
  wire [1:0] unexpand_for_next_value_1678_3_case_0;
  wire __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__2_3_valid_and_ready_txfr;
  wire __systolic__vert_chans__3_2_valid_and_ready_txfr;
  wire __systolic__result_chans__2_2_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__2_2_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__2_2_load_en;
  wire systolic__vert_chans__2_2_load_en;
  wire or_74541;
  wire or_74543;
  wire or_74545;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_63808;
  wire [7:0] one_hot_sel_63905;
  wire or_63906;
  wire [22:0] one_hot_sel_63914;
  wire or_63915;
  wire [1:0] one_hot_sel_63920;
  wire or_63921;
  wire __systolic__hor_chans__2_3_not_stage_load;
  wire __systolic__hor_chans__2_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_2_not_stage_load;
  wire __systolic__result_chans__2_2_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_63502 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_63502;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_63517 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_63519 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1678_3_case_1 = 2'h0;
  assign add_63528 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1678_3_case_1, shrl_63517[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_63502 | shll_63519[26:3]) != 24'h00_0000;
  assign concat_63534 = {add_63528[24:0], shrl_63517[2:1], shrl_63517[0] | sticky__2};
  assign accumbs_fraction = add_63528[25] ? -concat_63534 : concat_63534;
  assign carry_bit = accumbs_fraction[27];
  assign nor_63575 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_63570 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_63571 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_63561 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_63562 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_63604 = ~(carry_bit | accumbs_fraction[26]) & nor_63575;
  assign nor_63606 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_63608 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_63601 = nor_63571 & nor_63570;
  assign nor_63597 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_63593 = nor_63562 & nor_63561;
  assign nor_63594 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_63588 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_63590 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_63633 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_63606;
  assign nor_63614 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_63615 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_63654 = and_63604 & and_63633;
  assign priority_sel_63655 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_63575), and_63604}, {nor_63608, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_63608});
  assign and_63650 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_63597;
  assign and_63646 = nor_63590 & nor_63588;
  assign and_63642 = nor_63615 & nor_63614;
  assign concat_63668 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_63606) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_63665 = {and_63601, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_63570), and_63601}, unexpand_for_next_value_1678_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_63571, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_63664 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_63597) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_63662 = {and_63593, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_63561), and_63593}, {nor_63594, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_63562, nor_63594})};
  assign concat_63661 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_63588) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_63590, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_63673 = and_63601 & and_63650;
  assign concat_63677 = {1'h1, and_63642, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_63614), and_63642}, unexpand_for_next_value_1678_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_63615, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74409 = ~(~and_63654 | and_63673) ? {1'h1, ~(~and_63601 | and_63650) ? concat_63664 : concat_63665} : {and_63654, priority_sel_3b_2way({~(~and_63604 | and_63633), and_63654}, {priority_sel_63655, 1'h0}, concat_63668, {1'h0, priority_sel_63655})};
  assign concat_63685 = {1'h1, and_63593 & and_63646 ? concat_63677 : {1'h0, ~(~and_63593 | and_63646) ? concat_63661 : concat_63662}};
  assign leading_zeroes = and_63654 & and_63673 ? concat_63685 : {1'h0, sel_74409};
  assign a_bexp__1 = __systolic__hor_chans__2_2_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__2_2_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__2_2_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__2_2_reg[22:0];
  assign eq_63392 = a_bexp__1 == 8'h00;
  assign eq_63393 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_63396 = ~(eq_63392 | eq_63393);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_63399 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_63401 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_63399 & {48{nor_63396}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_63401} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_63396}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_63703 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_63703[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_63713 = {1'h0, accum_bexp} + 9'h001;
  assign sub_63714 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_63528 == 26'h000_0000 & ~(shrl_63517[1] | shrl_63517[2]) & ~(shrl_63517[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_63713};
  assign wide_exponent_associative_element__1 = {{4{sub_63714[5]}}, sub_63714};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_63424 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__2_2_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__2_2_not_has_been_sent = ~__systolic__result_chans__2_2_has_been_sent_reg;
  assign systolic__result_chans__2_2_valid_inv = ~__systolic__result_chans__2_2_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_63424;
  assign __systolic__result_chans__2_2_valid_and_not_has_been_sent = __systolic__result_chans__2_2_vld_buf & __systolic__result_chans__2_2_not_has_been_sent;
  assign systolic__result_chans__2_2_valid_load_en = systolic__result_chans__2_2_rdy | systolic__result_chans__2_2_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_63424 | ~fraction__4[23]);
  assign systolic__result_chans__2_2_load_en = __systolic__result_chans__2_2_valid_and_not_has_been_sent & systolic__result_chans__2_2_valid_load_en;
  assign eq_63723 = accum_bexp == high_exp;
  assign eq_63724 = accum_fraction == 23'h00_0000;
  assign eq_63725 = prod_bexp == high_exp;
  assign eq_63726 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74677 = ~p1_should_output | systolic__result_chans__2_2_load_en | __systolic__result_chans__2_2_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74677;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_63435 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_63723 | ~eq_63724 | accum_sign) | ~(~eq_63725 | ~eq_63726 | prod_sign);
  assign has_neg_inf = eq_63723 & eq_63724 & accum_sign | eq_63725 & eq_63726 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_63435 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__2_2_valid_reg & __systolic__vert_chans__2_2_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_63723 | eq_63724) | ~(~eq_63725 | eq_63726) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_63723 & eq_63724 | eq_63725 & eq_63726;
  assign and_reduce_63754 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__2_3_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__2_3_not_has_been_sent = ~__systolic__hor_chans__2_3_has_been_sent_reg;
  assign systolic__hor_chans__2_3_valid_inv = ~__systolic__hor_chans__2_3_valid_reg;
  assign __systolic__vert_chans__3_2_not_has_been_sent = ~__systolic__vert_chans__3_2_has_been_sent_reg;
  assign systolic__vert_chans__3_2_valid_inv = ~__systolic__vert_chans__3_2_valid_reg;
  assign or_63757 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_63754;
  assign or_63760 = is_operand_inf | wide_exponent__2[8] | and_reduce_63754 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__2_3_valid_and_not_has_been_sent = __systolic__hor_chans__2_3_vld_buf & __systolic__hor_chans__2_3_not_has_been_sent;
  assign systolic__hor_chans__2_3_valid_load_en = systolic__hor_chans__2_3_rdy | systolic__hor_chans__2_3_valid_inv;
  assign __systolic__vert_chans__3_2_valid_and_not_has_been_sent = __systolic__hor_chans__2_3_vld_buf & __systolic__vert_chans__3_2_not_has_been_sent;
  assign systolic__vert_chans__3_2_valid_load_en = systolic__vert_chans__3_2_rdy | systolic__vert_chans__3_2_valid_inv;
  assign and_63762 = ~should_output & ~is_result_nan__1;
  assign eq_63438 = a_bexp__1 == high_exp;
  assign eq_63439 = a_fraction__1 == 23'h00_0000;
  assign eq_63440 = b_bexp__2 == high_exp;
  assign eq_63441 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__2_3_load_en = __systolic__hor_chans__2_3_valid_and_not_has_been_sent & systolic__hor_chans__2_3_valid_load_en;
  assign systolic__vert_chans__3_2_load_en = __systolic__vert_chans__3_2_valid_and_not_has_been_sent & systolic__vert_chans__3_2_valid_load_en;
  assign and_63769 = ~should_output & ~or_63757;
  assign and_63770 = ~should_output & or_63757;
  assign and_63771 = ~should_output & is_result_nan__1;
  assign and_63772 = and_63762 & ~or_63760;
  assign and_63773 = and_63762 & or_63760;
  assign __systolic__hor_chans__2_3_has_sent_or_is_ready = systolic__hor_chans__2_3_load_en | __systolic__hor_chans__2_3_has_been_sent_reg;
  assign __systolic__vert_chans__3_2_has_sent_or_is_ready = systolic__vert_chans__3_2_load_en | __systolic__vert_chans__3_2_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_63769, and_63770};
  assign ____state_2__next_value_predicates = {should_output, and_63771, and_63772, and_63773};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_63392 | eq_63393;
  assign has_inf_arg = eq_63438 & eq_63439 | eq_63440 & eq_63441;
  assign and_reduce_63458 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__2_3_has_sent_or_is_ready & __systolic__vert_chans__3_2_has_sent_or_is_ready;
  assign one_hot_63783 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_63784 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_63785 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_63528[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_63703, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_63438 | eq_63439) | ~(~eq_63440 | eq_63441) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__2_2_valid_inv = ~__systolic__hor_chans__2_2_valid_reg;
  assign systolic__vert_chans__2_2_valid_inv = ~__systolic__vert_chans__2_2_valid_reg;
  assign shrl_63774 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__2_2_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__2_2_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_63900 = should_output & p1_data_enable;
  assign and_63901 = and_63769 & p1_data_enable;
  assign and_63902 = and_63770 & p1_data_enable;
  assign and_63909 = and_63771 & p1_data_enable;
  assign and_63910 = and_63772 & p1_data_enable;
  assign and_63911 = and_63773 & p1_data_enable;
  assign and_63917 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__2_2_valid_load_en = p0_data_enable | systolic__hor_chans__2_2_valid_inv;
  assign systolic__vert_chans__2_2_valid_load_en = p0_data_enable | systolic__vert_chans__2_2_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_63783[2] & and_63769 == one_hot_63783[1] & and_63770 == one_hot_63783[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_63784[3] & and_63771 == one_hot_63784[2] & and_63772 == one_hot_63784[1] & and_63773 == one_hot_63784[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_63785[1] & should_output == one_hot_63785[0];
  assign result_fraction__1 = shrl_63774[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_63458 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_63458 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_63904 = {and_63900, and_63901, and_63902};
  assign concat_63913 = {and_63900, and_63909, and_63910, and_63911};
  assign concat_63919 = {and_63917, and_63900};
  assign unexpand_for_next_value_1678_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_3_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__2_3_valid_and_ready_txfr = __systolic__hor_chans__2_3_valid_and_not_has_been_sent & systolic__hor_chans__2_3_load_en;
  assign __systolic__vert_chans__3_2_valid_and_ready_txfr = __systolic__vert_chans__3_2_valid_and_not_has_been_sent & systolic__vert_chans__3_2_load_en;
  assign __systolic__result_chans__2_2_valid_and_all_active_outputs_ready = __systolic__result_chans__2_2_vld_buf & or_74677;
  assign __systolic__result_chans__2_2_valid_and_ready_txfr = __systolic__result_chans__2_2_valid_and_not_has_been_sent & systolic__result_chans__2_2_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__2_2_load_en = systolic__hor_chans__2_2_vld & systolic__hor_chans__2_2_valid_load_en;
  assign systolic__vert_chans__2_2_load_en = systolic__vert_chans__2_2_vld & systolic__vert_chans__2_2_valid_load_en;
  assign or_74541 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74543 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74545 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_63760}};
  assign result_exponent__2 = or_63757 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_63808 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_63905 = high_exp & {8{concat_63904[0]}} | wide_exponent__2[7:0] & {8{concat_63904[1]}} | 8'h00 & {8{concat_63904[2]}};
  assign or_63906 = and_63900 | and_63901 | and_63902;
  assign one_hot_sel_63914 = 23'h00_0000 & {23{concat_63913[0]}} | result_fraction__1 & {23{concat_63913[1]}} | nan_fraction & {23{concat_63913[2]}} | 23'h00_0000 & {23{concat_63913[3]}};
  assign or_63915 = and_63900 | and_63909 | and_63910 | and_63911;
  assign one_hot_sel_63920 = unexpand_for_next_value_1678_3_case_1 & {2{concat_63919[0]}} | unexpand_for_next_value_1678_3_case_0 & {2{concat_63919[1]}};
  assign or_63921 = and_63917 | and_63900;
  assign __systolic__hor_chans__2_3_not_stage_load = ~__systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_3_has_been_sent_reg_load_en = __systolic__hor_chans__2_3_valid_and_ready_txfr | __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_2_has_been_sent_reg_load_en = __systolic__vert_chans__3_2_valid_and_ready_txfr | __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_2_not_stage_load = ~__systolic__result_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_2_has_been_sent_reg_load_en = __systolic__result_chans__2_2_valid_and_ready_txfr | __systolic__result_chans__2_2_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__2_3_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__3_2_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__2_2_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__2_2_reg <= __systolic__hor_chans__2_2_reg_init;
      __systolic__hor_chans__2_2_valid_reg <= 1'h0;
      __systolic__vert_chans__2_2_reg <= __systolic__vert_chans__2_2_reg_init;
      __systolic__vert_chans__2_2_valid_reg <= 1'h0;
      __systolic__hor_chans__2_3_reg <= __systolic__hor_chans__2_3_reg_init;
      __systolic__hor_chans__2_3_valid_reg <= 1'h0;
      __systolic__vert_chans__3_2_reg <= __systolic__vert_chans__3_2_reg_init;
      __systolic__vert_chans__3_2_valid_reg <= 1'h0;
      __systolic__result_chans__2_2_reg <= __systolic__result_chans__2_2_reg_init;
      __systolic__result_chans__2_2_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_63906 ? one_hot_sel_63905 : ____state_1;
      ____state_2 <= or_63915 ? one_hot_sel_63914 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_63808 : ____state_0;
      ____state_3 <= or_63921 ? one_hot_sel_63920 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__2_3_has_been_sent_reg <= __systolic__hor_chans__2_3_has_been_sent_reg_load_en ? __systolic__hor_chans__2_3_not_stage_load : __systolic__hor_chans__2_3_has_been_sent_reg;
      __systolic__vert_chans__3_2_has_been_sent_reg <= __systolic__vert_chans__3_2_has_been_sent_reg_load_en ? __systolic__hor_chans__2_3_not_stage_load : __systolic__vert_chans__3_2_has_been_sent_reg;
      __systolic__result_chans__2_2_has_been_sent_reg <= __systolic__result_chans__2_2_has_been_sent_reg_load_en ? __systolic__result_chans__2_2_not_stage_load : __systolic__result_chans__2_2_has_been_sent_reg;
      __systolic__hor_chans__2_2_reg <= systolic__hor_chans__2_2_load_en ? systolic__hor_chans__2_2 : __systolic__hor_chans__2_2_reg;
      __systolic__hor_chans__2_2_valid_reg <= systolic__hor_chans__2_2_valid_load_en ? systolic__hor_chans__2_2_vld : __systolic__hor_chans__2_2_valid_reg;
      __systolic__vert_chans__2_2_reg <= systolic__vert_chans__2_2_load_en ? systolic__vert_chans__2_2 : __systolic__vert_chans__2_2_reg;
      __systolic__vert_chans__2_2_valid_reg <= systolic__vert_chans__2_2_valid_load_en ? systolic__vert_chans__2_2_vld : __systolic__vert_chans__2_2_valid_reg;
      __systolic__hor_chans__2_3_reg <= systolic__hor_chans__2_3_load_en ? __systolic__hor_chans__2_2_reg : __systolic__hor_chans__2_3_reg;
      __systolic__hor_chans__2_3_valid_reg <= systolic__hor_chans__2_3_valid_load_en ? __systolic__hor_chans__2_3_valid_and_not_has_been_sent : __systolic__hor_chans__2_3_valid_reg;
      __systolic__vert_chans__3_2_reg <= systolic__vert_chans__3_2_load_en ? __systolic__vert_chans__2_2_reg : __systolic__vert_chans__3_2_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74541))) or_74541) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74543))) or_74543) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74545))) or_74545) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__2_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__2_4_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__3_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__2_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_64189;
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
  wire [26:0] shrl_64204;
  wire [27:0] shll_64206;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1709_3_case_1;
  wire [25:0] add_64215;
  wire sticky__2;
  wire [27:0] concat_64221;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_64262;
  wire nor_64257;
  wire nor_64258;
  wire nor_64248;
  wire nor_64249;
  wire and_64291;
  wire nor_64293;
  wire nor_64295;
  wire and_64288;
  wire nor_64284;
  wire and_64280;
  wire nor_64281;
  wire nor_64275;
  wire nor_64277;
  wire and_64320;
  wire nor_64301;
  wire nor_64302;
  wire and_64341;
  wire [1:0] priority_sel_64342;
  wire and_64337;
  wire and_64333;
  wire and_64329;
  wire [2:0] concat_64355;
  wire [2:0] concat_64352;
  wire [2:0] concat_64351;
  wire [2:0] concat_64349;
  wire [2:0] concat_64348;
  wire and_64360;
  wire [3:0] concat_64364;
  wire [3:0] sel_74417;
  wire [4:0] concat_64372;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_64079;
  wire eq_64080;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_64083;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_64086;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_64088;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_64390;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_64400;
  wire [5:0] sub_64401;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_64111;
  wire __systolic__result_chans__2_3_vld_buf;
  wire __systolic__result_chans__2_3_not_has_been_sent;
  wire systolic__result_chans__2_3_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__2_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_3_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__2_3_load_en;
  wire eq_64410;
  wire eq_64411;
  wire eq_64412;
  wire eq_64413;
  wire [23:0] fraction__6;
  wire or_74695;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_64122;
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
  wire and_reduce_64441;
  wire should_output;
  wire __systolic__hor_chans__2_4_vld_buf;
  wire __systolic__hor_chans__2_4_not_has_been_sent;
  wire systolic__hor_chans__2_4_valid_inv;
  wire __systolic__vert_chans__3_3_not_has_been_sent;
  wire systolic__vert_chans__3_3_valid_inv;
  wire or_64444;
  wire or_64447;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__2_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_4_valid_load_en;
  wire __systolic__vert_chans__3_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_3_valid_load_en;
  wire and_64449;
  wire eq_64125;
  wire eq_64126;
  wire eq_64127;
  wire eq_64128;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__2_4_load_en;
  wire systolic__vert_chans__3_3_load_en;
  wire and_64456;
  wire and_64457;
  wire and_64458;
  wire and_64459;
  wire and_64460;
  wire __systolic__hor_chans__2_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_3_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_64145;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_64470;
  wire [4:0] one_hot_64471;
  wire [2:0] one_hot_64472;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__2_3_valid_inv;
  wire systolic__vert_chans__2_3_valid_inv;
  wire [27:0] shrl_64461;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_64587;
  wire and_64588;
  wire and_64589;
  wire and_64596;
  wire and_64597;
  wire and_64598;
  wire and_64604;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__2_3_valid_load_en;
  wire systolic__vert_chans__2_3_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_64591;
  wire [3:0] concat_64600;
  wire [1:0] concat_64606;
  wire [1:0] unexpand_for_next_value_1709_3_case_0;
  wire __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__2_4_valid_and_ready_txfr;
  wire __systolic__vert_chans__3_3_valid_and_ready_txfr;
  wire __systolic__result_chans__2_3_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__2_3_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__2_3_load_en;
  wire systolic__vert_chans__2_3_load_en;
  wire or_74547;
  wire or_74549;
  wire or_74551;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_64495;
  wire [7:0] one_hot_sel_64592;
  wire or_64593;
  wire [22:0] one_hot_sel_64601;
  wire or_64602;
  wire [1:0] one_hot_sel_64607;
  wire or_64608;
  wire __systolic__hor_chans__2_4_not_stage_load;
  wire __systolic__hor_chans__2_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_3_not_stage_load;
  wire __systolic__result_chans__2_3_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_64189 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_64189;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_64204 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_64206 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1709_3_case_1 = 2'h0;
  assign add_64215 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1709_3_case_1, shrl_64204[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_64189 | shll_64206[26:3]) != 24'h00_0000;
  assign concat_64221 = {add_64215[24:0], shrl_64204[2:1], shrl_64204[0] | sticky__2};
  assign accumbs_fraction = add_64215[25] ? -concat_64221 : concat_64221;
  assign carry_bit = accumbs_fraction[27];
  assign nor_64262 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_64257 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_64258 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_64248 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_64249 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_64291 = ~(carry_bit | accumbs_fraction[26]) & nor_64262;
  assign nor_64293 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_64295 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_64288 = nor_64258 & nor_64257;
  assign nor_64284 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_64280 = nor_64249 & nor_64248;
  assign nor_64281 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_64275 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_64277 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_64320 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_64293;
  assign nor_64301 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_64302 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_64341 = and_64291 & and_64320;
  assign priority_sel_64342 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_64262), and_64291}, {nor_64295, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_64295});
  assign and_64337 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_64284;
  assign and_64333 = nor_64277 & nor_64275;
  assign and_64329 = nor_64302 & nor_64301;
  assign concat_64355 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_64293) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_64352 = {and_64288, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_64257), and_64288}, unexpand_for_next_value_1709_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_64258, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_64351 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_64284) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_64349 = {and_64280, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_64248), and_64280}, {nor_64281, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_64249, nor_64281})};
  assign concat_64348 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_64275) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_64277, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_64360 = and_64288 & and_64337;
  assign concat_64364 = {1'h1, and_64329, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_64301), and_64329}, unexpand_for_next_value_1709_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_64302, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74417 = ~(~and_64341 | and_64360) ? {1'h1, ~(~and_64288 | and_64337) ? concat_64351 : concat_64352} : {and_64341, priority_sel_3b_2way({~(~and_64291 | and_64320), and_64341}, {priority_sel_64342, 1'h0}, concat_64355, {1'h0, priority_sel_64342})};
  assign concat_64372 = {1'h1, and_64280 & and_64333 ? concat_64364 : {1'h0, ~(~and_64280 | and_64333) ? concat_64348 : concat_64349}};
  assign leading_zeroes = and_64341 & and_64360 ? concat_64372 : {1'h0, sel_74417};
  assign a_bexp__1 = __systolic__hor_chans__2_3_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__2_3_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__2_3_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__2_3_reg[22:0];
  assign eq_64079 = a_bexp__1 == 8'h00;
  assign eq_64080 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_64083 = ~(eq_64079 | eq_64080);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_64086 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_64088 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_64086 & {48{nor_64083}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_64088} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_64083}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_64390 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_64390[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_64400 = {1'h0, accum_bexp} + 9'h001;
  assign sub_64401 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_64215 == 26'h000_0000 & ~(shrl_64204[1] | shrl_64204[2]) & ~(shrl_64204[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_64400};
  assign wide_exponent_associative_element__1 = {{4{sub_64401[5]}}, sub_64401};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_64111 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__2_3_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__2_3_not_has_been_sent = ~__systolic__result_chans__2_3_has_been_sent_reg;
  assign systolic__result_chans__2_3_valid_inv = ~__systolic__result_chans__2_3_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_64111;
  assign __systolic__result_chans__2_3_valid_and_not_has_been_sent = __systolic__result_chans__2_3_vld_buf & __systolic__result_chans__2_3_not_has_been_sent;
  assign systolic__result_chans__2_3_valid_load_en = systolic__result_chans__2_3_rdy | systolic__result_chans__2_3_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_64111 | ~fraction__4[23]);
  assign systolic__result_chans__2_3_load_en = __systolic__result_chans__2_3_valid_and_not_has_been_sent & systolic__result_chans__2_3_valid_load_en;
  assign eq_64410 = accum_bexp == high_exp;
  assign eq_64411 = accum_fraction == 23'h00_0000;
  assign eq_64412 = prod_bexp == high_exp;
  assign eq_64413 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74695 = ~p1_should_output | systolic__result_chans__2_3_load_en | __systolic__result_chans__2_3_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74695;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_64122 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_64410 | ~eq_64411 | accum_sign) | ~(~eq_64412 | ~eq_64413 | prod_sign);
  assign has_neg_inf = eq_64410 & eq_64411 & accum_sign | eq_64412 & eq_64413 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_64122 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__2_3_valid_reg & __systolic__vert_chans__2_3_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_64410 | eq_64411) | ~(~eq_64412 | eq_64413) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_64410 & eq_64411 | eq_64412 & eq_64413;
  assign and_reduce_64441 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__2_4_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__2_4_not_has_been_sent = ~__systolic__hor_chans__2_4_has_been_sent_reg;
  assign systolic__hor_chans__2_4_valid_inv = ~__systolic__hor_chans__2_4_valid_reg;
  assign __systolic__vert_chans__3_3_not_has_been_sent = ~__systolic__vert_chans__3_3_has_been_sent_reg;
  assign systolic__vert_chans__3_3_valid_inv = ~__systolic__vert_chans__3_3_valid_reg;
  assign or_64444 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_64441;
  assign or_64447 = is_operand_inf | wide_exponent__2[8] | and_reduce_64441 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__2_4_valid_and_not_has_been_sent = __systolic__hor_chans__2_4_vld_buf & __systolic__hor_chans__2_4_not_has_been_sent;
  assign systolic__hor_chans__2_4_valid_load_en = systolic__hor_chans__2_4_rdy | systolic__hor_chans__2_4_valid_inv;
  assign __systolic__vert_chans__3_3_valid_and_not_has_been_sent = __systolic__hor_chans__2_4_vld_buf & __systolic__vert_chans__3_3_not_has_been_sent;
  assign systolic__vert_chans__3_3_valid_load_en = systolic__vert_chans__3_3_rdy | systolic__vert_chans__3_3_valid_inv;
  assign and_64449 = ~should_output & ~is_result_nan__1;
  assign eq_64125 = a_bexp__1 == high_exp;
  assign eq_64126 = a_fraction__1 == 23'h00_0000;
  assign eq_64127 = b_bexp__2 == high_exp;
  assign eq_64128 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__2_4_load_en = __systolic__hor_chans__2_4_valid_and_not_has_been_sent & systolic__hor_chans__2_4_valid_load_en;
  assign systolic__vert_chans__3_3_load_en = __systolic__vert_chans__3_3_valid_and_not_has_been_sent & systolic__vert_chans__3_3_valid_load_en;
  assign and_64456 = ~should_output & ~or_64444;
  assign and_64457 = ~should_output & or_64444;
  assign and_64458 = ~should_output & is_result_nan__1;
  assign and_64459 = and_64449 & ~or_64447;
  assign and_64460 = and_64449 & or_64447;
  assign __systolic__hor_chans__2_4_has_sent_or_is_ready = systolic__hor_chans__2_4_load_en | __systolic__hor_chans__2_4_has_been_sent_reg;
  assign __systolic__vert_chans__3_3_has_sent_or_is_ready = systolic__vert_chans__3_3_load_en | __systolic__vert_chans__3_3_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_64456, and_64457};
  assign ____state_2__next_value_predicates = {should_output, and_64458, and_64459, and_64460};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_64079 | eq_64080;
  assign has_inf_arg = eq_64125 & eq_64126 | eq_64127 & eq_64128;
  assign and_reduce_64145 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__2_4_has_sent_or_is_ready & __systolic__vert_chans__3_3_has_sent_or_is_ready;
  assign one_hot_64470 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_64471 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_64472 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_64215[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_64390, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_64125 | eq_64126) | ~(~eq_64127 | eq_64128) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__2_3_valid_inv = ~__systolic__hor_chans__2_3_valid_reg;
  assign systolic__vert_chans__2_3_valid_inv = ~__systolic__vert_chans__2_3_valid_reg;
  assign shrl_64461 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__2_3_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__2_3_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_64587 = should_output & p1_data_enable;
  assign and_64588 = and_64456 & p1_data_enable;
  assign and_64589 = and_64457 & p1_data_enable;
  assign and_64596 = and_64458 & p1_data_enable;
  assign and_64597 = and_64459 & p1_data_enable;
  assign and_64598 = and_64460 & p1_data_enable;
  assign and_64604 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__2_3_valid_load_en = p0_data_enable | systolic__hor_chans__2_3_valid_inv;
  assign systolic__vert_chans__2_3_valid_load_en = p0_data_enable | systolic__vert_chans__2_3_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_64470[2] & and_64456 == one_hot_64470[1] & and_64457 == one_hot_64470[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_64471[3] & and_64458 == one_hot_64471[2] & and_64459 == one_hot_64471[1] & and_64460 == one_hot_64471[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_64472[1] & should_output == one_hot_64472[0];
  assign result_fraction__1 = shrl_64461[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_64145 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_64145 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_64591 = {and_64587, and_64588, and_64589};
  assign concat_64600 = {and_64587, and_64596, and_64597, and_64598};
  assign concat_64606 = {and_64604, and_64587};
  assign unexpand_for_next_value_1709_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_4_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__2_4_valid_and_ready_txfr = __systolic__hor_chans__2_4_valid_and_not_has_been_sent & systolic__hor_chans__2_4_load_en;
  assign __systolic__vert_chans__3_3_valid_and_ready_txfr = __systolic__vert_chans__3_3_valid_and_not_has_been_sent & systolic__vert_chans__3_3_load_en;
  assign __systolic__result_chans__2_3_valid_and_all_active_outputs_ready = __systolic__result_chans__2_3_vld_buf & or_74695;
  assign __systolic__result_chans__2_3_valid_and_ready_txfr = __systolic__result_chans__2_3_valid_and_not_has_been_sent & systolic__result_chans__2_3_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__2_3_load_en = systolic__hor_chans__2_3_vld & systolic__hor_chans__2_3_valid_load_en;
  assign systolic__vert_chans__2_3_load_en = systolic__vert_chans__2_3_vld & systolic__vert_chans__2_3_valid_load_en;
  assign or_74547 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74549 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74551 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_64447}};
  assign result_exponent__2 = or_64444 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_64495 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_64592 = high_exp & {8{concat_64591[0]}} | wide_exponent__2[7:0] & {8{concat_64591[1]}} | 8'h00 & {8{concat_64591[2]}};
  assign or_64593 = and_64587 | and_64588 | and_64589;
  assign one_hot_sel_64601 = 23'h00_0000 & {23{concat_64600[0]}} | result_fraction__1 & {23{concat_64600[1]}} | nan_fraction & {23{concat_64600[2]}} | 23'h00_0000 & {23{concat_64600[3]}};
  assign or_64602 = and_64587 | and_64596 | and_64597 | and_64598;
  assign one_hot_sel_64607 = unexpand_for_next_value_1709_3_case_1 & {2{concat_64606[0]}} | unexpand_for_next_value_1709_3_case_0 & {2{concat_64606[1]}};
  assign or_64608 = and_64604 | and_64587;
  assign __systolic__hor_chans__2_4_not_stage_load = ~__systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_4_has_been_sent_reg_load_en = __systolic__hor_chans__2_4_valid_and_ready_txfr | __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_3_has_been_sent_reg_load_en = __systolic__vert_chans__3_3_valid_and_ready_txfr | __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_3_not_stage_load = ~__systolic__result_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_3_has_been_sent_reg_load_en = __systolic__result_chans__2_3_valid_and_ready_txfr | __systolic__result_chans__2_3_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__2_4_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__3_3_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__2_3_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__2_3_reg <= __systolic__hor_chans__2_3_reg_init;
      __systolic__hor_chans__2_3_valid_reg <= 1'h0;
      __systolic__vert_chans__2_3_reg <= __systolic__vert_chans__2_3_reg_init;
      __systolic__vert_chans__2_3_valid_reg <= 1'h0;
      __systolic__hor_chans__2_4_reg <= __systolic__hor_chans__2_4_reg_init;
      __systolic__hor_chans__2_4_valid_reg <= 1'h0;
      __systolic__vert_chans__3_3_reg <= __systolic__vert_chans__3_3_reg_init;
      __systolic__vert_chans__3_3_valid_reg <= 1'h0;
      __systolic__result_chans__2_3_reg <= __systolic__result_chans__2_3_reg_init;
      __systolic__result_chans__2_3_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_64593 ? one_hot_sel_64592 : ____state_1;
      ____state_2 <= or_64602 ? one_hot_sel_64601 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_64495 : ____state_0;
      ____state_3 <= or_64608 ? one_hot_sel_64607 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__2_4_has_been_sent_reg <= __systolic__hor_chans__2_4_has_been_sent_reg_load_en ? __systolic__hor_chans__2_4_not_stage_load : __systolic__hor_chans__2_4_has_been_sent_reg;
      __systolic__vert_chans__3_3_has_been_sent_reg <= __systolic__vert_chans__3_3_has_been_sent_reg_load_en ? __systolic__hor_chans__2_4_not_stage_load : __systolic__vert_chans__3_3_has_been_sent_reg;
      __systolic__result_chans__2_3_has_been_sent_reg <= __systolic__result_chans__2_3_has_been_sent_reg_load_en ? __systolic__result_chans__2_3_not_stage_load : __systolic__result_chans__2_3_has_been_sent_reg;
      __systolic__hor_chans__2_3_reg <= systolic__hor_chans__2_3_load_en ? systolic__hor_chans__2_3 : __systolic__hor_chans__2_3_reg;
      __systolic__hor_chans__2_3_valid_reg <= systolic__hor_chans__2_3_valid_load_en ? systolic__hor_chans__2_3_vld : __systolic__hor_chans__2_3_valid_reg;
      __systolic__vert_chans__2_3_reg <= systolic__vert_chans__2_3_load_en ? systolic__vert_chans__2_3 : __systolic__vert_chans__2_3_reg;
      __systolic__vert_chans__2_3_valid_reg <= systolic__vert_chans__2_3_valid_load_en ? systolic__vert_chans__2_3_vld : __systolic__vert_chans__2_3_valid_reg;
      __systolic__hor_chans__2_4_reg <= systolic__hor_chans__2_4_load_en ? __systolic__hor_chans__2_3_reg : __systolic__hor_chans__2_4_reg;
      __systolic__hor_chans__2_4_valid_reg <= systolic__hor_chans__2_4_valid_load_en ? __systolic__hor_chans__2_4_valid_and_not_has_been_sent : __systolic__hor_chans__2_4_valid_reg;
      __systolic__vert_chans__3_3_reg <= systolic__vert_chans__3_3_load_en ? __systolic__vert_chans__2_3_reg : __systolic__vert_chans__3_3_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74547))) or_74547) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74549))) or_74549) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74551))) or_74551) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__3_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__3_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__3_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__4_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__3_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_64876;
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
  wire [26:0] shrl_64891;
  wire [27:0] shll_64893;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1740_3_case_1;
  wire [25:0] add_64902;
  wire sticky__2;
  wire [27:0] concat_64908;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_64949;
  wire nor_64944;
  wire nor_64945;
  wire nor_64935;
  wire nor_64936;
  wire and_64978;
  wire nor_64980;
  wire nor_64982;
  wire and_64975;
  wire nor_64971;
  wire and_64967;
  wire nor_64968;
  wire nor_64962;
  wire nor_64964;
  wire and_65007;
  wire nor_64988;
  wire nor_64989;
  wire and_65028;
  wire [1:0] priority_sel_65029;
  wire and_65024;
  wire and_65020;
  wire and_65016;
  wire [2:0] concat_65042;
  wire [2:0] concat_65039;
  wire [2:0] concat_65038;
  wire [2:0] concat_65036;
  wire [2:0] concat_65035;
  wire and_65047;
  wire [3:0] concat_65051;
  wire [3:0] sel_74425;
  wire [4:0] concat_65059;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_64766;
  wire eq_64767;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_64770;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_64773;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_64775;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_65077;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_65087;
  wire [5:0] sub_65088;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_64798;
  wire __systolic__result_chans__3_0_vld_buf;
  wire __systolic__result_chans__3_0_not_has_been_sent;
  wire systolic__result_chans__3_0_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__3_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_0_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__3_0_load_en;
  wire eq_65097;
  wire eq_65098;
  wire eq_65099;
  wire eq_65100;
  wire [23:0] fraction__6;
  wire or_74713;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_64809;
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
  wire and_reduce_65128;
  wire should_output;
  wire __systolic__hor_chans__3_1_vld_buf;
  wire __systolic__hor_chans__3_1_not_has_been_sent;
  wire systolic__hor_chans__3_1_valid_inv;
  wire __systolic__vert_chans__4_0_not_has_been_sent;
  wire systolic__vert_chans__4_0_valid_inv;
  wire or_65131;
  wire or_65134;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__3_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_1_valid_load_en;
  wire __systolic__vert_chans__4_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_0_valid_load_en;
  wire and_65136;
  wire eq_64812;
  wire eq_64813;
  wire eq_64814;
  wire eq_64815;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__3_1_load_en;
  wire systolic__vert_chans__4_0_load_en;
  wire and_65143;
  wire and_65144;
  wire and_65145;
  wire and_65146;
  wire and_65147;
  wire __systolic__hor_chans__3_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_0_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_64832;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_65157;
  wire [4:0] one_hot_65158;
  wire [2:0] one_hot_65159;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__3_0_valid_inv;
  wire systolic__vert_chans__3_0_valid_inv;
  wire [27:0] shrl_65148;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_65274;
  wire and_65275;
  wire and_65276;
  wire and_65283;
  wire and_65284;
  wire and_65285;
  wire and_65291;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__3_0_valid_load_en;
  wire systolic__vert_chans__3_0_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_65278;
  wire [3:0] concat_65287;
  wire [1:0] concat_65293;
  wire [1:0] unexpand_for_next_value_1740_3_case_0;
  wire __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__3_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__4_0_valid_and_ready_txfr;
  wire __systolic__result_chans__3_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__3_0_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__3_0_load_en;
  wire systolic__vert_chans__3_0_load_en;
  wire or_74553;
  wire or_74555;
  wire or_74557;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_65182;
  wire [7:0] one_hot_sel_65279;
  wire or_65280;
  wire [22:0] one_hot_sel_65288;
  wire or_65289;
  wire [1:0] one_hot_sel_65294;
  wire or_65295;
  wire __systolic__hor_chans__3_1_not_stage_load;
  wire __systolic__hor_chans__3_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_0_not_stage_load;
  wire __systolic__result_chans__3_0_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_64876 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_64876;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_64891 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_64893 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1740_3_case_1 = 2'h0;
  assign add_64902 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1740_3_case_1, shrl_64891[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_64876 | shll_64893[26:3]) != 24'h00_0000;
  assign concat_64908 = {add_64902[24:0], shrl_64891[2:1], shrl_64891[0] | sticky__2};
  assign accumbs_fraction = add_64902[25] ? -concat_64908 : concat_64908;
  assign carry_bit = accumbs_fraction[27];
  assign nor_64949 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_64944 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_64945 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_64935 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_64936 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_64978 = ~(carry_bit | accumbs_fraction[26]) & nor_64949;
  assign nor_64980 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_64982 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_64975 = nor_64945 & nor_64944;
  assign nor_64971 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_64967 = nor_64936 & nor_64935;
  assign nor_64968 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_64962 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_64964 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_65007 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_64980;
  assign nor_64988 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_64989 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_65028 = and_64978 & and_65007;
  assign priority_sel_65029 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_64949), and_64978}, {nor_64982, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_64982});
  assign and_65024 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_64971;
  assign and_65020 = nor_64964 & nor_64962;
  assign and_65016 = nor_64989 & nor_64988;
  assign concat_65042 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_64980) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_65039 = {and_64975, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_64944), and_64975}, unexpand_for_next_value_1740_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_64945, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_65038 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_64971) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_65036 = {and_64967, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_64935), and_64967}, {nor_64968, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_64936, nor_64968})};
  assign concat_65035 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_64962) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_64964, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_65047 = and_64975 & and_65024;
  assign concat_65051 = {1'h1, and_65016, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_64988), and_65016}, unexpand_for_next_value_1740_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_64989, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74425 = ~(~and_65028 | and_65047) ? {1'h1, ~(~and_64975 | and_65024) ? concat_65038 : concat_65039} : {and_65028, priority_sel_3b_2way({~(~and_64978 | and_65007), and_65028}, {priority_sel_65029, 1'h0}, concat_65042, {1'h0, priority_sel_65029})};
  assign concat_65059 = {1'h1, and_64967 & and_65020 ? concat_65051 : {1'h0, ~(~and_64967 | and_65020) ? concat_65035 : concat_65036}};
  assign leading_zeroes = and_65028 & and_65047 ? concat_65059 : {1'h0, sel_74425};
  assign a_bexp__1 = __systolic__hor_chans__3_0_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__3_0_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__3_0_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__3_0_reg[22:0];
  assign eq_64766 = a_bexp__1 == 8'h00;
  assign eq_64767 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_64770 = ~(eq_64766 | eq_64767);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_64773 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_64775 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_64773 & {48{nor_64770}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_64775} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_64770}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_65077 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_65077[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_65087 = {1'h0, accum_bexp} + 9'h001;
  assign sub_65088 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_64902 == 26'h000_0000 & ~(shrl_64891[1] | shrl_64891[2]) & ~(shrl_64891[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_65087};
  assign wide_exponent_associative_element__1 = {{4{sub_65088[5]}}, sub_65088};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_64798 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__3_0_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__3_0_not_has_been_sent = ~__systolic__result_chans__3_0_has_been_sent_reg;
  assign systolic__result_chans__3_0_valid_inv = ~__systolic__result_chans__3_0_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_64798;
  assign __systolic__result_chans__3_0_valid_and_not_has_been_sent = __systolic__result_chans__3_0_vld_buf & __systolic__result_chans__3_0_not_has_been_sent;
  assign systolic__result_chans__3_0_valid_load_en = systolic__result_chans__3_0_rdy | systolic__result_chans__3_0_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_64798 | ~fraction__4[23]);
  assign systolic__result_chans__3_0_load_en = __systolic__result_chans__3_0_valid_and_not_has_been_sent & systolic__result_chans__3_0_valid_load_en;
  assign eq_65097 = accum_bexp == high_exp;
  assign eq_65098 = accum_fraction == 23'h00_0000;
  assign eq_65099 = prod_bexp == high_exp;
  assign eq_65100 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74713 = ~p1_should_output | systolic__result_chans__3_0_load_en | __systolic__result_chans__3_0_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74713;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_64809 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_65097 | ~eq_65098 | accum_sign) | ~(~eq_65099 | ~eq_65100 | prod_sign);
  assign has_neg_inf = eq_65097 & eq_65098 & accum_sign | eq_65099 & eq_65100 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_64809 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__3_0_valid_reg & __systolic__vert_chans__3_0_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_65097 | eq_65098) | ~(~eq_65099 | eq_65100) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_65097 & eq_65098 | eq_65099 & eq_65100;
  assign and_reduce_65128 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__3_1_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__3_1_not_has_been_sent = ~__systolic__hor_chans__3_1_has_been_sent_reg;
  assign systolic__hor_chans__3_1_valid_inv = ~__systolic__hor_chans__3_1_valid_reg;
  assign __systolic__vert_chans__4_0_not_has_been_sent = ~__systolic__vert_chans__4_0_has_been_sent_reg;
  assign systolic__vert_chans__4_0_valid_inv = ~__systolic__vert_chans__4_0_valid_reg;
  assign or_65131 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_65128;
  assign or_65134 = is_operand_inf | wide_exponent__2[8] | and_reduce_65128 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__3_1_valid_and_not_has_been_sent = __systolic__hor_chans__3_1_vld_buf & __systolic__hor_chans__3_1_not_has_been_sent;
  assign systolic__hor_chans__3_1_valid_load_en = systolic__hor_chans__3_1_rdy | systolic__hor_chans__3_1_valid_inv;
  assign __systolic__vert_chans__4_0_valid_and_not_has_been_sent = __systolic__hor_chans__3_1_vld_buf & __systolic__vert_chans__4_0_not_has_been_sent;
  assign systolic__vert_chans__4_0_valid_load_en = systolic__vert_chans__4_0_rdy | systolic__vert_chans__4_0_valid_inv;
  assign and_65136 = ~should_output & ~is_result_nan__1;
  assign eq_64812 = a_bexp__1 == high_exp;
  assign eq_64813 = a_fraction__1 == 23'h00_0000;
  assign eq_64814 = b_bexp__2 == high_exp;
  assign eq_64815 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__3_1_load_en = __systolic__hor_chans__3_1_valid_and_not_has_been_sent & systolic__hor_chans__3_1_valid_load_en;
  assign systolic__vert_chans__4_0_load_en = __systolic__vert_chans__4_0_valid_and_not_has_been_sent & systolic__vert_chans__4_0_valid_load_en;
  assign and_65143 = ~should_output & ~or_65131;
  assign and_65144 = ~should_output & or_65131;
  assign and_65145 = ~should_output & is_result_nan__1;
  assign and_65146 = and_65136 & ~or_65134;
  assign and_65147 = and_65136 & or_65134;
  assign __systolic__hor_chans__3_1_has_sent_or_is_ready = systolic__hor_chans__3_1_load_en | __systolic__hor_chans__3_1_has_been_sent_reg;
  assign __systolic__vert_chans__4_0_has_sent_or_is_ready = systolic__vert_chans__4_0_load_en | __systolic__vert_chans__4_0_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_65143, and_65144};
  assign ____state_2__next_value_predicates = {should_output, and_65145, and_65146, and_65147};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_64766 | eq_64767;
  assign has_inf_arg = eq_64812 & eq_64813 | eq_64814 & eq_64815;
  assign and_reduce_64832 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__3_1_has_sent_or_is_ready & __systolic__vert_chans__4_0_has_sent_or_is_ready;
  assign one_hot_65157 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_65158 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_65159 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_64902[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_65077, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_64812 | eq_64813) | ~(~eq_64814 | eq_64815) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__3_0_valid_inv = ~__systolic__hor_chans__3_0_valid_reg;
  assign systolic__vert_chans__3_0_valid_inv = ~__systolic__vert_chans__3_0_valid_reg;
  assign shrl_65148 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__3_0_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__3_0_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_65274 = should_output & p1_data_enable;
  assign and_65275 = and_65143 & p1_data_enable;
  assign and_65276 = and_65144 & p1_data_enable;
  assign and_65283 = and_65145 & p1_data_enable;
  assign and_65284 = and_65146 & p1_data_enable;
  assign and_65285 = and_65147 & p1_data_enable;
  assign and_65291 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__3_0_valid_load_en = p0_data_enable | systolic__hor_chans__3_0_valid_inv;
  assign systolic__vert_chans__3_0_valid_load_en = p0_data_enable | systolic__vert_chans__3_0_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_65157[2] & and_65143 == one_hot_65157[1] & and_65144 == one_hot_65157[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_65158[3] & and_65145 == one_hot_65158[2] & and_65146 == one_hot_65158[1] & and_65147 == one_hot_65158[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_65159[1] & should_output == one_hot_65159[0];
  assign result_fraction__1 = shrl_65148[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_64832 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_64832 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_65278 = {and_65274, and_65275, and_65276};
  assign concat_65287 = {and_65274, and_65283, and_65284, and_65285};
  assign concat_65293 = {and_65291, and_65274};
  assign unexpand_for_next_value_1740_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_1_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__3_1_valid_and_ready_txfr = __systolic__hor_chans__3_1_valid_and_not_has_been_sent & systolic__hor_chans__3_1_load_en;
  assign __systolic__vert_chans__4_0_valid_and_ready_txfr = __systolic__vert_chans__4_0_valid_and_not_has_been_sent & systolic__vert_chans__4_0_load_en;
  assign __systolic__result_chans__3_0_valid_and_all_active_outputs_ready = __systolic__result_chans__3_0_vld_buf & or_74713;
  assign __systolic__result_chans__3_0_valid_and_ready_txfr = __systolic__result_chans__3_0_valid_and_not_has_been_sent & systolic__result_chans__3_0_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__3_0_load_en = systolic__hor_chans__3_0_vld & systolic__hor_chans__3_0_valid_load_en;
  assign systolic__vert_chans__3_0_load_en = systolic__vert_chans__3_0_vld & systolic__vert_chans__3_0_valid_load_en;
  assign or_74553 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74555 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74557 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_65134}};
  assign result_exponent__2 = or_65131 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_65182 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_65279 = high_exp & {8{concat_65278[0]}} | wide_exponent__2[7:0] & {8{concat_65278[1]}} | 8'h00 & {8{concat_65278[2]}};
  assign or_65280 = and_65274 | and_65275 | and_65276;
  assign one_hot_sel_65288 = 23'h00_0000 & {23{concat_65287[0]}} | result_fraction__1 & {23{concat_65287[1]}} | nan_fraction & {23{concat_65287[2]}} | 23'h00_0000 & {23{concat_65287[3]}};
  assign or_65289 = and_65274 | and_65283 | and_65284 | and_65285;
  assign one_hot_sel_65294 = unexpand_for_next_value_1740_3_case_1 & {2{concat_65293[0]}} | unexpand_for_next_value_1740_3_case_0 & {2{concat_65293[1]}};
  assign or_65295 = and_65291 | and_65274;
  assign __systolic__hor_chans__3_1_not_stage_load = ~__systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_1_has_been_sent_reg_load_en = __systolic__hor_chans__3_1_valid_and_ready_txfr | __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_0_has_been_sent_reg_load_en = __systolic__vert_chans__4_0_valid_and_ready_txfr | __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_0_not_stage_load = ~__systolic__result_chans__3_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_0_has_been_sent_reg_load_en = __systolic__result_chans__3_0_valid_and_ready_txfr | __systolic__result_chans__3_0_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__3_1_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__4_0_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__3_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__3_0_reg <= __systolic__hor_chans__3_0_reg_init;
      __systolic__hor_chans__3_0_valid_reg <= 1'h0;
      __systolic__vert_chans__3_0_reg <= __systolic__vert_chans__3_0_reg_init;
      __systolic__vert_chans__3_0_valid_reg <= 1'h0;
      __systolic__hor_chans__3_1_reg <= __systolic__hor_chans__3_1_reg_init;
      __systolic__hor_chans__3_1_valid_reg <= 1'h0;
      __systolic__vert_chans__4_0_reg <= __systolic__vert_chans__4_0_reg_init;
      __systolic__vert_chans__4_0_valid_reg <= 1'h0;
      __systolic__result_chans__3_0_reg <= __systolic__result_chans__3_0_reg_init;
      __systolic__result_chans__3_0_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_65280 ? one_hot_sel_65279 : ____state_1;
      ____state_2 <= or_65289 ? one_hot_sel_65288 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_65182 : ____state_0;
      ____state_3 <= or_65295 ? one_hot_sel_65294 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__3_1_has_been_sent_reg <= __systolic__hor_chans__3_1_has_been_sent_reg_load_en ? __systolic__hor_chans__3_1_not_stage_load : __systolic__hor_chans__3_1_has_been_sent_reg;
      __systolic__vert_chans__4_0_has_been_sent_reg <= __systolic__vert_chans__4_0_has_been_sent_reg_load_en ? __systolic__hor_chans__3_1_not_stage_load : __systolic__vert_chans__4_0_has_been_sent_reg;
      __systolic__result_chans__3_0_has_been_sent_reg <= __systolic__result_chans__3_0_has_been_sent_reg_load_en ? __systolic__result_chans__3_0_not_stage_load : __systolic__result_chans__3_0_has_been_sent_reg;
      __systolic__hor_chans__3_0_reg <= systolic__hor_chans__3_0_load_en ? systolic__hor_chans__3_0 : __systolic__hor_chans__3_0_reg;
      __systolic__hor_chans__3_0_valid_reg <= systolic__hor_chans__3_0_valid_load_en ? systolic__hor_chans__3_0_vld : __systolic__hor_chans__3_0_valid_reg;
      __systolic__vert_chans__3_0_reg <= systolic__vert_chans__3_0_load_en ? systolic__vert_chans__3_0 : __systolic__vert_chans__3_0_reg;
      __systolic__vert_chans__3_0_valid_reg <= systolic__vert_chans__3_0_valid_load_en ? systolic__vert_chans__3_0_vld : __systolic__vert_chans__3_0_valid_reg;
      __systolic__hor_chans__3_1_reg <= systolic__hor_chans__3_1_load_en ? __systolic__hor_chans__3_0_reg : __systolic__hor_chans__3_1_reg;
      __systolic__hor_chans__3_1_valid_reg <= systolic__hor_chans__3_1_valid_load_en ? __systolic__hor_chans__3_1_valid_and_not_has_been_sent : __systolic__hor_chans__3_1_valid_reg;
      __systolic__vert_chans__4_0_reg <= systolic__vert_chans__4_0_load_en ? __systolic__vert_chans__3_0_reg : __systolic__vert_chans__4_0_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74553))) or_74553) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74555))) or_74555) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74557))) or_74557) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__3_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__3_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__3_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__4_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__3_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_65563;
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
  wire [26:0] shrl_65578;
  wire [27:0] shll_65580;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1771_3_case_1;
  wire [25:0] add_65589;
  wire sticky__2;
  wire [27:0] concat_65595;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_65636;
  wire nor_65631;
  wire nor_65632;
  wire nor_65622;
  wire nor_65623;
  wire and_65665;
  wire nor_65667;
  wire nor_65669;
  wire and_65662;
  wire nor_65658;
  wire and_65654;
  wire nor_65655;
  wire nor_65649;
  wire nor_65651;
  wire and_65694;
  wire nor_65675;
  wire nor_65676;
  wire and_65715;
  wire [1:0] priority_sel_65716;
  wire and_65711;
  wire and_65707;
  wire and_65703;
  wire [2:0] concat_65729;
  wire [2:0] concat_65726;
  wire [2:0] concat_65725;
  wire [2:0] concat_65723;
  wire [2:0] concat_65722;
  wire and_65734;
  wire [3:0] concat_65738;
  wire [3:0] sel_74433;
  wire [4:0] concat_65746;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_65453;
  wire eq_65454;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_65457;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_65460;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_65462;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_65764;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_65774;
  wire [5:0] sub_65775;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_65485;
  wire __systolic__result_chans__3_1_vld_buf;
  wire __systolic__result_chans__3_1_not_has_been_sent;
  wire systolic__result_chans__3_1_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__3_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_1_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__3_1_load_en;
  wire eq_65784;
  wire eq_65785;
  wire eq_65786;
  wire eq_65787;
  wire [23:0] fraction__6;
  wire or_74731;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_65496;
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
  wire and_reduce_65815;
  wire should_output;
  wire __systolic__hor_chans__3_2_vld_buf;
  wire __systolic__hor_chans__3_2_not_has_been_sent;
  wire systolic__hor_chans__3_2_valid_inv;
  wire __systolic__vert_chans__4_1_not_has_been_sent;
  wire systolic__vert_chans__4_1_valid_inv;
  wire or_65818;
  wire or_65821;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__3_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_2_valid_load_en;
  wire __systolic__vert_chans__4_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_1_valid_load_en;
  wire and_65823;
  wire eq_65499;
  wire eq_65500;
  wire eq_65501;
  wire eq_65502;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__3_2_load_en;
  wire systolic__vert_chans__4_1_load_en;
  wire and_65830;
  wire and_65831;
  wire and_65832;
  wire and_65833;
  wire and_65834;
  wire __systolic__hor_chans__3_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_1_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_65519;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_65844;
  wire [4:0] one_hot_65845;
  wire [2:0] one_hot_65846;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__3_1_valid_inv;
  wire systolic__vert_chans__3_1_valid_inv;
  wire [27:0] shrl_65835;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_65961;
  wire and_65962;
  wire and_65963;
  wire and_65970;
  wire and_65971;
  wire and_65972;
  wire and_65978;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__3_1_valid_load_en;
  wire systolic__vert_chans__3_1_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_65965;
  wire [3:0] concat_65974;
  wire [1:0] concat_65980;
  wire [1:0] unexpand_for_next_value_1771_3_case_0;
  wire __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__3_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__4_1_valid_and_ready_txfr;
  wire __systolic__result_chans__3_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__3_1_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__3_1_load_en;
  wire systolic__vert_chans__3_1_load_en;
  wire or_74559;
  wire or_74561;
  wire or_74563;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_65869;
  wire [7:0] one_hot_sel_65966;
  wire or_65967;
  wire [22:0] one_hot_sel_65975;
  wire or_65976;
  wire [1:0] one_hot_sel_65981;
  wire or_65982;
  wire __systolic__hor_chans__3_2_not_stage_load;
  wire __systolic__hor_chans__3_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_1_not_stage_load;
  wire __systolic__result_chans__3_1_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_65563 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_65563;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_65578 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_65580 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1771_3_case_1 = 2'h0;
  assign add_65589 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1771_3_case_1, shrl_65578[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_65563 | shll_65580[26:3]) != 24'h00_0000;
  assign concat_65595 = {add_65589[24:0], shrl_65578[2:1], shrl_65578[0] | sticky__2};
  assign accumbs_fraction = add_65589[25] ? -concat_65595 : concat_65595;
  assign carry_bit = accumbs_fraction[27];
  assign nor_65636 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_65631 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_65632 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_65622 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_65623 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_65665 = ~(carry_bit | accumbs_fraction[26]) & nor_65636;
  assign nor_65667 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_65669 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_65662 = nor_65632 & nor_65631;
  assign nor_65658 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_65654 = nor_65623 & nor_65622;
  assign nor_65655 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_65649 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_65651 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_65694 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_65667;
  assign nor_65675 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_65676 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_65715 = and_65665 & and_65694;
  assign priority_sel_65716 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_65636), and_65665}, {nor_65669, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_65669});
  assign and_65711 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_65658;
  assign and_65707 = nor_65651 & nor_65649;
  assign and_65703 = nor_65676 & nor_65675;
  assign concat_65729 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_65667) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_65726 = {and_65662, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_65631), and_65662}, unexpand_for_next_value_1771_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_65632, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_65725 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_65658) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_65723 = {and_65654, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_65622), and_65654}, {nor_65655, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_65623, nor_65655})};
  assign concat_65722 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_65649) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_65651, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_65734 = and_65662 & and_65711;
  assign concat_65738 = {1'h1, and_65703, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_65675), and_65703}, unexpand_for_next_value_1771_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_65676, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74433 = ~(~and_65715 | and_65734) ? {1'h1, ~(~and_65662 | and_65711) ? concat_65725 : concat_65726} : {and_65715, priority_sel_3b_2way({~(~and_65665 | and_65694), and_65715}, {priority_sel_65716, 1'h0}, concat_65729, {1'h0, priority_sel_65716})};
  assign concat_65746 = {1'h1, and_65654 & and_65707 ? concat_65738 : {1'h0, ~(~and_65654 | and_65707) ? concat_65722 : concat_65723}};
  assign leading_zeroes = and_65715 & and_65734 ? concat_65746 : {1'h0, sel_74433};
  assign a_bexp__1 = __systolic__hor_chans__3_1_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__3_1_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__3_1_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__3_1_reg[22:0];
  assign eq_65453 = a_bexp__1 == 8'h00;
  assign eq_65454 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_65457 = ~(eq_65453 | eq_65454);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_65460 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_65462 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_65460 & {48{nor_65457}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_65462} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_65457}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_65764 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_65764[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_65774 = {1'h0, accum_bexp} + 9'h001;
  assign sub_65775 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_65589 == 26'h000_0000 & ~(shrl_65578[1] | shrl_65578[2]) & ~(shrl_65578[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_65774};
  assign wide_exponent_associative_element__1 = {{4{sub_65775[5]}}, sub_65775};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_65485 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__3_1_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__3_1_not_has_been_sent = ~__systolic__result_chans__3_1_has_been_sent_reg;
  assign systolic__result_chans__3_1_valid_inv = ~__systolic__result_chans__3_1_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_65485;
  assign __systolic__result_chans__3_1_valid_and_not_has_been_sent = __systolic__result_chans__3_1_vld_buf & __systolic__result_chans__3_1_not_has_been_sent;
  assign systolic__result_chans__3_1_valid_load_en = systolic__result_chans__3_1_rdy | systolic__result_chans__3_1_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_65485 | ~fraction__4[23]);
  assign systolic__result_chans__3_1_load_en = __systolic__result_chans__3_1_valid_and_not_has_been_sent & systolic__result_chans__3_1_valid_load_en;
  assign eq_65784 = accum_bexp == high_exp;
  assign eq_65785 = accum_fraction == 23'h00_0000;
  assign eq_65786 = prod_bexp == high_exp;
  assign eq_65787 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74731 = ~p1_should_output | systolic__result_chans__3_1_load_en | __systolic__result_chans__3_1_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74731;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_65496 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_65784 | ~eq_65785 | accum_sign) | ~(~eq_65786 | ~eq_65787 | prod_sign);
  assign has_neg_inf = eq_65784 & eq_65785 & accum_sign | eq_65786 & eq_65787 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_65496 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__3_1_valid_reg & __systolic__vert_chans__3_1_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_65784 | eq_65785) | ~(~eq_65786 | eq_65787) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_65784 & eq_65785 | eq_65786 & eq_65787;
  assign and_reduce_65815 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__3_2_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__3_2_not_has_been_sent = ~__systolic__hor_chans__3_2_has_been_sent_reg;
  assign systolic__hor_chans__3_2_valid_inv = ~__systolic__hor_chans__3_2_valid_reg;
  assign __systolic__vert_chans__4_1_not_has_been_sent = ~__systolic__vert_chans__4_1_has_been_sent_reg;
  assign systolic__vert_chans__4_1_valid_inv = ~__systolic__vert_chans__4_1_valid_reg;
  assign or_65818 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_65815;
  assign or_65821 = is_operand_inf | wide_exponent__2[8] | and_reduce_65815 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__3_2_valid_and_not_has_been_sent = __systolic__hor_chans__3_2_vld_buf & __systolic__hor_chans__3_2_not_has_been_sent;
  assign systolic__hor_chans__3_2_valid_load_en = systolic__hor_chans__3_2_rdy | systolic__hor_chans__3_2_valid_inv;
  assign __systolic__vert_chans__4_1_valid_and_not_has_been_sent = __systolic__hor_chans__3_2_vld_buf & __systolic__vert_chans__4_1_not_has_been_sent;
  assign systolic__vert_chans__4_1_valid_load_en = systolic__vert_chans__4_1_rdy | systolic__vert_chans__4_1_valid_inv;
  assign and_65823 = ~should_output & ~is_result_nan__1;
  assign eq_65499 = a_bexp__1 == high_exp;
  assign eq_65500 = a_fraction__1 == 23'h00_0000;
  assign eq_65501 = b_bexp__2 == high_exp;
  assign eq_65502 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__3_2_load_en = __systolic__hor_chans__3_2_valid_and_not_has_been_sent & systolic__hor_chans__3_2_valid_load_en;
  assign systolic__vert_chans__4_1_load_en = __systolic__vert_chans__4_1_valid_and_not_has_been_sent & systolic__vert_chans__4_1_valid_load_en;
  assign and_65830 = ~should_output & ~or_65818;
  assign and_65831 = ~should_output & or_65818;
  assign and_65832 = ~should_output & is_result_nan__1;
  assign and_65833 = and_65823 & ~or_65821;
  assign and_65834 = and_65823 & or_65821;
  assign __systolic__hor_chans__3_2_has_sent_or_is_ready = systolic__hor_chans__3_2_load_en | __systolic__hor_chans__3_2_has_been_sent_reg;
  assign __systolic__vert_chans__4_1_has_sent_or_is_ready = systolic__vert_chans__4_1_load_en | __systolic__vert_chans__4_1_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_65830, and_65831};
  assign ____state_2__next_value_predicates = {should_output, and_65832, and_65833, and_65834};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_65453 | eq_65454;
  assign has_inf_arg = eq_65499 & eq_65500 | eq_65501 & eq_65502;
  assign and_reduce_65519 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__3_2_has_sent_or_is_ready & __systolic__vert_chans__4_1_has_sent_or_is_ready;
  assign one_hot_65844 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_65845 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_65846 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_65589[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_65764, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_65499 | eq_65500) | ~(~eq_65501 | eq_65502) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__3_1_valid_inv = ~__systolic__hor_chans__3_1_valid_reg;
  assign systolic__vert_chans__3_1_valid_inv = ~__systolic__vert_chans__3_1_valid_reg;
  assign shrl_65835 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__3_1_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__3_1_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_65961 = should_output & p1_data_enable;
  assign and_65962 = and_65830 & p1_data_enable;
  assign and_65963 = and_65831 & p1_data_enable;
  assign and_65970 = and_65832 & p1_data_enable;
  assign and_65971 = and_65833 & p1_data_enable;
  assign and_65972 = and_65834 & p1_data_enable;
  assign and_65978 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__3_1_valid_load_en = p0_data_enable | systolic__hor_chans__3_1_valid_inv;
  assign systolic__vert_chans__3_1_valid_load_en = p0_data_enable | systolic__vert_chans__3_1_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_65844[2] & and_65830 == one_hot_65844[1] & and_65831 == one_hot_65844[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_65845[3] & and_65832 == one_hot_65845[2] & and_65833 == one_hot_65845[1] & and_65834 == one_hot_65845[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_65846[1] & should_output == one_hot_65846[0];
  assign result_fraction__1 = shrl_65835[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_65519 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_65519 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_65965 = {and_65961, and_65962, and_65963};
  assign concat_65974 = {and_65961, and_65970, and_65971, and_65972};
  assign concat_65980 = {and_65978, and_65961};
  assign unexpand_for_next_value_1771_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_2_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__3_2_valid_and_ready_txfr = __systolic__hor_chans__3_2_valid_and_not_has_been_sent & systolic__hor_chans__3_2_load_en;
  assign __systolic__vert_chans__4_1_valid_and_ready_txfr = __systolic__vert_chans__4_1_valid_and_not_has_been_sent & systolic__vert_chans__4_1_load_en;
  assign __systolic__result_chans__3_1_valid_and_all_active_outputs_ready = __systolic__result_chans__3_1_vld_buf & or_74731;
  assign __systolic__result_chans__3_1_valid_and_ready_txfr = __systolic__result_chans__3_1_valid_and_not_has_been_sent & systolic__result_chans__3_1_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__3_1_load_en = systolic__hor_chans__3_1_vld & systolic__hor_chans__3_1_valid_load_en;
  assign systolic__vert_chans__3_1_load_en = systolic__vert_chans__3_1_vld & systolic__vert_chans__3_1_valid_load_en;
  assign or_74559 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74561 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74563 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_65821}};
  assign result_exponent__2 = or_65818 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_65869 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_65966 = high_exp & {8{concat_65965[0]}} | wide_exponent__2[7:0] & {8{concat_65965[1]}} | 8'h00 & {8{concat_65965[2]}};
  assign or_65967 = and_65961 | and_65962 | and_65963;
  assign one_hot_sel_65975 = 23'h00_0000 & {23{concat_65974[0]}} | result_fraction__1 & {23{concat_65974[1]}} | nan_fraction & {23{concat_65974[2]}} | 23'h00_0000 & {23{concat_65974[3]}};
  assign or_65976 = and_65961 | and_65970 | and_65971 | and_65972;
  assign one_hot_sel_65981 = unexpand_for_next_value_1771_3_case_1 & {2{concat_65980[0]}} | unexpand_for_next_value_1771_3_case_0 & {2{concat_65980[1]}};
  assign or_65982 = and_65978 | and_65961;
  assign __systolic__hor_chans__3_2_not_stage_load = ~__systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_2_has_been_sent_reg_load_en = __systolic__hor_chans__3_2_valid_and_ready_txfr | __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_1_has_been_sent_reg_load_en = __systolic__vert_chans__4_1_valid_and_ready_txfr | __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_1_not_stage_load = ~__systolic__result_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_1_has_been_sent_reg_load_en = __systolic__result_chans__3_1_valid_and_ready_txfr | __systolic__result_chans__3_1_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__3_2_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__4_1_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__3_1_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__3_1_reg <= __systolic__hor_chans__3_1_reg_init;
      __systolic__hor_chans__3_1_valid_reg <= 1'h0;
      __systolic__vert_chans__3_1_reg <= __systolic__vert_chans__3_1_reg_init;
      __systolic__vert_chans__3_1_valid_reg <= 1'h0;
      __systolic__hor_chans__3_2_reg <= __systolic__hor_chans__3_2_reg_init;
      __systolic__hor_chans__3_2_valid_reg <= 1'h0;
      __systolic__vert_chans__4_1_reg <= __systolic__vert_chans__4_1_reg_init;
      __systolic__vert_chans__4_1_valid_reg <= 1'h0;
      __systolic__result_chans__3_1_reg <= __systolic__result_chans__3_1_reg_init;
      __systolic__result_chans__3_1_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_65967 ? one_hot_sel_65966 : ____state_1;
      ____state_2 <= or_65976 ? one_hot_sel_65975 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_65869 : ____state_0;
      ____state_3 <= or_65982 ? one_hot_sel_65981 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__3_2_has_been_sent_reg <= __systolic__hor_chans__3_2_has_been_sent_reg_load_en ? __systolic__hor_chans__3_2_not_stage_load : __systolic__hor_chans__3_2_has_been_sent_reg;
      __systolic__vert_chans__4_1_has_been_sent_reg <= __systolic__vert_chans__4_1_has_been_sent_reg_load_en ? __systolic__hor_chans__3_2_not_stage_load : __systolic__vert_chans__4_1_has_been_sent_reg;
      __systolic__result_chans__3_1_has_been_sent_reg <= __systolic__result_chans__3_1_has_been_sent_reg_load_en ? __systolic__result_chans__3_1_not_stage_load : __systolic__result_chans__3_1_has_been_sent_reg;
      __systolic__hor_chans__3_1_reg <= systolic__hor_chans__3_1_load_en ? systolic__hor_chans__3_1 : __systolic__hor_chans__3_1_reg;
      __systolic__hor_chans__3_1_valid_reg <= systolic__hor_chans__3_1_valid_load_en ? systolic__hor_chans__3_1_vld : __systolic__hor_chans__3_1_valid_reg;
      __systolic__vert_chans__3_1_reg <= systolic__vert_chans__3_1_load_en ? systolic__vert_chans__3_1 : __systolic__vert_chans__3_1_reg;
      __systolic__vert_chans__3_1_valid_reg <= systolic__vert_chans__3_1_valid_load_en ? systolic__vert_chans__3_1_vld : __systolic__vert_chans__3_1_valid_reg;
      __systolic__hor_chans__3_2_reg <= systolic__hor_chans__3_2_load_en ? __systolic__hor_chans__3_1_reg : __systolic__hor_chans__3_2_reg;
      __systolic__hor_chans__3_2_valid_reg <= systolic__hor_chans__3_2_valid_load_en ? __systolic__hor_chans__3_2_valid_and_not_has_been_sent : __systolic__hor_chans__3_2_valid_reg;
      __systolic__vert_chans__4_1_reg <= systolic__vert_chans__4_1_load_en ? __systolic__vert_chans__3_1_reg : __systolic__vert_chans__4_1_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74559))) or_74559) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74561))) or_74561) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74563))) or_74563) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__3_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__3_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__3_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__4_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__3_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_66250;
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
  wire [26:0] shrl_66265;
  wire [27:0] shll_66267;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1802_3_case_1;
  wire [25:0] add_66276;
  wire sticky__2;
  wire [27:0] concat_66282;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_66323;
  wire nor_66318;
  wire nor_66319;
  wire nor_66309;
  wire nor_66310;
  wire and_66352;
  wire nor_66354;
  wire nor_66356;
  wire and_66349;
  wire nor_66345;
  wire and_66341;
  wire nor_66342;
  wire nor_66336;
  wire nor_66338;
  wire and_66381;
  wire nor_66362;
  wire nor_66363;
  wire and_66402;
  wire [1:0] priority_sel_66403;
  wire and_66398;
  wire and_66394;
  wire and_66390;
  wire [2:0] concat_66416;
  wire [2:0] concat_66413;
  wire [2:0] concat_66412;
  wire [2:0] concat_66410;
  wire [2:0] concat_66409;
  wire and_66421;
  wire [3:0] concat_66425;
  wire [3:0] sel_74441;
  wire [4:0] concat_66433;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_66140;
  wire eq_66141;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_66144;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_66147;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_66149;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_66451;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_66461;
  wire [5:0] sub_66462;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_66172;
  wire __systolic__result_chans__3_2_vld_buf;
  wire __systolic__result_chans__3_2_not_has_been_sent;
  wire systolic__result_chans__3_2_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__3_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_2_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__3_2_load_en;
  wire eq_66471;
  wire eq_66472;
  wire eq_66473;
  wire eq_66474;
  wire [23:0] fraction__6;
  wire or_74749;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_66183;
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
  wire and_reduce_66502;
  wire should_output;
  wire __systolic__hor_chans__3_3_vld_buf;
  wire __systolic__hor_chans__3_3_not_has_been_sent;
  wire systolic__hor_chans__3_3_valid_inv;
  wire __systolic__vert_chans__4_2_not_has_been_sent;
  wire systolic__vert_chans__4_2_valid_inv;
  wire or_66505;
  wire or_66508;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__3_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_3_valid_load_en;
  wire __systolic__vert_chans__4_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_2_valid_load_en;
  wire and_66510;
  wire eq_66186;
  wire eq_66187;
  wire eq_66188;
  wire eq_66189;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__3_3_load_en;
  wire systolic__vert_chans__4_2_load_en;
  wire and_66517;
  wire and_66518;
  wire and_66519;
  wire and_66520;
  wire and_66521;
  wire __systolic__hor_chans__3_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_2_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_66206;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_66531;
  wire [4:0] one_hot_66532;
  wire [2:0] one_hot_66533;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__3_2_valid_inv;
  wire systolic__vert_chans__3_2_valid_inv;
  wire [27:0] shrl_66522;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_66648;
  wire and_66649;
  wire and_66650;
  wire and_66657;
  wire and_66658;
  wire and_66659;
  wire and_66665;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__3_2_valid_load_en;
  wire systolic__vert_chans__3_2_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_66652;
  wire [3:0] concat_66661;
  wire [1:0] concat_66667;
  wire [1:0] unexpand_for_next_value_1802_3_case_0;
  wire __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__3_3_valid_and_ready_txfr;
  wire __systolic__vert_chans__4_2_valid_and_ready_txfr;
  wire __systolic__result_chans__3_2_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__3_2_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__3_2_load_en;
  wire systolic__vert_chans__3_2_load_en;
  wire or_74565;
  wire or_74567;
  wire or_74569;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_66556;
  wire [7:0] one_hot_sel_66653;
  wire or_66654;
  wire [22:0] one_hot_sel_66662;
  wire or_66663;
  wire [1:0] one_hot_sel_66668;
  wire or_66669;
  wire __systolic__hor_chans__3_3_not_stage_load;
  wire __systolic__hor_chans__3_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_2_not_stage_load;
  wire __systolic__result_chans__3_2_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_66250 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_66250;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_66265 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_66267 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1802_3_case_1 = 2'h0;
  assign add_66276 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1802_3_case_1, shrl_66265[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_66250 | shll_66267[26:3]) != 24'h00_0000;
  assign concat_66282 = {add_66276[24:0], shrl_66265[2:1], shrl_66265[0] | sticky__2};
  assign accumbs_fraction = add_66276[25] ? -concat_66282 : concat_66282;
  assign carry_bit = accumbs_fraction[27];
  assign nor_66323 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_66318 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_66319 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_66309 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_66310 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_66352 = ~(carry_bit | accumbs_fraction[26]) & nor_66323;
  assign nor_66354 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_66356 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_66349 = nor_66319 & nor_66318;
  assign nor_66345 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_66341 = nor_66310 & nor_66309;
  assign nor_66342 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_66336 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_66338 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_66381 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_66354;
  assign nor_66362 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_66363 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_66402 = and_66352 & and_66381;
  assign priority_sel_66403 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_66323), and_66352}, {nor_66356, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_66356});
  assign and_66398 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_66345;
  assign and_66394 = nor_66338 & nor_66336;
  assign and_66390 = nor_66363 & nor_66362;
  assign concat_66416 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_66354) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_66413 = {and_66349, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_66318), and_66349}, unexpand_for_next_value_1802_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_66319, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_66412 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_66345) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_66410 = {and_66341, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_66309), and_66341}, {nor_66342, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_66310, nor_66342})};
  assign concat_66409 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_66336) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_66338, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_66421 = and_66349 & and_66398;
  assign concat_66425 = {1'h1, and_66390, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_66362), and_66390}, unexpand_for_next_value_1802_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_66363, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74441 = ~(~and_66402 | and_66421) ? {1'h1, ~(~and_66349 | and_66398) ? concat_66412 : concat_66413} : {and_66402, priority_sel_3b_2way({~(~and_66352 | and_66381), and_66402}, {priority_sel_66403, 1'h0}, concat_66416, {1'h0, priority_sel_66403})};
  assign concat_66433 = {1'h1, and_66341 & and_66394 ? concat_66425 : {1'h0, ~(~and_66341 | and_66394) ? concat_66409 : concat_66410}};
  assign leading_zeroes = and_66402 & and_66421 ? concat_66433 : {1'h0, sel_74441};
  assign a_bexp__1 = __systolic__hor_chans__3_2_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__3_2_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__3_2_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__3_2_reg[22:0];
  assign eq_66140 = a_bexp__1 == 8'h00;
  assign eq_66141 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_66144 = ~(eq_66140 | eq_66141);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_66147 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_66149 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_66147 & {48{nor_66144}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_66149} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_66144}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_66451 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_66451[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_66461 = {1'h0, accum_bexp} + 9'h001;
  assign sub_66462 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_66276 == 26'h000_0000 & ~(shrl_66265[1] | shrl_66265[2]) & ~(shrl_66265[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_66461};
  assign wide_exponent_associative_element__1 = {{4{sub_66462[5]}}, sub_66462};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_66172 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__3_2_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__3_2_not_has_been_sent = ~__systolic__result_chans__3_2_has_been_sent_reg;
  assign systolic__result_chans__3_2_valid_inv = ~__systolic__result_chans__3_2_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_66172;
  assign __systolic__result_chans__3_2_valid_and_not_has_been_sent = __systolic__result_chans__3_2_vld_buf & __systolic__result_chans__3_2_not_has_been_sent;
  assign systolic__result_chans__3_2_valid_load_en = systolic__result_chans__3_2_rdy | systolic__result_chans__3_2_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_66172 | ~fraction__4[23]);
  assign systolic__result_chans__3_2_load_en = __systolic__result_chans__3_2_valid_and_not_has_been_sent & systolic__result_chans__3_2_valid_load_en;
  assign eq_66471 = accum_bexp == high_exp;
  assign eq_66472 = accum_fraction == 23'h00_0000;
  assign eq_66473 = prod_bexp == high_exp;
  assign eq_66474 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74749 = ~p1_should_output | systolic__result_chans__3_2_load_en | __systolic__result_chans__3_2_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74749;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_66183 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_66471 | ~eq_66472 | accum_sign) | ~(~eq_66473 | ~eq_66474 | prod_sign);
  assign has_neg_inf = eq_66471 & eq_66472 & accum_sign | eq_66473 & eq_66474 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_66183 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__3_2_valid_reg & __systolic__vert_chans__3_2_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_66471 | eq_66472) | ~(~eq_66473 | eq_66474) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_66471 & eq_66472 | eq_66473 & eq_66474;
  assign and_reduce_66502 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__3_3_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__3_3_not_has_been_sent = ~__systolic__hor_chans__3_3_has_been_sent_reg;
  assign systolic__hor_chans__3_3_valid_inv = ~__systolic__hor_chans__3_3_valid_reg;
  assign __systolic__vert_chans__4_2_not_has_been_sent = ~__systolic__vert_chans__4_2_has_been_sent_reg;
  assign systolic__vert_chans__4_2_valid_inv = ~__systolic__vert_chans__4_2_valid_reg;
  assign or_66505 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_66502;
  assign or_66508 = is_operand_inf | wide_exponent__2[8] | and_reduce_66502 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__3_3_valid_and_not_has_been_sent = __systolic__hor_chans__3_3_vld_buf & __systolic__hor_chans__3_3_not_has_been_sent;
  assign systolic__hor_chans__3_3_valid_load_en = systolic__hor_chans__3_3_rdy | systolic__hor_chans__3_3_valid_inv;
  assign __systolic__vert_chans__4_2_valid_and_not_has_been_sent = __systolic__hor_chans__3_3_vld_buf & __systolic__vert_chans__4_2_not_has_been_sent;
  assign systolic__vert_chans__4_2_valid_load_en = systolic__vert_chans__4_2_rdy | systolic__vert_chans__4_2_valid_inv;
  assign and_66510 = ~should_output & ~is_result_nan__1;
  assign eq_66186 = a_bexp__1 == high_exp;
  assign eq_66187 = a_fraction__1 == 23'h00_0000;
  assign eq_66188 = b_bexp__2 == high_exp;
  assign eq_66189 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__3_3_load_en = __systolic__hor_chans__3_3_valid_and_not_has_been_sent & systolic__hor_chans__3_3_valid_load_en;
  assign systolic__vert_chans__4_2_load_en = __systolic__vert_chans__4_2_valid_and_not_has_been_sent & systolic__vert_chans__4_2_valid_load_en;
  assign and_66517 = ~should_output & ~or_66505;
  assign and_66518 = ~should_output & or_66505;
  assign and_66519 = ~should_output & is_result_nan__1;
  assign and_66520 = and_66510 & ~or_66508;
  assign and_66521 = and_66510 & or_66508;
  assign __systolic__hor_chans__3_3_has_sent_or_is_ready = systolic__hor_chans__3_3_load_en | __systolic__hor_chans__3_3_has_been_sent_reg;
  assign __systolic__vert_chans__4_2_has_sent_or_is_ready = systolic__vert_chans__4_2_load_en | __systolic__vert_chans__4_2_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_66517, and_66518};
  assign ____state_2__next_value_predicates = {should_output, and_66519, and_66520, and_66521};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_66140 | eq_66141;
  assign has_inf_arg = eq_66186 & eq_66187 | eq_66188 & eq_66189;
  assign and_reduce_66206 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__3_3_has_sent_or_is_ready & __systolic__vert_chans__4_2_has_sent_or_is_ready;
  assign one_hot_66531 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_66532 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_66533 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_66276[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_66451, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_66186 | eq_66187) | ~(~eq_66188 | eq_66189) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__3_2_valid_inv = ~__systolic__hor_chans__3_2_valid_reg;
  assign systolic__vert_chans__3_2_valid_inv = ~__systolic__vert_chans__3_2_valid_reg;
  assign shrl_66522 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__3_2_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__3_2_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_66648 = should_output & p1_data_enable;
  assign and_66649 = and_66517 & p1_data_enable;
  assign and_66650 = and_66518 & p1_data_enable;
  assign and_66657 = and_66519 & p1_data_enable;
  assign and_66658 = and_66520 & p1_data_enable;
  assign and_66659 = and_66521 & p1_data_enable;
  assign and_66665 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__3_2_valid_load_en = p0_data_enable | systolic__hor_chans__3_2_valid_inv;
  assign systolic__vert_chans__3_2_valid_load_en = p0_data_enable | systolic__vert_chans__3_2_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_66531[2] & and_66517 == one_hot_66531[1] & and_66518 == one_hot_66531[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_66532[3] & and_66519 == one_hot_66532[2] & and_66520 == one_hot_66532[1] & and_66521 == one_hot_66532[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_66533[1] & should_output == one_hot_66533[0];
  assign result_fraction__1 = shrl_66522[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_66206 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_66206 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_66652 = {and_66648, and_66649, and_66650};
  assign concat_66661 = {and_66648, and_66657, and_66658, and_66659};
  assign concat_66667 = {and_66665, and_66648};
  assign unexpand_for_next_value_1802_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_3_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__3_3_valid_and_ready_txfr = __systolic__hor_chans__3_3_valid_and_not_has_been_sent & systolic__hor_chans__3_3_load_en;
  assign __systolic__vert_chans__4_2_valid_and_ready_txfr = __systolic__vert_chans__4_2_valid_and_not_has_been_sent & systolic__vert_chans__4_2_load_en;
  assign __systolic__result_chans__3_2_valid_and_all_active_outputs_ready = __systolic__result_chans__3_2_vld_buf & or_74749;
  assign __systolic__result_chans__3_2_valid_and_ready_txfr = __systolic__result_chans__3_2_valid_and_not_has_been_sent & systolic__result_chans__3_2_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__3_2_load_en = systolic__hor_chans__3_2_vld & systolic__hor_chans__3_2_valid_load_en;
  assign systolic__vert_chans__3_2_load_en = systolic__vert_chans__3_2_vld & systolic__vert_chans__3_2_valid_load_en;
  assign or_74565 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74567 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74569 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_66508}};
  assign result_exponent__2 = or_66505 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_66556 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_66653 = high_exp & {8{concat_66652[0]}} | wide_exponent__2[7:0] & {8{concat_66652[1]}} | 8'h00 & {8{concat_66652[2]}};
  assign or_66654 = and_66648 | and_66649 | and_66650;
  assign one_hot_sel_66662 = 23'h00_0000 & {23{concat_66661[0]}} | result_fraction__1 & {23{concat_66661[1]}} | nan_fraction & {23{concat_66661[2]}} | 23'h00_0000 & {23{concat_66661[3]}};
  assign or_66663 = and_66648 | and_66657 | and_66658 | and_66659;
  assign one_hot_sel_66668 = unexpand_for_next_value_1802_3_case_1 & {2{concat_66667[0]}} | unexpand_for_next_value_1802_3_case_0 & {2{concat_66667[1]}};
  assign or_66669 = and_66665 | and_66648;
  assign __systolic__hor_chans__3_3_not_stage_load = ~__systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_3_has_been_sent_reg_load_en = __systolic__hor_chans__3_3_valid_and_ready_txfr | __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_2_has_been_sent_reg_load_en = __systolic__vert_chans__4_2_valid_and_ready_txfr | __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_2_not_stage_load = ~__systolic__result_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_2_has_been_sent_reg_load_en = __systolic__result_chans__3_2_valid_and_ready_txfr | __systolic__result_chans__3_2_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__3_3_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__4_2_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__3_2_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__3_2_reg <= __systolic__hor_chans__3_2_reg_init;
      __systolic__hor_chans__3_2_valid_reg <= 1'h0;
      __systolic__vert_chans__3_2_reg <= __systolic__vert_chans__3_2_reg_init;
      __systolic__vert_chans__3_2_valid_reg <= 1'h0;
      __systolic__hor_chans__3_3_reg <= __systolic__hor_chans__3_3_reg_init;
      __systolic__hor_chans__3_3_valid_reg <= 1'h0;
      __systolic__vert_chans__4_2_reg <= __systolic__vert_chans__4_2_reg_init;
      __systolic__vert_chans__4_2_valid_reg <= 1'h0;
      __systolic__result_chans__3_2_reg <= __systolic__result_chans__3_2_reg_init;
      __systolic__result_chans__3_2_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_66654 ? one_hot_sel_66653 : ____state_1;
      ____state_2 <= or_66663 ? one_hot_sel_66662 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_66556 : ____state_0;
      ____state_3 <= or_66669 ? one_hot_sel_66668 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__3_3_has_been_sent_reg <= __systolic__hor_chans__3_3_has_been_sent_reg_load_en ? __systolic__hor_chans__3_3_not_stage_load : __systolic__hor_chans__3_3_has_been_sent_reg;
      __systolic__vert_chans__4_2_has_been_sent_reg <= __systolic__vert_chans__4_2_has_been_sent_reg_load_en ? __systolic__hor_chans__3_3_not_stage_load : __systolic__vert_chans__4_2_has_been_sent_reg;
      __systolic__result_chans__3_2_has_been_sent_reg <= __systolic__result_chans__3_2_has_been_sent_reg_load_en ? __systolic__result_chans__3_2_not_stage_load : __systolic__result_chans__3_2_has_been_sent_reg;
      __systolic__hor_chans__3_2_reg <= systolic__hor_chans__3_2_load_en ? systolic__hor_chans__3_2 : __systolic__hor_chans__3_2_reg;
      __systolic__hor_chans__3_2_valid_reg <= systolic__hor_chans__3_2_valid_load_en ? systolic__hor_chans__3_2_vld : __systolic__hor_chans__3_2_valid_reg;
      __systolic__vert_chans__3_2_reg <= systolic__vert_chans__3_2_load_en ? systolic__vert_chans__3_2 : __systolic__vert_chans__3_2_reg;
      __systolic__vert_chans__3_2_valid_reg <= systolic__vert_chans__3_2_valid_load_en ? systolic__vert_chans__3_2_vld : __systolic__vert_chans__3_2_valid_reg;
      __systolic__hor_chans__3_3_reg <= systolic__hor_chans__3_3_load_en ? __systolic__hor_chans__3_2_reg : __systolic__hor_chans__3_3_reg;
      __systolic__hor_chans__3_3_valid_reg <= systolic__hor_chans__3_3_valid_load_en ? __systolic__hor_chans__3_3_valid_and_not_has_been_sent : __systolic__hor_chans__3_3_valid_reg;
      __systolic__vert_chans__4_2_reg <= systolic__vert_chans__4_2_load_en ? __systolic__vert_chans__3_2_reg : __systolic__vert_chans__4_2_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74565))) or_74565) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74567))) or_74567) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74569))) or_74569) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__3_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__3_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__3_4_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__4_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__3_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_66937;
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
  wire [26:0] shrl_66952;
  wire [27:0] shll_66954;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1833_3_case_1;
  wire [25:0] add_66963;
  wire sticky__2;
  wire [27:0] concat_66969;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_67010;
  wire nor_67005;
  wire nor_67006;
  wire nor_66996;
  wire nor_66997;
  wire and_67039;
  wire nor_67041;
  wire nor_67043;
  wire and_67036;
  wire nor_67032;
  wire and_67028;
  wire nor_67029;
  wire nor_67023;
  wire nor_67025;
  wire and_67068;
  wire nor_67049;
  wire nor_67050;
  wire and_67089;
  wire [1:0] priority_sel_67090;
  wire and_67085;
  wire and_67081;
  wire and_67077;
  wire [2:0] concat_67103;
  wire [2:0] concat_67100;
  wire [2:0] concat_67099;
  wire [2:0] concat_67097;
  wire [2:0] concat_67096;
  wire and_67108;
  wire [3:0] concat_67112;
  wire [3:0] sel_74449;
  wire [4:0] concat_67120;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_66827;
  wire eq_66828;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_66831;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_66834;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_66836;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_67138;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_67148;
  wire [5:0] sub_67149;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_66859;
  wire __systolic__result_chans__3_3_vld_buf;
  wire __systolic__result_chans__3_3_not_has_been_sent;
  wire systolic__result_chans__3_3_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__3_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_3_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__3_3_load_en;
  wire eq_67158;
  wire eq_67159;
  wire eq_67160;
  wire eq_67161;
  wire [23:0] fraction__6;
  wire or_74767;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_66870;
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
  wire and_reduce_67189;
  wire should_output;
  wire __systolic__hor_chans__3_4_vld_buf;
  wire __systolic__hor_chans__3_4_not_has_been_sent;
  wire systolic__hor_chans__3_4_valid_inv;
  wire __systolic__vert_chans__4_3_not_has_been_sent;
  wire systolic__vert_chans__4_3_valid_inv;
  wire or_67192;
  wire or_67195;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__3_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_4_valid_load_en;
  wire __systolic__vert_chans__4_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_3_valid_load_en;
  wire and_67197;
  wire eq_66873;
  wire eq_66874;
  wire eq_66875;
  wire eq_66876;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__3_4_load_en;
  wire systolic__vert_chans__4_3_load_en;
  wire and_67204;
  wire and_67205;
  wire and_67206;
  wire and_67207;
  wire and_67208;
  wire __systolic__hor_chans__3_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_3_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_66893;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_67218;
  wire [4:0] one_hot_67219;
  wire [2:0] one_hot_67220;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__3_3_valid_inv;
  wire systolic__vert_chans__3_3_valid_inv;
  wire [27:0] shrl_67209;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_67335;
  wire and_67336;
  wire and_67337;
  wire and_67344;
  wire and_67345;
  wire and_67346;
  wire and_67352;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__3_3_valid_load_en;
  wire systolic__vert_chans__3_3_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_67339;
  wire [3:0] concat_67348;
  wire [1:0] concat_67354;
  wire [1:0] unexpand_for_next_value_1833_3_case_0;
  wire __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__3_4_valid_and_ready_txfr;
  wire __systolic__vert_chans__4_3_valid_and_ready_txfr;
  wire __systolic__result_chans__3_3_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__3_3_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__3_3_load_en;
  wire systolic__vert_chans__3_3_load_en;
  wire or_74571;
  wire or_74573;
  wire or_74575;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_67243;
  wire [7:0] one_hot_sel_67340;
  wire or_67341;
  wire [22:0] one_hot_sel_67349;
  wire or_67350;
  wire [1:0] one_hot_sel_67355;
  wire or_67356;
  wire __systolic__hor_chans__3_4_not_stage_load;
  wire __systolic__hor_chans__3_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_3_not_stage_load;
  wire __systolic__result_chans__3_3_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_66937 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_66937;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_66952 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_66954 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1833_3_case_1 = 2'h0;
  assign add_66963 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1833_3_case_1, shrl_66952[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_66937 | shll_66954[26:3]) != 24'h00_0000;
  assign concat_66969 = {add_66963[24:0], shrl_66952[2:1], shrl_66952[0] | sticky__2};
  assign accumbs_fraction = add_66963[25] ? -concat_66969 : concat_66969;
  assign carry_bit = accumbs_fraction[27];
  assign nor_67010 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_67005 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_67006 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_66996 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_66997 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_67039 = ~(carry_bit | accumbs_fraction[26]) & nor_67010;
  assign nor_67041 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_67043 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_67036 = nor_67006 & nor_67005;
  assign nor_67032 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_67028 = nor_66997 & nor_66996;
  assign nor_67029 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_67023 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_67025 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_67068 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_67041;
  assign nor_67049 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_67050 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_67089 = and_67039 & and_67068;
  assign priority_sel_67090 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_67010), and_67039}, {nor_67043, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_67043});
  assign and_67085 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_67032;
  assign and_67081 = nor_67025 & nor_67023;
  assign and_67077 = nor_67050 & nor_67049;
  assign concat_67103 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_67041) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_67100 = {and_67036, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_67005), and_67036}, unexpand_for_next_value_1833_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_67006, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_67099 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_67032) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_67097 = {and_67028, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_66996), and_67028}, {nor_67029, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_66997, nor_67029})};
  assign concat_67096 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_67023) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_67025, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_67108 = and_67036 & and_67085;
  assign concat_67112 = {1'h1, and_67077, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_67049), and_67077}, unexpand_for_next_value_1833_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_67050, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74449 = ~(~and_67089 | and_67108) ? {1'h1, ~(~and_67036 | and_67085) ? concat_67099 : concat_67100} : {and_67089, priority_sel_3b_2way({~(~and_67039 | and_67068), and_67089}, {priority_sel_67090, 1'h0}, concat_67103, {1'h0, priority_sel_67090})};
  assign concat_67120 = {1'h1, and_67028 & and_67081 ? concat_67112 : {1'h0, ~(~and_67028 | and_67081) ? concat_67096 : concat_67097}};
  assign leading_zeroes = and_67089 & and_67108 ? concat_67120 : {1'h0, sel_74449};
  assign a_bexp__1 = __systolic__hor_chans__3_3_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__3_3_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__3_3_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__3_3_reg[22:0];
  assign eq_66827 = a_bexp__1 == 8'h00;
  assign eq_66828 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_66831 = ~(eq_66827 | eq_66828);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_66834 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_66836 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_66834 & {48{nor_66831}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_66836} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_66831}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_67138 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_67138[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_67148 = {1'h0, accum_bexp} + 9'h001;
  assign sub_67149 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_66963 == 26'h000_0000 & ~(shrl_66952[1] | shrl_66952[2]) & ~(shrl_66952[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_67148};
  assign wide_exponent_associative_element__1 = {{4{sub_67149[5]}}, sub_67149};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_66859 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__3_3_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__3_3_not_has_been_sent = ~__systolic__result_chans__3_3_has_been_sent_reg;
  assign systolic__result_chans__3_3_valid_inv = ~__systolic__result_chans__3_3_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_66859;
  assign __systolic__result_chans__3_3_valid_and_not_has_been_sent = __systolic__result_chans__3_3_vld_buf & __systolic__result_chans__3_3_not_has_been_sent;
  assign systolic__result_chans__3_3_valid_load_en = systolic__result_chans__3_3_rdy | systolic__result_chans__3_3_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_66859 | ~fraction__4[23]);
  assign systolic__result_chans__3_3_load_en = __systolic__result_chans__3_3_valid_and_not_has_been_sent & systolic__result_chans__3_3_valid_load_en;
  assign eq_67158 = accum_bexp == high_exp;
  assign eq_67159 = accum_fraction == 23'h00_0000;
  assign eq_67160 = prod_bexp == high_exp;
  assign eq_67161 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74767 = ~p1_should_output | systolic__result_chans__3_3_load_en | __systolic__result_chans__3_3_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74767;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_66870 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_67158 | ~eq_67159 | accum_sign) | ~(~eq_67160 | ~eq_67161 | prod_sign);
  assign has_neg_inf = eq_67158 & eq_67159 & accum_sign | eq_67160 & eq_67161 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_66870 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__3_3_valid_reg & __systolic__vert_chans__3_3_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_67158 | eq_67159) | ~(~eq_67160 | eq_67161) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_67158 & eq_67159 | eq_67160 & eq_67161;
  assign and_reduce_67189 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__3_4_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__3_4_not_has_been_sent = ~__systolic__hor_chans__3_4_has_been_sent_reg;
  assign systolic__hor_chans__3_4_valid_inv = ~__systolic__hor_chans__3_4_valid_reg;
  assign __systolic__vert_chans__4_3_not_has_been_sent = ~__systolic__vert_chans__4_3_has_been_sent_reg;
  assign systolic__vert_chans__4_3_valid_inv = ~__systolic__vert_chans__4_3_valid_reg;
  assign or_67192 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_67189;
  assign or_67195 = is_operand_inf | wide_exponent__2[8] | and_reduce_67189 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__3_4_valid_and_not_has_been_sent = __systolic__hor_chans__3_4_vld_buf & __systolic__hor_chans__3_4_not_has_been_sent;
  assign systolic__hor_chans__3_4_valid_load_en = systolic__hor_chans__3_4_rdy | systolic__hor_chans__3_4_valid_inv;
  assign __systolic__vert_chans__4_3_valid_and_not_has_been_sent = __systolic__hor_chans__3_4_vld_buf & __systolic__vert_chans__4_3_not_has_been_sent;
  assign systolic__vert_chans__4_3_valid_load_en = systolic__vert_chans__4_3_rdy | systolic__vert_chans__4_3_valid_inv;
  assign and_67197 = ~should_output & ~is_result_nan__1;
  assign eq_66873 = a_bexp__1 == high_exp;
  assign eq_66874 = a_fraction__1 == 23'h00_0000;
  assign eq_66875 = b_bexp__2 == high_exp;
  assign eq_66876 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__3_4_load_en = __systolic__hor_chans__3_4_valid_and_not_has_been_sent & systolic__hor_chans__3_4_valid_load_en;
  assign systolic__vert_chans__4_3_load_en = __systolic__vert_chans__4_3_valid_and_not_has_been_sent & systolic__vert_chans__4_3_valid_load_en;
  assign and_67204 = ~should_output & ~or_67192;
  assign and_67205 = ~should_output & or_67192;
  assign and_67206 = ~should_output & is_result_nan__1;
  assign and_67207 = and_67197 & ~or_67195;
  assign and_67208 = and_67197 & or_67195;
  assign __systolic__hor_chans__3_4_has_sent_or_is_ready = systolic__hor_chans__3_4_load_en | __systolic__hor_chans__3_4_has_been_sent_reg;
  assign __systolic__vert_chans__4_3_has_sent_or_is_ready = systolic__vert_chans__4_3_load_en | __systolic__vert_chans__4_3_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_67204, and_67205};
  assign ____state_2__next_value_predicates = {should_output, and_67206, and_67207, and_67208};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_66827 | eq_66828;
  assign has_inf_arg = eq_66873 & eq_66874 | eq_66875 & eq_66876;
  assign and_reduce_66893 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__3_4_has_sent_or_is_ready & __systolic__vert_chans__4_3_has_sent_or_is_ready;
  assign one_hot_67218 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_67219 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_67220 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_66963[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_67138, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_66873 | eq_66874) | ~(~eq_66875 | eq_66876) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__3_3_valid_inv = ~__systolic__hor_chans__3_3_valid_reg;
  assign systolic__vert_chans__3_3_valid_inv = ~__systolic__vert_chans__3_3_valid_reg;
  assign shrl_67209 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__3_3_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__3_3_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_67335 = should_output & p1_data_enable;
  assign and_67336 = and_67204 & p1_data_enable;
  assign and_67337 = and_67205 & p1_data_enable;
  assign and_67344 = and_67206 & p1_data_enable;
  assign and_67345 = and_67207 & p1_data_enable;
  assign and_67346 = and_67208 & p1_data_enable;
  assign and_67352 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__3_3_valid_load_en = p0_data_enable | systolic__hor_chans__3_3_valid_inv;
  assign systolic__vert_chans__3_3_valid_load_en = p0_data_enable | systolic__vert_chans__3_3_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_67218[2] & and_67204 == one_hot_67218[1] & and_67205 == one_hot_67218[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_67219[3] & and_67206 == one_hot_67219[2] & and_67207 == one_hot_67219[1] & and_67208 == one_hot_67219[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_67220[1] & should_output == one_hot_67220[0];
  assign result_fraction__1 = shrl_67209[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_66893 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_66893 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_67339 = {and_67335, and_67336, and_67337};
  assign concat_67348 = {and_67335, and_67344, and_67345, and_67346};
  assign concat_67354 = {and_67352, and_67335};
  assign unexpand_for_next_value_1833_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__3_4_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__3_4_valid_and_ready_txfr = __systolic__hor_chans__3_4_valid_and_not_has_been_sent & systolic__hor_chans__3_4_load_en;
  assign __systolic__vert_chans__4_3_valid_and_ready_txfr = __systolic__vert_chans__4_3_valid_and_not_has_been_sent & systolic__vert_chans__4_3_load_en;
  assign __systolic__result_chans__3_3_valid_and_all_active_outputs_ready = __systolic__result_chans__3_3_vld_buf & or_74767;
  assign __systolic__result_chans__3_3_valid_and_ready_txfr = __systolic__result_chans__3_3_valid_and_not_has_been_sent & systolic__result_chans__3_3_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__3_3_load_en = systolic__hor_chans__3_3_vld & systolic__hor_chans__3_3_valid_load_en;
  assign systolic__vert_chans__3_3_load_en = systolic__vert_chans__3_3_vld & systolic__vert_chans__3_3_valid_load_en;
  assign or_74571 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74573 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74575 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_67195}};
  assign result_exponent__2 = or_67192 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_67243 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_67340 = high_exp & {8{concat_67339[0]}} | wide_exponent__2[7:0] & {8{concat_67339[1]}} | 8'h00 & {8{concat_67339[2]}};
  assign or_67341 = and_67335 | and_67336 | and_67337;
  assign one_hot_sel_67349 = 23'h00_0000 & {23{concat_67348[0]}} | result_fraction__1 & {23{concat_67348[1]}} | nan_fraction & {23{concat_67348[2]}} | 23'h00_0000 & {23{concat_67348[3]}};
  assign or_67350 = and_67335 | and_67344 | and_67345 | and_67346;
  assign one_hot_sel_67355 = unexpand_for_next_value_1833_3_case_1 & {2{concat_67354[0]}} | unexpand_for_next_value_1833_3_case_0 & {2{concat_67354[1]}};
  assign or_67356 = and_67352 | and_67335;
  assign __systolic__hor_chans__3_4_not_stage_load = ~__systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_4_has_been_sent_reg_load_en = __systolic__hor_chans__3_4_valid_and_ready_txfr | __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_3_has_been_sent_reg_load_en = __systolic__vert_chans__4_3_valid_and_ready_txfr | __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_3_not_stage_load = ~__systolic__result_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_3_has_been_sent_reg_load_en = __systolic__result_chans__3_3_valid_and_ready_txfr | __systolic__result_chans__3_3_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__3_4_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__4_3_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__3_3_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__3_3_reg <= __systolic__hor_chans__3_3_reg_init;
      __systolic__hor_chans__3_3_valid_reg <= 1'h0;
      __systolic__vert_chans__3_3_reg <= __systolic__vert_chans__3_3_reg_init;
      __systolic__vert_chans__3_3_valid_reg <= 1'h0;
      __systolic__hor_chans__3_4_reg <= __systolic__hor_chans__3_4_reg_init;
      __systolic__hor_chans__3_4_valid_reg <= 1'h0;
      __systolic__vert_chans__4_3_reg <= __systolic__vert_chans__4_3_reg_init;
      __systolic__vert_chans__4_3_valid_reg <= 1'h0;
      __systolic__result_chans__3_3_reg <= __systolic__result_chans__3_3_reg_init;
      __systolic__result_chans__3_3_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_67341 ? one_hot_sel_67340 : ____state_1;
      ____state_2 <= or_67350 ? one_hot_sel_67349 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_67243 : ____state_0;
      ____state_3 <= or_67356 ? one_hot_sel_67355 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__3_4_has_been_sent_reg <= __systolic__hor_chans__3_4_has_been_sent_reg_load_en ? __systolic__hor_chans__3_4_not_stage_load : __systolic__hor_chans__3_4_has_been_sent_reg;
      __systolic__vert_chans__4_3_has_been_sent_reg <= __systolic__vert_chans__4_3_has_been_sent_reg_load_en ? __systolic__hor_chans__3_4_not_stage_load : __systolic__vert_chans__4_3_has_been_sent_reg;
      __systolic__result_chans__3_3_has_been_sent_reg <= __systolic__result_chans__3_3_has_been_sent_reg_load_en ? __systolic__result_chans__3_3_not_stage_load : __systolic__result_chans__3_3_has_been_sent_reg;
      __systolic__hor_chans__3_3_reg <= systolic__hor_chans__3_3_load_en ? systolic__hor_chans__3_3 : __systolic__hor_chans__3_3_reg;
      __systolic__hor_chans__3_3_valid_reg <= systolic__hor_chans__3_3_valid_load_en ? systolic__hor_chans__3_3_vld : __systolic__hor_chans__3_3_valid_reg;
      __systolic__vert_chans__3_3_reg <= systolic__vert_chans__3_3_load_en ? systolic__vert_chans__3_3 : __systolic__vert_chans__3_3_reg;
      __systolic__vert_chans__3_3_valid_reg <= systolic__vert_chans__3_3_valid_load_en ? systolic__vert_chans__3_3_vld : __systolic__vert_chans__3_3_valid_reg;
      __systolic__hor_chans__3_4_reg <= systolic__hor_chans__3_4_load_en ? __systolic__hor_chans__3_3_reg : __systolic__hor_chans__3_4_reg;
      __systolic__hor_chans__3_4_valid_reg <= systolic__hor_chans__3_4_valid_load_en ? __systolic__hor_chans__3_4_valid_and_not_has_been_sent : __systolic__hor_chans__3_4_valid_reg;
      __systolic__vert_chans__4_3_reg <= systolic__vert_chans__4_3_load_en ? __systolic__vert_chans__3_3_reg : __systolic__vert_chans__4_3_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74571))) or_74571) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74573))) or_74573) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74575))) or_74575) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_67624;
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
  wire [26:0] shrl_67639;
  wire [27:0] shll_67641;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1399_3_case_1;
  wire [25:0] add_67650;
  wire sticky__2;
  wire [27:0] concat_67656;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_67697;
  wire nor_67692;
  wire nor_67693;
  wire nor_67683;
  wire nor_67684;
  wire and_67726;
  wire nor_67728;
  wire nor_67730;
  wire and_67723;
  wire nor_67719;
  wire and_67715;
  wire nor_67716;
  wire nor_67710;
  wire nor_67712;
  wire and_67755;
  wire nor_67736;
  wire nor_67737;
  wire and_67776;
  wire [1:0] priority_sel_67777;
  wire and_67772;
  wire and_67768;
  wire and_67764;
  wire [2:0] concat_67790;
  wire [2:0] concat_67787;
  wire [2:0] concat_67786;
  wire [2:0] concat_67784;
  wire [2:0] concat_67783;
  wire and_67795;
  wire [3:0] concat_67799;
  wire [3:0] sel_74457;
  wire [4:0] concat_67807;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_67514;
  wire eq_67515;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_67518;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_67521;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_67523;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_67825;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_67835;
  wire [5:0] sub_67836;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_67546;
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
  wire eq_67845;
  wire eq_67846;
  wire eq_67847;
  wire eq_67848;
  wire [23:0] fraction__6;
  wire or_74785;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_67557;
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
  wire and_reduce_67876;
  wire should_output;
  wire __systolic__hor_chans__0_2_vld_buf;
  wire __systolic__hor_chans__0_2_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_inv;
  wire __systolic__vert_chans__1_1_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_inv;
  wire or_67879;
  wire or_67882;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire __systolic__vert_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire and_67884;
  wire eq_67560;
  wire eq_67561;
  wire eq_67562;
  wire eq_67563;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__0_2_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire and_67891;
  wire and_67892;
  wire and_67893;
  wire and_67894;
  wire and_67895;
  wire __systolic__hor_chans__0_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_1_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_67580;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_67905;
  wire [4:0] one_hot_67906;
  wire [2:0] one_hot_67907;
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
  wire [27:0] shrl_67896;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_68022;
  wire and_68023;
  wire and_68024;
  wire and_68031;
  wire and_68032;
  wire and_68033;
  wire and_68039;
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
  wire [2:0] concat_68026;
  wire [3:0] concat_68035;
  wire [1:0] concat_68041;
  wire [1:0] unexpand_for_next_value_1399_3_case_0;
  wire __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_1_valid_and_ready_txfr;
  wire __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_1_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__0_1_load_en;
  wire systolic__vert_chans__0_1_load_en;
  wire or_74577;
  wire or_74579;
  wire or_74581;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_67930;
  wire [7:0] one_hot_sel_68027;
  wire or_68028;
  wire [22:0] one_hot_sel_68036;
  wire or_68037;
  wire [1:0] one_hot_sel_68042;
  wire or_68043;
  wire __systolic__hor_chans__0_2_not_stage_load;
  wire __systolic__hor_chans__0_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_1_not_stage_load;
  wire __systolic__result_chans__0_1_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_67624 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_67624;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_67639 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_67641 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1399_3_case_1 = 2'h0;
  assign add_67650 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1399_3_case_1, shrl_67639[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_67624 | shll_67641[26:3]) != 24'h00_0000;
  assign concat_67656 = {add_67650[24:0], shrl_67639[2:1], shrl_67639[0] | sticky__2};
  assign accumbs_fraction = add_67650[25] ? -concat_67656 : concat_67656;
  assign carry_bit = accumbs_fraction[27];
  assign nor_67697 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_67692 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_67693 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_67683 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_67684 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_67726 = ~(carry_bit | accumbs_fraction[26]) & nor_67697;
  assign nor_67728 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_67730 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_67723 = nor_67693 & nor_67692;
  assign nor_67719 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_67715 = nor_67684 & nor_67683;
  assign nor_67716 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_67710 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_67712 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_67755 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_67728;
  assign nor_67736 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_67737 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_67776 = and_67726 & and_67755;
  assign priority_sel_67777 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_67697), and_67726}, {nor_67730, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_67730});
  assign and_67772 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_67719;
  assign and_67768 = nor_67712 & nor_67710;
  assign and_67764 = nor_67737 & nor_67736;
  assign concat_67790 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_67728) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_67787 = {and_67723, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_67692), and_67723}, unexpand_for_next_value_1399_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_67693, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_67786 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_67719) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_67784 = {and_67715, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_67683), and_67715}, {nor_67716, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_67684, nor_67716})};
  assign concat_67783 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_67710) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_67712, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_67795 = and_67723 & and_67772;
  assign concat_67799 = {1'h1, and_67764, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_67736), and_67764}, unexpand_for_next_value_1399_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_67737, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74457 = ~(~and_67776 | and_67795) ? {1'h1, ~(~and_67723 | and_67772) ? concat_67786 : concat_67787} : {and_67776, priority_sel_3b_2way({~(~and_67726 | and_67755), and_67776}, {priority_sel_67777, 1'h0}, concat_67790, {1'h0, priority_sel_67777})};
  assign concat_67807 = {1'h1, and_67715 & and_67768 ? concat_67799 : {1'h0, ~(~and_67715 | and_67768) ? concat_67783 : concat_67784}};
  assign leading_zeroes = and_67776 & and_67795 ? concat_67807 : {1'h0, sel_74457};
  assign a_bexp__1 = __systolic__hor_chans__0_1_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__0_1_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__0_1_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__0_1_reg[22:0];
  assign eq_67514 = a_bexp__1 == 8'h00;
  assign eq_67515 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_67518 = ~(eq_67514 | eq_67515);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_67521 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_67523 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_67521 & {48{nor_67518}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_67523} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_67518}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_67825 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_67825[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_67835 = {1'h0, accum_bexp} + 9'h001;
  assign sub_67836 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_67650 == 26'h000_0000 & ~(shrl_67639[1] | shrl_67639[2]) & ~(shrl_67639[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_67835};
  assign wide_exponent_associative_element__1 = {{4{sub_67836[5]}}, sub_67836};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_67546 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__0_1_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__0_1_not_has_been_sent = ~__systolic__result_chans__0_1_has_been_sent_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_67546;
  assign __systolic__result_chans__0_1_valid_and_not_has_been_sent = __systolic__result_chans__0_1_vld_buf & __systolic__result_chans__0_1_not_has_been_sent;
  assign systolic__result_chans__0_1_valid_load_en = systolic__result_chans__0_1_rdy | systolic__result_chans__0_1_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_67546 | ~fraction__4[23]);
  assign systolic__result_chans__0_1_load_en = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_valid_load_en;
  assign eq_67845 = accum_bexp == high_exp;
  assign eq_67846 = accum_fraction == 23'h00_0000;
  assign eq_67847 = prod_bexp == high_exp;
  assign eq_67848 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74785 = ~p1_should_output | systolic__result_chans__0_1_load_en | __systolic__result_chans__0_1_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74785;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_67557 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_67845 | ~eq_67846 | accum_sign) | ~(~eq_67847 | ~eq_67848 | prod_sign);
  assign has_neg_inf = eq_67845 & eq_67846 & accum_sign | eq_67847 & eq_67848 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_67557 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_1_valid_reg & __systolic__vert_chans__0_1_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_67845 | eq_67846) | ~(~eq_67847 | eq_67848) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_67845 & eq_67846 | eq_67847 & eq_67848;
  assign and_reduce_67876 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__0_2_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__0_2_not_has_been_sent = ~__systolic__hor_chans__0_2_has_been_sent_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign __systolic__vert_chans__1_1_not_has_been_sent = ~__systolic__vert_chans__1_1_has_been_sent_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign or_67879 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_67876;
  assign or_67882 = is_operand_inf | wide_exponent__2[8] | and_reduce_67876 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__0_2_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_vld_buf & __systolic__hor_chans__0_2_not_has_been_sent;
  assign systolic__hor_chans__0_2_valid_load_en = systolic__hor_chans__0_2_rdy | systolic__hor_chans__0_2_valid_inv;
  assign __systolic__vert_chans__1_1_valid_and_not_has_been_sent = __systolic__hor_chans__0_2_vld_buf & __systolic__vert_chans__1_1_not_has_been_sent;
  assign systolic__vert_chans__1_1_valid_load_en = systolic__vert_chans__1_1_rdy | systolic__vert_chans__1_1_valid_inv;
  assign and_67884 = ~should_output & ~is_result_nan__1;
  assign eq_67560 = a_bexp__1 == high_exp;
  assign eq_67561 = a_fraction__1 == 23'h00_0000;
  assign eq_67562 = b_bexp__2 == high_exp;
  assign eq_67563 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__0_2_load_en = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_valid_load_en;
  assign and_67891 = ~should_output & ~or_67879;
  assign and_67892 = ~should_output & or_67879;
  assign and_67893 = ~should_output & is_result_nan__1;
  assign and_67894 = and_67884 & ~or_67882;
  assign and_67895 = and_67884 & or_67882;
  assign __systolic__hor_chans__0_2_has_sent_or_is_ready = systolic__hor_chans__0_2_load_en | __systolic__hor_chans__0_2_has_been_sent_reg;
  assign __systolic__vert_chans__1_1_has_sent_or_is_ready = systolic__vert_chans__1_1_load_en | __systolic__vert_chans__1_1_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_67891, and_67892};
  assign ____state_2__next_value_predicates = {should_output, and_67893, and_67894, and_67895};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_67514 | eq_67515;
  assign has_inf_arg = eq_67560 & eq_67561 | eq_67562 & eq_67563;
  assign and_reduce_67580 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__0_2_has_sent_or_is_ready & __systolic__vert_chans__1_1_has_sent_or_is_ready;
  assign one_hot_67905 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_67906 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_67907 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_67650[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_67825, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_67560 | eq_67561) | ~(~eq_67562 | eq_67563) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign shrl_67896 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__0_1_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__0_1_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_68022 = should_output & p1_data_enable;
  assign and_68023 = and_67891 & p1_data_enable;
  assign and_68024 = and_67892 & p1_data_enable;
  assign and_68031 = and_67893 & p1_data_enable;
  assign and_68032 = and_67894 & p1_data_enable;
  assign and_68033 = and_67895 & p1_data_enable;
  assign and_68039 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__0_1_valid_load_en = p0_data_enable | systolic__hor_chans__0_1_valid_inv;
  assign systolic__vert_chans__0_1_valid_load_en = p0_data_enable | systolic__vert_chans__0_1_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_67905[2] & and_67891 == one_hot_67905[1] & and_67892 == one_hot_67905[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_67906[3] & and_67893 == one_hot_67906[2] & and_67894 == one_hot_67906[1] & and_67895 == one_hot_67906[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_67907[1] & should_output == one_hot_67907[0];
  assign result_fraction__1 = shrl_67896[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_67580 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_67580 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_68026 = {and_68022, and_68023, and_68024};
  assign concat_68035 = {and_68022, and_68031, and_68032, and_68033};
  assign concat_68041 = {and_68039, and_68022};
  assign unexpand_for_next_value_1399_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_2_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_valid_and_ready_txfr = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_load_en;
  assign __systolic__vert_chans__1_1_valid_and_ready_txfr = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_load_en;
  assign __systolic__result_chans__0_1_valid_and_all_active_outputs_ready = __systolic__result_chans__0_1_vld_buf & or_74785;
  assign __systolic__result_chans__0_1_valid_and_ready_txfr = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__0_1_load_en = systolic__hor_chans__0_1_vld & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = systolic__vert_chans__0_1_vld & systolic__vert_chans__0_1_valid_load_en;
  assign or_74577 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74579 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74581 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_67882}};
  assign result_exponent__2 = or_67879 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_67930 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_68027 = high_exp & {8{concat_68026[0]}} | wide_exponent__2[7:0] & {8{concat_68026[1]}} | 8'h00 & {8{concat_68026[2]}};
  assign or_68028 = and_68022 | and_68023 | and_68024;
  assign one_hot_sel_68036 = 23'h00_0000 & {23{concat_68035[0]}} | result_fraction__1 & {23{concat_68035[1]}} | nan_fraction & {23{concat_68035[2]}} | 23'h00_0000 & {23{concat_68035[3]}};
  assign or_68037 = and_68022 | and_68031 | and_68032 | and_68033;
  assign one_hot_sel_68042 = unexpand_for_next_value_1399_3_case_1 & {2{concat_68041[0]}} | unexpand_for_next_value_1399_3_case_0 & {2{concat_68041[1]}};
  assign or_68043 = and_68039 | and_68022;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
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
      ____state_1 <= or_68028 ? one_hot_sel_68027 : ____state_1;
      ____state_2 <= or_68037 ? one_hot_sel_68036 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_67930 : ____state_0;
      ____state_3 <= or_68043 ? one_hot_sel_68042 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74577))) or_74577) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74579))) or_74579) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74581))) or_74581) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__0_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__0_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__1_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__0_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_68311;
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
  wire [26:0] shrl_68326;
  wire [27:0] shll_68328;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1430_3_case_1;
  wire [25:0] add_68337;
  wire sticky__2;
  wire [27:0] concat_68343;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_68384;
  wire nor_68379;
  wire nor_68380;
  wire nor_68370;
  wire nor_68371;
  wire and_68413;
  wire nor_68415;
  wire nor_68417;
  wire and_68410;
  wire nor_68406;
  wire and_68402;
  wire nor_68403;
  wire nor_68397;
  wire nor_68399;
  wire and_68442;
  wire nor_68423;
  wire nor_68424;
  wire and_68463;
  wire [1:0] priority_sel_68464;
  wire and_68459;
  wire and_68455;
  wire and_68451;
  wire [2:0] concat_68477;
  wire [2:0] concat_68474;
  wire [2:0] concat_68473;
  wire [2:0] concat_68471;
  wire [2:0] concat_68470;
  wire and_68482;
  wire [3:0] concat_68486;
  wire [3:0] sel_74465;
  wire [4:0] concat_68494;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_68201;
  wire eq_68202;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_68205;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_68208;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_68210;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_68512;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_68522;
  wire [5:0] sub_68523;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_68233;
  wire __systolic__result_chans__0_2_vld_buf;
  wire __systolic__result_chans__0_2_not_has_been_sent;
  wire systolic__result_chans__0_2_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_2_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__0_2_load_en;
  wire eq_68532;
  wire eq_68533;
  wire eq_68534;
  wire eq_68535;
  wire [23:0] fraction__6;
  wire or_74803;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_68244;
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
  wire and_reduce_68563;
  wire should_output;
  wire __systolic__hor_chans__0_3_vld_buf;
  wire __systolic__hor_chans__0_3_not_has_been_sent;
  wire systolic__hor_chans__0_3_valid_inv;
  wire __systolic__vert_chans__1_2_not_has_been_sent;
  wire systolic__vert_chans__1_2_valid_inv;
  wire or_68566;
  wire or_68569;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__0_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_3_valid_load_en;
  wire __systolic__vert_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_2_valid_load_en;
  wire and_68571;
  wire eq_68247;
  wire eq_68248;
  wire eq_68249;
  wire eq_68250;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__0_3_load_en;
  wire systolic__vert_chans__1_2_load_en;
  wire and_68578;
  wire and_68579;
  wire and_68580;
  wire and_68581;
  wire and_68582;
  wire __systolic__hor_chans__0_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_2_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_68267;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_68592;
  wire [4:0] one_hot_68593;
  wire [2:0] one_hot_68594;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__0_2_valid_inv;
  wire systolic__vert_chans__0_2_valid_inv;
  wire [27:0] shrl_68583;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_68709;
  wire and_68710;
  wire and_68711;
  wire and_68718;
  wire and_68719;
  wire and_68720;
  wire and_68726;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire systolic__vert_chans__0_2_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_68713;
  wire [3:0] concat_68722;
  wire [1:0] concat_68728;
  wire [1:0] unexpand_for_next_value_1430_3_case_0;
  wire __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_3_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_2_valid_and_ready_txfr;
  wire __systolic__result_chans__0_2_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_2_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__0_2_load_en;
  wire systolic__vert_chans__0_2_load_en;
  wire or_74583;
  wire or_74585;
  wire or_74587;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_68617;
  wire [7:0] one_hot_sel_68714;
  wire or_68715;
  wire [22:0] one_hot_sel_68723;
  wire or_68724;
  wire [1:0] one_hot_sel_68729;
  wire or_68730;
  wire __systolic__hor_chans__0_3_not_stage_load;
  wire __systolic__hor_chans__0_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_2_not_stage_load;
  wire __systolic__result_chans__0_2_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_68311 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_68311;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_68326 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_68328 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1430_3_case_1 = 2'h0;
  assign add_68337 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1430_3_case_1, shrl_68326[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_68311 | shll_68328[26:3]) != 24'h00_0000;
  assign concat_68343 = {add_68337[24:0], shrl_68326[2:1], shrl_68326[0] | sticky__2};
  assign accumbs_fraction = add_68337[25] ? -concat_68343 : concat_68343;
  assign carry_bit = accumbs_fraction[27];
  assign nor_68384 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_68379 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_68380 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_68370 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_68371 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_68413 = ~(carry_bit | accumbs_fraction[26]) & nor_68384;
  assign nor_68415 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_68417 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_68410 = nor_68380 & nor_68379;
  assign nor_68406 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_68402 = nor_68371 & nor_68370;
  assign nor_68403 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_68397 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_68399 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_68442 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_68415;
  assign nor_68423 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_68424 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_68463 = and_68413 & and_68442;
  assign priority_sel_68464 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_68384), and_68413}, {nor_68417, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_68417});
  assign and_68459 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_68406;
  assign and_68455 = nor_68399 & nor_68397;
  assign and_68451 = nor_68424 & nor_68423;
  assign concat_68477 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_68415) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_68474 = {and_68410, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_68379), and_68410}, unexpand_for_next_value_1430_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_68380, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_68473 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_68406) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_68471 = {and_68402, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_68370), and_68402}, {nor_68403, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_68371, nor_68403})};
  assign concat_68470 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_68397) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_68399, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_68482 = and_68410 & and_68459;
  assign concat_68486 = {1'h1, and_68451, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_68423), and_68451}, unexpand_for_next_value_1430_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_68424, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74465 = ~(~and_68463 | and_68482) ? {1'h1, ~(~and_68410 | and_68459) ? concat_68473 : concat_68474} : {and_68463, priority_sel_3b_2way({~(~and_68413 | and_68442), and_68463}, {priority_sel_68464, 1'h0}, concat_68477, {1'h0, priority_sel_68464})};
  assign concat_68494 = {1'h1, and_68402 & and_68455 ? concat_68486 : {1'h0, ~(~and_68402 | and_68455) ? concat_68470 : concat_68471}};
  assign leading_zeroes = and_68463 & and_68482 ? concat_68494 : {1'h0, sel_74465};
  assign a_bexp__1 = __systolic__hor_chans__0_2_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__0_2_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__0_2_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__0_2_reg[22:0];
  assign eq_68201 = a_bexp__1 == 8'h00;
  assign eq_68202 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_68205 = ~(eq_68201 | eq_68202);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_68208 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_68210 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_68208 & {48{nor_68205}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_68210} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_68205}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_68512 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_68512[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_68522 = {1'h0, accum_bexp} + 9'h001;
  assign sub_68523 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_68337 == 26'h000_0000 & ~(shrl_68326[1] | shrl_68326[2]) & ~(shrl_68326[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_68522};
  assign wide_exponent_associative_element__1 = {{4{sub_68523[5]}}, sub_68523};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_68233 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__0_2_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__0_2_not_has_been_sent = ~__systolic__result_chans__0_2_has_been_sent_reg;
  assign systolic__result_chans__0_2_valid_inv = ~__systolic__result_chans__0_2_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_68233;
  assign __systolic__result_chans__0_2_valid_and_not_has_been_sent = __systolic__result_chans__0_2_vld_buf & __systolic__result_chans__0_2_not_has_been_sent;
  assign systolic__result_chans__0_2_valid_load_en = systolic__result_chans__0_2_rdy | systolic__result_chans__0_2_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_68233 | ~fraction__4[23]);
  assign systolic__result_chans__0_2_load_en = __systolic__result_chans__0_2_valid_and_not_has_been_sent & systolic__result_chans__0_2_valid_load_en;
  assign eq_68532 = accum_bexp == high_exp;
  assign eq_68533 = accum_fraction == 23'h00_0000;
  assign eq_68534 = prod_bexp == high_exp;
  assign eq_68535 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74803 = ~p1_should_output | systolic__result_chans__0_2_load_en | __systolic__result_chans__0_2_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74803;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_68244 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_68532 | ~eq_68533 | accum_sign) | ~(~eq_68534 | ~eq_68535 | prod_sign);
  assign has_neg_inf = eq_68532 & eq_68533 & accum_sign | eq_68534 & eq_68535 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_68244 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_2_valid_reg & __systolic__vert_chans__0_2_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_68532 | eq_68533) | ~(~eq_68534 | eq_68535) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_68532 & eq_68533 | eq_68534 & eq_68535;
  assign and_reduce_68563 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__0_3_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__0_3_not_has_been_sent = ~__systolic__hor_chans__0_3_has_been_sent_reg;
  assign systolic__hor_chans__0_3_valid_inv = ~__systolic__hor_chans__0_3_valid_reg;
  assign __systolic__vert_chans__1_2_not_has_been_sent = ~__systolic__vert_chans__1_2_has_been_sent_reg;
  assign systolic__vert_chans__1_2_valid_inv = ~__systolic__vert_chans__1_2_valid_reg;
  assign or_68566 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_68563;
  assign or_68569 = is_operand_inf | wide_exponent__2[8] | and_reduce_68563 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__0_3_valid_and_not_has_been_sent = __systolic__hor_chans__0_3_vld_buf & __systolic__hor_chans__0_3_not_has_been_sent;
  assign systolic__hor_chans__0_3_valid_load_en = systolic__hor_chans__0_3_rdy | systolic__hor_chans__0_3_valid_inv;
  assign __systolic__vert_chans__1_2_valid_and_not_has_been_sent = __systolic__hor_chans__0_3_vld_buf & __systolic__vert_chans__1_2_not_has_been_sent;
  assign systolic__vert_chans__1_2_valid_load_en = systolic__vert_chans__1_2_rdy | systolic__vert_chans__1_2_valid_inv;
  assign and_68571 = ~should_output & ~is_result_nan__1;
  assign eq_68247 = a_bexp__1 == high_exp;
  assign eq_68248 = a_fraction__1 == 23'h00_0000;
  assign eq_68249 = b_bexp__2 == high_exp;
  assign eq_68250 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__0_3_load_en = __systolic__hor_chans__0_3_valid_and_not_has_been_sent & systolic__hor_chans__0_3_valid_load_en;
  assign systolic__vert_chans__1_2_load_en = __systolic__vert_chans__1_2_valid_and_not_has_been_sent & systolic__vert_chans__1_2_valid_load_en;
  assign and_68578 = ~should_output & ~or_68566;
  assign and_68579 = ~should_output & or_68566;
  assign and_68580 = ~should_output & is_result_nan__1;
  assign and_68581 = and_68571 & ~or_68569;
  assign and_68582 = and_68571 & or_68569;
  assign __systolic__hor_chans__0_3_has_sent_or_is_ready = systolic__hor_chans__0_3_load_en | __systolic__hor_chans__0_3_has_been_sent_reg;
  assign __systolic__vert_chans__1_2_has_sent_or_is_ready = systolic__vert_chans__1_2_load_en | __systolic__vert_chans__1_2_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_68578, and_68579};
  assign ____state_2__next_value_predicates = {should_output, and_68580, and_68581, and_68582};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_68201 | eq_68202;
  assign has_inf_arg = eq_68247 & eq_68248 | eq_68249 & eq_68250;
  assign and_reduce_68267 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__0_3_has_sent_or_is_ready & __systolic__vert_chans__1_2_has_sent_or_is_ready;
  assign one_hot_68592 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_68593 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_68594 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_68337[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_68512, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_68247 | eq_68248) | ~(~eq_68249 | eq_68250) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign systolic__vert_chans__0_2_valid_inv = ~__systolic__vert_chans__0_2_valid_reg;
  assign shrl_68583 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__0_2_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__0_2_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_68709 = should_output & p1_data_enable;
  assign and_68710 = and_68578 & p1_data_enable;
  assign and_68711 = and_68579 & p1_data_enable;
  assign and_68718 = and_68580 & p1_data_enable;
  assign and_68719 = and_68581 & p1_data_enable;
  assign and_68720 = and_68582 & p1_data_enable;
  assign and_68726 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__0_2_valid_load_en = p0_data_enable | systolic__hor_chans__0_2_valid_inv;
  assign systolic__vert_chans__0_2_valid_load_en = p0_data_enable | systolic__vert_chans__0_2_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_68592[2] & and_68578 == one_hot_68592[1] & and_68579 == one_hot_68592[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_68593[3] & and_68580 == one_hot_68593[2] & and_68581 == one_hot_68593[1] & and_68582 == one_hot_68593[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_68594[1] & should_output == one_hot_68594[0];
  assign result_fraction__1 = shrl_68583[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_68267 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_68267 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_68713 = {and_68709, and_68710, and_68711};
  assign concat_68722 = {and_68709, and_68718, and_68719, and_68720};
  assign concat_68728 = {and_68726, and_68709};
  assign unexpand_for_next_value_1430_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_3_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_3_valid_and_ready_txfr = __systolic__hor_chans__0_3_valid_and_not_has_been_sent & systolic__hor_chans__0_3_load_en;
  assign __systolic__vert_chans__1_2_valid_and_ready_txfr = __systolic__vert_chans__1_2_valid_and_not_has_been_sent & systolic__vert_chans__1_2_load_en;
  assign __systolic__result_chans__0_2_valid_and_all_active_outputs_ready = __systolic__result_chans__0_2_vld_buf & or_74803;
  assign __systolic__result_chans__0_2_valid_and_ready_txfr = __systolic__result_chans__0_2_valid_and_not_has_been_sent & systolic__result_chans__0_2_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__0_2_load_en = systolic__hor_chans__0_2_vld & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__vert_chans__0_2_load_en = systolic__vert_chans__0_2_vld & systolic__vert_chans__0_2_valid_load_en;
  assign or_74583 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74585 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74587 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_68569}};
  assign result_exponent__2 = or_68566 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_68617 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_68714 = high_exp & {8{concat_68713[0]}} | wide_exponent__2[7:0] & {8{concat_68713[1]}} | 8'h00 & {8{concat_68713[2]}};
  assign or_68715 = and_68709 | and_68710 | and_68711;
  assign one_hot_sel_68723 = 23'h00_0000 & {23{concat_68722[0]}} | result_fraction__1 & {23{concat_68722[1]}} | nan_fraction & {23{concat_68722[2]}} | 23'h00_0000 & {23{concat_68722[3]}};
  assign or_68724 = and_68709 | and_68718 | and_68719 | and_68720;
  assign one_hot_sel_68729 = unexpand_for_next_value_1430_3_case_1 & {2{concat_68728[0]}} | unexpand_for_next_value_1430_3_case_0 & {2{concat_68728[1]}};
  assign or_68730 = and_68726 | and_68709;
  assign __systolic__hor_chans__0_3_not_stage_load = ~__systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_3_has_been_sent_reg_load_en = __systolic__hor_chans__0_3_valid_and_ready_txfr | __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_2_has_been_sent_reg_load_en = __systolic__vert_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_2_not_stage_load = ~__systolic__result_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_2_has_been_sent_reg_load_en = __systolic__result_chans__0_2_valid_and_ready_txfr | __systolic__result_chans__0_2_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__0_3_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__1_2_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__0_2_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_2_reg <= __systolic__hor_chans__0_2_reg_init;
      __systolic__hor_chans__0_2_valid_reg <= 1'h0;
      __systolic__vert_chans__0_2_reg <= __systolic__vert_chans__0_2_reg_init;
      __systolic__vert_chans__0_2_valid_reg <= 1'h0;
      __systolic__hor_chans__0_3_reg <= __systolic__hor_chans__0_3_reg_init;
      __systolic__hor_chans__0_3_valid_reg <= 1'h0;
      __systolic__vert_chans__1_2_reg <= __systolic__vert_chans__1_2_reg_init;
      __systolic__vert_chans__1_2_valid_reg <= 1'h0;
      __systolic__result_chans__0_2_reg <= __systolic__result_chans__0_2_reg_init;
      __systolic__result_chans__0_2_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_68715 ? one_hot_sel_68714 : ____state_1;
      ____state_2 <= or_68724 ? one_hot_sel_68723 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_68617 : ____state_0;
      ____state_3 <= or_68730 ? one_hot_sel_68729 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__0_3_has_been_sent_reg <= __systolic__hor_chans__0_3_has_been_sent_reg_load_en ? __systolic__hor_chans__0_3_not_stage_load : __systolic__hor_chans__0_3_has_been_sent_reg;
      __systolic__vert_chans__1_2_has_been_sent_reg <= __systolic__vert_chans__1_2_has_been_sent_reg_load_en ? __systolic__hor_chans__0_3_not_stage_load : __systolic__vert_chans__1_2_has_been_sent_reg;
      __systolic__result_chans__0_2_has_been_sent_reg <= __systolic__result_chans__0_2_has_been_sent_reg_load_en ? __systolic__result_chans__0_2_not_stage_load : __systolic__result_chans__0_2_has_been_sent_reg;
      __systolic__hor_chans__0_2_reg <= systolic__hor_chans__0_2_load_en ? systolic__hor_chans__0_2 : __systolic__hor_chans__0_2_reg;
      __systolic__hor_chans__0_2_valid_reg <= systolic__hor_chans__0_2_valid_load_en ? systolic__hor_chans__0_2_vld : __systolic__hor_chans__0_2_valid_reg;
      __systolic__vert_chans__0_2_reg <= systolic__vert_chans__0_2_load_en ? systolic__vert_chans__0_2 : __systolic__vert_chans__0_2_reg;
      __systolic__vert_chans__0_2_valid_reg <= systolic__vert_chans__0_2_valid_load_en ? systolic__vert_chans__0_2_vld : __systolic__vert_chans__0_2_valid_reg;
      __systolic__hor_chans__0_3_reg <= systolic__hor_chans__0_3_load_en ? __systolic__hor_chans__0_2_reg : __systolic__hor_chans__0_3_reg;
      __systolic__hor_chans__0_3_valid_reg <= systolic__hor_chans__0_3_valid_load_en ? __systolic__hor_chans__0_3_valid_and_not_has_been_sent : __systolic__hor_chans__0_3_valid_reg;
      __systolic__vert_chans__1_2_reg <= systolic__vert_chans__1_2_load_en ? __systolic__vert_chans__0_2_reg : __systolic__vert_chans__1_2_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74583))) or_74583) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74585))) or_74585) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74587))) or_74587) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__0_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__0_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__0_4_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__1_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__0_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_68998;
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
  wire [26:0] shrl_69013;
  wire [27:0] shll_69015;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1461_3_case_1;
  wire [25:0] add_69024;
  wire sticky__2;
  wire [27:0] concat_69030;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_69071;
  wire nor_69066;
  wire nor_69067;
  wire nor_69057;
  wire nor_69058;
  wire and_69100;
  wire nor_69102;
  wire nor_69104;
  wire and_69097;
  wire nor_69093;
  wire and_69089;
  wire nor_69090;
  wire nor_69084;
  wire nor_69086;
  wire and_69129;
  wire nor_69110;
  wire nor_69111;
  wire and_69150;
  wire [1:0] priority_sel_69151;
  wire and_69146;
  wire and_69142;
  wire and_69138;
  wire [2:0] concat_69164;
  wire [2:0] concat_69161;
  wire [2:0] concat_69160;
  wire [2:0] concat_69158;
  wire [2:0] concat_69157;
  wire and_69169;
  wire [3:0] concat_69173;
  wire [3:0] sel_74473;
  wire [4:0] concat_69181;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_68888;
  wire eq_68889;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_68892;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_68895;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_68897;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_69199;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_69209;
  wire [5:0] sub_69210;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_68920;
  wire __systolic__result_chans__0_3_vld_buf;
  wire __systolic__result_chans__0_3_not_has_been_sent;
  wire systolic__result_chans__0_3_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__0_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_3_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__0_3_load_en;
  wire eq_69219;
  wire eq_69220;
  wire eq_69221;
  wire eq_69222;
  wire [23:0] fraction__6;
  wire or_74821;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_68931;
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
  wire and_reduce_69250;
  wire should_output;
  wire __systolic__hor_chans__0_4_vld_buf;
  wire __systolic__hor_chans__0_4_not_has_been_sent;
  wire systolic__hor_chans__0_4_valid_inv;
  wire __systolic__vert_chans__1_3_not_has_been_sent;
  wire systolic__vert_chans__1_3_valid_inv;
  wire or_69253;
  wire or_69256;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__0_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_4_valid_load_en;
  wire __systolic__vert_chans__1_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_3_valid_load_en;
  wire and_69258;
  wire eq_68934;
  wire eq_68935;
  wire eq_68936;
  wire eq_68937;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__0_4_load_en;
  wire systolic__vert_chans__1_3_load_en;
  wire and_69265;
  wire and_69266;
  wire and_69267;
  wire and_69268;
  wire and_69269;
  wire __systolic__hor_chans__0_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_3_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_68954;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_69279;
  wire [4:0] one_hot_69280;
  wire [2:0] one_hot_69281;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__0_3_valid_inv;
  wire systolic__vert_chans__0_3_valid_inv;
  wire [27:0] shrl_69270;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_69396;
  wire and_69397;
  wire and_69398;
  wire and_69405;
  wire and_69406;
  wire and_69407;
  wire and_69413;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__0_3_valid_load_en;
  wire systolic__vert_chans__0_3_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_69400;
  wire [3:0] concat_69409;
  wire [1:0] concat_69415;
  wire [1:0] unexpand_for_next_value_1461_3_case_0;
  wire __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__0_4_valid_and_ready_txfr;
  wire __systolic__vert_chans__1_3_valid_and_ready_txfr;
  wire __systolic__result_chans__0_3_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__0_3_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__0_3_load_en;
  wire systolic__vert_chans__0_3_load_en;
  wire or_74589;
  wire or_74591;
  wire or_74593;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_69304;
  wire [7:0] one_hot_sel_69401;
  wire or_69402;
  wire [22:0] one_hot_sel_69410;
  wire or_69411;
  wire [1:0] one_hot_sel_69416;
  wire or_69417;
  wire __systolic__hor_chans__0_4_not_stage_load;
  wire __systolic__hor_chans__0_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_3_not_stage_load;
  wire __systolic__result_chans__0_3_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_68998 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_68998;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_69013 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_69015 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1461_3_case_1 = 2'h0;
  assign add_69024 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1461_3_case_1, shrl_69013[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_68998 | shll_69015[26:3]) != 24'h00_0000;
  assign concat_69030 = {add_69024[24:0], shrl_69013[2:1], shrl_69013[0] | sticky__2};
  assign accumbs_fraction = add_69024[25] ? -concat_69030 : concat_69030;
  assign carry_bit = accumbs_fraction[27];
  assign nor_69071 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_69066 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_69067 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_69057 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_69058 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_69100 = ~(carry_bit | accumbs_fraction[26]) & nor_69071;
  assign nor_69102 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_69104 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_69097 = nor_69067 & nor_69066;
  assign nor_69093 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_69089 = nor_69058 & nor_69057;
  assign nor_69090 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_69084 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_69086 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_69129 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_69102;
  assign nor_69110 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_69111 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_69150 = and_69100 & and_69129;
  assign priority_sel_69151 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_69071), and_69100}, {nor_69104, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_69104});
  assign and_69146 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_69093;
  assign and_69142 = nor_69086 & nor_69084;
  assign and_69138 = nor_69111 & nor_69110;
  assign concat_69164 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_69102) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_69161 = {and_69097, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_69066), and_69097}, unexpand_for_next_value_1461_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_69067, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_69160 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_69093) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_69158 = {and_69089, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_69057), and_69089}, {nor_69090, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_69058, nor_69090})};
  assign concat_69157 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_69084) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_69086, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_69169 = and_69097 & and_69146;
  assign concat_69173 = {1'h1, and_69138, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_69110), and_69138}, unexpand_for_next_value_1461_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_69111, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74473 = ~(~and_69150 | and_69169) ? {1'h1, ~(~and_69097 | and_69146) ? concat_69160 : concat_69161} : {and_69150, priority_sel_3b_2way({~(~and_69100 | and_69129), and_69150}, {priority_sel_69151, 1'h0}, concat_69164, {1'h0, priority_sel_69151})};
  assign concat_69181 = {1'h1, and_69089 & and_69142 ? concat_69173 : {1'h0, ~(~and_69089 | and_69142) ? concat_69157 : concat_69158}};
  assign leading_zeroes = and_69150 & and_69169 ? concat_69181 : {1'h0, sel_74473};
  assign a_bexp__1 = __systolic__hor_chans__0_3_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__0_3_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__0_3_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__0_3_reg[22:0];
  assign eq_68888 = a_bexp__1 == 8'h00;
  assign eq_68889 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_68892 = ~(eq_68888 | eq_68889);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_68895 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_68897 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_68895 & {48{nor_68892}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_68897} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_68892}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_69199 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_69199[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_69209 = {1'h0, accum_bexp} + 9'h001;
  assign sub_69210 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_69024 == 26'h000_0000 & ~(shrl_69013[1] | shrl_69013[2]) & ~(shrl_69013[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_69209};
  assign wide_exponent_associative_element__1 = {{4{sub_69210[5]}}, sub_69210};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_68920 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__0_3_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__0_3_not_has_been_sent = ~__systolic__result_chans__0_3_has_been_sent_reg;
  assign systolic__result_chans__0_3_valid_inv = ~__systolic__result_chans__0_3_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_68920;
  assign __systolic__result_chans__0_3_valid_and_not_has_been_sent = __systolic__result_chans__0_3_vld_buf & __systolic__result_chans__0_3_not_has_been_sent;
  assign systolic__result_chans__0_3_valid_load_en = systolic__result_chans__0_3_rdy | systolic__result_chans__0_3_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_68920 | ~fraction__4[23]);
  assign systolic__result_chans__0_3_load_en = __systolic__result_chans__0_3_valid_and_not_has_been_sent & systolic__result_chans__0_3_valid_load_en;
  assign eq_69219 = accum_bexp == high_exp;
  assign eq_69220 = accum_fraction == 23'h00_0000;
  assign eq_69221 = prod_bexp == high_exp;
  assign eq_69222 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74821 = ~p1_should_output | systolic__result_chans__0_3_load_en | __systolic__result_chans__0_3_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74821;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_68931 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_69219 | ~eq_69220 | accum_sign) | ~(~eq_69221 | ~eq_69222 | prod_sign);
  assign has_neg_inf = eq_69219 & eq_69220 & accum_sign | eq_69221 & eq_69222 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_68931 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_3_valid_reg & __systolic__vert_chans__0_3_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_69219 | eq_69220) | ~(~eq_69221 | eq_69222) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_69219 & eq_69220 | eq_69221 & eq_69222;
  assign and_reduce_69250 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__0_4_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__0_4_not_has_been_sent = ~__systolic__hor_chans__0_4_has_been_sent_reg;
  assign systolic__hor_chans__0_4_valid_inv = ~__systolic__hor_chans__0_4_valid_reg;
  assign __systolic__vert_chans__1_3_not_has_been_sent = ~__systolic__vert_chans__1_3_has_been_sent_reg;
  assign systolic__vert_chans__1_3_valid_inv = ~__systolic__vert_chans__1_3_valid_reg;
  assign or_69253 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_69250;
  assign or_69256 = is_operand_inf | wide_exponent__2[8] | and_reduce_69250 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__0_4_valid_and_not_has_been_sent = __systolic__hor_chans__0_4_vld_buf & __systolic__hor_chans__0_4_not_has_been_sent;
  assign systolic__hor_chans__0_4_valid_load_en = systolic__hor_chans__0_4_rdy | systolic__hor_chans__0_4_valid_inv;
  assign __systolic__vert_chans__1_3_valid_and_not_has_been_sent = __systolic__hor_chans__0_4_vld_buf & __systolic__vert_chans__1_3_not_has_been_sent;
  assign systolic__vert_chans__1_3_valid_load_en = systolic__vert_chans__1_3_rdy | systolic__vert_chans__1_3_valid_inv;
  assign and_69258 = ~should_output & ~is_result_nan__1;
  assign eq_68934 = a_bexp__1 == high_exp;
  assign eq_68935 = a_fraction__1 == 23'h00_0000;
  assign eq_68936 = b_bexp__2 == high_exp;
  assign eq_68937 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__0_4_load_en = __systolic__hor_chans__0_4_valid_and_not_has_been_sent & systolic__hor_chans__0_4_valid_load_en;
  assign systolic__vert_chans__1_3_load_en = __systolic__vert_chans__1_3_valid_and_not_has_been_sent & systolic__vert_chans__1_3_valid_load_en;
  assign and_69265 = ~should_output & ~or_69253;
  assign and_69266 = ~should_output & or_69253;
  assign and_69267 = ~should_output & is_result_nan__1;
  assign and_69268 = and_69258 & ~or_69256;
  assign and_69269 = and_69258 & or_69256;
  assign __systolic__hor_chans__0_4_has_sent_or_is_ready = systolic__hor_chans__0_4_load_en | __systolic__hor_chans__0_4_has_been_sent_reg;
  assign __systolic__vert_chans__1_3_has_sent_or_is_ready = systolic__vert_chans__1_3_load_en | __systolic__vert_chans__1_3_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_69265, and_69266};
  assign ____state_2__next_value_predicates = {should_output, and_69267, and_69268, and_69269};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_68888 | eq_68889;
  assign has_inf_arg = eq_68934 & eq_68935 | eq_68936 & eq_68937;
  assign and_reduce_68954 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__0_4_has_sent_or_is_ready & __systolic__vert_chans__1_3_has_sent_or_is_ready;
  assign one_hot_69279 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_69280 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_69281 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_69024[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_69199, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_68934 | eq_68935) | ~(~eq_68936 | eq_68937) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__0_3_valid_inv = ~__systolic__hor_chans__0_3_valid_reg;
  assign systolic__vert_chans__0_3_valid_inv = ~__systolic__vert_chans__0_3_valid_reg;
  assign shrl_69270 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__0_3_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__0_3_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_69396 = should_output & p1_data_enable;
  assign and_69397 = and_69265 & p1_data_enable;
  assign and_69398 = and_69266 & p1_data_enable;
  assign and_69405 = and_69267 & p1_data_enable;
  assign and_69406 = and_69268 & p1_data_enable;
  assign and_69407 = and_69269 & p1_data_enable;
  assign and_69413 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__0_3_valid_load_en = p0_data_enable | systolic__hor_chans__0_3_valid_inv;
  assign systolic__vert_chans__0_3_valid_load_en = p0_data_enable | systolic__vert_chans__0_3_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_69279[2] & and_69265 == one_hot_69279[1] & and_69266 == one_hot_69279[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_69280[3] & and_69267 == one_hot_69280[2] & and_69268 == one_hot_69280[1] & and_69269 == one_hot_69280[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_69281[1] & should_output == one_hot_69281[0];
  assign result_fraction__1 = shrl_69270[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_68954 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_68954 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_69400 = {and_69396, and_69397, and_69398};
  assign concat_69409 = {and_69396, and_69405, and_69406, and_69407};
  assign concat_69415 = {and_69413, and_69396};
  assign unexpand_for_next_value_1461_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__0_4_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__0_4_valid_and_ready_txfr = __systolic__hor_chans__0_4_valid_and_not_has_been_sent & systolic__hor_chans__0_4_load_en;
  assign __systolic__vert_chans__1_3_valid_and_ready_txfr = __systolic__vert_chans__1_3_valid_and_not_has_been_sent & systolic__vert_chans__1_3_load_en;
  assign __systolic__result_chans__0_3_valid_and_all_active_outputs_ready = __systolic__result_chans__0_3_vld_buf & or_74821;
  assign __systolic__result_chans__0_3_valid_and_ready_txfr = __systolic__result_chans__0_3_valid_and_not_has_been_sent & systolic__result_chans__0_3_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__0_3_load_en = systolic__hor_chans__0_3_vld & systolic__hor_chans__0_3_valid_load_en;
  assign systolic__vert_chans__0_3_load_en = systolic__vert_chans__0_3_vld & systolic__vert_chans__0_3_valid_load_en;
  assign or_74589 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74591 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74593 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_69256}};
  assign result_exponent__2 = or_69253 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_69304 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_69401 = high_exp & {8{concat_69400[0]}} | wide_exponent__2[7:0] & {8{concat_69400[1]}} | 8'h00 & {8{concat_69400[2]}};
  assign or_69402 = and_69396 | and_69397 | and_69398;
  assign one_hot_sel_69410 = 23'h00_0000 & {23{concat_69409[0]}} | result_fraction__1 & {23{concat_69409[1]}} | nan_fraction & {23{concat_69409[2]}} | 23'h00_0000 & {23{concat_69409[3]}};
  assign or_69411 = and_69396 | and_69405 | and_69406 | and_69407;
  assign one_hot_sel_69416 = unexpand_for_next_value_1461_3_case_1 & {2{concat_69415[0]}} | unexpand_for_next_value_1461_3_case_0 & {2{concat_69415[1]}};
  assign or_69417 = and_69413 | and_69396;
  assign __systolic__hor_chans__0_4_not_stage_load = ~__systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_4_has_been_sent_reg_load_en = __systolic__hor_chans__0_4_valid_and_ready_txfr | __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_3_has_been_sent_reg_load_en = __systolic__vert_chans__1_3_valid_and_ready_txfr | __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_3_not_stage_load = ~__systolic__result_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_3_has_been_sent_reg_load_en = __systolic__result_chans__0_3_valid_and_ready_txfr | __systolic__result_chans__0_3_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__0_4_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__1_3_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__0_3_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__0_3_reg <= __systolic__hor_chans__0_3_reg_init;
      __systolic__hor_chans__0_3_valid_reg <= 1'h0;
      __systolic__vert_chans__0_3_reg <= __systolic__vert_chans__0_3_reg_init;
      __systolic__vert_chans__0_3_valid_reg <= 1'h0;
      __systolic__hor_chans__0_4_reg <= __systolic__hor_chans__0_4_reg_init;
      __systolic__hor_chans__0_4_valid_reg <= 1'h0;
      __systolic__vert_chans__1_3_reg <= __systolic__vert_chans__1_3_reg_init;
      __systolic__vert_chans__1_3_valid_reg <= 1'h0;
      __systolic__result_chans__0_3_reg <= __systolic__result_chans__0_3_reg_init;
      __systolic__result_chans__0_3_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_69402 ? one_hot_sel_69401 : ____state_1;
      ____state_2 <= or_69411 ? one_hot_sel_69410 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_69304 : ____state_0;
      ____state_3 <= or_69417 ? one_hot_sel_69416 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__0_4_has_been_sent_reg <= __systolic__hor_chans__0_4_has_been_sent_reg_load_en ? __systolic__hor_chans__0_4_not_stage_load : __systolic__hor_chans__0_4_has_been_sent_reg;
      __systolic__vert_chans__1_3_has_been_sent_reg <= __systolic__vert_chans__1_3_has_been_sent_reg_load_en ? __systolic__hor_chans__0_4_not_stage_load : __systolic__vert_chans__1_3_has_been_sent_reg;
      __systolic__result_chans__0_3_has_been_sent_reg <= __systolic__result_chans__0_3_has_been_sent_reg_load_en ? __systolic__result_chans__0_3_not_stage_load : __systolic__result_chans__0_3_has_been_sent_reg;
      __systolic__hor_chans__0_3_reg <= systolic__hor_chans__0_3_load_en ? systolic__hor_chans__0_3 : __systolic__hor_chans__0_3_reg;
      __systolic__hor_chans__0_3_valid_reg <= systolic__hor_chans__0_3_valid_load_en ? systolic__hor_chans__0_3_vld : __systolic__hor_chans__0_3_valid_reg;
      __systolic__vert_chans__0_3_reg <= systolic__vert_chans__0_3_load_en ? systolic__vert_chans__0_3 : __systolic__vert_chans__0_3_reg;
      __systolic__vert_chans__0_3_valid_reg <= systolic__vert_chans__0_3_valid_load_en ? systolic__vert_chans__0_3_vld : __systolic__vert_chans__0_3_valid_reg;
      __systolic__hor_chans__0_4_reg <= systolic__hor_chans__0_4_load_en ? __systolic__hor_chans__0_3_reg : __systolic__hor_chans__0_4_reg;
      __systolic__hor_chans__0_4_valid_reg <= systolic__hor_chans__0_4_valid_load_en ? __systolic__hor_chans__0_4_valid_and_not_has_been_sent : __systolic__hor_chans__0_4_valid_reg;
      __systolic__vert_chans__1_3_reg <= systolic__vert_chans__1_3_load_en ? __systolic__vert_chans__0_3_reg : __systolic__vert_chans__1_3_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74589))) or_74589) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74591))) or_74591) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74593))) or_74593) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_69685;
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
  wire [26:0] shrl_69700;
  wire [27:0] shll_69702;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1492_3_case_1;
  wire [25:0] add_69711;
  wire sticky__2;
  wire [27:0] concat_69717;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_69758;
  wire nor_69753;
  wire nor_69754;
  wire nor_69744;
  wire nor_69745;
  wire and_69787;
  wire nor_69789;
  wire nor_69791;
  wire and_69784;
  wire nor_69780;
  wire and_69776;
  wire nor_69777;
  wire nor_69771;
  wire nor_69773;
  wire and_69816;
  wire nor_69797;
  wire nor_69798;
  wire and_69837;
  wire [1:0] priority_sel_69838;
  wire and_69833;
  wire and_69829;
  wire and_69825;
  wire [2:0] concat_69851;
  wire [2:0] concat_69848;
  wire [2:0] concat_69847;
  wire [2:0] concat_69845;
  wire [2:0] concat_69844;
  wire and_69856;
  wire [3:0] concat_69860;
  wire [3:0] sel_74481;
  wire [4:0] concat_69868;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_69575;
  wire eq_69576;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_69579;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_69582;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_69584;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_69886;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_69896;
  wire [5:0] sub_69897;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_69607;
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
  wire eq_69906;
  wire eq_69907;
  wire eq_69908;
  wire eq_69909;
  wire [23:0] fraction__6;
  wire or_74839;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_69618;
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
  wire and_reduce_69937;
  wire should_output;
  wire __systolic__hor_chans__1_1_vld_buf;
  wire __systolic__hor_chans__1_1_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_inv;
  wire __systolic__vert_chans__2_0_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_inv;
  wire or_69940;
  wire or_69943;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__1_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire __systolic__vert_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire and_69945;
  wire eq_69621;
  wire eq_69622;
  wire eq_69623;
  wire eq_69624;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__2_0_load_en;
  wire and_69952;
  wire and_69953;
  wire and_69954;
  wire and_69955;
  wire and_69956;
  wire __systolic__hor_chans__1_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_0_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_69641;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_69966;
  wire [4:0] one_hot_69967;
  wire [2:0] one_hot_69968;
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
  wire [27:0] shrl_69957;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_70083;
  wire and_70084;
  wire and_70085;
  wire and_70092;
  wire and_70093;
  wire and_70094;
  wire and_70100;
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
  wire [2:0] concat_70087;
  wire [3:0] concat_70096;
  wire [1:0] concat_70102;
  wire [1:0] unexpand_for_next_value_1492_3_case_0;
  wire __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_0_valid_and_ready_txfr;
  wire __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_0_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__1_0_load_en;
  wire systolic__vert_chans__1_0_load_en;
  wire or_74595;
  wire or_74597;
  wire or_74599;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_69991;
  wire [7:0] one_hot_sel_70088;
  wire or_70089;
  wire [22:0] one_hot_sel_70097;
  wire or_70098;
  wire [1:0] one_hot_sel_70103;
  wire or_70104;
  wire __systolic__hor_chans__1_1_not_stage_load;
  wire __systolic__hor_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_0_not_stage_load;
  wire __systolic__result_chans__1_0_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_69685 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_69685;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_69700 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_69702 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1492_3_case_1 = 2'h0;
  assign add_69711 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1492_3_case_1, shrl_69700[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_69685 | shll_69702[26:3]) != 24'h00_0000;
  assign concat_69717 = {add_69711[24:0], shrl_69700[2:1], shrl_69700[0] | sticky__2};
  assign accumbs_fraction = add_69711[25] ? -concat_69717 : concat_69717;
  assign carry_bit = accumbs_fraction[27];
  assign nor_69758 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_69753 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_69754 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_69744 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_69745 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_69787 = ~(carry_bit | accumbs_fraction[26]) & nor_69758;
  assign nor_69789 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_69791 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_69784 = nor_69754 & nor_69753;
  assign nor_69780 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_69776 = nor_69745 & nor_69744;
  assign nor_69777 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_69771 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_69773 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_69816 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_69789;
  assign nor_69797 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_69798 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_69837 = and_69787 & and_69816;
  assign priority_sel_69838 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_69758), and_69787}, {nor_69791, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_69791});
  assign and_69833 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_69780;
  assign and_69829 = nor_69773 & nor_69771;
  assign and_69825 = nor_69798 & nor_69797;
  assign concat_69851 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_69789) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_69848 = {and_69784, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_69753), and_69784}, unexpand_for_next_value_1492_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_69754, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_69847 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_69780) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_69845 = {and_69776, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_69744), and_69776}, {nor_69777, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_69745, nor_69777})};
  assign concat_69844 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_69771) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_69773, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_69856 = and_69784 & and_69833;
  assign concat_69860 = {1'h1, and_69825, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_69797), and_69825}, unexpand_for_next_value_1492_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_69798, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74481 = ~(~and_69837 | and_69856) ? {1'h1, ~(~and_69784 | and_69833) ? concat_69847 : concat_69848} : {and_69837, priority_sel_3b_2way({~(~and_69787 | and_69816), and_69837}, {priority_sel_69838, 1'h0}, concat_69851, {1'h0, priority_sel_69838})};
  assign concat_69868 = {1'h1, and_69776 & and_69829 ? concat_69860 : {1'h0, ~(~and_69776 | and_69829) ? concat_69844 : concat_69845}};
  assign leading_zeroes = and_69837 & and_69856 ? concat_69868 : {1'h0, sel_74481};
  assign a_bexp__1 = __systolic__hor_chans__1_0_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__1_0_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__1_0_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__1_0_reg[22:0];
  assign eq_69575 = a_bexp__1 == 8'h00;
  assign eq_69576 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_69579 = ~(eq_69575 | eq_69576);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_69582 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_69584 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_69582 & {48{nor_69579}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_69584} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_69579}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_69886 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_69886[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_69896 = {1'h0, accum_bexp} + 9'h001;
  assign sub_69897 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_69711 == 26'h000_0000 & ~(shrl_69700[1] | shrl_69700[2]) & ~(shrl_69700[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_69896};
  assign wide_exponent_associative_element__1 = {{4{sub_69897[5]}}, sub_69897};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_69607 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__1_0_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__1_0_not_has_been_sent = ~__systolic__result_chans__1_0_has_been_sent_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_69607;
  assign __systolic__result_chans__1_0_valid_and_not_has_been_sent = __systolic__result_chans__1_0_vld_buf & __systolic__result_chans__1_0_not_has_been_sent;
  assign systolic__result_chans__1_0_valid_load_en = systolic__result_chans__1_0_rdy | systolic__result_chans__1_0_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_69607 | ~fraction__4[23]);
  assign systolic__result_chans__1_0_load_en = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_valid_load_en;
  assign eq_69906 = accum_bexp == high_exp;
  assign eq_69907 = accum_fraction == 23'h00_0000;
  assign eq_69908 = prod_bexp == high_exp;
  assign eq_69909 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74839 = ~p1_should_output | systolic__result_chans__1_0_load_en | __systolic__result_chans__1_0_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74839;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_69618 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_69906 | ~eq_69907 | accum_sign) | ~(~eq_69908 | ~eq_69909 | prod_sign);
  assign has_neg_inf = eq_69906 & eq_69907 & accum_sign | eq_69908 & eq_69909 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_69618 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_0_valid_reg & __systolic__vert_chans__1_0_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_69906 | eq_69907) | ~(~eq_69908 | eq_69909) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_69906 & eq_69907 | eq_69908 & eq_69909;
  assign and_reduce_69937 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__1_1_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__1_1_not_has_been_sent = ~__systolic__hor_chans__1_1_has_been_sent_reg;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign __systolic__vert_chans__2_0_not_has_been_sent = ~__systolic__vert_chans__2_0_has_been_sent_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign or_69940 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_69937;
  assign or_69943 = is_operand_inf | wide_exponent__2[8] | and_reduce_69937 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__1_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_vld_buf & __systolic__hor_chans__1_1_not_has_been_sent;
  assign systolic__hor_chans__1_1_valid_load_en = systolic__hor_chans__1_1_rdy | systolic__hor_chans__1_1_valid_inv;
  assign __systolic__vert_chans__2_0_valid_and_not_has_been_sent = __systolic__hor_chans__1_1_vld_buf & __systolic__vert_chans__2_0_not_has_been_sent;
  assign systolic__vert_chans__2_0_valid_load_en = systolic__vert_chans__2_0_rdy | systolic__vert_chans__2_0_valid_inv;
  assign and_69945 = ~should_output & ~is_result_nan__1;
  assign eq_69621 = a_bexp__1 == high_exp;
  assign eq_69622 = a_fraction__1 == 23'h00_0000;
  assign eq_69623 = b_bexp__2 == high_exp;
  assign eq_69624 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__1_1_load_en = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_valid_load_en;
  assign and_69952 = ~should_output & ~or_69940;
  assign and_69953 = ~should_output & or_69940;
  assign and_69954 = ~should_output & is_result_nan__1;
  assign and_69955 = and_69945 & ~or_69943;
  assign and_69956 = and_69945 & or_69943;
  assign __systolic__hor_chans__1_1_has_sent_or_is_ready = systolic__hor_chans__1_1_load_en | __systolic__hor_chans__1_1_has_been_sent_reg;
  assign __systolic__vert_chans__2_0_has_sent_or_is_ready = systolic__vert_chans__2_0_load_en | __systolic__vert_chans__2_0_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_69952, and_69953};
  assign ____state_2__next_value_predicates = {should_output, and_69954, and_69955, and_69956};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_69575 | eq_69576;
  assign has_inf_arg = eq_69621 & eq_69622 | eq_69623 & eq_69624;
  assign and_reduce_69641 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__1_1_has_sent_or_is_ready & __systolic__vert_chans__2_0_has_sent_or_is_ready;
  assign one_hot_69966 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_69967 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_69968 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_69711[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_69886, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_69621 | eq_69622) | ~(~eq_69623 | eq_69624) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign shrl_69957 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__1_0_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__1_0_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_70083 = should_output & p1_data_enable;
  assign and_70084 = and_69952 & p1_data_enable;
  assign and_70085 = and_69953 & p1_data_enable;
  assign and_70092 = and_69954 & p1_data_enable;
  assign and_70093 = and_69955 & p1_data_enable;
  assign and_70094 = and_69956 & p1_data_enable;
  assign and_70100 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__1_0_valid_load_en = p0_data_enable | systolic__hor_chans__1_0_valid_inv;
  assign systolic__vert_chans__1_0_valid_load_en = p0_data_enable | systolic__vert_chans__1_0_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_69966[2] & and_69952 == one_hot_69966[1] & and_69953 == one_hot_69966[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_69967[3] & and_69954 == one_hot_69967[2] & and_69955 == one_hot_69967[1] & and_69956 == one_hot_69967[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_69968[1] & should_output == one_hot_69968[0];
  assign result_fraction__1 = shrl_69957[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_69641 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_69641 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_70087 = {and_70083, and_70084, and_70085};
  assign concat_70096 = {and_70083, and_70092, and_70093, and_70094};
  assign concat_70102 = {and_70100, and_70083};
  assign unexpand_for_next_value_1492_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_1_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_valid_and_ready_txfr = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_load_en;
  assign __systolic__vert_chans__2_0_valid_and_ready_txfr = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_load_en;
  assign __systolic__result_chans__1_0_valid_and_all_active_outputs_ready = __systolic__result_chans__1_0_vld_buf & or_74839;
  assign __systolic__result_chans__1_0_valid_and_ready_txfr = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__1_0_load_en = systolic__hor_chans__1_0_vld & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = systolic__vert_chans__1_0_vld & systolic__vert_chans__1_0_valid_load_en;
  assign or_74595 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74597 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74599 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_69943}};
  assign result_exponent__2 = or_69940 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_69991 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_70088 = high_exp & {8{concat_70087[0]}} | wide_exponent__2[7:0] & {8{concat_70087[1]}} | 8'h00 & {8{concat_70087[2]}};
  assign or_70089 = and_70083 | and_70084 | and_70085;
  assign one_hot_sel_70097 = 23'h00_0000 & {23{concat_70096[0]}} | result_fraction__1 & {23{concat_70096[1]}} | nan_fraction & {23{concat_70096[2]}} | 23'h00_0000 & {23{concat_70096[3]}};
  assign or_70098 = and_70083 | and_70092 | and_70093 | and_70094;
  assign one_hot_sel_70103 = unexpand_for_next_value_1492_3_case_1 & {2{concat_70102[0]}} | unexpand_for_next_value_1492_3_case_0 & {2{concat_70102[1]}};
  assign or_70104 = and_70100 | and_70083;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
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
      ____state_1 <= or_70089 ? one_hot_sel_70088 : ____state_1;
      ____state_2 <= or_70098 ? one_hot_sel_70097 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_69991 : ____state_0;
      ____state_3 <= or_70104 ? one_hot_sel_70103 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74595))) or_74595) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74597))) or_74597) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74599))) or_74599) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_70372;
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
  wire [26:0] shrl_70387;
  wire [27:0] shll_70389;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1523_3_case_1;
  wire [25:0] add_70398;
  wire sticky__2;
  wire [27:0] concat_70404;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_70445;
  wire nor_70440;
  wire nor_70441;
  wire nor_70431;
  wire nor_70432;
  wire and_70474;
  wire nor_70476;
  wire nor_70478;
  wire and_70471;
  wire nor_70467;
  wire and_70463;
  wire nor_70464;
  wire nor_70458;
  wire nor_70460;
  wire and_70503;
  wire nor_70484;
  wire nor_70485;
  wire and_70524;
  wire [1:0] priority_sel_70525;
  wire and_70520;
  wire and_70516;
  wire and_70512;
  wire [2:0] concat_70538;
  wire [2:0] concat_70535;
  wire [2:0] concat_70534;
  wire [2:0] concat_70532;
  wire [2:0] concat_70531;
  wire and_70543;
  wire [3:0] concat_70547;
  wire [3:0] sel_74489;
  wire [4:0] concat_70555;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_70262;
  wire eq_70263;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_70266;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_70269;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_70271;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_70573;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_70583;
  wire [5:0] sub_70584;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_70294;
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
  wire eq_70593;
  wire eq_70594;
  wire eq_70595;
  wire eq_70596;
  wire [23:0] fraction__6;
  wire or_74857;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_70305;
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
  wire and_reduce_70624;
  wire should_output;
  wire __systolic__hor_chans__1_2_vld_buf;
  wire __systolic__hor_chans__1_2_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_inv;
  wire __systolic__vert_chans__2_1_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_inv;
  wire or_70627;
  wire or_70630;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire __systolic__vert_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire and_70632;
  wire eq_70308;
  wire eq_70309;
  wire eq_70310;
  wire eq_70311;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__1_2_load_en;
  wire systolic__vert_chans__2_1_load_en;
  wire and_70639;
  wire and_70640;
  wire and_70641;
  wire and_70642;
  wire and_70643;
  wire __systolic__hor_chans__1_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_1_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_70328;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_70653;
  wire [4:0] one_hot_70654;
  wire [2:0] one_hot_70655;
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
  wire [27:0] shrl_70644;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_70770;
  wire and_70771;
  wire and_70772;
  wire and_70779;
  wire and_70780;
  wire and_70781;
  wire and_70787;
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
  wire [2:0] concat_70774;
  wire [3:0] concat_70783;
  wire [1:0] concat_70789;
  wire [1:0] unexpand_for_next_value_1523_3_case_0;
  wire __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_1_valid_and_ready_txfr;
  wire __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_1_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__1_1_load_en;
  wire systolic__vert_chans__1_1_load_en;
  wire or_74601;
  wire or_74603;
  wire or_74605;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_70678;
  wire [7:0] one_hot_sel_70775;
  wire or_70776;
  wire [22:0] one_hot_sel_70784;
  wire or_70785;
  wire [1:0] one_hot_sel_70790;
  wire or_70791;
  wire __systolic__hor_chans__1_2_not_stage_load;
  wire __systolic__hor_chans__1_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_1_not_stage_load;
  wire __systolic__result_chans__1_1_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_70372 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_70372;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_70387 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_70389 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1523_3_case_1 = 2'h0;
  assign add_70398 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1523_3_case_1, shrl_70387[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_70372 | shll_70389[26:3]) != 24'h00_0000;
  assign concat_70404 = {add_70398[24:0], shrl_70387[2:1], shrl_70387[0] | sticky__2};
  assign accumbs_fraction = add_70398[25] ? -concat_70404 : concat_70404;
  assign carry_bit = accumbs_fraction[27];
  assign nor_70445 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_70440 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_70441 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_70431 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_70432 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_70474 = ~(carry_bit | accumbs_fraction[26]) & nor_70445;
  assign nor_70476 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_70478 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_70471 = nor_70441 & nor_70440;
  assign nor_70467 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_70463 = nor_70432 & nor_70431;
  assign nor_70464 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_70458 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_70460 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_70503 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_70476;
  assign nor_70484 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_70485 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_70524 = and_70474 & and_70503;
  assign priority_sel_70525 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_70445), and_70474}, {nor_70478, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_70478});
  assign and_70520 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_70467;
  assign and_70516 = nor_70460 & nor_70458;
  assign and_70512 = nor_70485 & nor_70484;
  assign concat_70538 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_70476) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_70535 = {and_70471, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_70440), and_70471}, unexpand_for_next_value_1523_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_70441, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_70534 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_70467) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_70532 = {and_70463, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_70431), and_70463}, {nor_70464, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_70432, nor_70464})};
  assign concat_70531 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_70458) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_70460, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_70543 = and_70471 & and_70520;
  assign concat_70547 = {1'h1, and_70512, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_70484), and_70512}, unexpand_for_next_value_1523_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_70485, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74489 = ~(~and_70524 | and_70543) ? {1'h1, ~(~and_70471 | and_70520) ? concat_70534 : concat_70535} : {and_70524, priority_sel_3b_2way({~(~and_70474 | and_70503), and_70524}, {priority_sel_70525, 1'h0}, concat_70538, {1'h0, priority_sel_70525})};
  assign concat_70555 = {1'h1, and_70463 & and_70516 ? concat_70547 : {1'h0, ~(~and_70463 | and_70516) ? concat_70531 : concat_70532}};
  assign leading_zeroes = and_70524 & and_70543 ? concat_70555 : {1'h0, sel_74489};
  assign a_bexp__1 = __systolic__hor_chans__1_1_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__1_1_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__1_1_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__1_1_reg[22:0];
  assign eq_70262 = a_bexp__1 == 8'h00;
  assign eq_70263 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_70266 = ~(eq_70262 | eq_70263);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_70269 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_70271 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_70269 & {48{nor_70266}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_70271} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_70266}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_70573 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_70573[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_70583 = {1'h0, accum_bexp} + 9'h001;
  assign sub_70584 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_70398 == 26'h000_0000 & ~(shrl_70387[1] | shrl_70387[2]) & ~(shrl_70387[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_70583};
  assign wide_exponent_associative_element__1 = {{4{sub_70584[5]}}, sub_70584};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_70294 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__1_1_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__1_1_not_has_been_sent = ~__systolic__result_chans__1_1_has_been_sent_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_70294;
  assign __systolic__result_chans__1_1_valid_and_not_has_been_sent = __systolic__result_chans__1_1_vld_buf & __systolic__result_chans__1_1_not_has_been_sent;
  assign systolic__result_chans__1_1_valid_load_en = systolic__result_chans__1_1_rdy | systolic__result_chans__1_1_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_70294 | ~fraction__4[23]);
  assign systolic__result_chans__1_1_load_en = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_valid_load_en;
  assign eq_70593 = accum_bexp == high_exp;
  assign eq_70594 = accum_fraction == 23'h00_0000;
  assign eq_70595 = prod_bexp == high_exp;
  assign eq_70596 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74857 = ~p1_should_output | systolic__result_chans__1_1_load_en | __systolic__result_chans__1_1_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74857;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_70305 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_70593 | ~eq_70594 | accum_sign) | ~(~eq_70595 | ~eq_70596 | prod_sign);
  assign has_neg_inf = eq_70593 & eq_70594 & accum_sign | eq_70595 & eq_70596 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_70305 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_1_valid_reg & __systolic__vert_chans__1_1_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_70593 | eq_70594) | ~(~eq_70595 | eq_70596) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_70593 & eq_70594 | eq_70595 & eq_70596;
  assign and_reduce_70624 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__1_2_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__1_2_not_has_been_sent = ~__systolic__hor_chans__1_2_has_been_sent_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign __systolic__vert_chans__2_1_not_has_been_sent = ~__systolic__vert_chans__2_1_has_been_sent_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign or_70627 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_70624;
  assign or_70630 = is_operand_inf | wide_exponent__2[8] | and_reduce_70624 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__1_2_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_vld_buf & __systolic__hor_chans__1_2_not_has_been_sent;
  assign systolic__hor_chans__1_2_valid_load_en = systolic__hor_chans__1_2_rdy | systolic__hor_chans__1_2_valid_inv;
  assign __systolic__vert_chans__2_1_valid_and_not_has_been_sent = __systolic__hor_chans__1_2_vld_buf & __systolic__vert_chans__2_1_not_has_been_sent;
  assign systolic__vert_chans__2_1_valid_load_en = systolic__vert_chans__2_1_rdy | systolic__vert_chans__2_1_valid_inv;
  assign and_70632 = ~should_output & ~is_result_nan__1;
  assign eq_70308 = a_bexp__1 == high_exp;
  assign eq_70309 = a_fraction__1 == 23'h00_0000;
  assign eq_70310 = b_bexp__2 == high_exp;
  assign eq_70311 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__1_2_load_en = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_valid_load_en;
  assign and_70639 = ~should_output & ~or_70627;
  assign and_70640 = ~should_output & or_70627;
  assign and_70641 = ~should_output & is_result_nan__1;
  assign and_70642 = and_70632 & ~or_70630;
  assign and_70643 = and_70632 & or_70630;
  assign __systolic__hor_chans__1_2_has_sent_or_is_ready = systolic__hor_chans__1_2_load_en | __systolic__hor_chans__1_2_has_been_sent_reg;
  assign __systolic__vert_chans__2_1_has_sent_or_is_ready = systolic__vert_chans__2_1_load_en | __systolic__vert_chans__2_1_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_70639, and_70640};
  assign ____state_2__next_value_predicates = {should_output, and_70641, and_70642, and_70643};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_70262 | eq_70263;
  assign has_inf_arg = eq_70308 & eq_70309 | eq_70310 & eq_70311;
  assign and_reduce_70328 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__1_2_has_sent_or_is_ready & __systolic__vert_chans__2_1_has_sent_or_is_ready;
  assign one_hot_70653 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_70654 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_70655 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_70398[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_70573, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_70308 | eq_70309) | ~(~eq_70310 | eq_70311) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign shrl_70644 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__1_1_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__1_1_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_70770 = should_output & p1_data_enable;
  assign and_70771 = and_70639 & p1_data_enable;
  assign and_70772 = and_70640 & p1_data_enable;
  assign and_70779 = and_70641 & p1_data_enable;
  assign and_70780 = and_70642 & p1_data_enable;
  assign and_70781 = and_70643 & p1_data_enable;
  assign and_70787 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__1_1_valid_load_en = p0_data_enable | systolic__hor_chans__1_1_valid_inv;
  assign systolic__vert_chans__1_1_valid_load_en = p0_data_enable | systolic__vert_chans__1_1_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_70653[2] & and_70639 == one_hot_70653[1] & and_70640 == one_hot_70653[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_70654[3] & and_70641 == one_hot_70654[2] & and_70642 == one_hot_70654[1] & and_70643 == one_hot_70654[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_70655[1] & should_output == one_hot_70655[0];
  assign result_fraction__1 = shrl_70644[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_70328 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_70328 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_70774 = {and_70770, and_70771, and_70772};
  assign concat_70783 = {and_70770, and_70779, and_70780, and_70781};
  assign concat_70789 = {and_70787, and_70770};
  assign unexpand_for_next_value_1523_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_2_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_valid_and_ready_txfr = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_load_en;
  assign __systolic__vert_chans__2_1_valid_and_ready_txfr = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_load_en;
  assign __systolic__result_chans__1_1_valid_and_all_active_outputs_ready = __systolic__result_chans__1_1_vld_buf & or_74857;
  assign __systolic__result_chans__1_1_valid_and_ready_txfr = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__1_1_load_en = systolic__hor_chans__1_1_vld & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = systolic__vert_chans__1_1_vld & systolic__vert_chans__1_1_valid_load_en;
  assign or_74601 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74603 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74605 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_70630}};
  assign result_exponent__2 = or_70627 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_70678 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_70775 = high_exp & {8{concat_70774[0]}} | wide_exponent__2[7:0] & {8{concat_70774[1]}} | 8'h00 & {8{concat_70774[2]}};
  assign or_70776 = and_70770 | and_70771 | and_70772;
  assign one_hot_sel_70784 = 23'h00_0000 & {23{concat_70783[0]}} | result_fraction__1 & {23{concat_70783[1]}} | nan_fraction & {23{concat_70783[2]}} | 23'h00_0000 & {23{concat_70783[3]}};
  assign or_70785 = and_70770 | and_70779 | and_70780 | and_70781;
  assign one_hot_sel_70790 = unexpand_for_next_value_1523_3_case_1 & {2{concat_70789[0]}} | unexpand_for_next_value_1523_3_case_0 & {2{concat_70789[1]}};
  assign or_70791 = and_70787 | and_70770;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
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
      ____state_1 <= or_70776 ? one_hot_sel_70775 : ____state_1;
      ____state_2 <= or_70785 ? one_hot_sel_70784 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_70678 : ____state_0;
      ____state_3 <= or_70791 ? one_hot_sel_70790 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74601))) or_74601) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74603))) or_74603) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74605))) or_74605) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__1_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__1_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__1_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_71059;
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
  wire [26:0] shrl_71074;
  wire [27:0] shll_71076;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1554_3_case_1;
  wire [25:0] add_71085;
  wire sticky__2;
  wire [27:0] concat_71091;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_71132;
  wire nor_71127;
  wire nor_71128;
  wire nor_71118;
  wire nor_71119;
  wire and_71161;
  wire nor_71163;
  wire nor_71165;
  wire and_71158;
  wire nor_71154;
  wire and_71150;
  wire nor_71151;
  wire nor_71145;
  wire nor_71147;
  wire and_71190;
  wire nor_71171;
  wire nor_71172;
  wire and_71211;
  wire [1:0] priority_sel_71212;
  wire and_71207;
  wire and_71203;
  wire and_71199;
  wire [2:0] concat_71225;
  wire [2:0] concat_71222;
  wire [2:0] concat_71221;
  wire [2:0] concat_71219;
  wire [2:0] concat_71218;
  wire and_71230;
  wire [3:0] concat_71234;
  wire [3:0] sel_74497;
  wire [4:0] concat_71242;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_70949;
  wire eq_70950;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_70953;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_70956;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_70958;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_71260;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_71270;
  wire [5:0] sub_71271;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_70981;
  wire __systolic__result_chans__1_2_vld_buf;
  wire __systolic__result_chans__1_2_not_has_been_sent;
  wire systolic__result_chans__1_2_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_2_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__1_2_load_en;
  wire eq_71280;
  wire eq_71281;
  wire eq_71282;
  wire eq_71283;
  wire [23:0] fraction__6;
  wire or_74875;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_70992;
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
  wire and_reduce_71311;
  wire should_output;
  wire __systolic__hor_chans__1_3_vld_buf;
  wire __systolic__hor_chans__1_3_not_has_been_sent;
  wire systolic__hor_chans__1_3_valid_inv;
  wire __systolic__vert_chans__2_2_not_has_been_sent;
  wire systolic__vert_chans__2_2_valid_inv;
  wire or_71314;
  wire or_71317;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__1_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_3_valid_load_en;
  wire __systolic__vert_chans__2_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_2_valid_load_en;
  wire and_71319;
  wire eq_70995;
  wire eq_70996;
  wire eq_70997;
  wire eq_70998;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__1_3_load_en;
  wire systolic__vert_chans__2_2_load_en;
  wire and_71326;
  wire and_71327;
  wire and_71328;
  wire and_71329;
  wire and_71330;
  wire __systolic__hor_chans__1_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_2_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_71015;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_71340;
  wire [4:0] one_hot_71341;
  wire [2:0] one_hot_71342;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__1_2_valid_inv;
  wire systolic__vert_chans__1_2_valid_inv;
  wire [27:0] shrl_71331;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_71457;
  wire and_71458;
  wire and_71459;
  wire and_71466;
  wire and_71467;
  wire and_71468;
  wire and_71474;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire systolic__vert_chans__1_2_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_71461;
  wire [3:0] concat_71470;
  wire [1:0] concat_71476;
  wire [1:0] unexpand_for_next_value_1554_3_case_0;
  wire __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_3_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_2_valid_and_ready_txfr;
  wire __systolic__result_chans__1_2_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_2_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__1_2_load_en;
  wire systolic__vert_chans__1_2_load_en;
  wire or_74607;
  wire or_74609;
  wire or_74611;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_71365;
  wire [7:0] one_hot_sel_71462;
  wire or_71463;
  wire [22:0] one_hot_sel_71471;
  wire or_71472;
  wire [1:0] one_hot_sel_71477;
  wire or_71478;
  wire __systolic__hor_chans__1_3_not_stage_load;
  wire __systolic__hor_chans__1_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_2_not_stage_load;
  wire __systolic__result_chans__1_2_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_71059 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_71059;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_71074 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_71076 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1554_3_case_1 = 2'h0;
  assign add_71085 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1554_3_case_1, shrl_71074[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_71059 | shll_71076[26:3]) != 24'h00_0000;
  assign concat_71091 = {add_71085[24:0], shrl_71074[2:1], shrl_71074[0] | sticky__2};
  assign accumbs_fraction = add_71085[25] ? -concat_71091 : concat_71091;
  assign carry_bit = accumbs_fraction[27];
  assign nor_71132 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_71127 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_71128 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_71118 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_71119 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_71161 = ~(carry_bit | accumbs_fraction[26]) & nor_71132;
  assign nor_71163 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_71165 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_71158 = nor_71128 & nor_71127;
  assign nor_71154 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_71150 = nor_71119 & nor_71118;
  assign nor_71151 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_71145 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_71147 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_71190 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_71163;
  assign nor_71171 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_71172 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_71211 = and_71161 & and_71190;
  assign priority_sel_71212 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_71132), and_71161}, {nor_71165, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_71165});
  assign and_71207 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_71154;
  assign and_71203 = nor_71147 & nor_71145;
  assign and_71199 = nor_71172 & nor_71171;
  assign concat_71225 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_71163) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_71222 = {and_71158, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_71127), and_71158}, unexpand_for_next_value_1554_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_71128, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_71221 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_71154) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_71219 = {and_71150, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_71118), and_71150}, {nor_71151, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_71119, nor_71151})};
  assign concat_71218 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_71145) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_71147, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_71230 = and_71158 & and_71207;
  assign concat_71234 = {1'h1, and_71199, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_71171), and_71199}, unexpand_for_next_value_1554_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_71172, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74497 = ~(~and_71211 | and_71230) ? {1'h1, ~(~and_71158 | and_71207) ? concat_71221 : concat_71222} : {and_71211, priority_sel_3b_2way({~(~and_71161 | and_71190), and_71211}, {priority_sel_71212, 1'h0}, concat_71225, {1'h0, priority_sel_71212})};
  assign concat_71242 = {1'h1, and_71150 & and_71203 ? concat_71234 : {1'h0, ~(~and_71150 | and_71203) ? concat_71218 : concat_71219}};
  assign leading_zeroes = and_71211 & and_71230 ? concat_71242 : {1'h0, sel_74497};
  assign a_bexp__1 = __systolic__hor_chans__1_2_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__1_2_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__1_2_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__1_2_reg[22:0];
  assign eq_70949 = a_bexp__1 == 8'h00;
  assign eq_70950 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_70953 = ~(eq_70949 | eq_70950);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_70956 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_70958 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_70956 & {48{nor_70953}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_70958} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_70953}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_71260 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_71260[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_71270 = {1'h0, accum_bexp} + 9'h001;
  assign sub_71271 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_71085 == 26'h000_0000 & ~(shrl_71074[1] | shrl_71074[2]) & ~(shrl_71074[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_71270};
  assign wide_exponent_associative_element__1 = {{4{sub_71271[5]}}, sub_71271};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_70981 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__1_2_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__1_2_not_has_been_sent = ~__systolic__result_chans__1_2_has_been_sent_reg;
  assign systolic__result_chans__1_2_valid_inv = ~__systolic__result_chans__1_2_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_70981;
  assign __systolic__result_chans__1_2_valid_and_not_has_been_sent = __systolic__result_chans__1_2_vld_buf & __systolic__result_chans__1_2_not_has_been_sent;
  assign systolic__result_chans__1_2_valid_load_en = systolic__result_chans__1_2_rdy | systolic__result_chans__1_2_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_70981 | ~fraction__4[23]);
  assign systolic__result_chans__1_2_load_en = __systolic__result_chans__1_2_valid_and_not_has_been_sent & systolic__result_chans__1_2_valid_load_en;
  assign eq_71280 = accum_bexp == high_exp;
  assign eq_71281 = accum_fraction == 23'h00_0000;
  assign eq_71282 = prod_bexp == high_exp;
  assign eq_71283 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74875 = ~p1_should_output | systolic__result_chans__1_2_load_en | __systolic__result_chans__1_2_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74875;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_70992 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_71280 | ~eq_71281 | accum_sign) | ~(~eq_71282 | ~eq_71283 | prod_sign);
  assign has_neg_inf = eq_71280 & eq_71281 & accum_sign | eq_71282 & eq_71283 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_70992 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_2_valid_reg & __systolic__vert_chans__1_2_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_71280 | eq_71281) | ~(~eq_71282 | eq_71283) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_71280 & eq_71281 | eq_71282 & eq_71283;
  assign and_reduce_71311 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__1_3_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__1_3_not_has_been_sent = ~__systolic__hor_chans__1_3_has_been_sent_reg;
  assign systolic__hor_chans__1_3_valid_inv = ~__systolic__hor_chans__1_3_valid_reg;
  assign __systolic__vert_chans__2_2_not_has_been_sent = ~__systolic__vert_chans__2_2_has_been_sent_reg;
  assign systolic__vert_chans__2_2_valid_inv = ~__systolic__vert_chans__2_2_valid_reg;
  assign or_71314 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_71311;
  assign or_71317 = is_operand_inf | wide_exponent__2[8] | and_reduce_71311 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__1_3_valid_and_not_has_been_sent = __systolic__hor_chans__1_3_vld_buf & __systolic__hor_chans__1_3_not_has_been_sent;
  assign systolic__hor_chans__1_3_valid_load_en = systolic__hor_chans__1_3_rdy | systolic__hor_chans__1_3_valid_inv;
  assign __systolic__vert_chans__2_2_valid_and_not_has_been_sent = __systolic__hor_chans__1_3_vld_buf & __systolic__vert_chans__2_2_not_has_been_sent;
  assign systolic__vert_chans__2_2_valid_load_en = systolic__vert_chans__2_2_rdy | systolic__vert_chans__2_2_valid_inv;
  assign and_71319 = ~should_output & ~is_result_nan__1;
  assign eq_70995 = a_bexp__1 == high_exp;
  assign eq_70996 = a_fraction__1 == 23'h00_0000;
  assign eq_70997 = b_bexp__2 == high_exp;
  assign eq_70998 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__1_3_load_en = __systolic__hor_chans__1_3_valid_and_not_has_been_sent & systolic__hor_chans__1_3_valid_load_en;
  assign systolic__vert_chans__2_2_load_en = __systolic__vert_chans__2_2_valid_and_not_has_been_sent & systolic__vert_chans__2_2_valid_load_en;
  assign and_71326 = ~should_output & ~or_71314;
  assign and_71327 = ~should_output & or_71314;
  assign and_71328 = ~should_output & is_result_nan__1;
  assign and_71329 = and_71319 & ~or_71317;
  assign and_71330 = and_71319 & or_71317;
  assign __systolic__hor_chans__1_3_has_sent_or_is_ready = systolic__hor_chans__1_3_load_en | __systolic__hor_chans__1_3_has_been_sent_reg;
  assign __systolic__vert_chans__2_2_has_sent_or_is_ready = systolic__vert_chans__2_2_load_en | __systolic__vert_chans__2_2_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_71326, and_71327};
  assign ____state_2__next_value_predicates = {should_output, and_71328, and_71329, and_71330};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_70949 | eq_70950;
  assign has_inf_arg = eq_70995 & eq_70996 | eq_70997 & eq_70998;
  assign and_reduce_71015 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__1_3_has_sent_or_is_ready & __systolic__vert_chans__2_2_has_sent_or_is_ready;
  assign one_hot_71340 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_71341 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_71342 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_71085[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_71260, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_70995 | eq_70996) | ~(~eq_70997 | eq_70998) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign systolic__vert_chans__1_2_valid_inv = ~__systolic__vert_chans__1_2_valid_reg;
  assign shrl_71331 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__1_2_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__1_2_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_71457 = should_output & p1_data_enable;
  assign and_71458 = and_71326 & p1_data_enable;
  assign and_71459 = and_71327 & p1_data_enable;
  assign and_71466 = and_71328 & p1_data_enable;
  assign and_71467 = and_71329 & p1_data_enable;
  assign and_71468 = and_71330 & p1_data_enable;
  assign and_71474 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__1_2_valid_load_en = p0_data_enable | systolic__hor_chans__1_2_valid_inv;
  assign systolic__vert_chans__1_2_valid_load_en = p0_data_enable | systolic__vert_chans__1_2_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_71340[2] & and_71326 == one_hot_71340[1] & and_71327 == one_hot_71340[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_71341[3] & and_71328 == one_hot_71341[2] & and_71329 == one_hot_71341[1] & and_71330 == one_hot_71341[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_71342[1] & should_output == one_hot_71342[0];
  assign result_fraction__1 = shrl_71331[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_71015 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_71015 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_71461 = {and_71457, and_71458, and_71459};
  assign concat_71470 = {and_71457, and_71466, and_71467, and_71468};
  assign concat_71476 = {and_71474, and_71457};
  assign unexpand_for_next_value_1554_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_3_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__1_3_valid_and_ready_txfr = __systolic__hor_chans__1_3_valid_and_not_has_been_sent & systolic__hor_chans__1_3_load_en;
  assign __systolic__vert_chans__2_2_valid_and_ready_txfr = __systolic__vert_chans__2_2_valid_and_not_has_been_sent & systolic__vert_chans__2_2_load_en;
  assign __systolic__result_chans__1_2_valid_and_all_active_outputs_ready = __systolic__result_chans__1_2_vld_buf & or_74875;
  assign __systolic__result_chans__1_2_valid_and_ready_txfr = __systolic__result_chans__1_2_valid_and_not_has_been_sent & systolic__result_chans__1_2_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__1_2_load_en = systolic__hor_chans__1_2_vld & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__vert_chans__1_2_load_en = systolic__vert_chans__1_2_vld & systolic__vert_chans__1_2_valid_load_en;
  assign or_74607 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74609 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74611 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_71317}};
  assign result_exponent__2 = or_71314 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_71365 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_71462 = high_exp & {8{concat_71461[0]}} | wide_exponent__2[7:0] & {8{concat_71461[1]}} | 8'h00 & {8{concat_71461[2]}};
  assign or_71463 = and_71457 | and_71458 | and_71459;
  assign one_hot_sel_71471 = 23'h00_0000 & {23{concat_71470[0]}} | result_fraction__1 & {23{concat_71470[1]}} | nan_fraction & {23{concat_71470[2]}} | 23'h00_0000 & {23{concat_71470[3]}};
  assign or_71472 = and_71457 | and_71466 | and_71467 | and_71468;
  assign one_hot_sel_71477 = unexpand_for_next_value_1554_3_case_1 & {2{concat_71476[0]}} | unexpand_for_next_value_1554_3_case_0 & {2{concat_71476[1]}};
  assign or_71478 = and_71474 | and_71457;
  assign __systolic__hor_chans__1_3_not_stage_load = ~__systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_3_has_been_sent_reg_load_en = __systolic__hor_chans__1_3_valid_and_ready_txfr | __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_2_has_been_sent_reg_load_en = __systolic__vert_chans__2_2_valid_and_ready_txfr | __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_2_not_stage_load = ~__systolic__result_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_2_has_been_sent_reg_load_en = __systolic__result_chans__1_2_valid_and_ready_txfr | __systolic__result_chans__1_2_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__1_3_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__2_2_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__1_2_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_2_reg <= __systolic__hor_chans__1_2_reg_init;
      __systolic__hor_chans__1_2_valid_reg <= 1'h0;
      __systolic__vert_chans__1_2_reg <= __systolic__vert_chans__1_2_reg_init;
      __systolic__vert_chans__1_2_valid_reg <= 1'h0;
      __systolic__hor_chans__1_3_reg <= __systolic__hor_chans__1_3_reg_init;
      __systolic__hor_chans__1_3_valid_reg <= 1'h0;
      __systolic__vert_chans__2_2_reg <= __systolic__vert_chans__2_2_reg_init;
      __systolic__vert_chans__2_2_valid_reg <= 1'h0;
      __systolic__result_chans__1_2_reg <= __systolic__result_chans__1_2_reg_init;
      __systolic__result_chans__1_2_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_71463 ? one_hot_sel_71462 : ____state_1;
      ____state_2 <= or_71472 ? one_hot_sel_71471 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_71365 : ____state_0;
      ____state_3 <= or_71478 ? one_hot_sel_71477 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__1_3_has_been_sent_reg <= __systolic__hor_chans__1_3_has_been_sent_reg_load_en ? __systolic__hor_chans__1_3_not_stage_load : __systolic__hor_chans__1_3_has_been_sent_reg;
      __systolic__vert_chans__2_2_has_been_sent_reg <= __systolic__vert_chans__2_2_has_been_sent_reg_load_en ? __systolic__hor_chans__1_3_not_stage_load : __systolic__vert_chans__2_2_has_been_sent_reg;
      __systolic__result_chans__1_2_has_been_sent_reg <= __systolic__result_chans__1_2_has_been_sent_reg_load_en ? __systolic__result_chans__1_2_not_stage_load : __systolic__result_chans__1_2_has_been_sent_reg;
      __systolic__hor_chans__1_2_reg <= systolic__hor_chans__1_2_load_en ? systolic__hor_chans__1_2 : __systolic__hor_chans__1_2_reg;
      __systolic__hor_chans__1_2_valid_reg <= systolic__hor_chans__1_2_valid_load_en ? systolic__hor_chans__1_2_vld : __systolic__hor_chans__1_2_valid_reg;
      __systolic__vert_chans__1_2_reg <= systolic__vert_chans__1_2_load_en ? systolic__vert_chans__1_2 : __systolic__vert_chans__1_2_reg;
      __systolic__vert_chans__1_2_valid_reg <= systolic__vert_chans__1_2_valid_load_en ? systolic__vert_chans__1_2_vld : __systolic__vert_chans__1_2_valid_reg;
      __systolic__hor_chans__1_3_reg <= systolic__hor_chans__1_3_load_en ? __systolic__hor_chans__1_2_reg : __systolic__hor_chans__1_3_reg;
      __systolic__hor_chans__1_3_valid_reg <= systolic__hor_chans__1_3_valid_load_en ? __systolic__hor_chans__1_3_valid_and_not_has_been_sent : __systolic__hor_chans__1_3_valid_reg;
      __systolic__vert_chans__2_2_reg <= systolic__vert_chans__2_2_load_en ? __systolic__vert_chans__1_2_reg : __systolic__vert_chans__2_2_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74607))) or_74607) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74609))) or_74609) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74611))) or_74611) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__1_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__1_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__1_4_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__1_3_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_71746;
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
  wire [26:0] shrl_71761;
  wire [27:0] shll_71763;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1585_3_case_1;
  wire [25:0] add_71772;
  wire sticky__2;
  wire [27:0] concat_71778;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_71819;
  wire nor_71814;
  wire nor_71815;
  wire nor_71805;
  wire nor_71806;
  wire and_71848;
  wire nor_71850;
  wire nor_71852;
  wire and_71845;
  wire nor_71841;
  wire and_71837;
  wire nor_71838;
  wire nor_71832;
  wire nor_71834;
  wire and_71877;
  wire nor_71858;
  wire nor_71859;
  wire and_71898;
  wire [1:0] priority_sel_71899;
  wire and_71894;
  wire and_71890;
  wire and_71886;
  wire [2:0] concat_71912;
  wire [2:0] concat_71909;
  wire [2:0] concat_71908;
  wire [2:0] concat_71906;
  wire [2:0] concat_71905;
  wire and_71917;
  wire [3:0] concat_71921;
  wire [3:0] sel_74505;
  wire [4:0] concat_71929;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_71636;
  wire eq_71637;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_71640;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_71643;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_71645;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_71947;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_71957;
  wire [5:0] sub_71958;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_71668;
  wire __systolic__result_chans__1_3_vld_buf;
  wire __systolic__result_chans__1_3_not_has_been_sent;
  wire systolic__result_chans__1_3_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__1_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_3_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__1_3_load_en;
  wire eq_71967;
  wire eq_71968;
  wire eq_71969;
  wire eq_71970;
  wire [23:0] fraction__6;
  wire or_74893;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_71679;
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
  wire and_reduce_71998;
  wire should_output;
  wire __systolic__hor_chans__1_4_vld_buf;
  wire __systolic__hor_chans__1_4_not_has_been_sent;
  wire systolic__hor_chans__1_4_valid_inv;
  wire __systolic__vert_chans__2_3_not_has_been_sent;
  wire systolic__vert_chans__2_3_valid_inv;
  wire or_72001;
  wire or_72004;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__1_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_4_valid_load_en;
  wire __systolic__vert_chans__2_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_3_valid_load_en;
  wire and_72006;
  wire eq_71682;
  wire eq_71683;
  wire eq_71684;
  wire eq_71685;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__1_4_load_en;
  wire systolic__vert_chans__2_3_load_en;
  wire and_72013;
  wire and_72014;
  wire and_72015;
  wire and_72016;
  wire and_72017;
  wire __systolic__hor_chans__1_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_3_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_71702;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_72027;
  wire [4:0] one_hot_72028;
  wire [2:0] one_hot_72029;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__1_3_valid_inv;
  wire systolic__vert_chans__1_3_valid_inv;
  wire [27:0] shrl_72018;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_72144;
  wire and_72145;
  wire and_72146;
  wire and_72153;
  wire and_72154;
  wire and_72155;
  wire and_72161;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__1_3_valid_load_en;
  wire systolic__vert_chans__1_3_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_72148;
  wire [3:0] concat_72157;
  wire [1:0] concat_72163;
  wire [1:0] unexpand_for_next_value_1585_3_case_0;
  wire __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__1_4_valid_and_ready_txfr;
  wire __systolic__vert_chans__2_3_valid_and_ready_txfr;
  wire __systolic__result_chans__1_3_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__1_3_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__1_3_load_en;
  wire systolic__vert_chans__1_3_load_en;
  wire or_74613;
  wire or_74615;
  wire or_74617;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_72052;
  wire [7:0] one_hot_sel_72149;
  wire or_72150;
  wire [22:0] one_hot_sel_72158;
  wire or_72159;
  wire [1:0] one_hot_sel_72164;
  wire or_72165;
  wire __systolic__hor_chans__1_4_not_stage_load;
  wire __systolic__hor_chans__1_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_3_not_stage_load;
  wire __systolic__result_chans__1_3_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_71746 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_71746;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_71761 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_71763 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1585_3_case_1 = 2'h0;
  assign add_71772 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1585_3_case_1, shrl_71761[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_71746 | shll_71763[26:3]) != 24'h00_0000;
  assign concat_71778 = {add_71772[24:0], shrl_71761[2:1], shrl_71761[0] | sticky__2};
  assign accumbs_fraction = add_71772[25] ? -concat_71778 : concat_71778;
  assign carry_bit = accumbs_fraction[27];
  assign nor_71819 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_71814 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_71815 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_71805 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_71806 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_71848 = ~(carry_bit | accumbs_fraction[26]) & nor_71819;
  assign nor_71850 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_71852 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_71845 = nor_71815 & nor_71814;
  assign nor_71841 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_71837 = nor_71806 & nor_71805;
  assign nor_71838 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_71832 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_71834 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_71877 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_71850;
  assign nor_71858 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_71859 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_71898 = and_71848 & and_71877;
  assign priority_sel_71899 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_71819), and_71848}, {nor_71852, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_71852});
  assign and_71894 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_71841;
  assign and_71890 = nor_71834 & nor_71832;
  assign and_71886 = nor_71859 & nor_71858;
  assign concat_71912 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_71850) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_71909 = {and_71845, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_71814), and_71845}, unexpand_for_next_value_1585_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_71815, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_71908 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_71841) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_71906 = {and_71837, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_71805), and_71837}, {nor_71838, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_71806, nor_71838})};
  assign concat_71905 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_71832) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_71834, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_71917 = and_71845 & and_71894;
  assign concat_71921 = {1'h1, and_71886, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_71858), and_71886}, unexpand_for_next_value_1585_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_71859, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74505 = ~(~and_71898 | and_71917) ? {1'h1, ~(~and_71845 | and_71894) ? concat_71908 : concat_71909} : {and_71898, priority_sel_3b_2way({~(~and_71848 | and_71877), and_71898}, {priority_sel_71899, 1'h0}, concat_71912, {1'h0, priority_sel_71899})};
  assign concat_71929 = {1'h1, and_71837 & and_71890 ? concat_71921 : {1'h0, ~(~and_71837 | and_71890) ? concat_71905 : concat_71906}};
  assign leading_zeroes = and_71898 & and_71917 ? concat_71929 : {1'h0, sel_74505};
  assign a_bexp__1 = __systolic__hor_chans__1_3_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__1_3_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__1_3_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__1_3_reg[22:0];
  assign eq_71636 = a_bexp__1 == 8'h00;
  assign eq_71637 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_71640 = ~(eq_71636 | eq_71637);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_71643 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_71645 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_71643 & {48{nor_71640}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_71645} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_71640}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_71947 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_71947[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_71957 = {1'h0, accum_bexp} + 9'h001;
  assign sub_71958 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_71772 == 26'h000_0000 & ~(shrl_71761[1] | shrl_71761[2]) & ~(shrl_71761[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_71957};
  assign wide_exponent_associative_element__1 = {{4{sub_71958[5]}}, sub_71958};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_71668 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__1_3_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__1_3_not_has_been_sent = ~__systolic__result_chans__1_3_has_been_sent_reg;
  assign systolic__result_chans__1_3_valid_inv = ~__systolic__result_chans__1_3_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_71668;
  assign __systolic__result_chans__1_3_valid_and_not_has_been_sent = __systolic__result_chans__1_3_vld_buf & __systolic__result_chans__1_3_not_has_been_sent;
  assign systolic__result_chans__1_3_valid_load_en = systolic__result_chans__1_3_rdy | systolic__result_chans__1_3_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_71668 | ~fraction__4[23]);
  assign systolic__result_chans__1_3_load_en = __systolic__result_chans__1_3_valid_and_not_has_been_sent & systolic__result_chans__1_3_valid_load_en;
  assign eq_71967 = accum_bexp == high_exp;
  assign eq_71968 = accum_fraction == 23'h00_0000;
  assign eq_71969 = prod_bexp == high_exp;
  assign eq_71970 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74893 = ~p1_should_output | systolic__result_chans__1_3_load_en | __systolic__result_chans__1_3_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74893;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_71679 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_71967 | ~eq_71968 | accum_sign) | ~(~eq_71969 | ~eq_71970 | prod_sign);
  assign has_neg_inf = eq_71967 & eq_71968 & accum_sign | eq_71969 & eq_71970 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_71679 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_3_valid_reg & __systolic__vert_chans__1_3_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_71967 | eq_71968) | ~(~eq_71969 | eq_71970) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_71967 & eq_71968 | eq_71969 & eq_71970;
  assign and_reduce_71998 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__1_4_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__1_4_not_has_been_sent = ~__systolic__hor_chans__1_4_has_been_sent_reg;
  assign systolic__hor_chans__1_4_valid_inv = ~__systolic__hor_chans__1_4_valid_reg;
  assign __systolic__vert_chans__2_3_not_has_been_sent = ~__systolic__vert_chans__2_3_has_been_sent_reg;
  assign systolic__vert_chans__2_3_valid_inv = ~__systolic__vert_chans__2_3_valid_reg;
  assign or_72001 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_71998;
  assign or_72004 = is_operand_inf | wide_exponent__2[8] | and_reduce_71998 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__1_4_valid_and_not_has_been_sent = __systolic__hor_chans__1_4_vld_buf & __systolic__hor_chans__1_4_not_has_been_sent;
  assign systolic__hor_chans__1_4_valid_load_en = systolic__hor_chans__1_4_rdy | systolic__hor_chans__1_4_valid_inv;
  assign __systolic__vert_chans__2_3_valid_and_not_has_been_sent = __systolic__hor_chans__1_4_vld_buf & __systolic__vert_chans__2_3_not_has_been_sent;
  assign systolic__vert_chans__2_3_valid_load_en = systolic__vert_chans__2_3_rdy | systolic__vert_chans__2_3_valid_inv;
  assign and_72006 = ~should_output & ~is_result_nan__1;
  assign eq_71682 = a_bexp__1 == high_exp;
  assign eq_71683 = a_fraction__1 == 23'h00_0000;
  assign eq_71684 = b_bexp__2 == high_exp;
  assign eq_71685 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__1_4_load_en = __systolic__hor_chans__1_4_valid_and_not_has_been_sent & systolic__hor_chans__1_4_valid_load_en;
  assign systolic__vert_chans__2_3_load_en = __systolic__vert_chans__2_3_valid_and_not_has_been_sent & systolic__vert_chans__2_3_valid_load_en;
  assign and_72013 = ~should_output & ~or_72001;
  assign and_72014 = ~should_output & or_72001;
  assign and_72015 = ~should_output & is_result_nan__1;
  assign and_72016 = and_72006 & ~or_72004;
  assign and_72017 = and_72006 & or_72004;
  assign __systolic__hor_chans__1_4_has_sent_or_is_ready = systolic__hor_chans__1_4_load_en | __systolic__hor_chans__1_4_has_been_sent_reg;
  assign __systolic__vert_chans__2_3_has_sent_or_is_ready = systolic__vert_chans__2_3_load_en | __systolic__vert_chans__2_3_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_72013, and_72014};
  assign ____state_2__next_value_predicates = {should_output, and_72015, and_72016, and_72017};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_71636 | eq_71637;
  assign has_inf_arg = eq_71682 & eq_71683 | eq_71684 & eq_71685;
  assign and_reduce_71702 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__1_4_has_sent_or_is_ready & __systolic__vert_chans__2_3_has_sent_or_is_ready;
  assign one_hot_72027 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_72028 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_72029 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_71772[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_71947, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_71682 | eq_71683) | ~(~eq_71684 | eq_71685) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__1_3_valid_inv = ~__systolic__hor_chans__1_3_valid_reg;
  assign systolic__vert_chans__1_3_valid_inv = ~__systolic__vert_chans__1_3_valid_reg;
  assign shrl_72018 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__1_3_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__1_3_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_72144 = should_output & p1_data_enable;
  assign and_72145 = and_72013 & p1_data_enable;
  assign and_72146 = and_72014 & p1_data_enable;
  assign and_72153 = and_72015 & p1_data_enable;
  assign and_72154 = and_72016 & p1_data_enable;
  assign and_72155 = and_72017 & p1_data_enable;
  assign and_72161 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__1_3_valid_load_en = p0_data_enable | systolic__hor_chans__1_3_valid_inv;
  assign systolic__vert_chans__1_3_valid_load_en = p0_data_enable | systolic__vert_chans__1_3_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_72027[2] & and_72013 == one_hot_72027[1] & and_72014 == one_hot_72027[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_72028[3] & and_72015 == one_hot_72028[2] & and_72016 == one_hot_72028[1] & and_72017 == one_hot_72028[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_72029[1] & should_output == one_hot_72029[0];
  assign result_fraction__1 = shrl_72018[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_71702 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_71702 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_72148 = {and_72144, and_72145, and_72146};
  assign concat_72157 = {and_72144, and_72153, and_72154, and_72155};
  assign concat_72163 = {and_72161, and_72144};
  assign unexpand_for_next_value_1585_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready = __systolic__hor_chans__1_4_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__1_4_valid_and_ready_txfr = __systolic__hor_chans__1_4_valid_and_not_has_been_sent & systolic__hor_chans__1_4_load_en;
  assign __systolic__vert_chans__2_3_valid_and_ready_txfr = __systolic__vert_chans__2_3_valid_and_not_has_been_sent & systolic__vert_chans__2_3_load_en;
  assign __systolic__result_chans__1_3_valid_and_all_active_outputs_ready = __systolic__result_chans__1_3_vld_buf & or_74893;
  assign __systolic__result_chans__1_3_valid_and_ready_txfr = __systolic__result_chans__1_3_valid_and_not_has_been_sent & systolic__result_chans__1_3_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__1_3_load_en = systolic__hor_chans__1_3_vld & systolic__hor_chans__1_3_valid_load_en;
  assign systolic__vert_chans__1_3_load_en = systolic__vert_chans__1_3_vld & systolic__vert_chans__1_3_valid_load_en;
  assign or_74613 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74615 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74617 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_72004}};
  assign result_exponent__2 = or_72001 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_72052 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_72149 = high_exp & {8{concat_72148[0]}} | wide_exponent__2[7:0] & {8{concat_72148[1]}} | 8'h00 & {8{concat_72148[2]}};
  assign or_72150 = and_72144 | and_72145 | and_72146;
  assign one_hot_sel_72158 = 23'h00_0000 & {23{concat_72157[0]}} | result_fraction__1 & {23{concat_72157[1]}} | nan_fraction & {23{concat_72157[2]}} | 23'h00_0000 & {23{concat_72157[3]}};
  assign or_72159 = and_72144 | and_72153 | and_72154 | and_72155;
  assign one_hot_sel_72164 = unexpand_for_next_value_1585_3_case_1 & {2{concat_72163[0]}} | unexpand_for_next_value_1585_3_case_0 & {2{concat_72163[1]}};
  assign or_72165 = and_72161 | and_72144;
  assign __systolic__hor_chans__1_4_not_stage_load = ~__systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_4_has_been_sent_reg_load_en = __systolic__hor_chans__1_4_valid_and_ready_txfr | __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_3_has_been_sent_reg_load_en = __systolic__vert_chans__2_3_valid_and_ready_txfr | __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_3_not_stage_load = ~__systolic__result_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_3_has_been_sent_reg_load_en = __systolic__result_chans__1_3_valid_and_ready_txfr | __systolic__result_chans__1_3_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__1_4_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__2_3_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__1_3_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_3_reg <= __systolic__hor_chans__1_3_reg_init;
      __systolic__hor_chans__1_3_valid_reg <= 1'h0;
      __systolic__vert_chans__1_3_reg <= __systolic__vert_chans__1_3_reg_init;
      __systolic__vert_chans__1_3_valid_reg <= 1'h0;
      __systolic__hor_chans__1_4_reg <= __systolic__hor_chans__1_4_reg_init;
      __systolic__hor_chans__1_4_valid_reg <= 1'h0;
      __systolic__vert_chans__2_3_reg <= __systolic__vert_chans__2_3_reg_init;
      __systolic__vert_chans__2_3_valid_reg <= 1'h0;
      __systolic__result_chans__1_3_reg <= __systolic__result_chans__1_3_reg_init;
      __systolic__result_chans__1_3_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_72150 ? one_hot_sel_72149 : ____state_1;
      ____state_2 <= or_72159 ? one_hot_sel_72158 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_72052 : ____state_0;
      ____state_3 <= or_72165 ? one_hot_sel_72164 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__1_4_has_been_sent_reg <= __systolic__hor_chans__1_4_has_been_sent_reg_load_en ? __systolic__hor_chans__1_4_not_stage_load : __systolic__hor_chans__1_4_has_been_sent_reg;
      __systolic__vert_chans__2_3_has_been_sent_reg <= __systolic__vert_chans__2_3_has_been_sent_reg_load_en ? __systolic__hor_chans__1_4_not_stage_load : __systolic__vert_chans__2_3_has_been_sent_reg;
      __systolic__result_chans__1_3_has_been_sent_reg <= __systolic__result_chans__1_3_has_been_sent_reg_load_en ? __systolic__result_chans__1_3_not_stage_load : __systolic__result_chans__1_3_has_been_sent_reg;
      __systolic__hor_chans__1_3_reg <= systolic__hor_chans__1_3_load_en ? systolic__hor_chans__1_3 : __systolic__hor_chans__1_3_reg;
      __systolic__hor_chans__1_3_valid_reg <= systolic__hor_chans__1_3_valid_load_en ? systolic__hor_chans__1_3_vld : __systolic__hor_chans__1_3_valid_reg;
      __systolic__vert_chans__1_3_reg <= systolic__vert_chans__1_3_load_en ? systolic__vert_chans__1_3 : __systolic__vert_chans__1_3_reg;
      __systolic__vert_chans__1_3_valid_reg <= systolic__vert_chans__1_3_valid_load_en ? systolic__vert_chans__1_3_vld : __systolic__vert_chans__1_3_valid_reg;
      __systolic__hor_chans__1_4_reg <= systolic__hor_chans__1_4_load_en ? __systolic__hor_chans__1_3_reg : __systolic__hor_chans__1_4_reg;
      __systolic__hor_chans__1_4_valid_reg <= systolic__hor_chans__1_4_valid_load_en ? __systolic__hor_chans__1_4_valid_and_not_has_been_sent : __systolic__hor_chans__1_4_valid_reg;
      __systolic__vert_chans__2_3_reg <= systolic__vert_chans__2_3_load_en ? __systolic__vert_chans__1_3_reg : __systolic__vert_chans__2_3_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74613))) or_74613) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74615))) or_74615) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74617))) or_74617) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__2_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__2_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__3_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__2_0_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_72433;
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
  wire [26:0] shrl_72448;
  wire [27:0] shll_72450;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1616_3_case_1;
  wire [25:0] add_72459;
  wire sticky__2;
  wire [27:0] concat_72465;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_72506;
  wire nor_72501;
  wire nor_72502;
  wire nor_72492;
  wire nor_72493;
  wire and_72535;
  wire nor_72537;
  wire nor_72539;
  wire and_72532;
  wire nor_72528;
  wire and_72524;
  wire nor_72525;
  wire nor_72519;
  wire nor_72521;
  wire and_72564;
  wire nor_72545;
  wire nor_72546;
  wire and_72585;
  wire [1:0] priority_sel_72586;
  wire and_72581;
  wire and_72577;
  wire and_72573;
  wire [2:0] concat_72599;
  wire [2:0] concat_72596;
  wire [2:0] concat_72595;
  wire [2:0] concat_72593;
  wire [2:0] concat_72592;
  wire and_72604;
  wire [3:0] concat_72608;
  wire [3:0] sel_74513;
  wire [4:0] concat_72616;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_72323;
  wire eq_72324;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_72327;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_72330;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_72332;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_72634;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_72644;
  wire [5:0] sub_72645;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_72355;
  wire __systolic__result_chans__2_0_vld_buf;
  wire __systolic__result_chans__2_0_not_has_been_sent;
  wire systolic__result_chans__2_0_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_0_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__2_0_load_en;
  wire eq_72654;
  wire eq_72655;
  wire eq_72656;
  wire eq_72657;
  wire [23:0] fraction__6;
  wire or_74911;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_72366;
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
  wire and_reduce_72685;
  wire should_output;
  wire __systolic__hor_chans__2_1_vld_buf;
  wire __systolic__hor_chans__2_1_not_has_been_sent;
  wire systolic__hor_chans__2_1_valid_inv;
  wire __systolic__vert_chans__3_0_not_has_been_sent;
  wire systolic__vert_chans__3_0_valid_inv;
  wire or_72688;
  wire or_72691;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_1_valid_load_en;
  wire __systolic__vert_chans__3_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_0_valid_load_en;
  wire and_72693;
  wire eq_72369;
  wire eq_72370;
  wire eq_72371;
  wire eq_72372;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__2_1_load_en;
  wire systolic__vert_chans__3_0_load_en;
  wire and_72700;
  wire and_72701;
  wire and_72702;
  wire and_72703;
  wire and_72704;
  wire __systolic__hor_chans__2_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_0_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_72389;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_72714;
  wire [4:0] one_hot_72715;
  wire [2:0] one_hot_72716;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__2_0_valid_inv;
  wire systolic__vert_chans__2_0_valid_inv;
  wire [27:0] shrl_72705;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_72831;
  wire and_72832;
  wire and_72833;
  wire and_72840;
  wire and_72841;
  wire and_72842;
  wire and_72848;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__2_0_valid_load_en;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_72835;
  wire [3:0] concat_72844;
  wire [1:0] concat_72850;
  wire [1:0] unexpand_for_next_value_1616_3_case_0;
  wire __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__2_1_valid_and_ready_txfr;
  wire __systolic__vert_chans__3_0_valid_and_ready_txfr;
  wire __systolic__result_chans__2_0_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__2_0_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__2_0_load_en;
  wire systolic__vert_chans__2_0_load_en;
  wire or_74619;
  wire or_74621;
  wire or_74623;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_72739;
  wire [7:0] one_hot_sel_72836;
  wire or_72837;
  wire [22:0] one_hot_sel_72845;
  wire or_72846;
  wire [1:0] one_hot_sel_72851;
  wire or_72852;
  wire __systolic__hor_chans__2_1_not_stage_load;
  wire __systolic__hor_chans__2_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_0_not_stage_load;
  wire __systolic__result_chans__2_0_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_72433 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_72433;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_72448 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_72450 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1616_3_case_1 = 2'h0;
  assign add_72459 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1616_3_case_1, shrl_72448[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_72433 | shll_72450[26:3]) != 24'h00_0000;
  assign concat_72465 = {add_72459[24:0], shrl_72448[2:1], shrl_72448[0] | sticky__2};
  assign accumbs_fraction = add_72459[25] ? -concat_72465 : concat_72465;
  assign carry_bit = accumbs_fraction[27];
  assign nor_72506 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_72501 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_72502 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_72492 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_72493 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_72535 = ~(carry_bit | accumbs_fraction[26]) & nor_72506;
  assign nor_72537 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_72539 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_72532 = nor_72502 & nor_72501;
  assign nor_72528 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_72524 = nor_72493 & nor_72492;
  assign nor_72525 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_72519 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_72521 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_72564 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_72537;
  assign nor_72545 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_72546 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_72585 = and_72535 & and_72564;
  assign priority_sel_72586 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_72506), and_72535}, {nor_72539, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_72539});
  assign and_72581 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_72528;
  assign and_72577 = nor_72521 & nor_72519;
  assign and_72573 = nor_72546 & nor_72545;
  assign concat_72599 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_72537) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_72596 = {and_72532, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_72501), and_72532}, unexpand_for_next_value_1616_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_72502, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_72595 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_72528) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_72593 = {and_72524, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_72492), and_72524}, {nor_72525, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_72493, nor_72525})};
  assign concat_72592 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_72519) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_72521, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_72604 = and_72532 & and_72581;
  assign concat_72608 = {1'h1, and_72573, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_72545), and_72573}, unexpand_for_next_value_1616_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_72546, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74513 = ~(~and_72585 | and_72604) ? {1'h1, ~(~and_72532 | and_72581) ? concat_72595 : concat_72596} : {and_72585, priority_sel_3b_2way({~(~and_72535 | and_72564), and_72585}, {priority_sel_72586, 1'h0}, concat_72599, {1'h0, priority_sel_72586})};
  assign concat_72616 = {1'h1, and_72524 & and_72577 ? concat_72608 : {1'h0, ~(~and_72524 | and_72577) ? concat_72592 : concat_72593}};
  assign leading_zeroes = and_72585 & and_72604 ? concat_72616 : {1'h0, sel_74513};
  assign a_bexp__1 = __systolic__hor_chans__2_0_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__2_0_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__2_0_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__2_0_reg[22:0];
  assign eq_72323 = a_bexp__1 == 8'h00;
  assign eq_72324 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_72327 = ~(eq_72323 | eq_72324);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_72330 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_72332 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_72330 & {48{nor_72327}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_72332} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_72327}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_72634 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_72634[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_72644 = {1'h0, accum_bexp} + 9'h001;
  assign sub_72645 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_72459 == 26'h000_0000 & ~(shrl_72448[1] | shrl_72448[2]) & ~(shrl_72448[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_72644};
  assign wide_exponent_associative_element__1 = {{4{sub_72645[5]}}, sub_72645};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_72355 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__2_0_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__2_0_not_has_been_sent = ~__systolic__result_chans__2_0_has_been_sent_reg;
  assign systolic__result_chans__2_0_valid_inv = ~__systolic__result_chans__2_0_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_72355;
  assign __systolic__result_chans__2_0_valid_and_not_has_been_sent = __systolic__result_chans__2_0_vld_buf & __systolic__result_chans__2_0_not_has_been_sent;
  assign systolic__result_chans__2_0_valid_load_en = systolic__result_chans__2_0_rdy | systolic__result_chans__2_0_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_72355 | ~fraction__4[23]);
  assign systolic__result_chans__2_0_load_en = __systolic__result_chans__2_0_valid_and_not_has_been_sent & systolic__result_chans__2_0_valid_load_en;
  assign eq_72654 = accum_bexp == high_exp;
  assign eq_72655 = accum_fraction == 23'h00_0000;
  assign eq_72656 = prod_bexp == high_exp;
  assign eq_72657 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74911 = ~p1_should_output | systolic__result_chans__2_0_load_en | __systolic__result_chans__2_0_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74911;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_72366 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_72654 | ~eq_72655 | accum_sign) | ~(~eq_72656 | ~eq_72657 | prod_sign);
  assign has_neg_inf = eq_72654 & eq_72655 & accum_sign | eq_72656 & eq_72657 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_72366 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__2_0_valid_reg & __systolic__vert_chans__2_0_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_72654 | eq_72655) | ~(~eq_72656 | eq_72657) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_72654 & eq_72655 | eq_72656 & eq_72657;
  assign and_reduce_72685 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__2_1_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__2_1_not_has_been_sent = ~__systolic__hor_chans__2_1_has_been_sent_reg;
  assign systolic__hor_chans__2_1_valid_inv = ~__systolic__hor_chans__2_1_valid_reg;
  assign __systolic__vert_chans__3_0_not_has_been_sent = ~__systolic__vert_chans__3_0_has_been_sent_reg;
  assign systolic__vert_chans__3_0_valid_inv = ~__systolic__vert_chans__3_0_valid_reg;
  assign or_72688 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_72685;
  assign or_72691 = is_operand_inf | wide_exponent__2[8] | and_reduce_72685 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__2_1_valid_and_not_has_been_sent = __systolic__hor_chans__2_1_vld_buf & __systolic__hor_chans__2_1_not_has_been_sent;
  assign systolic__hor_chans__2_1_valid_load_en = systolic__hor_chans__2_1_rdy | systolic__hor_chans__2_1_valid_inv;
  assign __systolic__vert_chans__3_0_valid_and_not_has_been_sent = __systolic__hor_chans__2_1_vld_buf & __systolic__vert_chans__3_0_not_has_been_sent;
  assign systolic__vert_chans__3_0_valid_load_en = systolic__vert_chans__3_0_rdy | systolic__vert_chans__3_0_valid_inv;
  assign and_72693 = ~should_output & ~is_result_nan__1;
  assign eq_72369 = a_bexp__1 == high_exp;
  assign eq_72370 = a_fraction__1 == 23'h00_0000;
  assign eq_72371 = b_bexp__2 == high_exp;
  assign eq_72372 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__2_1_load_en = __systolic__hor_chans__2_1_valid_and_not_has_been_sent & systolic__hor_chans__2_1_valid_load_en;
  assign systolic__vert_chans__3_0_load_en = __systolic__vert_chans__3_0_valid_and_not_has_been_sent & systolic__vert_chans__3_0_valid_load_en;
  assign and_72700 = ~should_output & ~or_72688;
  assign and_72701 = ~should_output & or_72688;
  assign and_72702 = ~should_output & is_result_nan__1;
  assign and_72703 = and_72693 & ~or_72691;
  assign and_72704 = and_72693 & or_72691;
  assign __systolic__hor_chans__2_1_has_sent_or_is_ready = systolic__hor_chans__2_1_load_en | __systolic__hor_chans__2_1_has_been_sent_reg;
  assign __systolic__vert_chans__3_0_has_sent_or_is_ready = systolic__vert_chans__3_0_load_en | __systolic__vert_chans__3_0_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_72700, and_72701};
  assign ____state_2__next_value_predicates = {should_output, and_72702, and_72703, and_72704};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_72323 | eq_72324;
  assign has_inf_arg = eq_72369 & eq_72370 | eq_72371 & eq_72372;
  assign and_reduce_72389 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__2_1_has_sent_or_is_ready & __systolic__vert_chans__3_0_has_sent_or_is_ready;
  assign one_hot_72714 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_72715 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_72716 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_72459[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_72634, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_72369 | eq_72370) | ~(~eq_72371 | eq_72372) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__2_0_valid_inv = ~__systolic__hor_chans__2_0_valid_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign shrl_72705 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__2_0_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__2_0_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_72831 = should_output & p1_data_enable;
  assign and_72832 = and_72700 & p1_data_enable;
  assign and_72833 = and_72701 & p1_data_enable;
  assign and_72840 = and_72702 & p1_data_enable;
  assign and_72841 = and_72703 & p1_data_enable;
  assign and_72842 = and_72704 & p1_data_enable;
  assign and_72848 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__2_0_valid_load_en = p0_data_enable | systolic__hor_chans__2_0_valid_inv;
  assign systolic__vert_chans__2_0_valid_load_en = p0_data_enable | systolic__vert_chans__2_0_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_72714[2] & and_72700 == one_hot_72714[1] & and_72701 == one_hot_72714[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_72715[3] & and_72702 == one_hot_72715[2] & and_72703 == one_hot_72715[1] & and_72704 == one_hot_72715[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_72716[1] & should_output == one_hot_72716[0];
  assign result_fraction__1 = shrl_72705[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_72389 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_72389 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_72835 = {and_72831, and_72832, and_72833};
  assign concat_72844 = {and_72831, and_72840, and_72841, and_72842};
  assign concat_72850 = {and_72848, and_72831};
  assign unexpand_for_next_value_1616_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_1_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__2_1_valid_and_ready_txfr = __systolic__hor_chans__2_1_valid_and_not_has_been_sent & systolic__hor_chans__2_1_load_en;
  assign __systolic__vert_chans__3_0_valid_and_ready_txfr = __systolic__vert_chans__3_0_valid_and_not_has_been_sent & systolic__vert_chans__3_0_load_en;
  assign __systolic__result_chans__2_0_valid_and_all_active_outputs_ready = __systolic__result_chans__2_0_vld_buf & or_74911;
  assign __systolic__result_chans__2_0_valid_and_ready_txfr = __systolic__result_chans__2_0_valid_and_not_has_been_sent & systolic__result_chans__2_0_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__2_0_load_en = systolic__hor_chans__2_0_vld & systolic__hor_chans__2_0_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = systolic__vert_chans__2_0_vld & systolic__vert_chans__2_0_valid_load_en;
  assign or_74619 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74621 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74623 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_72691}};
  assign result_exponent__2 = or_72688 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_72739 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_72836 = high_exp & {8{concat_72835[0]}} | wide_exponent__2[7:0] & {8{concat_72835[1]}} | 8'h00 & {8{concat_72835[2]}};
  assign or_72837 = and_72831 | and_72832 | and_72833;
  assign one_hot_sel_72845 = 23'h00_0000 & {23{concat_72844[0]}} | result_fraction__1 & {23{concat_72844[1]}} | nan_fraction & {23{concat_72844[2]}} | 23'h00_0000 & {23{concat_72844[3]}};
  assign or_72846 = and_72831 | and_72840 | and_72841 | and_72842;
  assign one_hot_sel_72851 = unexpand_for_next_value_1616_3_case_1 & {2{concat_72850[0]}} | unexpand_for_next_value_1616_3_case_0 & {2{concat_72850[1]}};
  assign or_72852 = and_72848 | and_72831;
  assign __systolic__hor_chans__2_1_not_stage_load = ~__systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_1_has_been_sent_reg_load_en = __systolic__hor_chans__2_1_valid_and_ready_txfr | __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_0_has_been_sent_reg_load_en = __systolic__vert_chans__3_0_valid_and_ready_txfr | __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_0_not_stage_load = ~__systolic__result_chans__2_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_0_has_been_sent_reg_load_en = __systolic__result_chans__2_0_valid_and_ready_txfr | __systolic__result_chans__2_0_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__2_1_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__3_0_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__2_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__2_0_reg <= __systolic__hor_chans__2_0_reg_init;
      __systolic__hor_chans__2_0_valid_reg <= 1'h0;
      __systolic__vert_chans__2_0_reg <= __systolic__vert_chans__2_0_reg_init;
      __systolic__vert_chans__2_0_valid_reg <= 1'h0;
      __systolic__hor_chans__2_1_reg <= __systolic__hor_chans__2_1_reg_init;
      __systolic__hor_chans__2_1_valid_reg <= 1'h0;
      __systolic__vert_chans__3_0_reg <= __systolic__vert_chans__3_0_reg_init;
      __systolic__vert_chans__3_0_valid_reg <= 1'h0;
      __systolic__result_chans__2_0_reg <= __systolic__result_chans__2_0_reg_init;
      __systolic__result_chans__2_0_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_72837 ? one_hot_sel_72836 : ____state_1;
      ____state_2 <= or_72846 ? one_hot_sel_72845 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_72739 : ____state_0;
      ____state_3 <= or_72852 ? one_hot_sel_72851 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__2_1_has_been_sent_reg <= __systolic__hor_chans__2_1_has_been_sent_reg_load_en ? __systolic__hor_chans__2_1_not_stage_load : __systolic__hor_chans__2_1_has_been_sent_reg;
      __systolic__vert_chans__3_0_has_been_sent_reg <= __systolic__vert_chans__3_0_has_been_sent_reg_load_en ? __systolic__hor_chans__2_1_not_stage_load : __systolic__vert_chans__3_0_has_been_sent_reg;
      __systolic__result_chans__2_0_has_been_sent_reg <= __systolic__result_chans__2_0_has_been_sent_reg_load_en ? __systolic__result_chans__2_0_not_stage_load : __systolic__result_chans__2_0_has_been_sent_reg;
      __systolic__hor_chans__2_0_reg <= systolic__hor_chans__2_0_load_en ? systolic__hor_chans__2_0 : __systolic__hor_chans__2_0_reg;
      __systolic__hor_chans__2_0_valid_reg <= systolic__hor_chans__2_0_valid_load_en ? systolic__hor_chans__2_0_vld : __systolic__hor_chans__2_0_valid_reg;
      __systolic__vert_chans__2_0_reg <= systolic__vert_chans__2_0_load_en ? systolic__vert_chans__2_0 : __systolic__vert_chans__2_0_reg;
      __systolic__vert_chans__2_0_valid_reg <= systolic__vert_chans__2_0_valid_load_en ? systolic__vert_chans__2_0_vld : __systolic__vert_chans__2_0_valid_reg;
      __systolic__hor_chans__2_1_reg <= systolic__hor_chans__2_1_load_en ? __systolic__hor_chans__2_0_reg : __systolic__hor_chans__2_1_reg;
      __systolic__hor_chans__2_1_valid_reg <= systolic__hor_chans__2_1_valid_load_en ? __systolic__hor_chans__2_1_valid_and_not_has_been_sent : __systolic__hor_chans__2_1_valid_reg;
      __systolic__vert_chans__3_0_reg <= systolic__vert_chans__3_0_load_en ? __systolic__vert_chans__2_0_reg : __systolic__vert_chans__3_0_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74619))) or_74619) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74621))) or_74621) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74623))) or_74623) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire [31:0] __systolic__hor_chans__2_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__2_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__hor_chans__2_2_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__vert_chans__3_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  wire [31:0] __systolic__result_chans__2_1_reg_init = {1'h0, 8'h00, 23'h00_0000};
  reg [7:0] p0_result_exp__4;
  reg [7:0] p0_prod_bexpnot;
  reg [22:0] p0_result_fraction__4;
  reg p0_result_sign__1;
  reg [7:0] ____state_1;
  reg [22:0] ____state_2;
  reg ____state_0;
  reg [1:0] ____state_3;
  reg p1_is_result_nan__1;
  reg p1_should_output;
  reg [22:0] p1_result_fraction__2;
  reg p1_result_sign__4;
  reg [7:0] p1_result_exponent__2;
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
  wire [8:0] accum_bexp_extended__1;
  wire [8:0] prod_bexpnot_extended;
  wire [8:0] full_result;
  wire overflow_detected;
  wire [7:0] accum_bexp;
  wire [7:0] prod_bexp;
  wire [22:0] accum_fraction;
  wire [22:0] prod_fraction;
  wire nc;
  wire [23:0] fraction_x;
  wire [23:0] fraction_y;
  wire [23:0] sign_ext_73120;
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
  wire [26:0] shrl_73135;
  wire [27:0] shll_73137;
  wire [24:0] accumddend_x__1_squeezed;
  wire [1:0] unexpand_for_next_value_1647_3_case_1;
  wire [25:0] add_73146;
  wire sticky__2;
  wire [27:0] concat_73152;
  wire [27:0] accumbs_fraction;
  wire carry_bit;
  wire nor_73193;
  wire nor_73188;
  wire nor_73189;
  wire nor_73179;
  wire nor_73180;
  wire and_73222;
  wire nor_73224;
  wire nor_73226;
  wire and_73219;
  wire nor_73215;
  wire and_73211;
  wire nor_73212;
  wire nor_73206;
  wire nor_73208;
  wire and_73251;
  wire nor_73232;
  wire nor_73233;
  wire and_73272;
  wire [1:0] priority_sel_73273;
  wire and_73268;
  wire and_73264;
  wire and_73260;
  wire [2:0] concat_73286;
  wire [2:0] concat_73283;
  wire [2:0] concat_73282;
  wire [2:0] concat_73280;
  wire [2:0] concat_73279;
  wire and_73291;
  wire [3:0] concat_73295;
  wire [3:0] sel_74521;
  wire [4:0] concat_73303;
  wire [4:0] leading_zeroes;
  wire [7:0] a_bexp__1;
  wire [7:0] b_bexp__2;
  wire [28:0] cancel_fraction;
  wire [22:0] a_fraction__1;
  wire [22:0] b_fraction__1;
  wire eq_73010;
  wire eq_73011;
  wire [26:0] cancel_fraction__1;
  wire [26:0] carry_fraction__1;
  wire [23:0] a_fraction__3;
  wire [23:0] b_fraction__3;
  wire nor_73014;
  wire [26:0] shifted_fraction;
  wire [47:0] umul_73017;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_shift__3;
  wire [1:0] half_way_chunk;
  wire [8:0] add_73019;
  wire [47:0] fraction;
  wire do_round_up__1;
  wire [9:0] exp;
  wire [47:0] fraction__1;
  wire [47:0] sticky;
  wire [9:0] exp__1;
  wire [47:0] fraction__2;
  wire [24:0] add_73321;
  wire [9:0] exp__2;
  wire rounding_carry;
  wire [47:0] fraction__3;
  wire [47:0] sticky__1;
  wire [8:0] add_73331;
  wire [5:0] sub_73332;
  wire fraction_is_zero;
  wire [47:0] fraction__4;
  wire [9:0] wide_exponent_associative_element;
  wire [9:0] wide_exponent_associative_element__1;
  wire [9:0] wide_exponent;
  wire ne_73042;
  wire __systolic__result_chans__2_1_vld_buf;
  wire __systolic__result_chans__2_1_not_has_been_sent;
  wire systolic__result_chans__2_1_valid_inv;
  wire [9:0] wide_exponent__1;
  wire greater_than_half_way;
  wire __systolic__result_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_1_valid_load_en;
  wire [7:0] high_exp;
  wire [22:0] fraction__5;
  wire do_round_up;
  wire systolic__result_chans__2_1_load_en;
  wire eq_73341;
  wire eq_73342;
  wire eq_73343;
  wire eq_73344;
  wire [23:0] fraction__6;
  wire or_74929;
  wire [23:0] fraction__7;
  wire p2_stage_done;
  wire p2_not_valid;
  wire [8:0] wide_exponent__2;
  wire [9:0] add_73053;
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
  wire and_reduce_73372;
  wire should_output;
  wire __systolic__hor_chans__2_2_vld_buf;
  wire __systolic__hor_chans__2_2_not_has_been_sent;
  wire systolic__hor_chans__2_2_valid_inv;
  wire __systolic__vert_chans__3_1_not_has_been_sent;
  wire systolic__vert_chans__3_1_valid_inv;
  wire or_73375;
  wire or_73378;
  wire [8:0] result_exp;
  wire __systolic__hor_chans__2_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_2_valid_load_en;
  wire __systolic__vert_chans__3_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_1_valid_load_en;
  wire and_73380;
  wire eq_73056;
  wire eq_73057;
  wire eq_73058;
  wire eq_73059;
  wire [8:0] result_exp__1;
  wire systolic__hor_chans__2_2_load_en;
  wire systolic__vert_chans__3_1_load_en;
  wire and_73387;
  wire and_73388;
  wire and_73389;
  wire and_73390;
  wire and_73391;
  wire __systolic__hor_chans__2_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_1_has_sent_or_is_ready;
  wire [2:0] ____state_1__next_value_predicates;
  wire [3:0] ____state_2__next_value_predicates;
  wire [1:0] ____state_3__next_value_predicates;
  wire has_0_arg;
  wire has_inf_arg;
  wire and_reduce_73076;
  wire p0_all_active_outputs_ready;
  wire [3:0] one_hot_73401;
  wire [4:0] one_hot_73402;
  wire [2:0] one_hot_73403;
  wire [2:0] fraction_shift__2;
  wire result_sign__2;
  wire p0_stage_done;
  wire [27:0] rounded_fraction;
  wire [2:0] fraction_shift__1;
  wire is_result_nan;
  wire result_sign__3;
  wire p0_data_enable;
  wire systolic__hor_chans__2_1_valid_inv;
  wire systolic__vert_chans__2_1_valid_inv;
  wire [27:0] shrl_73392;
  wire [22:0] result_fraction;
  wire a_sign__1;
  wire b_sign__1;
  wire result_sign__4;
  wire and_73518;
  wire and_73519;
  wire and_73520;
  wire and_73527;
  wire and_73528;
  wire and_73529;
  wire and_73535;
  wire [22:0] nan_fraction;
  wire systolic__hor_chans__2_1_valid_load_en;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire ____state_1__at_most_one_next_value;
  wire ____state_2__at_most_one_next_value;
  wire ____state_3__at_most_one_next_value;
  wire [22:0] result_fraction__1;
  wire [7:0] result_exp__4;
  wire [22:0] result_fraction__3;
  wire result_sign;
  wire [2:0] concat_73522;
  wire [3:0] concat_73531;
  wire [1:0] concat_73537;
  wire [1:0] unexpand_for_next_value_1647_3_case_0;
  wire __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  wire __systolic__hor_chans__2_2_valid_and_ready_txfr;
  wire __systolic__vert_chans__3_1_valid_and_ready_txfr;
  wire __systolic__result_chans__2_1_valid_and_all_active_outputs_ready;
  wire __systolic__result_chans__2_1_valid_and_ready_txfr;
  wire [22:0] result_fraction__5;
  wire systolic__hor_chans__2_1_load_en;
  wire systolic__vert_chans__2_1_load_en;
  wire or_74625;
  wire or_74627;
  wire or_74629;
  wire p3_enable;
  wire p2_enable;
  wire [22:0] result_fraction__2;
  wire [7:0] result_exponent__2;
  wire [7:0] prod_bexpnot;
  wire [22:0] result_fraction__4;
  wire result_sign__1;
  wire nor_73426;
  wire [7:0] one_hot_sel_73523;
  wire or_73524;
  wire [22:0] one_hot_sel_73532;
  wire or_73533;
  wire [1:0] one_hot_sel_73538;
  wire or_73539;
  wire __systolic__hor_chans__2_2_not_stage_load;
  wire __systolic__hor_chans__2_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_1_not_stage_load;
  wire __systolic__result_chans__2_1_has_been_sent_reg_load_en;
  wire [31:0] new_accum;
  assign accum_bexp_extended__1 = {1'h0, ____state_1};
  assign prod_bexpnot_extended = {1'h0, p0_prod_bexpnot};
  assign full_result = accum_bexp_extended__1 + prod_bexpnot_extended;
  assign overflow_detected = full_result[8];
  assign accum_bexp = overflow_detected ? ____state_1 : p0_result_exp__4;
  assign prod_bexp = overflow_detected ? p0_result_exp__4 : ____state_1;
  assign accum_fraction = overflow_detected ? ____state_2 : p0_result_fraction__4;
  assign prod_fraction = overflow_detected ? p0_result_fraction__4 : ____state_2;
  assign nc = ~overflow_detected;
  assign fraction_x = {1'h1, accum_fraction};
  assign fraction_y = {1'h1, prod_fraction};
  assign sign_ext_73120 = {24{prod_bexp != 8'h00}};
  assign narrowed_result = full_result[7:0];
  assign accum_bexpor_mask = {8{nc}};
  assign fraction_x__1 = fraction_x & {24{accum_bexp != 8'h00}};
  assign fraction_y__1 = fraction_y & sign_ext_73120;
  assign accumddend_x__1_squeezed_const_lsb_bits = 3'h0;
  assign result = narrowed_result ^ accum_bexpor_mask;
  assign accum_sign = overflow_detected ? ____state_0 : p0_result_sign__1;
  assign prod_sign = overflow_detected ? p0_result_sign__1 : ____state_0;
  assign wide_x_squeezed = {1'h0, fraction_x__1};
  assign wide_y_shift_bits = {fraction_y__1, accumddend_x__1_squeezed_const_lsb_bits};
  assign shift = result + {7'h00, overflow_detected};
  assign shrl_73135 = shift >= 8'h1b ? 27'h000_0000 : wide_y_shift_bits >> shift;
  assign shll_73137 = shift >= 8'h1c ? 28'h000_0000 : 28'hfff_ffff << shift;
  assign accumddend_x__1_squeezed = accum_sign ^ prod_sign ? -wide_x_squeezed : wide_x_squeezed;
  assign unexpand_for_next_value_1647_3_case_1 = 2'h0;
  assign add_73146 = {{1{accumddend_x__1_squeezed[24]}}, accumddend_x__1_squeezed} + {unexpand_for_next_value_1647_3_case_1, shrl_73135[26:3]};
  assign sticky__2 = ~({1'h0, ~prod_fraction} | ~sign_ext_73120 | shll_73137[26:3]) != 24'h00_0000;
  assign concat_73152 = {add_73146[24:0], shrl_73135[2:1], shrl_73135[0] | sticky__2};
  assign accumbs_fraction = add_73146[25] ? -concat_73152 : concat_73152;
  assign carry_bit = accumbs_fraction[27];
  assign nor_73193 = ~(accumbs_fraction[25] | accumbs_fraction[24]);
  assign nor_73188 = ~(accumbs_fraction[17] | accumbs_fraction[16]);
  assign nor_73189 = ~(accumbs_fraction[19] | accumbs_fraction[18]);
  assign nor_73179 = ~(accumbs_fraction[9] | accumbs_fraction[8]);
  assign nor_73180 = ~(accumbs_fraction[11] | accumbs_fraction[10]);
  assign and_73222 = ~(carry_bit | accumbs_fraction[26]) & nor_73193;
  assign nor_73224 = ~(accumbs_fraction[21] | accumbs_fraction[20]);
  assign nor_73226 = ~(carry_bit | ~accumbs_fraction[26]);
  assign and_73219 = nor_73189 & nor_73188;
  assign nor_73215 = ~(accumbs_fraction[13] | accumbs_fraction[12]);
  assign and_73211 = nor_73180 & nor_73179;
  assign nor_73212 = ~(accumbs_fraction[11] | ~accumbs_fraction[10]);
  assign nor_73206 = ~(accumbs_fraction[5] | accumbs_fraction[4]);
  assign nor_73208 = ~(accumbs_fraction[7] | accumbs_fraction[6]);
  assign and_73251 = ~(accumbs_fraction[23] | accumbs_fraction[22]) & nor_73224;
  assign nor_73232 = ~(accumbs_fraction[1] | accumbs_fraction[0]);
  assign nor_73233 = ~(accumbs_fraction[3] | accumbs_fraction[2]);
  assign and_73272 = and_73222 & and_73251;
  assign priority_sel_73273 = priority_sel_2b_2way({~(carry_bit | accumbs_fraction[26] | nor_73193), and_73222}, {nor_73226, 1'h0}, {1'h1, ~(accumbs_fraction[25] | ~accumbs_fraction[24])}, {1'h0, nor_73226});
  assign and_73268 = ~(accumbs_fraction[15] | accumbs_fraction[14]) & nor_73215;
  assign and_73264 = nor_73208 & nor_73206;
  assign and_73260 = nor_73233 & nor_73232;
  assign concat_73286 = {1'h1, ~(accumbs_fraction[23] | accumbs_fraction[22] | nor_73224) ? {1'h1, ~(accumbs_fraction[21] | ~accumbs_fraction[20])} : {1'h0, ~(accumbs_fraction[23] | ~accumbs_fraction[22])}};
  assign concat_73283 = {and_73219, priority_sel_2b_2way({~(accumbs_fraction[19] | accumbs_fraction[18] | nor_73188), and_73219}, unexpand_for_next_value_1647_3_case_1, {1'h1, ~(accumbs_fraction[17] | ~accumbs_fraction[16])}, {nor_73189, ~(accumbs_fraction[19] | ~accumbs_fraction[18])})};
  assign concat_73282 = {1'h1, ~(accumbs_fraction[15] | accumbs_fraction[14] | nor_73215) ? {1'h1, ~(accumbs_fraction[13] | ~accumbs_fraction[12])} : {1'h0, ~(accumbs_fraction[15] | ~accumbs_fraction[14])}};
  assign concat_73280 = {and_73211, priority_sel_2b_2way({~(accumbs_fraction[11] | accumbs_fraction[10] | nor_73179), and_73211}, {nor_73212, 1'h0}, {1'h1, ~(accumbs_fraction[9] | ~accumbs_fraction[8])}, {nor_73180, nor_73212})};
  assign concat_73279 = {1'h1, ~(accumbs_fraction[7] | accumbs_fraction[6] | nor_73206) ? {1'h1, ~(accumbs_fraction[5] | ~accumbs_fraction[4])} : {nor_73208, ~(accumbs_fraction[7] | ~accumbs_fraction[6])}};
  assign and_73291 = and_73219 & and_73268;
  assign concat_73295 = {1'h1, and_73260, priority_sel_2b_2way({~(accumbs_fraction[3] | accumbs_fraction[2] | nor_73232), and_73260}, unexpand_for_next_value_1647_3_case_1, {1'h1, ~(accumbs_fraction[1] | ~accumbs_fraction[0])}, {nor_73233, ~(accumbs_fraction[3] | ~accumbs_fraction[2])})};
  assign sel_74521 = ~(~and_73272 | and_73291) ? {1'h1, ~(~and_73219 | and_73268) ? concat_73282 : concat_73283} : {and_73272, priority_sel_3b_2way({~(~and_73222 | and_73251), and_73272}, {priority_sel_73273, 1'h0}, concat_73286, {1'h0, priority_sel_73273})};
  assign concat_73303 = {1'h1, and_73211 & and_73264 ? concat_73295 : {1'h0, ~(~and_73211 | and_73264) ? concat_73279 : concat_73280}};
  assign leading_zeroes = and_73272 & and_73291 ? concat_73303 : {1'h0, sel_74521};
  assign a_bexp__1 = __systolic__hor_chans__2_1_reg[30:23];
  assign b_bexp__2 = __systolic__vert_chans__2_1_reg[30:23];
  assign cancel_fraction = leading_zeroes >= 5'h1d ? 29'h0000_0000 : {1'h0, accumbs_fraction} << leading_zeroes;
  assign a_fraction__1 = __systolic__hor_chans__2_1_reg[22:0];
  assign b_fraction__1 = __systolic__vert_chans__2_1_reg[22:0];
  assign eq_73010 = a_bexp__1 == 8'h00;
  assign eq_73011 = b_bexp__2 == 8'h00;
  assign cancel_fraction__1 = cancel_fraction[27:1];
  assign carry_fraction__1 = {accumbs_fraction[27:2], accumbs_fraction[1] | accumbs_fraction[0]};
  assign a_fraction__3 = {1'h1, a_fraction__1};
  assign b_fraction__3 = {1'h1, b_fraction__1};
  assign nor_73014 = ~(eq_73010 | eq_73011);
  assign shifted_fraction = carry_bit ? carry_fraction__1 : cancel_fraction__1;
  assign umul_73017 = umul48b_24b_x_24b(a_fraction__3, b_fraction__3);
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_shift__3 = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign add_73019 = {1'h0, a_bexp__1} + {1'h0, b_bexp__2};
  assign fraction = umul_73017 & {48{nor_73014}};
  assign do_round_up__1 = normal_chunk > fraction_shift__3 | half_way_chunk == 2'h3;
  assign exp = {1'h0, add_73019} + 10'h381;
  assign fraction__1 = fraction >> fraction[47];
  assign sticky = {47'h0000_0000_0000, fraction[0]};
  assign exp__1 = exp & {10{nor_73014}};
  assign fraction__2 = fraction__1 | sticky;
  assign add_73321 = {1'h0, shifted_fraction[26:3]} + {24'h00_0000, do_round_up__1};
  assign exp__2 = exp__1 + {9'h000, fraction[47]};
  assign rounding_carry = add_73321[24];
  assign fraction__3 = $signed(exp__2) <= $signed(10'h000) ? {1'h0, fraction__2[47:1]} : fraction__2;
  assign sticky__1 = {47'h0000_0000_0000, fraction__2[0]};
  assign add_73331 = {1'h0, accum_bexp} + 9'h001;
  assign sub_73332 = {5'h00, rounding_carry} - {1'h0, leading_zeroes};
  assign fraction_is_zero = add_73146 == 26'h000_0000 & ~(shrl_73135[1] | shrl_73135[2]) & ~(shrl_73135[0] | sticky__2);
  assign fraction__4 = fraction__3 | sticky__1;
  assign wide_exponent_associative_element = {1'h0, add_73331};
  assign wide_exponent_associative_element__1 = {{4{sub_73332[5]}}, sub_73332};
  assign wide_exponent = wide_exponent_associative_element + wide_exponent_associative_element__1;
  assign ne_73042 = fraction__4[21:0] != 22'h00_0000;
  assign __systolic__result_chans__2_1_vld_buf = p1_valid & p1_should_output;
  assign __systolic__result_chans__2_1_not_has_been_sent = ~__systolic__result_chans__2_1_has_been_sent_reg;
  assign systolic__result_chans__2_1_valid_inv = ~__systolic__result_chans__2_1_valid_reg;
  assign wide_exponent__1 = wide_exponent & {10{~fraction_is_zero}};
  assign greater_than_half_way = fraction__4[22] & ne_73042;
  assign __systolic__result_chans__2_1_valid_and_not_has_been_sent = __systolic__result_chans__2_1_vld_buf & __systolic__result_chans__2_1_not_has_been_sent;
  assign systolic__result_chans__2_1_valid_load_en = systolic__result_chans__2_1_rdy | systolic__result_chans__2_1_valid_inv;
  assign high_exp = 8'hff;
  assign fraction__5 = fraction__4[45:23];
  assign do_round_up = greater_than_half_way | ~(~fraction__4[22] | ne_73042 | ~fraction__4[23]);
  assign systolic__result_chans__2_1_load_en = __systolic__result_chans__2_1_valid_and_not_has_been_sent & systolic__result_chans__2_1_valid_load_en;
  assign eq_73341 = accum_bexp == high_exp;
  assign eq_73342 = accum_fraction == 23'h00_0000;
  assign eq_73343 = prod_bexp == high_exp;
  assign eq_73344 = prod_fraction == 23'h00_0000;
  assign fraction__6 = {1'h0, fraction__5};
  assign or_74929 = ~p1_should_output | systolic__result_chans__2_1_load_en | __systolic__result_chans__2_1_has_been_sent_reg;
  assign fraction__7 = fraction__6 + {23'h00_0000, do_round_up};
  assign p2_stage_done = p1_valid & or_74929;
  assign p2_not_valid = ~p1_valid;
  assign wide_exponent__2 = wide_exponent__1[8:0] & {9{~wide_exponent__1[9]}};
  assign add_73053 = exp__2 + 10'h001;
  assign p1_enable = p2_stage_done | p2_not_valid;
  assign has_pos_inf = ~(~eq_73341 | ~eq_73342 | accum_sign) | ~(~eq_73343 | ~eq_73344 | prod_sign);
  assign has_neg_inf = eq_73341 & eq_73342 & accum_sign | eq_73343 & eq_73344 & prod_sign;
  assign exp__3 = fraction__7[23] ? add_73053 : exp__2;
  assign p1_data_enable = p1_enable & p0_valid;
  assign p1_not_valid = ~p0_valid;
  assign is_subnormal = $signed(exp__3) <= $signed(10'h000);
  assign p0_all_active_inputs_valid = __systolic__hor_chans__2_1_valid_reg & __systolic__vert_chans__2_1_valid_reg;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign is_result_nan__1 = ~(~eq_73341 | eq_73342) | ~(~eq_73343 | eq_73344) | has_pos_inf & has_neg_inf;
  assign is_operand_inf = eq_73341 & eq_73342 | eq_73343 & eq_73344;
  assign and_reduce_73372 = &wide_exponent__2[7:0];
  assign should_output = ____state_3 == 2'h3;
  assign __systolic__hor_chans__2_2_vld_buf = p0_all_active_inputs_valid & p0_enable;
  assign __systolic__hor_chans__2_2_not_has_been_sent = ~__systolic__hor_chans__2_2_has_been_sent_reg;
  assign systolic__hor_chans__2_2_valid_inv = ~__systolic__hor_chans__2_2_valid_reg;
  assign __systolic__vert_chans__3_1_not_has_been_sent = ~__systolic__vert_chans__3_1_has_been_sent_reg;
  assign systolic__vert_chans__3_1_valid_inv = ~__systolic__vert_chans__3_1_valid_reg;
  assign or_73375 = is_result_nan__1 | is_operand_inf | wide_exponent__2[8] | and_reduce_73372;
  assign or_73378 = is_operand_inf | wide_exponent__2[8] | and_reduce_73372 | ~((|wide_exponent__2[8:1]) | wide_exponent__2[0]);
  assign result_exp = exp__3[8:0];
  assign __systolic__hor_chans__2_2_valid_and_not_has_been_sent = __systolic__hor_chans__2_2_vld_buf & __systolic__hor_chans__2_2_not_has_been_sent;
  assign systolic__hor_chans__2_2_valid_load_en = systolic__hor_chans__2_2_rdy | systolic__hor_chans__2_2_valid_inv;
  assign __systolic__vert_chans__3_1_valid_and_not_has_been_sent = __systolic__hor_chans__2_2_vld_buf & __systolic__vert_chans__3_1_not_has_been_sent;
  assign systolic__vert_chans__3_1_valid_load_en = systolic__vert_chans__3_1_rdy | systolic__vert_chans__3_1_valid_inv;
  assign and_73380 = ~should_output & ~is_result_nan__1;
  assign eq_73056 = a_bexp__1 == high_exp;
  assign eq_73057 = a_fraction__1 == 23'h00_0000;
  assign eq_73058 = b_bexp__2 == high_exp;
  assign eq_73059 = b_fraction__1 == 23'h00_0000;
  assign result_exp__1 = result_exp & {9{~is_subnormal}};
  assign systolic__hor_chans__2_2_load_en = __systolic__hor_chans__2_2_valid_and_not_has_been_sent & systolic__hor_chans__2_2_valid_load_en;
  assign systolic__vert_chans__3_1_load_en = __systolic__vert_chans__3_1_valid_and_not_has_been_sent & systolic__vert_chans__3_1_valid_load_en;
  assign and_73387 = ~should_output & ~or_73375;
  assign and_73388 = ~should_output & or_73375;
  assign and_73389 = ~should_output & is_result_nan__1;
  assign and_73390 = and_73380 & ~or_73378;
  assign and_73391 = and_73380 & or_73378;
  assign __systolic__hor_chans__2_2_has_sent_or_is_ready = systolic__hor_chans__2_2_load_en | __systolic__hor_chans__2_2_has_been_sent_reg;
  assign __systolic__vert_chans__3_1_has_sent_or_is_ready = systolic__vert_chans__3_1_load_en | __systolic__vert_chans__3_1_has_been_sent_reg;
  assign ____state_1__next_value_predicates = {should_output, and_73387, and_73388};
  assign ____state_2__next_value_predicates = {should_output, and_73389, and_73390, and_73391};
  assign ____state_3__next_value_predicates = {~should_output, should_output};
  assign has_0_arg = eq_73010 | eq_73011;
  assign has_inf_arg = eq_73056 & eq_73057 | eq_73058 & eq_73059;
  assign and_reduce_73076 = &result_exp__1[7:0];
  assign p0_all_active_outputs_ready = __systolic__hor_chans__2_2_has_sent_or_is_ready & __systolic__vert_chans__3_1_has_sent_or_is_ready;
  assign one_hot_73401 = {____state_1__next_value_predicates[2:0] == 3'h0, ____state_1__next_value_predicates[2] && ____state_1__next_value_predicates[1:0] == 2'h0, ____state_1__next_value_predicates[1] && !____state_1__next_value_predicates[0], ____state_1__next_value_predicates[0]};
  assign one_hot_73402 = {____state_2__next_value_predicates[3:0] == 4'h0, ____state_2__next_value_predicates[3] && ____state_2__next_value_predicates[2:0] == 3'h0, ____state_2__next_value_predicates[2] && ____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign one_hot_73403 = {____state_3__next_value_predicates[1:0] == 2'h0, ____state_3__next_value_predicates[1] && !____state_3__next_value_predicates[0], ____state_3__next_value_predicates[0]};
  assign fraction_shift__2 = 3'h3;
  assign result_sign__2 = priority_sel_1b_2way({add_73146[25], fraction_is_zero}, accum_sign & prod_sign, ~prod_sign, prod_sign);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign rounded_fraction = {add_73321, normal_chunk};
  assign fraction_shift__1 = rounding_carry ? fraction_shift__3 : fraction_shift__2;
  assign is_result_nan = ~(~eq_73056 | eq_73057) | ~(~eq_73058 | eq_73059) | has_0_arg & has_inf_arg;
  assign result_sign__3 = is_operand_inf ? ~has_pos_inf : result_sign__2;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic__hor_chans__2_1_valid_inv = ~__systolic__hor_chans__2_1_valid_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign shrl_73392 = rounded_fraction >> fraction_shift__1;
  assign result_fraction = fraction__7[22:0];
  assign a_sign__1 = __systolic__hor_chans__2_1_reg[31:31];
  assign b_sign__1 = __systolic__vert_chans__2_1_reg[31:31];
  assign result_sign__4 = ~is_result_nan__1 & result_sign__3;
  assign and_73518 = should_output & p1_data_enable;
  assign and_73519 = and_73387 & p1_data_enable;
  assign and_73520 = and_73388 & p1_data_enable;
  assign and_73527 = and_73389 & p1_data_enable;
  assign and_73528 = and_73390 & p1_data_enable;
  assign and_73529 = and_73391 & p1_data_enable;
  assign and_73535 = ~should_output & p1_data_enable;
  assign nan_fraction = 23'h40_0000;
  assign systolic__hor_chans__2_1_valid_load_en = p0_data_enable | systolic__hor_chans__2_1_valid_inv;
  assign systolic__vert_chans__2_1_valid_load_en = p0_data_enable | systolic__vert_chans__2_1_valid_inv;
  assign ____state_1__at_most_one_next_value = should_output == one_hot_73401[2] & and_73387 == one_hot_73401[1] & and_73388 == one_hot_73401[0];
  assign ____state_2__at_most_one_next_value = should_output == one_hot_73402[3] & and_73389 == one_hot_73402[2] & and_73390 == one_hot_73402[1] & and_73391 == one_hot_73402[0];
  assign ____state_3__at_most_one_next_value = ~should_output == one_hot_73403[1] & should_output == one_hot_73403[0];
  assign result_fraction__1 = shrl_73392[22:0];
  assign result_exp__4 = is_result_nan | has_inf_arg | result_exp__1[8] | and_reduce_73076 ? high_exp : result_exp__1[7:0];
  assign result_fraction__3 = result_fraction & {23{~(has_inf_arg | result_exp__1[8] | and_reduce_73076 | is_subnormal)}};
  assign result_sign = a_sign__1 ^ b_sign__1;
  assign concat_73522 = {and_73518, and_73519, and_73520};
  assign concat_73531 = {and_73518, and_73527, and_73528, and_73529};
  assign concat_73537 = {and_73535, and_73518};
  assign unexpand_for_next_value_1647_3_case_0 = ____state_3 + 2'h1;
  assign __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready = __systolic__hor_chans__2_2_vld_buf & p0_all_active_outputs_ready;
  assign __systolic__hor_chans__2_2_valid_and_ready_txfr = __systolic__hor_chans__2_2_valid_and_not_has_been_sent & systolic__hor_chans__2_2_load_en;
  assign __systolic__vert_chans__3_1_valid_and_ready_txfr = __systolic__vert_chans__3_1_valid_and_not_has_been_sent & systolic__vert_chans__3_1_load_en;
  assign __systolic__result_chans__2_1_valid_and_all_active_outputs_ready = __systolic__result_chans__2_1_vld_buf & or_74929;
  assign __systolic__result_chans__2_1_valid_and_ready_txfr = __systolic__result_chans__2_1_valid_and_not_has_been_sent & systolic__result_chans__2_1_load_en;
  assign result_fraction__5 = p1_is_result_nan__1 ? nan_fraction : p1_result_fraction__2;
  assign systolic__hor_chans__2_1_load_en = systolic__hor_chans__2_1_vld & systolic__hor_chans__2_1_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = systolic__vert_chans__2_1_vld & systolic__vert_chans__2_1_valid_load_en;
  assign or_74625 = ~p0_valid | ____state_1__at_most_one_next_value | rst;
  assign or_74627 = ~p0_valid | ____state_2__at_most_one_next_value | rst;
  assign or_74629 = ~p0_valid | ____state_3__at_most_one_next_value | rst;
  assign p3_enable = 1'h1;
  assign p2_enable = 1'h1;
  assign result_fraction__2 = result_fraction__1 & {23{~or_73378}};
  assign result_exponent__2 = or_73375 ? high_exp : wide_exponent__2[7:0];
  assign prod_bexpnot = ~result_exp__4;
  assign result_fraction__4 = is_result_nan ? nan_fraction : result_fraction__3;
  assign result_sign__1 = ~is_result_nan & result_sign;
  assign nor_73426 = ~(should_output | ~result_sign__4);
  assign one_hot_sel_73523 = high_exp & {8{concat_73522[0]}} | wide_exponent__2[7:0] & {8{concat_73522[1]}} | 8'h00 & {8{concat_73522[2]}};
  assign or_73524 = and_73518 | and_73519 | and_73520;
  assign one_hot_sel_73532 = 23'h00_0000 & {23{concat_73531[0]}} | result_fraction__1 & {23{concat_73531[1]}} | nan_fraction & {23{concat_73531[2]}} | 23'h00_0000 & {23{concat_73531[3]}};
  assign or_73533 = and_73518 | and_73527 | and_73528 | and_73529;
  assign one_hot_sel_73538 = unexpand_for_next_value_1647_3_case_1 & {2{concat_73537[0]}} | unexpand_for_next_value_1647_3_case_0 & {2{concat_73537[1]}};
  assign or_73539 = and_73535 | and_73518;
  assign __systolic__hor_chans__2_2_not_stage_load = ~__systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_2_has_been_sent_reg_load_en = __systolic__hor_chans__2_2_valid_and_ready_txfr | __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_1_has_been_sent_reg_load_en = __systolic__vert_chans__3_1_valid_and_ready_txfr | __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_1_not_stage_load = ~__systolic__result_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_1_has_been_sent_reg_load_en = __systolic__result_chans__2_1_valid_and_ready_txfr | __systolic__result_chans__2_1_valid_and_all_active_outputs_ready;
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
      ____state_3 <= 2'h0;
      p1_is_result_nan__1 <= 1'h0;
      p1_should_output <= 1'h0;
      p1_result_fraction__2 <= 23'h00_0000;
      p1_result_sign__4 <= 1'h0;
      p1_result_exponent__2 <= 8'h00;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic__hor_chans__2_2_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__3_1_has_been_sent_reg <= 1'h0;
      __systolic__result_chans__2_1_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__2_1_reg <= __systolic__hor_chans__2_1_reg_init;
      __systolic__hor_chans__2_1_valid_reg <= 1'h0;
      __systolic__vert_chans__2_1_reg <= __systolic__vert_chans__2_1_reg_init;
      __systolic__vert_chans__2_1_valid_reg <= 1'h0;
      __systolic__hor_chans__2_2_reg <= __systolic__hor_chans__2_2_reg_init;
      __systolic__hor_chans__2_2_valid_reg <= 1'h0;
      __systolic__vert_chans__3_1_reg <= __systolic__vert_chans__3_1_reg_init;
      __systolic__vert_chans__3_1_valid_reg <= 1'h0;
      __systolic__result_chans__2_1_reg <= __systolic__result_chans__2_1_reg_init;
      __systolic__result_chans__2_1_valid_reg <= 1'h0;
    end else begin
      p0_result_exp__4 <= p0_data_enable ? result_exp__4 : p0_result_exp__4;
      p0_prod_bexpnot <= p0_data_enable ? prod_bexpnot : p0_prod_bexpnot;
      p0_result_fraction__4 <= p0_data_enable ? result_fraction__4 : p0_result_fraction__4;
      p0_result_sign__1 <= p0_data_enable ? result_sign__1 : p0_result_sign__1;
      ____state_1 <= or_73524 ? one_hot_sel_73523 : ____state_1;
      ____state_2 <= or_73533 ? one_hot_sel_73532 : ____state_2;
      ____state_0 <= p1_data_enable ? nor_73426 : ____state_0;
      ____state_3 <= or_73539 ? one_hot_sel_73538 : ____state_3;
      p1_is_result_nan__1 <= p1_data_enable ? is_result_nan__1 : p1_is_result_nan__1;
      p1_should_output <= p1_data_enable ? should_output : p1_should_output;
      p1_result_fraction__2 <= p1_data_enable ? result_fraction__2 : p1_result_fraction__2;
      p1_result_sign__4 <= p1_data_enable ? result_sign__4 : p1_result_sign__4;
      p1_result_exponent__2 <= p1_data_enable ? result_exponent__2 : p1_result_exponent__2;
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p0_valid : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p2_valid : p3_valid;
      __systolic__hor_chans__2_2_has_been_sent_reg <= __systolic__hor_chans__2_2_has_been_sent_reg_load_en ? __systolic__hor_chans__2_2_not_stage_load : __systolic__hor_chans__2_2_has_been_sent_reg;
      __systolic__vert_chans__3_1_has_been_sent_reg <= __systolic__vert_chans__3_1_has_been_sent_reg_load_en ? __systolic__hor_chans__2_2_not_stage_load : __systolic__vert_chans__3_1_has_been_sent_reg;
      __systolic__result_chans__2_1_has_been_sent_reg <= __systolic__result_chans__2_1_has_been_sent_reg_load_en ? __systolic__result_chans__2_1_not_stage_load : __systolic__result_chans__2_1_has_been_sent_reg;
      __systolic__hor_chans__2_1_reg <= systolic__hor_chans__2_1_load_en ? systolic__hor_chans__2_1 : __systolic__hor_chans__2_1_reg;
      __systolic__hor_chans__2_1_valid_reg <= systolic__hor_chans__2_1_valid_load_en ? systolic__hor_chans__2_1_vld : __systolic__hor_chans__2_1_valid_reg;
      __systolic__vert_chans__2_1_reg <= systolic__vert_chans__2_1_load_en ? systolic__vert_chans__2_1 : __systolic__vert_chans__2_1_reg;
      __systolic__vert_chans__2_1_valid_reg <= systolic__vert_chans__2_1_valid_load_en ? systolic__vert_chans__2_1_vld : __systolic__vert_chans__2_1_valid_reg;
      __systolic__hor_chans__2_2_reg <= systolic__hor_chans__2_2_load_en ? __systolic__hor_chans__2_1_reg : __systolic__hor_chans__2_2_reg;
      __systolic__hor_chans__2_2_valid_reg <= systolic__hor_chans__2_2_valid_load_en ? __systolic__hor_chans__2_2_valid_and_not_has_been_sent : __systolic__hor_chans__2_2_valid_reg;
      __systolic__vert_chans__3_1_reg <= systolic__vert_chans__3_1_load_en ? __systolic__vert_chans__2_1_reg : __systolic__vert_chans__3_1_reg;
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
  ____state_1__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74625))) or_74625) else $fatal(0, "More than one next_value fired for state element: __state_1");
  ____state_2__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74627))) or_74627) else $fatal(0, "More than one next_value fired for state element: __state_2");
  ____state_3__at_most_one_next_value_assert: assert property (@(posedge clk) disable iff ($sampled(rst !== 1'h0 || $isunknown(or_74629))) or_74629) else $fatal(0, "More than one next_value fired for state element: __state_3");
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
  wire instantiation_output_73656;
  wire instantiation_output_73662;
  wire [31:0] instantiation_output_73667;
  wire instantiation_output_73668;
  wire instantiation_output_73727;
  wire [31:0] instantiation_output_73732;
  wire instantiation_output_73733;
  wire instantiation_output_73792;
  wire [31:0] instantiation_output_73797;
  wire instantiation_output_73798;
  wire instantiation_output_73857;
  wire [31:0] instantiation_output_73862;
  wire instantiation_output_73863;
  wire instantiation_output_73922;
  wire [31:0] instantiation_output_73926[4][4];
  wire instantiation_output_73927;
  wire instantiation_output_73941;
  wire instantiation_output_73954;
  wire instantiation_output_73967;
  wire instantiation_output_73980;
  wire instantiation_output_73993;
  wire instantiation_output_74006;
  wire instantiation_output_74019;
  wire instantiation_output_74032;
  wire instantiation_output_74045;
  wire instantiation_output_74058;
  wire instantiation_output_74071;
  wire instantiation_output_74084;
  wire instantiation_output_74097;
  wire instantiation_output_74110;
  wire instantiation_output_74123;
  wire instantiation_output_74136;
  wire [31:0] instantiation_output_74141;
  wire instantiation_output_74142;
  wire [31:0] instantiation_output_74154;
  wire instantiation_output_74155;
  wire [31:0] instantiation_output_74167;
  wire instantiation_output_74168;
  wire [31:0] instantiation_output_74180;
  wire instantiation_output_74181;
  wire instantiation_output_74357;
  wire instantiation_output_74370;
  wire instantiation_output_74383;
  wire instantiation_output_74396;
  wire instantiation_output_73675;
  wire [31:0] instantiation_output_73680;
  wire instantiation_output_73681;
  wire [31:0] instantiation_output_73933;
  wire instantiation_output_73934;
  wire instantiation_output_74149;
  wire [31:0] instantiation_output_74193;
  wire instantiation_output_74194;
  wire instantiation_output_73831;
  wire [31:0] instantiation_output_73836;
  wire instantiation_output_73837;
  wire [31:0] instantiation_output_74063;
  wire instantiation_output_74064;
  wire instantiation_output_74279;
  wire [31:0] instantiation_output_74323;
  wire instantiation_output_74324;
  wire instantiation_output_73844;
  wire [31:0] instantiation_output_73849;
  wire instantiation_output_73850;
  wire [31:0] instantiation_output_74076;
  wire instantiation_output_74077;
  wire instantiation_output_74292;
  wire [31:0] instantiation_output_74336;
  wire instantiation_output_74337;
  wire instantiation_output_73870;
  wire [31:0] instantiation_output_73875;
  wire instantiation_output_73876;
  wire [31:0] instantiation_output_74089;
  wire instantiation_output_74090;
  wire instantiation_output_74305;
  wire [31:0] instantiation_output_74349;
  wire instantiation_output_74350;
  wire instantiation_output_73883;
  wire [31:0] instantiation_output_73888;
  wire instantiation_output_73889;
  wire [31:0] instantiation_output_74102;
  wire instantiation_output_74103;
  wire instantiation_output_74318;
  wire [31:0] instantiation_output_74362;
  wire instantiation_output_74363;
  wire instantiation_output_73896;
  wire [31:0] instantiation_output_73901;
  wire instantiation_output_73902;
  wire [31:0] instantiation_output_74115;
  wire instantiation_output_74116;
  wire instantiation_output_74331;
  wire [31:0] instantiation_output_74375;
  wire instantiation_output_74376;
  wire instantiation_output_73909;
  wire [31:0] instantiation_output_73914;
  wire instantiation_output_73915;
  wire [31:0] instantiation_output_74128;
  wire instantiation_output_74129;
  wire instantiation_output_74344;
  wire [31:0] instantiation_output_74388;
  wire instantiation_output_74389;
  wire instantiation_output_73688;
  wire [31:0] instantiation_output_73693;
  wire instantiation_output_73694;
  wire [31:0] instantiation_output_73946;
  wire instantiation_output_73947;
  wire instantiation_output_74162;
  wire [31:0] instantiation_output_74206;
  wire instantiation_output_74207;
  wire instantiation_output_73701;
  wire [31:0] instantiation_output_73706;
  wire instantiation_output_73707;
  wire [31:0] instantiation_output_73959;
  wire instantiation_output_73960;
  wire instantiation_output_74175;
  wire [31:0] instantiation_output_74219;
  wire instantiation_output_74220;
  wire instantiation_output_73714;
  wire [31:0] instantiation_output_73719;
  wire instantiation_output_73720;
  wire [31:0] instantiation_output_73972;
  wire instantiation_output_73973;
  wire instantiation_output_74188;
  wire [31:0] instantiation_output_74232;
  wire instantiation_output_74233;
  wire instantiation_output_73740;
  wire [31:0] instantiation_output_73745;
  wire instantiation_output_73746;
  wire [31:0] instantiation_output_73985;
  wire instantiation_output_73986;
  wire instantiation_output_74201;
  wire [31:0] instantiation_output_74245;
  wire instantiation_output_74246;
  wire instantiation_output_73753;
  wire [31:0] instantiation_output_73758;
  wire instantiation_output_73759;
  wire [31:0] instantiation_output_73998;
  wire instantiation_output_73999;
  wire instantiation_output_74214;
  wire [31:0] instantiation_output_74258;
  wire instantiation_output_74259;
  wire instantiation_output_73766;
  wire [31:0] instantiation_output_73771;
  wire instantiation_output_73772;
  wire [31:0] instantiation_output_74011;
  wire instantiation_output_74012;
  wire instantiation_output_74227;
  wire [31:0] instantiation_output_74271;
  wire instantiation_output_74272;
  wire instantiation_output_73779;
  wire [31:0] instantiation_output_73784;
  wire instantiation_output_73785;
  wire [31:0] instantiation_output_74024;
  wire instantiation_output_74025;
  wire instantiation_output_74240;
  wire [31:0] instantiation_output_74284;
  wire instantiation_output_74285;
  wire instantiation_output_73805;
  wire [31:0] instantiation_output_73810;
  wire instantiation_output_73811;
  wire [31:0] instantiation_output_74037;
  wire instantiation_output_74038;
  wire instantiation_output_74253;
  wire [31:0] instantiation_output_74297;
  wire instantiation_output_74298;
  wire instantiation_output_73818;
  wire [31:0] instantiation_output_73823;
  wire instantiation_output_73824;
  wire [31:0] instantiation_output_74050;
  wire instantiation_output_74051;
  wire instantiation_output_74266;
  wire [31:0] instantiation_output_74310;
  wire instantiation_output_74311;
  wire instantiation_output_73669;
  wire [31:0] instantiation_output_73673;
  wire instantiation_output_73674;
  wire instantiation_output_73682;
  wire [31:0] instantiation_output_73686;
  wire instantiation_output_73687;
  wire instantiation_output_73695;
  wire [31:0] instantiation_output_73699;
  wire instantiation_output_73700;
  wire instantiation_output_73708;
  wire [31:0] instantiation_output_73712;
  wire instantiation_output_73713;
  wire instantiation_output_73721;
  wire [31:0] instantiation_output_73725;
  wire instantiation_output_73726;
  wire instantiation_output_73734;
  wire [31:0] instantiation_output_73738;
  wire instantiation_output_73739;
  wire instantiation_output_73747;
  wire [31:0] instantiation_output_73751;
  wire instantiation_output_73752;
  wire instantiation_output_73760;
  wire [31:0] instantiation_output_73764;
  wire instantiation_output_73765;
  wire instantiation_output_73773;
  wire [31:0] instantiation_output_73777;
  wire instantiation_output_73778;
  wire instantiation_output_73786;
  wire [31:0] instantiation_output_73790;
  wire instantiation_output_73791;
  wire instantiation_output_73799;
  wire [31:0] instantiation_output_73803;
  wire instantiation_output_73804;
  wire instantiation_output_73812;
  wire [31:0] instantiation_output_73816;
  wire instantiation_output_73817;
  wire instantiation_output_73825;
  wire [31:0] instantiation_output_73829;
  wire instantiation_output_73830;
  wire instantiation_output_73838;
  wire [31:0] instantiation_output_73842;
  wire instantiation_output_73843;
  wire instantiation_output_73851;
  wire [31:0] instantiation_output_73855;
  wire instantiation_output_73856;
  wire instantiation_output_73864;
  wire [31:0] instantiation_output_73868;
  wire instantiation_output_73869;
  wire instantiation_output_73877;
  wire [31:0] instantiation_output_73881;
  wire instantiation_output_73882;
  wire instantiation_output_73890;
  wire [31:0] instantiation_output_73894;
  wire instantiation_output_73895;
  wire instantiation_output_73903;
  wire [31:0] instantiation_output_73907;
  wire instantiation_output_73908;
  wire instantiation_output_73916;
  wire [31:0] instantiation_output_73920;
  wire instantiation_output_73921;
  wire instantiation_output_73935;
  wire [31:0] instantiation_output_73939;
  wire instantiation_output_73940;
  wire instantiation_output_73948;
  wire [31:0] instantiation_output_73952;
  wire instantiation_output_73953;
  wire instantiation_output_73961;
  wire [31:0] instantiation_output_73965;
  wire instantiation_output_73966;
  wire instantiation_output_73974;
  wire [31:0] instantiation_output_73978;
  wire instantiation_output_73979;
  wire instantiation_output_73987;
  wire [31:0] instantiation_output_73991;
  wire instantiation_output_73992;
  wire instantiation_output_74000;
  wire [31:0] instantiation_output_74004;
  wire instantiation_output_74005;
  wire instantiation_output_74013;
  wire [31:0] instantiation_output_74017;
  wire instantiation_output_74018;
  wire instantiation_output_74026;
  wire [31:0] instantiation_output_74030;
  wire instantiation_output_74031;
  wire instantiation_output_74039;
  wire [31:0] instantiation_output_74043;
  wire instantiation_output_74044;
  wire instantiation_output_74052;
  wire [31:0] instantiation_output_74056;
  wire instantiation_output_74057;
  wire instantiation_output_74065;
  wire [31:0] instantiation_output_74069;
  wire instantiation_output_74070;
  wire instantiation_output_74078;
  wire [31:0] instantiation_output_74082;
  wire instantiation_output_74083;
  wire instantiation_output_74091;
  wire [31:0] instantiation_output_74095;
  wire instantiation_output_74096;
  wire instantiation_output_74104;
  wire [31:0] instantiation_output_74108;
  wire instantiation_output_74109;
  wire instantiation_output_74117;
  wire [31:0] instantiation_output_74121;
  wire instantiation_output_74122;
  wire instantiation_output_74130;
  wire [31:0] instantiation_output_74134;
  wire instantiation_output_74135;
  wire instantiation_output_74143;
  wire [31:0] instantiation_output_74147;
  wire instantiation_output_74148;
  wire instantiation_output_74156;
  wire [31:0] instantiation_output_74160;
  wire instantiation_output_74161;
  wire instantiation_output_74169;
  wire [31:0] instantiation_output_74173;
  wire instantiation_output_74174;
  wire instantiation_output_74182;
  wire [31:0] instantiation_output_74186;
  wire instantiation_output_74187;
  wire instantiation_output_74195;
  wire [31:0] instantiation_output_74199;
  wire instantiation_output_74200;
  wire instantiation_output_74208;
  wire [31:0] instantiation_output_74212;
  wire instantiation_output_74213;
  wire instantiation_output_74221;
  wire [31:0] instantiation_output_74225;
  wire instantiation_output_74226;
  wire instantiation_output_74234;
  wire [31:0] instantiation_output_74238;
  wire instantiation_output_74239;
  wire instantiation_output_74247;
  wire [31:0] instantiation_output_74251;
  wire instantiation_output_74252;
  wire instantiation_output_74260;
  wire [31:0] instantiation_output_74264;
  wire instantiation_output_74265;
  wire instantiation_output_74273;
  wire [31:0] instantiation_output_74277;
  wire instantiation_output_74278;
  wire instantiation_output_74286;
  wire [31:0] instantiation_output_74290;
  wire instantiation_output_74291;
  wire instantiation_output_74299;
  wire [31:0] instantiation_output_74303;
  wire instantiation_output_74304;
  wire instantiation_output_74312;
  wire [31:0] instantiation_output_74316;
  wire instantiation_output_74317;
  wire instantiation_output_74325;
  wire [31:0] instantiation_output_74329;
  wire instantiation_output_74330;
  wire instantiation_output_74338;
  wire [31:0] instantiation_output_74342;
  wire instantiation_output_74343;
  wire instantiation_output_74351;
  wire [31:0] instantiation_output_74355;
  wire instantiation_output_74356;
  wire instantiation_output_74364;
  wire [31:0] instantiation_output_74368;
  wire instantiation_output_74369;
  wire instantiation_output_74377;
  wire [31:0] instantiation_output_74381;
  wire instantiation_output_74382;
  wire instantiation_output_74390;
  wire [31:0] instantiation_output_74394;
  wire instantiation_output_74395;

  // ===== Instantiations
  __systolic__SystolicArray_0_next__1 __systolic__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .systolic__arg0({{systolic__arg0_unflattened[3][3], systolic__arg0_unflattened[3][2], systolic__arg0_unflattened[3][1], systolic__arg0_unflattened[3][0]}, {systolic__arg0_unflattened[2][3], systolic__arg0_unflattened[2][2], systolic__arg0_unflattened[2][1], systolic__arg0_unflattened[2][0]}, {systolic__arg0_unflattened[1][3], systolic__arg0_unflattened[1][2], systolic__arg0_unflattened[1][1], systolic__arg0_unflattened[1][0]}, {systolic__arg0_unflattened[0][3], systolic__arg0_unflattened[0][2], systolic__arg0_unflattened[0][1], systolic__arg0_unflattened[0][0]}}),
    .systolic__arg0_vld(systolic__arg0_vld),
    .systolic__arg1({{systolic__arg1_unflattened[3][3], systolic__arg1_unflattened[3][2], systolic__arg1_unflattened[3][1], systolic__arg1_unflattened[3][0]}, {systolic__arg1_unflattened[2][3], systolic__arg1_unflattened[2][2], systolic__arg1_unflattened[2][1], systolic__arg1_unflattened[2][0]}, {systolic__arg1_unflattened[1][3], systolic__arg1_unflattened[1][2], systolic__arg1_unflattened[1][1], systolic__arg1_unflattened[1][0]}, {systolic__arg1_unflattened[0][3], systolic__arg1_unflattened[0][2], systolic__arg1_unflattened[0][1], systolic__arg1_unflattened[0][0]}}),
    .systolic__arg1_vld(systolic__arg1_vld),
    .systolic__hor_chans__0_0_rdy(instantiation_output_73669),
    .systolic__hor_chans__0_4(instantiation_output_73725),
    .systolic__hor_chans__0_4_vld(instantiation_output_73726),
    .systolic__hor_chans__1_0_rdy(instantiation_output_73734),
    .systolic__hor_chans__1_4(instantiation_output_73790),
    .systolic__hor_chans__1_4_vld(instantiation_output_73791),
    .systolic__hor_chans__2_0_rdy(instantiation_output_73799),
    .systolic__hor_chans__2_4(instantiation_output_73855),
    .systolic__hor_chans__2_4_vld(instantiation_output_73856),
    .systolic__hor_chans__3_0_rdy(instantiation_output_73864),
    .systolic__hor_chans__3_4(instantiation_output_73920),
    .systolic__hor_chans__3_4_vld(instantiation_output_73921),
    .systolic__out0_rdy(systolic__out0_rdy),
    .systolic__result_chans__0_0(instantiation_output_73939),
    .systolic__result_chans__0_0_vld(instantiation_output_73940),
    .systolic__result_chans__0_1(instantiation_output_73952),
    .systolic__result_chans__0_1_vld(instantiation_output_73953),
    .systolic__result_chans__0_2(instantiation_output_73965),
    .systolic__result_chans__0_2_vld(instantiation_output_73966),
    .systolic__result_chans__0_3(instantiation_output_73978),
    .systolic__result_chans__0_3_vld(instantiation_output_73979),
    .systolic__result_chans__1_0(instantiation_output_73991),
    .systolic__result_chans__1_0_vld(instantiation_output_73992),
    .systolic__result_chans__1_1(instantiation_output_74004),
    .systolic__result_chans__1_1_vld(instantiation_output_74005),
    .systolic__result_chans__1_2(instantiation_output_74017),
    .systolic__result_chans__1_2_vld(instantiation_output_74018),
    .systolic__result_chans__1_3(instantiation_output_74030),
    .systolic__result_chans__1_3_vld(instantiation_output_74031),
    .systolic__result_chans__2_0(instantiation_output_74043),
    .systolic__result_chans__2_0_vld(instantiation_output_74044),
    .systolic__result_chans__2_1(instantiation_output_74056),
    .systolic__result_chans__2_1_vld(instantiation_output_74057),
    .systolic__result_chans__2_2(instantiation_output_74069),
    .systolic__result_chans__2_2_vld(instantiation_output_74070),
    .systolic__result_chans__2_3(instantiation_output_74082),
    .systolic__result_chans__2_3_vld(instantiation_output_74083),
    .systolic__result_chans__3_0(instantiation_output_74095),
    .systolic__result_chans__3_0_vld(instantiation_output_74096),
    .systolic__result_chans__3_1(instantiation_output_74108),
    .systolic__result_chans__3_1_vld(instantiation_output_74109),
    .systolic__result_chans__3_2(instantiation_output_74121),
    .systolic__result_chans__3_2_vld(instantiation_output_74122),
    .systolic__result_chans__3_3(instantiation_output_74134),
    .systolic__result_chans__3_3_vld(instantiation_output_74135),
    .systolic__vert_chans__0_0_rdy(instantiation_output_74143),
    .systolic__vert_chans__0_1_rdy(instantiation_output_74156),
    .systolic__vert_chans__0_2_rdy(instantiation_output_74169),
    .systolic__vert_chans__0_3_rdy(instantiation_output_74182),
    .systolic__vert_chans__4_0(instantiation_output_74355),
    .systolic__vert_chans__4_0_vld(instantiation_output_74356),
    .systolic__vert_chans__4_1(instantiation_output_74368),
    .systolic__vert_chans__4_1_vld(instantiation_output_74369),
    .systolic__vert_chans__4_2(instantiation_output_74381),
    .systolic__vert_chans__4_2_vld(instantiation_output_74382),
    .systolic__vert_chans__4_3(instantiation_output_74394),
    .systolic__vert_chans__4_3_vld(instantiation_output_74395),
    .systolic__arg0_rdy(instantiation_output_73656),
    .systolic__arg1_rdy(instantiation_output_73662),
    .systolic__hor_chans__0_0(instantiation_output_73667),
    .systolic__hor_chans__0_0_vld(instantiation_output_73668),
    .systolic__hor_chans__0_4_rdy(instantiation_output_73727),
    .systolic__hor_chans__1_0(instantiation_output_73732),
    .systolic__hor_chans__1_0_vld(instantiation_output_73733),
    .systolic__hor_chans__1_4_rdy(instantiation_output_73792),
    .systolic__hor_chans__2_0(instantiation_output_73797),
    .systolic__hor_chans__2_0_vld(instantiation_output_73798),
    .systolic__hor_chans__2_4_rdy(instantiation_output_73857),
    .systolic__hor_chans__3_0(instantiation_output_73862),
    .systolic__hor_chans__3_0_vld(instantiation_output_73863),
    .systolic__hor_chans__3_4_rdy(instantiation_output_73922),
    .systolic__out0({{instantiation_output_73926[3][3], instantiation_output_73926[3][2], instantiation_output_73926[3][1], instantiation_output_73926[3][0]}, {instantiation_output_73926[2][3], instantiation_output_73926[2][2], instantiation_output_73926[2][1], instantiation_output_73926[2][0]}, {instantiation_output_73926[1][3], instantiation_output_73926[1][2], instantiation_output_73926[1][1], instantiation_output_73926[1][0]}, {instantiation_output_73926[0][3], instantiation_output_73926[0][2], instantiation_output_73926[0][1], instantiation_output_73926[0][0]}}),
    .systolic__out0_vld(instantiation_output_73927),
    .systolic__result_chans__0_0_rdy(instantiation_output_73941),
    .systolic__result_chans__0_1_rdy(instantiation_output_73954),
    .systolic__result_chans__0_2_rdy(instantiation_output_73967),
    .systolic__result_chans__0_3_rdy(instantiation_output_73980),
    .systolic__result_chans__1_0_rdy(instantiation_output_73993),
    .systolic__result_chans__1_1_rdy(instantiation_output_74006),
    .systolic__result_chans__1_2_rdy(instantiation_output_74019),
    .systolic__result_chans__1_3_rdy(instantiation_output_74032),
    .systolic__result_chans__2_0_rdy(instantiation_output_74045),
    .systolic__result_chans__2_1_rdy(instantiation_output_74058),
    .systolic__result_chans__2_2_rdy(instantiation_output_74071),
    .systolic__result_chans__2_3_rdy(instantiation_output_74084),
    .systolic__result_chans__3_0_rdy(instantiation_output_74097),
    .systolic__result_chans__3_1_rdy(instantiation_output_74110),
    .systolic__result_chans__3_2_rdy(instantiation_output_74123),
    .systolic__result_chans__3_3_rdy(instantiation_output_74136),
    .systolic__vert_chans__0_0(instantiation_output_74141),
    .systolic__vert_chans__0_0_vld(instantiation_output_74142),
    .systolic__vert_chans__0_1(instantiation_output_74154),
    .systolic__vert_chans__0_1_vld(instantiation_output_74155),
    .systolic__vert_chans__0_2(instantiation_output_74167),
    .systolic__vert_chans__0_2_vld(instantiation_output_74168),
    .systolic__vert_chans__0_3(instantiation_output_74180),
    .systolic__vert_chans__0_3_vld(instantiation_output_74181),
    .systolic__vert_chans__4_0_rdy(instantiation_output_74357),
    .systolic__vert_chans__4_1_rdy(instantiation_output_74370),
    .systolic__vert_chans__4_2_rdy(instantiation_output_74383),
    .systolic__vert_chans__4_3_rdy(instantiation_output_74396),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_0_next __systolic__SystolicArray__PE_0_next_inst1 (
    .rst(rst),
    .systolic__hor_chans__0_0(instantiation_output_73673),
    .systolic__hor_chans__0_0_vld(instantiation_output_73674),
    .systolic__hor_chans__0_1_rdy(instantiation_output_73682),
    .systolic__result_chans__0_0_rdy(instantiation_output_73935),
    .systolic__vert_chans__0_0(instantiation_output_74147),
    .systolic__vert_chans__0_0_vld(instantiation_output_74148),
    .systolic__vert_chans__1_0_rdy(instantiation_output_74195),
    .systolic__hor_chans__0_0_rdy(instantiation_output_73675),
    .systolic__hor_chans__0_1(instantiation_output_73680),
    .systolic__hor_chans__0_1_vld(instantiation_output_73681),
    .systolic__result_chans__0_0(instantiation_output_73933),
    .systolic__result_chans__0_0_vld(instantiation_output_73934),
    .systolic__vert_chans__0_0_rdy(instantiation_output_74149),
    .systolic__vert_chans__1_0(instantiation_output_74193),
    .systolic__vert_chans__1_0_vld(instantiation_output_74194),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_10_next __systolic__SystolicArray__PE_10_next_inst2 (
    .rst(rst),
    .systolic__hor_chans__2_2(instantiation_output_73829),
    .systolic__hor_chans__2_2_vld(instantiation_output_73830),
    .systolic__hor_chans__2_3_rdy(instantiation_output_73838),
    .systolic__result_chans__2_2_rdy(instantiation_output_74065),
    .systolic__vert_chans__2_2(instantiation_output_74277),
    .systolic__vert_chans__2_2_vld(instantiation_output_74278),
    .systolic__vert_chans__3_2_rdy(instantiation_output_74325),
    .systolic__hor_chans__2_2_rdy(instantiation_output_73831),
    .systolic__hor_chans__2_3(instantiation_output_73836),
    .systolic__hor_chans__2_3_vld(instantiation_output_73837),
    .systolic__result_chans__2_2(instantiation_output_74063),
    .systolic__result_chans__2_2_vld(instantiation_output_74064),
    .systolic__vert_chans__2_2_rdy(instantiation_output_74279),
    .systolic__vert_chans__3_2(instantiation_output_74323),
    .systolic__vert_chans__3_2_vld(instantiation_output_74324),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_11_next __systolic__SystolicArray__PE_11_next_inst3 (
    .rst(rst),
    .systolic__hor_chans__2_3(instantiation_output_73842),
    .systolic__hor_chans__2_3_vld(instantiation_output_73843),
    .systolic__hor_chans__2_4_rdy(instantiation_output_73851),
    .systolic__result_chans__2_3_rdy(instantiation_output_74078),
    .systolic__vert_chans__2_3(instantiation_output_74290),
    .systolic__vert_chans__2_3_vld(instantiation_output_74291),
    .systolic__vert_chans__3_3_rdy(instantiation_output_74338),
    .systolic__hor_chans__2_3_rdy(instantiation_output_73844),
    .systolic__hor_chans__2_4(instantiation_output_73849),
    .systolic__hor_chans__2_4_vld(instantiation_output_73850),
    .systolic__result_chans__2_3(instantiation_output_74076),
    .systolic__result_chans__2_3_vld(instantiation_output_74077),
    .systolic__vert_chans__2_3_rdy(instantiation_output_74292),
    .systolic__vert_chans__3_3(instantiation_output_74336),
    .systolic__vert_chans__3_3_vld(instantiation_output_74337),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_12_next __systolic__SystolicArray__PE_12_next_inst4 (
    .rst(rst),
    .systolic__hor_chans__3_0(instantiation_output_73868),
    .systolic__hor_chans__3_0_vld(instantiation_output_73869),
    .systolic__hor_chans__3_1_rdy(instantiation_output_73877),
    .systolic__result_chans__3_0_rdy(instantiation_output_74091),
    .systolic__vert_chans__3_0(instantiation_output_74303),
    .systolic__vert_chans__3_0_vld(instantiation_output_74304),
    .systolic__vert_chans__4_0_rdy(instantiation_output_74351),
    .systolic__hor_chans__3_0_rdy(instantiation_output_73870),
    .systolic__hor_chans__3_1(instantiation_output_73875),
    .systolic__hor_chans__3_1_vld(instantiation_output_73876),
    .systolic__result_chans__3_0(instantiation_output_74089),
    .systolic__result_chans__3_0_vld(instantiation_output_74090),
    .systolic__vert_chans__3_0_rdy(instantiation_output_74305),
    .systolic__vert_chans__4_0(instantiation_output_74349),
    .systolic__vert_chans__4_0_vld(instantiation_output_74350),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_13_next __systolic__SystolicArray__PE_13_next_inst5 (
    .rst(rst),
    .systolic__hor_chans__3_1(instantiation_output_73881),
    .systolic__hor_chans__3_1_vld(instantiation_output_73882),
    .systolic__hor_chans__3_2_rdy(instantiation_output_73890),
    .systolic__result_chans__3_1_rdy(instantiation_output_74104),
    .systolic__vert_chans__3_1(instantiation_output_74316),
    .systolic__vert_chans__3_1_vld(instantiation_output_74317),
    .systolic__vert_chans__4_1_rdy(instantiation_output_74364),
    .systolic__hor_chans__3_1_rdy(instantiation_output_73883),
    .systolic__hor_chans__3_2(instantiation_output_73888),
    .systolic__hor_chans__3_2_vld(instantiation_output_73889),
    .systolic__result_chans__3_1(instantiation_output_74102),
    .systolic__result_chans__3_1_vld(instantiation_output_74103),
    .systolic__vert_chans__3_1_rdy(instantiation_output_74318),
    .systolic__vert_chans__4_1(instantiation_output_74362),
    .systolic__vert_chans__4_1_vld(instantiation_output_74363),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_14_next __systolic__SystolicArray__PE_14_next_inst6 (
    .rst(rst),
    .systolic__hor_chans__3_2(instantiation_output_73894),
    .systolic__hor_chans__3_2_vld(instantiation_output_73895),
    .systolic__hor_chans__3_3_rdy(instantiation_output_73903),
    .systolic__result_chans__3_2_rdy(instantiation_output_74117),
    .systolic__vert_chans__3_2(instantiation_output_74329),
    .systolic__vert_chans__3_2_vld(instantiation_output_74330),
    .systolic__vert_chans__4_2_rdy(instantiation_output_74377),
    .systolic__hor_chans__3_2_rdy(instantiation_output_73896),
    .systolic__hor_chans__3_3(instantiation_output_73901),
    .systolic__hor_chans__3_3_vld(instantiation_output_73902),
    .systolic__result_chans__3_2(instantiation_output_74115),
    .systolic__result_chans__3_2_vld(instantiation_output_74116),
    .systolic__vert_chans__3_2_rdy(instantiation_output_74331),
    .systolic__vert_chans__4_2(instantiation_output_74375),
    .systolic__vert_chans__4_2_vld(instantiation_output_74376),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_15_next __systolic__SystolicArray__PE_15_next_inst7 (
    .rst(rst),
    .systolic__hor_chans__3_3(instantiation_output_73907),
    .systolic__hor_chans__3_3_vld(instantiation_output_73908),
    .systolic__hor_chans__3_4_rdy(instantiation_output_73916),
    .systolic__result_chans__3_3_rdy(instantiation_output_74130),
    .systolic__vert_chans__3_3(instantiation_output_74342),
    .systolic__vert_chans__3_3_vld(instantiation_output_74343),
    .systolic__vert_chans__4_3_rdy(instantiation_output_74390),
    .systolic__hor_chans__3_3_rdy(instantiation_output_73909),
    .systolic__hor_chans__3_4(instantiation_output_73914),
    .systolic__hor_chans__3_4_vld(instantiation_output_73915),
    .systolic__result_chans__3_3(instantiation_output_74128),
    .systolic__result_chans__3_3_vld(instantiation_output_74129),
    .systolic__vert_chans__3_3_rdy(instantiation_output_74344),
    .systolic__vert_chans__4_3(instantiation_output_74388),
    .systolic__vert_chans__4_3_vld(instantiation_output_74389),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_1_next __systolic__SystolicArray__PE_1_next_inst8 (
    .rst(rst),
    .systolic__hor_chans__0_1(instantiation_output_73686),
    .systolic__hor_chans__0_1_vld(instantiation_output_73687),
    .systolic__hor_chans__0_2_rdy(instantiation_output_73695),
    .systolic__result_chans__0_1_rdy(instantiation_output_73948),
    .systolic__vert_chans__0_1(instantiation_output_74160),
    .systolic__vert_chans__0_1_vld(instantiation_output_74161),
    .systolic__vert_chans__1_1_rdy(instantiation_output_74208),
    .systolic__hor_chans__0_1_rdy(instantiation_output_73688),
    .systolic__hor_chans__0_2(instantiation_output_73693),
    .systolic__hor_chans__0_2_vld(instantiation_output_73694),
    .systolic__result_chans__0_1(instantiation_output_73946),
    .systolic__result_chans__0_1_vld(instantiation_output_73947),
    .systolic__vert_chans__0_1_rdy(instantiation_output_74162),
    .systolic__vert_chans__1_1(instantiation_output_74206),
    .systolic__vert_chans__1_1_vld(instantiation_output_74207),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_2_next __systolic__SystolicArray__PE_2_next_inst9 (
    .rst(rst),
    .systolic__hor_chans__0_2(instantiation_output_73699),
    .systolic__hor_chans__0_2_vld(instantiation_output_73700),
    .systolic__hor_chans__0_3_rdy(instantiation_output_73708),
    .systolic__result_chans__0_2_rdy(instantiation_output_73961),
    .systolic__vert_chans__0_2(instantiation_output_74173),
    .systolic__vert_chans__0_2_vld(instantiation_output_74174),
    .systolic__vert_chans__1_2_rdy(instantiation_output_74221),
    .systolic__hor_chans__0_2_rdy(instantiation_output_73701),
    .systolic__hor_chans__0_3(instantiation_output_73706),
    .systolic__hor_chans__0_3_vld(instantiation_output_73707),
    .systolic__result_chans__0_2(instantiation_output_73959),
    .systolic__result_chans__0_2_vld(instantiation_output_73960),
    .systolic__vert_chans__0_2_rdy(instantiation_output_74175),
    .systolic__vert_chans__1_2(instantiation_output_74219),
    .systolic__vert_chans__1_2_vld(instantiation_output_74220),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_3_next __systolic__SystolicArray__PE_3_next_inst10 (
    .rst(rst),
    .systolic__hor_chans__0_3(instantiation_output_73712),
    .systolic__hor_chans__0_3_vld(instantiation_output_73713),
    .systolic__hor_chans__0_4_rdy(instantiation_output_73721),
    .systolic__result_chans__0_3_rdy(instantiation_output_73974),
    .systolic__vert_chans__0_3(instantiation_output_74186),
    .systolic__vert_chans__0_3_vld(instantiation_output_74187),
    .systolic__vert_chans__1_3_rdy(instantiation_output_74234),
    .systolic__hor_chans__0_3_rdy(instantiation_output_73714),
    .systolic__hor_chans__0_4(instantiation_output_73719),
    .systolic__hor_chans__0_4_vld(instantiation_output_73720),
    .systolic__result_chans__0_3(instantiation_output_73972),
    .systolic__result_chans__0_3_vld(instantiation_output_73973),
    .systolic__vert_chans__0_3_rdy(instantiation_output_74188),
    .systolic__vert_chans__1_3(instantiation_output_74232),
    .systolic__vert_chans__1_3_vld(instantiation_output_74233),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_4_next __systolic__SystolicArray__PE_4_next_inst11 (
    .rst(rst),
    .systolic__hor_chans__1_0(instantiation_output_73738),
    .systolic__hor_chans__1_0_vld(instantiation_output_73739),
    .systolic__hor_chans__1_1_rdy(instantiation_output_73747),
    .systolic__result_chans__1_0_rdy(instantiation_output_73987),
    .systolic__vert_chans__1_0(instantiation_output_74199),
    .systolic__vert_chans__1_0_vld(instantiation_output_74200),
    .systolic__vert_chans__2_0_rdy(instantiation_output_74247),
    .systolic__hor_chans__1_0_rdy(instantiation_output_73740),
    .systolic__hor_chans__1_1(instantiation_output_73745),
    .systolic__hor_chans__1_1_vld(instantiation_output_73746),
    .systolic__result_chans__1_0(instantiation_output_73985),
    .systolic__result_chans__1_0_vld(instantiation_output_73986),
    .systolic__vert_chans__1_0_rdy(instantiation_output_74201),
    .systolic__vert_chans__2_0(instantiation_output_74245),
    .systolic__vert_chans__2_0_vld(instantiation_output_74246),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_5_next __systolic__SystolicArray__PE_5_next_inst12 (
    .rst(rst),
    .systolic__hor_chans__1_1(instantiation_output_73751),
    .systolic__hor_chans__1_1_vld(instantiation_output_73752),
    .systolic__hor_chans__1_2_rdy(instantiation_output_73760),
    .systolic__result_chans__1_1_rdy(instantiation_output_74000),
    .systolic__vert_chans__1_1(instantiation_output_74212),
    .systolic__vert_chans__1_1_vld(instantiation_output_74213),
    .systolic__vert_chans__2_1_rdy(instantiation_output_74260),
    .systolic__hor_chans__1_1_rdy(instantiation_output_73753),
    .systolic__hor_chans__1_2(instantiation_output_73758),
    .systolic__hor_chans__1_2_vld(instantiation_output_73759),
    .systolic__result_chans__1_1(instantiation_output_73998),
    .systolic__result_chans__1_1_vld(instantiation_output_73999),
    .systolic__vert_chans__1_1_rdy(instantiation_output_74214),
    .systolic__vert_chans__2_1(instantiation_output_74258),
    .systolic__vert_chans__2_1_vld(instantiation_output_74259),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_6_next __systolic__SystolicArray__PE_6_next_inst13 (
    .rst(rst),
    .systolic__hor_chans__1_2(instantiation_output_73764),
    .systolic__hor_chans__1_2_vld(instantiation_output_73765),
    .systolic__hor_chans__1_3_rdy(instantiation_output_73773),
    .systolic__result_chans__1_2_rdy(instantiation_output_74013),
    .systolic__vert_chans__1_2(instantiation_output_74225),
    .systolic__vert_chans__1_2_vld(instantiation_output_74226),
    .systolic__vert_chans__2_2_rdy(instantiation_output_74273),
    .systolic__hor_chans__1_2_rdy(instantiation_output_73766),
    .systolic__hor_chans__1_3(instantiation_output_73771),
    .systolic__hor_chans__1_3_vld(instantiation_output_73772),
    .systolic__result_chans__1_2(instantiation_output_74011),
    .systolic__result_chans__1_2_vld(instantiation_output_74012),
    .systolic__vert_chans__1_2_rdy(instantiation_output_74227),
    .systolic__vert_chans__2_2(instantiation_output_74271),
    .systolic__vert_chans__2_2_vld(instantiation_output_74272),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_7_next __systolic__SystolicArray__PE_7_next_inst14 (
    .rst(rst),
    .systolic__hor_chans__1_3(instantiation_output_73777),
    .systolic__hor_chans__1_3_vld(instantiation_output_73778),
    .systolic__hor_chans__1_4_rdy(instantiation_output_73786),
    .systolic__result_chans__1_3_rdy(instantiation_output_74026),
    .systolic__vert_chans__1_3(instantiation_output_74238),
    .systolic__vert_chans__1_3_vld(instantiation_output_74239),
    .systolic__vert_chans__2_3_rdy(instantiation_output_74286),
    .systolic__hor_chans__1_3_rdy(instantiation_output_73779),
    .systolic__hor_chans__1_4(instantiation_output_73784),
    .systolic__hor_chans__1_4_vld(instantiation_output_73785),
    .systolic__result_chans__1_3(instantiation_output_74024),
    .systolic__result_chans__1_3_vld(instantiation_output_74025),
    .systolic__vert_chans__1_3_rdy(instantiation_output_74240),
    .systolic__vert_chans__2_3(instantiation_output_74284),
    .systolic__vert_chans__2_3_vld(instantiation_output_74285),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_8_next __systolic__SystolicArray__PE_8_next_inst15 (
    .rst(rst),
    .systolic__hor_chans__2_0(instantiation_output_73803),
    .systolic__hor_chans__2_0_vld(instantiation_output_73804),
    .systolic__hor_chans__2_1_rdy(instantiation_output_73812),
    .systolic__result_chans__2_0_rdy(instantiation_output_74039),
    .systolic__vert_chans__2_0(instantiation_output_74251),
    .systolic__vert_chans__2_0_vld(instantiation_output_74252),
    .systolic__vert_chans__3_0_rdy(instantiation_output_74299),
    .systolic__hor_chans__2_0_rdy(instantiation_output_73805),
    .systolic__hor_chans__2_1(instantiation_output_73810),
    .systolic__hor_chans__2_1_vld(instantiation_output_73811),
    .systolic__result_chans__2_0(instantiation_output_74037),
    .systolic__result_chans__2_0_vld(instantiation_output_74038),
    .systolic__vert_chans__2_0_rdy(instantiation_output_74253),
    .systolic__vert_chans__3_0(instantiation_output_74297),
    .systolic__vert_chans__3_0_vld(instantiation_output_74298),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_9_next __systolic__SystolicArray__PE_9_next_inst16 (
    .rst(rst),
    .systolic__hor_chans__2_1(instantiation_output_73816),
    .systolic__hor_chans__2_1_vld(instantiation_output_73817),
    .systolic__hor_chans__2_2_rdy(instantiation_output_73825),
    .systolic__result_chans__2_1_rdy(instantiation_output_74052),
    .systolic__vert_chans__2_1(instantiation_output_74264),
    .systolic__vert_chans__2_1_vld(instantiation_output_74265),
    .systolic__vert_chans__3_1_rdy(instantiation_output_74312),
    .systolic__hor_chans__2_1_rdy(instantiation_output_73818),
    .systolic__hor_chans__2_2(instantiation_output_73823),
    .systolic__hor_chans__2_2_vld(instantiation_output_73824),
    .systolic__result_chans__2_1(instantiation_output_74050),
    .systolic__result_chans__2_1_vld(instantiation_output_74051),
    .systolic__vert_chans__2_1_rdy(instantiation_output_74266),
    .systolic__vert_chans__3_1(instantiation_output_74310),
    .systolic__vert_chans__3_1_vld(instantiation_output_74311),
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
    .push_data(instantiation_output_73667),
    .push_valid(instantiation_output_73668),
    .pop_ready(instantiation_output_73675),
    .push_ready(instantiation_output_73669),
    .pop_data(instantiation_output_73673),
    .pop_valid(instantiation_output_73674)
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
    .push_data(instantiation_output_73680),
    .push_valid(instantiation_output_73681),
    .pop_ready(instantiation_output_73688),
    .push_ready(instantiation_output_73682),
    .pop_data(instantiation_output_73686),
    .pop_valid(instantiation_output_73687)
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
    .push_data(instantiation_output_73693),
    .push_valid(instantiation_output_73694),
    .pop_ready(instantiation_output_73701),
    .push_ready(instantiation_output_73695),
    .pop_data(instantiation_output_73699),
    .pop_valid(instantiation_output_73700)
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
    .push_data(instantiation_output_73706),
    .push_valid(instantiation_output_73707),
    .pop_ready(instantiation_output_73714),
    .push_ready(instantiation_output_73708),
    .pop_data(instantiation_output_73712),
    .pop_valid(instantiation_output_73713)
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
    .push_data(instantiation_output_73719),
    .push_valid(instantiation_output_73720),
    .pop_ready(instantiation_output_73727),
    .push_ready(instantiation_output_73721),
    .pop_data(instantiation_output_73725),
    .pop_valid(instantiation_output_73726)
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
    .push_data(instantiation_output_73732),
    .push_valid(instantiation_output_73733),
    .pop_ready(instantiation_output_73740),
    .push_ready(instantiation_output_73734),
    .pop_data(instantiation_output_73738),
    .pop_valid(instantiation_output_73739)
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
    .push_data(instantiation_output_73745),
    .push_valid(instantiation_output_73746),
    .pop_ready(instantiation_output_73753),
    .push_ready(instantiation_output_73747),
    .pop_data(instantiation_output_73751),
    .pop_valid(instantiation_output_73752)
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
    .push_data(instantiation_output_73758),
    .push_valid(instantiation_output_73759),
    .pop_ready(instantiation_output_73766),
    .push_ready(instantiation_output_73760),
    .pop_data(instantiation_output_73764),
    .pop_valid(instantiation_output_73765)
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
    .push_data(instantiation_output_73771),
    .push_valid(instantiation_output_73772),
    .pop_ready(instantiation_output_73779),
    .push_ready(instantiation_output_73773),
    .pop_data(instantiation_output_73777),
    .pop_valid(instantiation_output_73778)
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
    .push_data(instantiation_output_73784),
    .push_valid(instantiation_output_73785),
    .pop_ready(instantiation_output_73792),
    .push_ready(instantiation_output_73786),
    .pop_data(instantiation_output_73790),
    .pop_valid(instantiation_output_73791)
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
    .push_data(instantiation_output_73797),
    .push_valid(instantiation_output_73798),
    .pop_ready(instantiation_output_73805),
    .push_ready(instantiation_output_73799),
    .pop_data(instantiation_output_73803),
    .pop_valid(instantiation_output_73804)
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
    .push_data(instantiation_output_73810),
    .push_valid(instantiation_output_73811),
    .pop_ready(instantiation_output_73818),
    .push_ready(instantiation_output_73812),
    .pop_data(instantiation_output_73816),
    .pop_valid(instantiation_output_73817)
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
    .push_data(instantiation_output_73823),
    .push_valid(instantiation_output_73824),
    .pop_ready(instantiation_output_73831),
    .push_ready(instantiation_output_73825),
    .pop_data(instantiation_output_73829),
    .pop_valid(instantiation_output_73830)
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
    .push_data(instantiation_output_73836),
    .push_valid(instantiation_output_73837),
    .pop_ready(instantiation_output_73844),
    .push_ready(instantiation_output_73838),
    .pop_data(instantiation_output_73842),
    .pop_valid(instantiation_output_73843)
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
    .push_data(instantiation_output_73849),
    .push_valid(instantiation_output_73850),
    .pop_ready(instantiation_output_73857),
    .push_ready(instantiation_output_73851),
    .pop_data(instantiation_output_73855),
    .pop_valid(instantiation_output_73856)
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
    .push_data(instantiation_output_73862),
    .push_valid(instantiation_output_73863),
    .pop_ready(instantiation_output_73870),
    .push_ready(instantiation_output_73864),
    .pop_data(instantiation_output_73868),
    .pop_valid(instantiation_output_73869)
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
    .push_data(instantiation_output_73875),
    .push_valid(instantiation_output_73876),
    .pop_ready(instantiation_output_73883),
    .push_ready(instantiation_output_73877),
    .pop_data(instantiation_output_73881),
    .pop_valid(instantiation_output_73882)
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
    .push_data(instantiation_output_73888),
    .push_valid(instantiation_output_73889),
    .pop_ready(instantiation_output_73896),
    .push_ready(instantiation_output_73890),
    .pop_data(instantiation_output_73894),
    .pop_valid(instantiation_output_73895)
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
    .push_data(instantiation_output_73901),
    .push_valid(instantiation_output_73902),
    .pop_ready(instantiation_output_73909),
    .push_ready(instantiation_output_73903),
    .pop_data(instantiation_output_73907),
    .pop_valid(instantiation_output_73908)
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
    .push_data(instantiation_output_73914),
    .push_valid(instantiation_output_73915),
    .pop_ready(instantiation_output_73922),
    .push_ready(instantiation_output_73916),
    .pop_data(instantiation_output_73920),
    .pop_valid(instantiation_output_73921)
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
    .push_data(instantiation_output_73933),
    .push_valid(instantiation_output_73934),
    .pop_ready(instantiation_output_73941),
    .push_ready(instantiation_output_73935),
    .pop_data(instantiation_output_73939),
    .pop_valid(instantiation_output_73940)
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
    .push_data(instantiation_output_73946),
    .push_valid(instantiation_output_73947),
    .pop_ready(instantiation_output_73954),
    .push_ready(instantiation_output_73948),
    .pop_data(instantiation_output_73952),
    .pop_valid(instantiation_output_73953)
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
    .push_data(instantiation_output_73959),
    .push_valid(instantiation_output_73960),
    .pop_ready(instantiation_output_73967),
    .push_ready(instantiation_output_73961),
    .pop_data(instantiation_output_73965),
    .pop_valid(instantiation_output_73966)
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
    .push_data(instantiation_output_73972),
    .push_valid(instantiation_output_73973),
    .pop_ready(instantiation_output_73980),
    .push_ready(instantiation_output_73974),
    .pop_data(instantiation_output_73978),
    .pop_valid(instantiation_output_73979)
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
    .push_data(instantiation_output_73985),
    .push_valid(instantiation_output_73986),
    .pop_ready(instantiation_output_73993),
    .push_ready(instantiation_output_73987),
    .pop_data(instantiation_output_73991),
    .pop_valid(instantiation_output_73992)
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
    .push_data(instantiation_output_73998),
    .push_valid(instantiation_output_73999),
    .pop_ready(instantiation_output_74006),
    .push_ready(instantiation_output_74000),
    .pop_data(instantiation_output_74004),
    .pop_valid(instantiation_output_74005)
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
    .push_data(instantiation_output_74011),
    .push_valid(instantiation_output_74012),
    .pop_ready(instantiation_output_74019),
    .push_ready(instantiation_output_74013),
    .pop_data(instantiation_output_74017),
    .pop_valid(instantiation_output_74018)
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
    .push_data(instantiation_output_74024),
    .push_valid(instantiation_output_74025),
    .pop_ready(instantiation_output_74032),
    .push_ready(instantiation_output_74026),
    .pop_data(instantiation_output_74030),
    .pop_valid(instantiation_output_74031)
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
    .push_data(instantiation_output_74037),
    .push_valid(instantiation_output_74038),
    .pop_ready(instantiation_output_74045),
    .push_ready(instantiation_output_74039),
    .pop_data(instantiation_output_74043),
    .pop_valid(instantiation_output_74044)
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
    .push_data(instantiation_output_74050),
    .push_valid(instantiation_output_74051),
    .pop_ready(instantiation_output_74058),
    .push_ready(instantiation_output_74052),
    .pop_data(instantiation_output_74056),
    .pop_valid(instantiation_output_74057)
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
    .push_data(instantiation_output_74063),
    .push_valid(instantiation_output_74064),
    .pop_ready(instantiation_output_74071),
    .push_ready(instantiation_output_74065),
    .pop_data(instantiation_output_74069),
    .pop_valid(instantiation_output_74070)
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
    .push_data(instantiation_output_74076),
    .push_valid(instantiation_output_74077),
    .pop_ready(instantiation_output_74084),
    .push_ready(instantiation_output_74078),
    .pop_data(instantiation_output_74082),
    .pop_valid(instantiation_output_74083)
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
    .push_data(instantiation_output_74089),
    .push_valid(instantiation_output_74090),
    .pop_ready(instantiation_output_74097),
    .push_ready(instantiation_output_74091),
    .pop_data(instantiation_output_74095),
    .pop_valid(instantiation_output_74096)
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
    .push_data(instantiation_output_74102),
    .push_valid(instantiation_output_74103),
    .pop_ready(instantiation_output_74110),
    .push_ready(instantiation_output_74104),
    .pop_data(instantiation_output_74108),
    .pop_valid(instantiation_output_74109)
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
    .push_data(instantiation_output_74115),
    .push_valid(instantiation_output_74116),
    .pop_ready(instantiation_output_74123),
    .push_ready(instantiation_output_74117),
    .pop_data(instantiation_output_74121),
    .pop_valid(instantiation_output_74122)
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
    .push_data(instantiation_output_74128),
    .push_valid(instantiation_output_74129),
    .pop_ready(instantiation_output_74136),
    .push_ready(instantiation_output_74130),
    .pop_data(instantiation_output_74134),
    .pop_valid(instantiation_output_74135)
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
    .push_data(instantiation_output_74141),
    .push_valid(instantiation_output_74142),
    .pop_ready(instantiation_output_74149),
    .push_ready(instantiation_output_74143),
    .pop_data(instantiation_output_74147),
    .pop_valid(instantiation_output_74148)
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
    .push_data(instantiation_output_74154),
    .push_valid(instantiation_output_74155),
    .pop_ready(instantiation_output_74162),
    .push_ready(instantiation_output_74156),
    .pop_data(instantiation_output_74160),
    .pop_valid(instantiation_output_74161)
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
    .push_data(instantiation_output_74167),
    .push_valid(instantiation_output_74168),
    .pop_ready(instantiation_output_74175),
    .push_ready(instantiation_output_74169),
    .pop_data(instantiation_output_74173),
    .pop_valid(instantiation_output_74174)
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
    .push_data(instantiation_output_74180),
    .push_valid(instantiation_output_74181),
    .pop_ready(instantiation_output_74188),
    .push_ready(instantiation_output_74182),
    .pop_data(instantiation_output_74186),
    .pop_valid(instantiation_output_74187)
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
    .push_data(instantiation_output_74193),
    .push_valid(instantiation_output_74194),
    .pop_ready(instantiation_output_74201),
    .push_ready(instantiation_output_74195),
    .pop_data(instantiation_output_74199),
    .pop_valid(instantiation_output_74200)
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
    .push_data(instantiation_output_74206),
    .push_valid(instantiation_output_74207),
    .pop_ready(instantiation_output_74214),
    .push_ready(instantiation_output_74208),
    .pop_data(instantiation_output_74212),
    .pop_valid(instantiation_output_74213)
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
    .push_data(instantiation_output_74219),
    .push_valid(instantiation_output_74220),
    .pop_ready(instantiation_output_74227),
    .push_ready(instantiation_output_74221),
    .pop_data(instantiation_output_74225),
    .pop_valid(instantiation_output_74226)
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
    .push_data(instantiation_output_74232),
    .push_valid(instantiation_output_74233),
    .pop_ready(instantiation_output_74240),
    .push_ready(instantiation_output_74234),
    .pop_data(instantiation_output_74238),
    .pop_valid(instantiation_output_74239)
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
    .push_data(instantiation_output_74245),
    .push_valid(instantiation_output_74246),
    .pop_ready(instantiation_output_74253),
    .push_ready(instantiation_output_74247),
    .pop_data(instantiation_output_74251),
    .pop_valid(instantiation_output_74252)
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
    .push_data(instantiation_output_74258),
    .push_valid(instantiation_output_74259),
    .pop_ready(instantiation_output_74266),
    .push_ready(instantiation_output_74260),
    .pop_data(instantiation_output_74264),
    .pop_valid(instantiation_output_74265)
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
    .push_data(instantiation_output_74271),
    .push_valid(instantiation_output_74272),
    .pop_ready(instantiation_output_74279),
    .push_ready(instantiation_output_74273),
    .pop_data(instantiation_output_74277),
    .pop_valid(instantiation_output_74278)
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
    .push_data(instantiation_output_74284),
    .push_valid(instantiation_output_74285),
    .pop_ready(instantiation_output_74292),
    .push_ready(instantiation_output_74286),
    .pop_data(instantiation_output_74290),
    .pop_valid(instantiation_output_74291)
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
    .push_data(instantiation_output_74297),
    .push_valid(instantiation_output_74298),
    .pop_ready(instantiation_output_74305),
    .push_ready(instantiation_output_74299),
    .pop_data(instantiation_output_74303),
    .pop_valid(instantiation_output_74304)
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
    .push_data(instantiation_output_74310),
    .push_valid(instantiation_output_74311),
    .pop_ready(instantiation_output_74318),
    .push_ready(instantiation_output_74312),
    .pop_data(instantiation_output_74316),
    .pop_valid(instantiation_output_74317)
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
    .push_data(instantiation_output_74323),
    .push_valid(instantiation_output_74324),
    .pop_ready(instantiation_output_74331),
    .push_ready(instantiation_output_74325),
    .pop_data(instantiation_output_74329),
    .pop_valid(instantiation_output_74330)
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
    .push_data(instantiation_output_74336),
    .push_valid(instantiation_output_74337),
    .pop_ready(instantiation_output_74344),
    .push_ready(instantiation_output_74338),
    .pop_data(instantiation_output_74342),
    .pop_valid(instantiation_output_74343)
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
    .push_data(instantiation_output_74349),
    .push_valid(instantiation_output_74350),
    .pop_ready(instantiation_output_74357),
    .push_ready(instantiation_output_74351),
    .pop_data(instantiation_output_74355),
    .pop_valid(instantiation_output_74356)
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
    .push_data(instantiation_output_74362),
    .push_valid(instantiation_output_74363),
    .pop_ready(instantiation_output_74370),
    .push_ready(instantiation_output_74364),
    .pop_data(instantiation_output_74368),
    .pop_valid(instantiation_output_74369)
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
    .push_data(instantiation_output_74375),
    .push_valid(instantiation_output_74376),
    .pop_ready(instantiation_output_74383),
    .push_ready(instantiation_output_74377),
    .pop_data(instantiation_output_74381),
    .pop_valid(instantiation_output_74382)
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
    .push_data(instantiation_output_74388),
    .push_valid(instantiation_output_74389),
    .pop_ready(instantiation_output_74396),
    .push_ready(instantiation_output_74390),
    .pop_data(instantiation_output_74394),
    .pop_valid(instantiation_output_74395)
  );
  assign systolic__arg0_rdy = instantiation_output_73656;
  assign systolic__arg1_rdy = instantiation_output_73662;
  assign systolic__out0 = {{instantiation_output_73926[3][3], instantiation_output_73926[3][2], instantiation_output_73926[3][1], instantiation_output_73926[3][0]}, {instantiation_output_73926[2][3], instantiation_output_73926[2][2], instantiation_output_73926[2][1], instantiation_output_73926[2][0]}, {instantiation_output_73926[1][3], instantiation_output_73926[1][2], instantiation_output_73926[1][1], instantiation_output_73926[1][0]}, {instantiation_output_73926[0][3], instantiation_output_73926[0][2], instantiation_output_73926[0][1], instantiation_output_73926[0][0]}};
  assign systolic__out0_vld = instantiation_output_73927;
endmodule
