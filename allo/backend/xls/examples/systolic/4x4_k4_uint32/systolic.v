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
  wire [31:0] ____state_0_init[0:3][0:3];
  assign ____state_0_init[0][0] = 32'h0000_0000;
  assign ____state_0_init[0][1] = 32'h0000_0000;
  assign ____state_0_init[0][2] = 32'h0000_0000;
  assign ____state_0_init[0][3] = 32'h0000_0000;
  assign ____state_0_init[1][0] = 32'h0000_0000;
  assign ____state_0_init[1][1] = 32'h0000_0000;
  assign ____state_0_init[1][2] = 32'h0000_0000;
  assign ____state_0_init[1][3] = 32'h0000_0000;
  assign ____state_0_init[2][0] = 32'h0000_0000;
  assign ____state_0_init[2][1] = 32'h0000_0000;
  assign ____state_0_init[2][2] = 32'h0000_0000;
  assign ____state_0_init[2][3] = 32'h0000_0000;
  assign ____state_0_init[3][0] = 32'h0000_0000;
  assign ____state_0_init[3][1] = 32'h0000_0000;
  assign ____state_0_init[3][2] = 32'h0000_0000;
  assign ____state_0_init[3][3] = 32'h0000_0000;
  wire [31:0] ____state_1_init[0:3][0:3];
  assign ____state_1_init[0][0] = 32'h0000_0000;
  assign ____state_1_init[0][1] = 32'h0000_0000;
  assign ____state_1_init[0][2] = 32'h0000_0000;
  assign ____state_1_init[0][3] = 32'h0000_0000;
  assign ____state_1_init[1][0] = 32'h0000_0000;
  assign ____state_1_init[1][1] = 32'h0000_0000;
  assign ____state_1_init[1][2] = 32'h0000_0000;
  assign ____state_1_init[1][3] = 32'h0000_0000;
  assign ____state_1_init[2][0] = 32'h0000_0000;
  assign ____state_1_init[2][1] = 32'h0000_0000;
  assign ____state_1_init[2][2] = 32'h0000_0000;
  assign ____state_1_init[2][3] = 32'h0000_0000;
  assign ____state_1_init[3][0] = 32'h0000_0000;
  assign ____state_1_init[3][1] = 32'h0000_0000;
  assign ____state_1_init[3][2] = 32'h0000_0000;
  assign ____state_1_init[3][3] = 32'h0000_0000;
  wire [31:0] __systolic__arg0_reg_init[0:3][0:3];
  assign __systolic__arg0_reg_init[0][0] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[0][1] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[0][2] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[0][3] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[1][0] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[1][1] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[1][2] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[1][3] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[2][0] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[2][1] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[2][2] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[2][3] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[3][0] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[3][1] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[3][2] = 32'h0000_0000;
  assign __systolic__arg0_reg_init[3][3] = 32'h0000_0000;
  wire [31:0] __systolic__arg1_reg_init[0:3][0:3];
  assign __systolic__arg1_reg_init[0][0] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[0][1] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[0][2] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[0][3] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[1][0] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[1][1] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[1][2] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[1][3] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[2][0] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[2][1] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[2][2] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[2][3] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[3][0] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[3][1] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[3][2] = 32'h0000_0000;
  assign __systolic__arg1_reg_init[3][3] = 32'h0000_0000;
  wire [31:0] __systolic__out0_reg_init[0:3][0:3];
  assign __systolic__out0_reg_init[0][0] = 32'h0000_0000;
  assign __systolic__out0_reg_init[0][1] = 32'h0000_0000;
  assign __systolic__out0_reg_init[0][2] = 32'h0000_0000;
  assign __systolic__out0_reg_init[0][3] = 32'h0000_0000;
  assign __systolic__out0_reg_init[1][0] = 32'h0000_0000;
  assign __systolic__out0_reg_init[1][1] = 32'h0000_0000;
  assign __systolic__out0_reg_init[1][2] = 32'h0000_0000;
  assign __systolic__out0_reg_init[1][3] = 32'h0000_0000;
  assign __systolic__out0_reg_init[2][0] = 32'h0000_0000;
  assign __systolic__out0_reg_init[2][1] = 32'h0000_0000;
  assign __systolic__out0_reg_init[2][2] = 32'h0000_0000;
  assign __systolic__out0_reg_init[2][3] = 32'h0000_0000;
  assign __systolic__out0_reg_init[3][0] = 32'h0000_0000;
  assign __systolic__out0_reg_init[3][1] = 32'h0000_0000;
  assign __systolic__out0_reg_init[3][2] = 32'h0000_0000;
  assign __systolic__out0_reg_init[3][3] = 32'h0000_0000;
  wire [31:0] literal_3439[0:3][0:3];
  assign literal_3439[0][0] = 32'h0000_0000;
  assign literal_3439[0][1] = 32'h0000_0000;
  assign literal_3439[0][2] = 32'h0000_0000;
  assign literal_3439[0][3] = 32'h0000_0000;
  assign literal_3439[1][0] = 32'h0000_0000;
  assign literal_3439[1][1] = 32'h0000_0000;
  assign literal_3439[1][2] = 32'h0000_0000;
  assign literal_3439[1][3] = 32'h0000_0000;
  assign literal_3439[2][0] = 32'h0000_0000;
  assign literal_3439[2][1] = 32'h0000_0000;
  assign literal_3439[2][2] = 32'h0000_0000;
  assign literal_3439[2][3] = 32'h0000_0000;
  assign literal_3439[3][0] = 32'h0000_0000;
  assign literal_3439[3][1] = 32'h0000_0000;
  assign literal_3439[3][2] = 32'h0000_0000;
  assign literal_3439[3][3] = 32'h0000_0000;
  wire [31:0] literal_3443[0:3][0:3];
  assign literal_3443[0][0] = 32'h0000_0000;
  assign literal_3443[0][1] = 32'h0000_0000;
  assign literal_3443[0][2] = 32'h0000_0000;
  assign literal_3443[0][3] = 32'h0000_0000;
  assign literal_3443[1][0] = 32'h0000_0000;
  assign literal_3443[1][1] = 32'h0000_0000;
  assign literal_3443[1][2] = 32'h0000_0000;
  assign literal_3443[1][3] = 32'h0000_0000;
  assign literal_3443[2][0] = 32'h0000_0000;
  assign literal_3443[2][1] = 32'h0000_0000;
  assign literal_3443[2][2] = 32'h0000_0000;
  assign literal_3443[2][3] = 32'h0000_0000;
  assign literal_3443[3][0] = 32'h0000_0000;
  assign literal_3443[3][1] = 32'h0000_0000;
  assign literal_3443[3][2] = 32'h0000_0000;
  assign literal_3443[3][3] = 32'h0000_0000;
  wire [31:0] literal_3286[0:3][0:3];
  assign literal_3286[0][0] = 32'h0000_0000;
  assign literal_3286[0][1] = 32'h0000_0000;
  assign literal_3286[0][2] = 32'h0000_0000;
  assign literal_3286[0][3] = 32'h0000_0000;
  assign literal_3286[1][0] = 32'h0000_0000;
  assign literal_3286[1][1] = 32'h0000_0000;
  assign literal_3286[1][2] = 32'h0000_0000;
  assign literal_3286[1][3] = 32'h0000_0000;
  assign literal_3286[2][0] = 32'h0000_0000;
  assign literal_3286[2][1] = 32'h0000_0000;
  assign literal_3286[2][2] = 32'h0000_0000;
  assign literal_3286[2][3] = 32'h0000_0000;
  assign literal_3286[3][0] = 32'h0000_0000;
  assign literal_3286[3][1] = 32'h0000_0000;
  assign literal_3286[3][2] = 32'h0000_0000;
  assign literal_3286[3][3] = 32'h0000_0000;
  wire [31:0] systolic__arg0_unflattened[0:3][0:3];
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
  wire [31:0] systolic__arg1_unflattened[0:3][0:3];
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
  reg [31:0] ____state_0[0:3][0:3];
  reg [31:0] ____state_1[0:3][0:3];
  reg p0_eq_3483;
  reg p0_valid;
  reg __systolic__hor_chans__0_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_0_has_been_sent_reg;
  reg __systolic__hor_chans__1_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_1_has_been_sent_reg;
  reg __systolic__hor_chans__2_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_2_has_been_sent_reg;
  reg __systolic__hor_chans__3_0_has_been_sent_reg;
  reg __systolic__vert_chans__0_3_has_been_sent_reg;
  reg __systolic__out0_has_been_sent_reg;
  reg [31:0] __systolic__arg0_reg[0:3][0:3];
  reg __systolic__arg0_valid_reg;
  reg [31:0] __systolic__arg1_reg[0:3][0:3];
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
  reg [31:0] __systolic__out0_reg[0:3][0:3];
  reg __systolic__out0_valid_reg;
  wire p1_all_active_inputs_valid;
  wire __systolic__out0_vld_buf;
  wire __systolic__out0_not_has_been_sent;
  wire systolic__out0_valid_inv;
  wire [2:0] unexpand_for_next_value_301_2_case_1;
  wire __systolic__out0_valid_and_not_has_been_sent;
  wire systolic__out0_valid_load_en;
  wire a_mat2_1_case_cmp;
  wire systolic__out0_load_en;
  wire or_8163;
  wire p1_stage_done;
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
  wire eq_3483;
  wire p0_all_active_outputs_ready;
  wire p0_stage_done;
  wire [1:0] ____state_0__next_value_predicates;
  wire [1:0] ____state_2__next_value_predicates;
  wire p0_data_enable;
  wire [2:0] one_hot_3487;
  wire [2:0] one_hot_3488;
  wire p0_load_en;
  wire and_3747;
  wire systolic__arg0_valid_inv;
  wire systolic__arg1_valid_inv;
  wire systolic__hor_chans__0_4_valid_inv;
  wire systolic__hor_chans__1_4_valid_inv;
  wire systolic__hor_chans__2_4_valid_inv;
  wire systolic__hor_chans__3_4_valid_inv;
  wire and_3749;
  wire systolic__result_chans__0_0_valid_inv;
  wire systolic__result_chans__0_1_valid_inv;
  wire systolic__result_chans__0_2_valid_inv;
  wire systolic__result_chans__0_3_valid_inv;
  wire systolic__result_chans__1_0_valid_inv;
  wire systolic__result_chans__1_1_valid_inv;
  wire systolic__result_chans__1_2_valid_inv;
  wire systolic__result_chans__1_3_valid_inv;
  wire systolic__result_chans__2_0_valid_inv;
  wire systolic__result_chans__2_1_valid_inv;
  wire systolic__result_chans__2_2_valid_inv;
  wire systolic__result_chans__2_3_valid_inv;
  wire systolic__result_chans__3_0_valid_inv;
  wire systolic__result_chans__3_1_valid_inv;
  wire systolic__result_chans__3_2_valid_inv;
  wire systolic__result_chans__3_3_valid_inv;
  wire systolic__vert_chans__4_0_valid_inv;
  wire systolic__vert_chans__4_1_valid_inv;
  wire systolic__vert_chans__4_2_valid_inv;
  wire systolic__vert_chans__4_3_valid_inv;
  wire and_3718;
  wire and_3719;
  wire and_3732;
  wire [31:0] systolic__arg0_select[0:3][0:3];
  wire [31:0] systolic__arg1_select[0:3][0:3];
  wire [31:0] systolic__result_chans__0_0_select;
  wire [31:0] systolic__result_chans__0_1_select;
  wire [31:0] systolic__result_chans__0_2_select;
  wire [31:0] systolic__result_chans__0_3_select;
  wire [31:0] systolic__result_chans__1_0_select;
  wire [31:0] systolic__result_chans__1_1_select;
  wire [31:0] systolic__result_chans__1_2_select;
  wire [31:0] systolic__result_chans__1_3_select;
  wire [31:0] systolic__result_chans__2_0_select;
  wire [31:0] systolic__result_chans__2_1_select;
  wire [31:0] systolic__result_chans__2_2_select;
  wire [31:0] systolic__result_chans__2_3_select;
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
  wire [1:0] concat_3721;
  wire [1:0] concat_3734;
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
  wire [31:0] a_mat2[0:3][0:3];
  wire [31:0] b_mat2[0:3][0:3];
  wire [31:0] array_3638[0:3];
  wire [31:0] array_3639[0:3];
  wire [31:0] array_3640[0:3];
  wire [31:0] array_3641[0:3];
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
  wire or_8085;
  wire or_8089;
  wire [31:0] one_hot_sel_3722[0:3][0:3];
  wire or_3723;
  wire [31:0] one_hot_sel_3729[0:3][0:3];
  wire [2:0] one_hot_sel_3735;
  wire or_3736;
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
  wire [31:0] c[0:3][0:3];
  assign p1_all_active_inputs_valid = (~p0_eq_3483 | __systolic__result_chans__0_0_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__0_1_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__0_2_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__0_3_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__1_0_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__1_1_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__1_2_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__1_3_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__2_0_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__2_1_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__2_2_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__2_3_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__3_0_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__3_1_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__3_2_valid_reg) & (~p0_eq_3483 | __systolic__result_chans__3_3_valid_reg);
  assign __systolic__out0_vld_buf = p1_all_active_inputs_valid & p0_valid & p0_eq_3483;
  assign __systolic__out0_not_has_been_sent = ~__systolic__out0_has_been_sent_reg;
  assign systolic__out0_valid_inv = ~__systolic__out0_valid_reg;
  assign unexpand_for_next_value_301_2_case_1 = 3'h0;
  assign __systolic__out0_valid_and_not_has_been_sent = __systolic__out0_vld_buf & __systolic__out0_not_has_been_sent;
  assign systolic__out0_valid_load_en = systolic__out0_rdy | systolic__out0_valid_inv;
  assign a_mat2_1_case_cmp = ____state_2 == unexpand_for_next_value_301_2_case_1;
  assign systolic__out0_load_en = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_valid_load_en;
  assign or_8163 = ~p0_eq_3483 | systolic__out0_load_en | __systolic__out0_has_been_sent_reg;
  assign p1_stage_done = p0_valid & p1_all_active_inputs_valid & or_8163;
  assign p1_not_valid = ~p0_valid;
  assign systolic__hor_chans__0_0_not_pred = ____state_2[2];
  assign p0_all_active_inputs_valid = (~a_mat2_1_case_cmp | __systolic__arg0_valid_reg) & (~a_mat2_1_case_cmp | __systolic__arg1_valid_reg);
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
  assign eq_3483 = ____state_2 == 3'h4;
  assign p0_all_active_outputs_ready = (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__0_0_load_en | __systolic__hor_chans__0_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_0_load_en | __systolic__vert_chans__0_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__1_0_load_en | __systolic__hor_chans__1_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_1_load_en | __systolic__vert_chans__0_1_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__2_0_load_en | __systolic__hor_chans__2_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_2_load_en | __systolic__vert_chans__0_2_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__hor_chans__3_0_load_en | __systolic__hor_chans__3_0_has_been_sent_reg) & (systolic__hor_chans__0_0_not_pred | systolic__vert_chans__0_3_load_en | __systolic__vert_chans__0_3_has_been_sent_reg);
  assign p0_stage_done = p0_all_active_inputs_valid & p0_all_active_outputs_ready;
  assign ____state_0__next_value_predicates = {eq_3483, a_mat2_1_case_cmp};
  assign ____state_2__next_value_predicates = {~eq_3483, eq_3483};
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign one_hot_3487 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign one_hot_3488 = {____state_2__next_value_predicates[1:0] == 2'h0, ____state_2__next_value_predicates[1] && !____state_2__next_value_predicates[0], ____state_2__next_value_predicates[0]};
  assign p0_load_en = p0_data_enable | rst;
  assign and_3747 = p0_load_en & a_mat2_1_case_cmp;
  assign systolic__arg0_valid_inv = ~__systolic__arg0_valid_reg;
  assign systolic__arg1_valid_inv = ~__systolic__arg1_valid_reg;
  assign systolic__hor_chans__0_4_valid_inv = ~__systolic__hor_chans__0_4_valid_reg;
  assign systolic__hor_chans__1_4_valid_inv = ~__systolic__hor_chans__1_4_valid_reg;
  assign systolic__hor_chans__2_4_valid_inv = ~__systolic__hor_chans__2_4_valid_reg;
  assign systolic__hor_chans__3_4_valid_inv = ~__systolic__hor_chans__3_4_valid_reg;
  assign and_3749 = p1_stage_done & p0_eq_3483;
  assign systolic__result_chans__0_0_valid_inv = ~__systolic__result_chans__0_0_valid_reg;
  assign systolic__result_chans__0_1_valid_inv = ~__systolic__result_chans__0_1_valid_reg;
  assign systolic__result_chans__0_2_valid_inv = ~__systolic__result_chans__0_2_valid_reg;
  assign systolic__result_chans__0_3_valid_inv = ~__systolic__result_chans__0_3_valid_reg;
  assign systolic__result_chans__1_0_valid_inv = ~__systolic__result_chans__1_0_valid_reg;
  assign systolic__result_chans__1_1_valid_inv = ~__systolic__result_chans__1_1_valid_reg;
  assign systolic__result_chans__1_2_valid_inv = ~__systolic__result_chans__1_2_valid_reg;
  assign systolic__result_chans__1_3_valid_inv = ~__systolic__result_chans__1_3_valid_reg;
  assign systolic__result_chans__2_0_valid_inv = ~__systolic__result_chans__2_0_valid_reg;
  assign systolic__result_chans__2_1_valid_inv = ~__systolic__result_chans__2_1_valid_reg;
  assign systolic__result_chans__2_2_valid_inv = ~__systolic__result_chans__2_2_valid_reg;
  assign systolic__result_chans__2_3_valid_inv = ~__systolic__result_chans__2_3_valid_reg;
  assign systolic__result_chans__3_0_valid_inv = ~__systolic__result_chans__3_0_valid_reg;
  assign systolic__result_chans__3_1_valid_inv = ~__systolic__result_chans__3_1_valid_reg;
  assign systolic__result_chans__3_2_valid_inv = ~__systolic__result_chans__3_2_valid_reg;
  assign systolic__result_chans__3_3_valid_inv = ~__systolic__result_chans__3_3_valid_reg;
  assign systolic__vert_chans__4_0_valid_inv = ~__systolic__vert_chans__4_0_valid_reg;
  assign systolic__vert_chans__4_1_valid_inv = ~__systolic__vert_chans__4_1_valid_reg;
  assign systolic__vert_chans__4_2_valid_inv = ~__systolic__vert_chans__4_2_valid_reg;
  assign systolic__vert_chans__4_3_valid_inv = ~__systolic__vert_chans__4_3_valid_reg;
  assign and_3718 = eq_3483 & p0_data_enable;
  assign and_3719 = a_mat2_1_case_cmp & p0_data_enable;
  assign and_3732 = ~eq_3483 & p0_data_enable;
  assign systolic__arg0_select[0][0] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[0][0] : __systolic__arg0_reg[0][0];
  assign systolic__arg0_select[0][1] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[0][1] : __systolic__arg0_reg[0][1];
  assign systolic__arg0_select[0][2] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[0][2] : __systolic__arg0_reg[0][2];
  assign systolic__arg0_select[0][3] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[0][3] : __systolic__arg0_reg[0][3];
  assign systolic__arg0_select[1][0] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[1][0] : __systolic__arg0_reg[1][0];
  assign systolic__arg0_select[1][1] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[1][1] : __systolic__arg0_reg[1][1];
  assign systolic__arg0_select[1][2] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[1][2] : __systolic__arg0_reg[1][2];
  assign systolic__arg0_select[1][3] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[1][3] : __systolic__arg0_reg[1][3];
  assign systolic__arg0_select[2][0] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[2][0] : __systolic__arg0_reg[2][0];
  assign systolic__arg0_select[2][1] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[2][1] : __systolic__arg0_reg[2][1];
  assign systolic__arg0_select[2][2] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[2][2] : __systolic__arg0_reg[2][2];
  assign systolic__arg0_select[2][3] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[2][3] : __systolic__arg0_reg[2][3];
  assign systolic__arg0_select[3][0] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[3][0] : __systolic__arg0_reg[3][0];
  assign systolic__arg0_select[3][1] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[3][1] : __systolic__arg0_reg[3][1];
  assign systolic__arg0_select[3][2] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[3][2] : __systolic__arg0_reg[3][2];
  assign systolic__arg0_select[3][3] = a_mat2_1_case_cmp == 1'h0 ? literal_3439[3][3] : __systolic__arg0_reg[3][3];
  assign systolic__arg1_select[0][0] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[0][0] : __systolic__arg1_reg[0][0];
  assign systolic__arg1_select[0][1] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[0][1] : __systolic__arg1_reg[0][1];
  assign systolic__arg1_select[0][2] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[0][2] : __systolic__arg1_reg[0][2];
  assign systolic__arg1_select[0][3] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[0][3] : __systolic__arg1_reg[0][3];
  assign systolic__arg1_select[1][0] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[1][0] : __systolic__arg1_reg[1][0];
  assign systolic__arg1_select[1][1] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[1][1] : __systolic__arg1_reg[1][1];
  assign systolic__arg1_select[1][2] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[1][2] : __systolic__arg1_reg[1][2];
  assign systolic__arg1_select[1][3] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[1][3] : __systolic__arg1_reg[1][3];
  assign systolic__arg1_select[2][0] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[2][0] : __systolic__arg1_reg[2][0];
  assign systolic__arg1_select[2][1] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[2][1] : __systolic__arg1_reg[2][1];
  assign systolic__arg1_select[2][2] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[2][2] : __systolic__arg1_reg[2][2];
  assign systolic__arg1_select[2][3] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[2][3] : __systolic__arg1_reg[2][3];
  assign systolic__arg1_select[3][0] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[3][0] : __systolic__arg1_reg[3][0];
  assign systolic__arg1_select[3][1] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[3][1] : __systolic__arg1_reg[3][1];
  assign systolic__arg1_select[3][2] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[3][2] : __systolic__arg1_reg[3][2];
  assign systolic__arg1_select[3][3] = a_mat2_1_case_cmp == 1'h0 ? literal_3443[3][3] : __systolic__arg1_reg[3][3];
  assign systolic__result_chans__0_0_select = p0_eq_3483 ? __systolic__result_chans__0_0_reg : 32'h0000_0000;
  assign systolic__result_chans__0_1_select = p0_eq_3483 ? __systolic__result_chans__0_1_reg : 32'h0000_0000;
  assign systolic__result_chans__0_2_select = p0_eq_3483 ? __systolic__result_chans__0_2_reg : 32'h0000_0000;
  assign systolic__result_chans__0_3_select = p0_eq_3483 ? __systolic__result_chans__0_3_reg : 32'h0000_0000;
  assign systolic__result_chans__1_0_select = p0_eq_3483 ? __systolic__result_chans__1_0_reg : 32'h0000_0000;
  assign systolic__result_chans__1_1_select = p0_eq_3483 ? __systolic__result_chans__1_1_reg : 32'h0000_0000;
  assign systolic__result_chans__1_2_select = p0_eq_3483 ? __systolic__result_chans__1_2_reg : 32'h0000_0000;
  assign systolic__result_chans__1_3_select = p0_eq_3483 ? __systolic__result_chans__1_3_reg : 32'h0000_0000;
  assign systolic__result_chans__2_0_select = p0_eq_3483 ? __systolic__result_chans__2_0_reg : 32'h0000_0000;
  assign systolic__result_chans__2_1_select = p0_eq_3483 ? __systolic__result_chans__2_1_reg : 32'h0000_0000;
  assign systolic__result_chans__2_2_select = p0_eq_3483 ? __systolic__result_chans__2_2_reg : 32'h0000_0000;
  assign systolic__result_chans__2_3_select = p0_eq_3483 ? __systolic__result_chans__2_3_reg : 32'h0000_0000;
  assign systolic__result_chans__3_0_select = p0_eq_3483 ? __systolic__result_chans__3_0_reg : 32'h0000_0000;
  assign systolic__result_chans__3_1_select = p0_eq_3483 ? __systolic__result_chans__3_1_reg : 32'h0000_0000;
  assign systolic__result_chans__3_2_select = p0_eq_3483 ? __systolic__result_chans__3_2_reg : 32'h0000_0000;
  assign systolic__result_chans__3_3_select = p0_eq_3483 ? __systolic__result_chans__3_3_reg : 32'h0000_0000;
  assign systolic__arg0_valid_load_en = and_3747 | systolic__arg0_valid_inv;
  assign systolic__arg1_valid_load_en = and_3747 | systolic__arg1_valid_inv;
  assign systolic__hor_chans__0_4_valid_load_en = p0_load_en | systolic__hor_chans__0_4_valid_inv;
  assign systolic__hor_chans__1_4_valid_load_en = p0_load_en | systolic__hor_chans__1_4_valid_inv;
  assign systolic__hor_chans__2_4_valid_load_en = p0_load_en | systolic__hor_chans__2_4_valid_inv;
  assign systolic__hor_chans__3_4_valid_load_en = p0_load_en | systolic__hor_chans__3_4_valid_inv;
  assign systolic__result_chans__0_0_valid_load_en = and_3749 | systolic__result_chans__0_0_valid_inv;
  assign systolic__result_chans__0_1_valid_load_en = and_3749 | systolic__result_chans__0_1_valid_inv;
  assign systolic__result_chans__0_2_valid_load_en = and_3749 | systolic__result_chans__0_2_valid_inv;
  assign systolic__result_chans__0_3_valid_load_en = and_3749 | systolic__result_chans__0_3_valid_inv;
  assign systolic__result_chans__1_0_valid_load_en = and_3749 | systolic__result_chans__1_0_valid_inv;
  assign systolic__result_chans__1_1_valid_load_en = and_3749 | systolic__result_chans__1_1_valid_inv;
  assign systolic__result_chans__1_2_valid_load_en = and_3749 | systolic__result_chans__1_2_valid_inv;
  assign systolic__result_chans__1_3_valid_load_en = and_3749 | systolic__result_chans__1_3_valid_inv;
  assign systolic__result_chans__2_0_valid_load_en = and_3749 | systolic__result_chans__2_0_valid_inv;
  assign systolic__result_chans__2_1_valid_load_en = and_3749 | systolic__result_chans__2_1_valid_inv;
  assign systolic__result_chans__2_2_valid_load_en = and_3749 | systolic__result_chans__2_2_valid_inv;
  assign systolic__result_chans__2_3_valid_load_en = and_3749 | systolic__result_chans__2_3_valid_inv;
  assign systolic__result_chans__3_0_valid_load_en = and_3749 | systolic__result_chans__3_0_valid_inv;
  assign systolic__result_chans__3_1_valid_load_en = and_3749 | systolic__result_chans__3_1_valid_inv;
  assign systolic__result_chans__3_2_valid_load_en = and_3749 | systolic__result_chans__3_2_valid_inv;
  assign systolic__result_chans__3_3_valid_load_en = and_3749 | systolic__result_chans__3_3_valid_inv;
  assign systolic__vert_chans__4_0_valid_load_en = p0_load_en | systolic__vert_chans__4_0_valid_inv;
  assign systolic__vert_chans__4_1_valid_load_en = p0_load_en | systolic__vert_chans__4_1_valid_inv;
  assign systolic__vert_chans__4_2_valid_load_en = p0_load_en | systolic__vert_chans__4_2_valid_inv;
  assign systolic__vert_chans__4_3_valid_load_en = p0_load_en | systolic__vert_chans__4_3_valid_inv;
  assign ____state_0__at_most_one_next_value = eq_3483 == one_hot_3487[1] & a_mat2_1_case_cmp == one_hot_3487[0];
  assign ____state_2__at_most_one_next_value = ~eq_3483 == one_hot_3488[1] & eq_3483 == one_hot_3488[0];
  assign concat_3721 = {and_3718, and_3719};
  assign concat_3734 = {and_3732, and_3718};
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
  assign __systolic__out0_valid_and_all_active_outputs_ready = __systolic__out0_vld_buf & or_8163;
  assign __systolic__out0_valid_and_ready_txfr = __systolic__out0_valid_and_not_has_been_sent & systolic__out0_load_en;
  assign a_mat2[0][0] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[0][0] : systolic__arg0_select[0][0];
  assign a_mat2[0][1] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[0][1] : systolic__arg0_select[0][1];
  assign a_mat2[0][2] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[0][2] : systolic__arg0_select[0][2];
  assign a_mat2[0][3] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[0][3] : systolic__arg0_select[0][3];
  assign a_mat2[1][0] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[1][0] : systolic__arg0_select[1][0];
  assign a_mat2[1][1] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[1][1] : systolic__arg0_select[1][1];
  assign a_mat2[1][2] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[1][2] : systolic__arg0_select[1][2];
  assign a_mat2[1][3] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[1][3] : systolic__arg0_select[1][3];
  assign a_mat2[2][0] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[2][0] : systolic__arg0_select[2][0];
  assign a_mat2[2][1] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[2][1] : systolic__arg0_select[2][1];
  assign a_mat2[2][2] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[2][2] : systolic__arg0_select[2][2];
  assign a_mat2[2][3] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[2][3] : systolic__arg0_select[2][3];
  assign a_mat2[3][0] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[3][0] : systolic__arg0_select[3][0];
  assign a_mat2[3][1] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[3][1] : systolic__arg0_select[3][1];
  assign a_mat2[3][2] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[3][2] : systolic__arg0_select[3][2];
  assign a_mat2[3][3] = a_mat2_1_case_cmp == 1'h0 ? ____state_0[3][3] : systolic__arg0_select[3][3];
  assign b_mat2[0][0] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[0][0] : systolic__arg1_select[0][0];
  assign b_mat2[0][1] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[0][1] : systolic__arg1_select[0][1];
  assign b_mat2[0][2] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[0][2] : systolic__arg1_select[0][2];
  assign b_mat2[0][3] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[0][3] : systolic__arg1_select[0][3];
  assign b_mat2[1][0] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[1][0] : systolic__arg1_select[1][0];
  assign b_mat2[1][1] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[1][1] : systolic__arg1_select[1][1];
  assign b_mat2[1][2] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[1][2] : systolic__arg1_select[1][2];
  assign b_mat2[1][3] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[1][3] : systolic__arg1_select[1][3];
  assign b_mat2[2][0] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[2][0] : systolic__arg1_select[2][0];
  assign b_mat2[2][1] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[2][1] : systolic__arg1_select[2][1];
  assign b_mat2[2][2] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[2][2] : systolic__arg1_select[2][2];
  assign b_mat2[2][3] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[2][3] : systolic__arg1_select[2][3];
  assign b_mat2[3][0] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[3][0] : systolic__arg1_select[3][0];
  assign b_mat2[3][1] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[3][1] : systolic__arg1_select[3][1];
  assign b_mat2[3][2] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[3][2] : systolic__arg1_select[3][2];
  assign b_mat2[3][3] = a_mat2_1_case_cmp == 1'h0 ? ____state_1[3][3] : systolic__arg1_select[3][3];
  assign array_3638[0] = systolic__result_chans__0_0_select;
  assign array_3638[1] = systolic__result_chans__0_1_select;
  assign array_3638[2] = systolic__result_chans__0_2_select;
  assign array_3638[3] = systolic__result_chans__0_3_select;
  assign array_3639[0] = systolic__result_chans__1_0_select;
  assign array_3639[1] = systolic__result_chans__1_1_select;
  assign array_3639[2] = systolic__result_chans__1_2_select;
  assign array_3639[3] = systolic__result_chans__1_3_select;
  assign array_3640[0] = systolic__result_chans__2_0_select;
  assign array_3640[1] = systolic__result_chans__2_1_select;
  assign array_3640[2] = systolic__result_chans__2_2_select;
  assign array_3640[3] = systolic__result_chans__2_3_select;
  assign array_3641[0] = systolic__result_chans__3_0_select;
  assign array_3641[1] = systolic__result_chans__3_1_select;
  assign array_3641[2] = systolic__result_chans__3_2_select;
  assign array_3641[3] = systolic__result_chans__3_3_select;
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
  assign or_8085 = ~p0_stage_done | ____state_0__at_most_one_next_value | rst;
  assign or_8089 = ~p0_stage_done | ____state_2__at_most_one_next_value | rst;
  assign one_hot_sel_3722[0][0] = systolic__arg0_select[0][0] & {32{concat_3721[0]}} | literal_3286[0][0] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[0][1] = systolic__arg0_select[0][1] & {32{concat_3721[0]}} | literal_3286[0][1] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[0][2] = systolic__arg0_select[0][2] & {32{concat_3721[0]}} | literal_3286[0][2] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[0][3] = systolic__arg0_select[0][3] & {32{concat_3721[0]}} | literal_3286[0][3] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[1][0] = systolic__arg0_select[1][0] & {32{concat_3721[0]}} | literal_3286[1][0] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[1][1] = systolic__arg0_select[1][1] & {32{concat_3721[0]}} | literal_3286[1][1] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[1][2] = systolic__arg0_select[1][2] & {32{concat_3721[0]}} | literal_3286[1][2] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[1][3] = systolic__arg0_select[1][3] & {32{concat_3721[0]}} | literal_3286[1][3] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[2][0] = systolic__arg0_select[2][0] & {32{concat_3721[0]}} | literal_3286[2][0] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[2][1] = systolic__arg0_select[2][1] & {32{concat_3721[0]}} | literal_3286[2][1] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[2][2] = systolic__arg0_select[2][2] & {32{concat_3721[0]}} | literal_3286[2][2] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[2][3] = systolic__arg0_select[2][3] & {32{concat_3721[0]}} | literal_3286[2][3] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[3][0] = systolic__arg0_select[3][0] & {32{concat_3721[0]}} | literal_3286[3][0] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[3][1] = systolic__arg0_select[3][1] & {32{concat_3721[0]}} | literal_3286[3][1] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[3][2] = systolic__arg0_select[3][2] & {32{concat_3721[0]}} | literal_3286[3][2] & {32{concat_3721[1]}};
  assign one_hot_sel_3722[3][3] = systolic__arg0_select[3][3] & {32{concat_3721[0]}} | literal_3286[3][3] & {32{concat_3721[1]}};
  assign or_3723 = and_3718 | and_3719;
  assign one_hot_sel_3729[0][0] = systolic__arg1_select[0][0] & {32{concat_3721[0]}} | literal_3286[0][0] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[0][1] = systolic__arg1_select[0][1] & {32{concat_3721[0]}} | literal_3286[0][1] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[0][2] = systolic__arg1_select[0][2] & {32{concat_3721[0]}} | literal_3286[0][2] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[0][3] = systolic__arg1_select[0][3] & {32{concat_3721[0]}} | literal_3286[0][3] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[1][0] = systolic__arg1_select[1][0] & {32{concat_3721[0]}} | literal_3286[1][0] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[1][1] = systolic__arg1_select[1][1] & {32{concat_3721[0]}} | literal_3286[1][1] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[1][2] = systolic__arg1_select[1][2] & {32{concat_3721[0]}} | literal_3286[1][2] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[1][3] = systolic__arg1_select[1][3] & {32{concat_3721[0]}} | literal_3286[1][3] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[2][0] = systolic__arg1_select[2][0] & {32{concat_3721[0]}} | literal_3286[2][0] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[2][1] = systolic__arg1_select[2][1] & {32{concat_3721[0]}} | literal_3286[2][1] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[2][2] = systolic__arg1_select[2][2] & {32{concat_3721[0]}} | literal_3286[2][2] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[2][3] = systolic__arg1_select[2][3] & {32{concat_3721[0]}} | literal_3286[2][3] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[3][0] = systolic__arg1_select[3][0] & {32{concat_3721[0]}} | literal_3286[3][0] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[3][1] = systolic__arg1_select[3][1] & {32{concat_3721[0]}} | literal_3286[3][1] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[3][2] = systolic__arg1_select[3][2] & {32{concat_3721[0]}} | literal_3286[3][2] & {32{concat_3721[1]}};
  assign one_hot_sel_3729[3][3] = systolic__arg1_select[3][3] & {32{concat_3721[0]}} | literal_3286[3][3] & {32{concat_3721[1]}};
  assign one_hot_sel_3735 = unexpand_for_next_value_301_2_case_1 & {3{concat_3734[0]}} | unexpand_for_next_value_301_2_case_0 & {3{concat_3734[1]}};
  assign or_3736 = and_3732 | and_3718;
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
  assign c[0][0] = array_3638[0];
  assign c[0][1] = array_3638[1];
  assign c[0][2] = array_3638[2];
  assign c[0][3] = array_3638[3];
  assign c[1][0] = array_3639[0];
  assign c[1][1] = array_3639[1];
  assign c[1][2] = array_3639[2];
  assign c[1][3] = array_3639[3];
  assign c[2][0] = array_3640[0];
  assign c[2][1] = array_3640[1];
  assign c[2][2] = array_3640[2];
  assign c[2][3] = array_3640[3];
  assign c[3][0] = array_3641[0];
  assign c[3][1] = array_3641[1];
  assign c[3][2] = array_3641[2];
  assign c[3][3] = array_3641[3];
  always @ (posedge clk) begin
    p0_eq_3483 <= p0_load_en ? eq_3483 : p0_eq_3483;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_2 <= 3'h0;
      ____state_0[0][0] <= ____state_0_init[0][0];
      ____state_0[0][1] <= ____state_0_init[0][1];
      ____state_0[0][2] <= ____state_0_init[0][2];
      ____state_0[0][3] <= ____state_0_init[0][3];
      ____state_0[1][0] <= ____state_0_init[1][0];
      ____state_0[1][1] <= ____state_0_init[1][1];
      ____state_0[1][2] <= ____state_0_init[1][2];
      ____state_0[1][3] <= ____state_0_init[1][3];
      ____state_0[2][0] <= ____state_0_init[2][0];
      ____state_0[2][1] <= ____state_0_init[2][1];
      ____state_0[2][2] <= ____state_0_init[2][2];
      ____state_0[2][3] <= ____state_0_init[2][3];
      ____state_0[3][0] <= ____state_0_init[3][0];
      ____state_0[3][1] <= ____state_0_init[3][1];
      ____state_0[3][2] <= ____state_0_init[3][2];
      ____state_0[3][3] <= ____state_0_init[3][3];
      ____state_1[0][0] <= ____state_1_init[0][0];
      ____state_1[0][1] <= ____state_1_init[0][1];
      ____state_1[0][2] <= ____state_1_init[0][2];
      ____state_1[0][3] <= ____state_1_init[0][3];
      ____state_1[1][0] <= ____state_1_init[1][0];
      ____state_1[1][1] <= ____state_1_init[1][1];
      ____state_1[1][2] <= ____state_1_init[1][2];
      ____state_1[1][3] <= ____state_1_init[1][3];
      ____state_1[2][0] <= ____state_1_init[2][0];
      ____state_1[2][1] <= ____state_1_init[2][1];
      ____state_1[2][2] <= ____state_1_init[2][2];
      ____state_1[2][3] <= ____state_1_init[2][3];
      ____state_1[3][0] <= ____state_1_init[3][0];
      ____state_1[3][1] <= ____state_1_init[3][1];
      ____state_1[3][2] <= ____state_1_init[3][2];
      ____state_1[3][3] <= ____state_1_init[3][3];
      p0_valid <= 1'h0;
      __systolic__hor_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_0_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__1_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_1_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__2_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_2_has_been_sent_reg <= 1'h0;
      __systolic__hor_chans__3_0_has_been_sent_reg <= 1'h0;
      __systolic__vert_chans__0_3_has_been_sent_reg <= 1'h0;
      __systolic__out0_has_been_sent_reg <= 1'h0;
      __systolic__arg0_reg[0][0] <= __systolic__arg0_reg_init[0][0];
      __systolic__arg0_reg[0][1] <= __systolic__arg0_reg_init[0][1];
      __systolic__arg0_reg[0][2] <= __systolic__arg0_reg_init[0][2];
      __systolic__arg0_reg[0][3] <= __systolic__arg0_reg_init[0][3];
      __systolic__arg0_reg[1][0] <= __systolic__arg0_reg_init[1][0];
      __systolic__arg0_reg[1][1] <= __systolic__arg0_reg_init[1][1];
      __systolic__arg0_reg[1][2] <= __systolic__arg0_reg_init[1][2];
      __systolic__arg0_reg[1][3] <= __systolic__arg0_reg_init[1][3];
      __systolic__arg0_reg[2][0] <= __systolic__arg0_reg_init[2][0];
      __systolic__arg0_reg[2][1] <= __systolic__arg0_reg_init[2][1];
      __systolic__arg0_reg[2][2] <= __systolic__arg0_reg_init[2][2];
      __systolic__arg0_reg[2][3] <= __systolic__arg0_reg_init[2][3];
      __systolic__arg0_reg[3][0] <= __systolic__arg0_reg_init[3][0];
      __systolic__arg0_reg[3][1] <= __systolic__arg0_reg_init[3][1];
      __systolic__arg0_reg[3][2] <= __systolic__arg0_reg_init[3][2];
      __systolic__arg0_reg[3][3] <= __systolic__arg0_reg_init[3][3];
      __systolic__arg0_valid_reg <= 1'h0;
      __systolic__arg1_reg[0][0] <= __systolic__arg1_reg_init[0][0];
      __systolic__arg1_reg[0][1] <= __systolic__arg1_reg_init[0][1];
      __systolic__arg1_reg[0][2] <= __systolic__arg1_reg_init[0][2];
      __systolic__arg1_reg[0][3] <= __systolic__arg1_reg_init[0][3];
      __systolic__arg1_reg[1][0] <= __systolic__arg1_reg_init[1][0];
      __systolic__arg1_reg[1][1] <= __systolic__arg1_reg_init[1][1];
      __systolic__arg1_reg[1][2] <= __systolic__arg1_reg_init[1][2];
      __systolic__arg1_reg[1][3] <= __systolic__arg1_reg_init[1][3];
      __systolic__arg1_reg[2][0] <= __systolic__arg1_reg_init[2][0];
      __systolic__arg1_reg[2][1] <= __systolic__arg1_reg_init[2][1];
      __systolic__arg1_reg[2][2] <= __systolic__arg1_reg_init[2][2];
      __systolic__arg1_reg[2][3] <= __systolic__arg1_reg_init[2][3];
      __systolic__arg1_reg[3][0] <= __systolic__arg1_reg_init[3][0];
      __systolic__arg1_reg[3][1] <= __systolic__arg1_reg_init[3][1];
      __systolic__arg1_reg[3][2] <= __systolic__arg1_reg_init[3][2];
      __systolic__arg1_reg[3][3] <= __systolic__arg1_reg_init[3][3];
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
      __systolic__out0_reg[0][0] <= __systolic__out0_reg_init[0][0];
      __systolic__out0_reg[0][1] <= __systolic__out0_reg_init[0][1];
      __systolic__out0_reg[0][2] <= __systolic__out0_reg_init[0][2];
      __systolic__out0_reg[0][3] <= __systolic__out0_reg_init[0][3];
      __systolic__out0_reg[1][0] <= __systolic__out0_reg_init[1][0];
      __systolic__out0_reg[1][1] <= __systolic__out0_reg_init[1][1];
      __systolic__out0_reg[1][2] <= __systolic__out0_reg_init[1][2];
      __systolic__out0_reg[1][3] <= __systolic__out0_reg_init[1][3];
      __systolic__out0_reg[2][0] <= __systolic__out0_reg_init[2][0];
      __systolic__out0_reg[2][1] <= __systolic__out0_reg_init[2][1];
      __systolic__out0_reg[2][2] <= __systolic__out0_reg_init[2][2];
      __systolic__out0_reg[2][3] <= __systolic__out0_reg_init[2][3];
      __systolic__out0_reg[3][0] <= __systolic__out0_reg_init[3][0];
      __systolic__out0_reg[3][1] <= __systolic__out0_reg_init[3][1];
      __systolic__out0_reg[3][2] <= __systolic__out0_reg_init[3][2];
      __systolic__out0_reg[3][3] <= __systolic__out0_reg_init[3][3];
      __systolic__out0_valid_reg <= 1'h0;
    end else begin
      ____state_2 <= or_3736 ? one_hot_sel_3735 : ____state_2;
      ____state_0[0][0] <= or_3723 ? one_hot_sel_3722[0][0] : ____state_0[0][0];
      ____state_0[0][1] <= or_3723 ? one_hot_sel_3722[0][1] : ____state_0[0][1];
      ____state_0[0][2] <= or_3723 ? one_hot_sel_3722[0][2] : ____state_0[0][2];
      ____state_0[0][3] <= or_3723 ? one_hot_sel_3722[0][3] : ____state_0[0][3];
      ____state_0[1][0] <= or_3723 ? one_hot_sel_3722[1][0] : ____state_0[1][0];
      ____state_0[1][1] <= or_3723 ? one_hot_sel_3722[1][1] : ____state_0[1][1];
      ____state_0[1][2] <= or_3723 ? one_hot_sel_3722[1][2] : ____state_0[1][2];
      ____state_0[1][3] <= or_3723 ? one_hot_sel_3722[1][3] : ____state_0[1][3];
      ____state_0[2][0] <= or_3723 ? one_hot_sel_3722[2][0] : ____state_0[2][0];
      ____state_0[2][1] <= or_3723 ? one_hot_sel_3722[2][1] : ____state_0[2][1];
      ____state_0[2][2] <= or_3723 ? one_hot_sel_3722[2][2] : ____state_0[2][2];
      ____state_0[2][3] <= or_3723 ? one_hot_sel_3722[2][3] : ____state_0[2][3];
      ____state_0[3][0] <= or_3723 ? one_hot_sel_3722[3][0] : ____state_0[3][0];
      ____state_0[3][1] <= or_3723 ? one_hot_sel_3722[3][1] : ____state_0[3][1];
      ____state_0[3][2] <= or_3723 ? one_hot_sel_3722[3][2] : ____state_0[3][2];
      ____state_0[3][3] <= or_3723 ? one_hot_sel_3722[3][3] : ____state_0[3][3];
      ____state_1[0][0] <= or_3723 ? one_hot_sel_3729[0][0] : ____state_1[0][0];
      ____state_1[0][1] <= or_3723 ? one_hot_sel_3729[0][1] : ____state_1[0][1];
      ____state_1[0][2] <= or_3723 ? one_hot_sel_3729[0][2] : ____state_1[0][2];
      ____state_1[0][3] <= or_3723 ? one_hot_sel_3729[0][3] : ____state_1[0][3];
      ____state_1[1][0] <= or_3723 ? one_hot_sel_3729[1][0] : ____state_1[1][0];
      ____state_1[1][1] <= or_3723 ? one_hot_sel_3729[1][1] : ____state_1[1][1];
      ____state_1[1][2] <= or_3723 ? one_hot_sel_3729[1][2] : ____state_1[1][2];
      ____state_1[1][3] <= or_3723 ? one_hot_sel_3729[1][3] : ____state_1[1][3];
      ____state_1[2][0] <= or_3723 ? one_hot_sel_3729[2][0] : ____state_1[2][0];
      ____state_1[2][1] <= or_3723 ? one_hot_sel_3729[2][1] : ____state_1[2][1];
      ____state_1[2][2] <= or_3723 ? one_hot_sel_3729[2][2] : ____state_1[2][2];
      ____state_1[2][3] <= or_3723 ? one_hot_sel_3729[2][3] : ____state_1[2][3];
      ____state_1[3][0] <= or_3723 ? one_hot_sel_3729[3][0] : ____state_1[3][0];
      ____state_1[3][1] <= or_3723 ? one_hot_sel_3729[3][1] : ____state_1[3][1];
      ____state_1[3][2] <= or_3723 ? one_hot_sel_3729[3][2] : ____state_1[3][2];
      ____state_1[3][3] <= or_3723 ? one_hot_sel_3729[3][3] : ____state_1[3][3];
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      __systolic__hor_chans__0_0_has_been_sent_reg <= __systolic__hor_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__0_0_has_been_sent_reg;
      __systolic__vert_chans__0_0_has_been_sent_reg <= __systolic__vert_chans__0_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_0_has_been_sent_reg;
      __systolic__hor_chans__1_0_has_been_sent_reg <= __systolic__hor_chans__1_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__1_0_has_been_sent_reg;
      __systolic__vert_chans__0_1_has_been_sent_reg <= __systolic__vert_chans__0_1_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_1_has_been_sent_reg;
      __systolic__hor_chans__2_0_has_been_sent_reg <= __systolic__hor_chans__2_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__2_0_has_been_sent_reg;
      __systolic__vert_chans__0_2_has_been_sent_reg <= __systolic__vert_chans__0_2_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_2_has_been_sent_reg;
      __systolic__hor_chans__3_0_has_been_sent_reg <= __systolic__hor_chans__3_0_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__hor_chans__3_0_has_been_sent_reg;
      __systolic__vert_chans__0_3_has_been_sent_reg <= __systolic__vert_chans__0_3_has_been_sent_reg_load_en ? __systolic__hor_chans__0_0_not_stage_load : __systolic__vert_chans__0_3_has_been_sent_reg;
      __systolic__out0_has_been_sent_reg <= __systolic__out0_has_been_sent_reg_load_en ? __systolic__out0_not_stage_load : __systolic__out0_has_been_sent_reg;
      __systolic__arg0_reg[0][0] <= systolic__arg0_load_en ? systolic__arg0_unflattened[0][0] : __systolic__arg0_reg[0][0];
      __systolic__arg0_reg[0][1] <= systolic__arg0_load_en ? systolic__arg0_unflattened[0][1] : __systolic__arg0_reg[0][1];
      __systolic__arg0_reg[0][2] <= systolic__arg0_load_en ? systolic__arg0_unflattened[0][2] : __systolic__arg0_reg[0][2];
      __systolic__arg0_reg[0][3] <= systolic__arg0_load_en ? systolic__arg0_unflattened[0][3] : __systolic__arg0_reg[0][3];
      __systolic__arg0_reg[1][0] <= systolic__arg0_load_en ? systolic__arg0_unflattened[1][0] : __systolic__arg0_reg[1][0];
      __systolic__arg0_reg[1][1] <= systolic__arg0_load_en ? systolic__arg0_unflattened[1][1] : __systolic__arg0_reg[1][1];
      __systolic__arg0_reg[1][2] <= systolic__arg0_load_en ? systolic__arg0_unflattened[1][2] : __systolic__arg0_reg[1][2];
      __systolic__arg0_reg[1][3] <= systolic__arg0_load_en ? systolic__arg0_unflattened[1][3] : __systolic__arg0_reg[1][3];
      __systolic__arg0_reg[2][0] <= systolic__arg0_load_en ? systolic__arg0_unflattened[2][0] : __systolic__arg0_reg[2][0];
      __systolic__arg0_reg[2][1] <= systolic__arg0_load_en ? systolic__arg0_unflattened[2][1] : __systolic__arg0_reg[2][1];
      __systolic__arg0_reg[2][2] <= systolic__arg0_load_en ? systolic__arg0_unflattened[2][2] : __systolic__arg0_reg[2][2];
      __systolic__arg0_reg[2][3] <= systolic__arg0_load_en ? systolic__arg0_unflattened[2][3] : __systolic__arg0_reg[2][3];
      __systolic__arg0_reg[3][0] <= systolic__arg0_load_en ? systolic__arg0_unflattened[3][0] : __systolic__arg0_reg[3][0];
      __systolic__arg0_reg[3][1] <= systolic__arg0_load_en ? systolic__arg0_unflattened[3][1] : __systolic__arg0_reg[3][1];
      __systolic__arg0_reg[3][2] <= systolic__arg0_load_en ? systolic__arg0_unflattened[3][2] : __systolic__arg0_reg[3][2];
      __systolic__arg0_reg[3][3] <= systolic__arg0_load_en ? systolic__arg0_unflattened[3][3] : __systolic__arg0_reg[3][3];
      __systolic__arg0_valid_reg <= systolic__arg0_valid_load_en ? systolic__arg0_vld : __systolic__arg0_valid_reg;
      __systolic__arg1_reg[0][0] <= systolic__arg1_load_en ? systolic__arg1_unflattened[0][0] : __systolic__arg1_reg[0][0];
      __systolic__arg1_reg[0][1] <= systolic__arg1_load_en ? systolic__arg1_unflattened[0][1] : __systolic__arg1_reg[0][1];
      __systolic__arg1_reg[0][2] <= systolic__arg1_load_en ? systolic__arg1_unflattened[0][2] : __systolic__arg1_reg[0][2];
      __systolic__arg1_reg[0][3] <= systolic__arg1_load_en ? systolic__arg1_unflattened[0][3] : __systolic__arg1_reg[0][3];
      __systolic__arg1_reg[1][0] <= systolic__arg1_load_en ? systolic__arg1_unflattened[1][0] : __systolic__arg1_reg[1][0];
      __systolic__arg1_reg[1][1] <= systolic__arg1_load_en ? systolic__arg1_unflattened[1][1] : __systolic__arg1_reg[1][1];
      __systolic__arg1_reg[1][2] <= systolic__arg1_load_en ? systolic__arg1_unflattened[1][2] : __systolic__arg1_reg[1][2];
      __systolic__arg1_reg[1][3] <= systolic__arg1_load_en ? systolic__arg1_unflattened[1][3] : __systolic__arg1_reg[1][3];
      __systolic__arg1_reg[2][0] <= systolic__arg1_load_en ? systolic__arg1_unflattened[2][0] : __systolic__arg1_reg[2][0];
      __systolic__arg1_reg[2][1] <= systolic__arg1_load_en ? systolic__arg1_unflattened[2][1] : __systolic__arg1_reg[2][1];
      __systolic__arg1_reg[2][2] <= systolic__arg1_load_en ? systolic__arg1_unflattened[2][2] : __systolic__arg1_reg[2][2];
      __systolic__arg1_reg[2][3] <= systolic__arg1_load_en ? systolic__arg1_unflattened[2][3] : __systolic__arg1_reg[2][3];
      __systolic__arg1_reg[3][0] <= systolic__arg1_load_en ? systolic__arg1_unflattened[3][0] : __systolic__arg1_reg[3][0];
      __systolic__arg1_reg[3][1] <= systolic__arg1_load_en ? systolic__arg1_unflattened[3][1] : __systolic__arg1_reg[3][1];
      __systolic__arg1_reg[3][2] <= systolic__arg1_load_en ? systolic__arg1_unflattened[3][2] : __systolic__arg1_reg[3][2];
      __systolic__arg1_reg[3][3] <= systolic__arg1_load_en ? systolic__arg1_unflattened[3][3] : __systolic__arg1_reg[3][3];
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
      __systolic__out0_reg[0][0] <= systolic__out0_load_en ? c[0][0] : __systolic__out0_reg[0][0];
      __systolic__out0_reg[0][1] <= systolic__out0_load_en ? c[0][1] : __systolic__out0_reg[0][1];
      __systolic__out0_reg[0][2] <= systolic__out0_load_en ? c[0][2] : __systolic__out0_reg[0][2];
      __systolic__out0_reg[0][3] <= systolic__out0_load_en ? c[0][3] : __systolic__out0_reg[0][3];
      __systolic__out0_reg[1][0] <= systolic__out0_load_en ? c[1][0] : __systolic__out0_reg[1][0];
      __systolic__out0_reg[1][1] <= systolic__out0_load_en ? c[1][1] : __systolic__out0_reg[1][1];
      __systolic__out0_reg[1][2] <= systolic__out0_load_en ? c[1][2] : __systolic__out0_reg[1][2];
      __systolic__out0_reg[1][3] <= systolic__out0_load_en ? c[1][3] : __systolic__out0_reg[1][3];
      __systolic__out0_reg[2][0] <= systolic__out0_load_en ? c[2][0] : __systolic__out0_reg[2][0];
      __systolic__out0_reg[2][1] <= systolic__out0_load_en ? c[2][1] : __systolic__out0_reg[2][1];
      __systolic__out0_reg[2][2] <= systolic__out0_load_en ? c[2][2] : __systolic__out0_reg[2][2];
      __systolic__out0_reg[2][3] <= systolic__out0_load_en ? c[2][3] : __systolic__out0_reg[2][3];
      __systolic__out0_reg[3][0] <= systolic__out0_load_en ? c[3][0] : __systolic__out0_reg[3][0];
      __systolic__out0_reg[3][1] <= systolic__out0_load_en ? c[3][1] : __systolic__out0_reg[3][1];
      __systolic__out0_reg[3][2] <= systolic__out0_load_en ? c[3][2] : __systolic__out0_reg[3][2];
      __systolic__out0_reg[3][3] <= systolic__out0_load_en ? c[3][3] : __systolic__out0_reg[3][3];
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
  reg [1:0] ____state_1;
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
  wire should_output;
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
  wire [2:0] one_hot_4264;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_0_valid_inv;
  wire systolic__vert_chans__0_0_valid_inv;
  wire and_4304;
  wire and_4305;
  wire [31:0] prod;
  wire systolic__hor_chans__0_0_valid_load_en;
  wire systolic__vert_chans__0_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4306;
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
  wire or_8091;
  wire [31:0] one_hot_sel_4307;
  wire or_4308;
  wire [1:0] one_hot_sel_4313;
  wire __systolic__hor_chans__0_1_not_stage_load;
  wire __systolic__hor_chans__0_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_0_not_stage_load;
  wire __systolic__result_chans__0_0_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__0_1_not_has_been_sent = ~__systolic__hor_chans__0_1_has_been_sent_reg;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign __systolic__vert_chans__1_0_not_has_been_sent = ~__systolic__vert_chans__1_0_has_been_sent_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign __systolic__result_chans__0_0_vld_buf = p0_valid & should_output;
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
  assign p1_all_active_outputs_ready = __systolic__hor_chans__0_1_has_sent_or_is_ready & __systolic__vert_chans__1_0_has_sent_or_is_ready & (~should_output | systolic__result_chans__0_0_load_en | __systolic__result_chans__0_0_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_0_valid_reg & __systolic__vert_chans__0_0_valid_reg;
  assign one_hot_4264 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_0_valid_inv = ~__systolic__hor_chans__0_0_valid_reg;
  assign systolic__vert_chans__0_0_valid_inv = ~__systolic__vert_chans__0_0_valid_reg;
  assign and_4304 = ~should_output & p1_stage_done;
  assign and_4305 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__0_0_valid_load_en = p0_load_en | systolic__hor_chans__0_0_valid_inv;
  assign systolic__vert_chans__0_0_valid_load_en = p0_load_en | systolic__vert_chans__0_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_4264[1] & should_output == one_hot_4264[0];
  assign concat_4306 = {and_4304, and_4305};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_331_1_case_1 = 2'h0;
  assign unexpand_for_next_value_331_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_valid_and_ready_txfr = __systolic__hor_chans__0_1_valid_and_not_has_been_sent & systolic__hor_chans__0_1_load_en;
  assign __systolic__vert_chans__1_0_valid_and_ready_txfr = __systolic__vert_chans__1_0_valid_and_not_has_been_sent & systolic__vert_chans__1_0_load_en;
  assign __systolic__result_chans__0_0_valid_and_all_active_outputs_ready = __systolic__result_chans__0_0_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_valid_and_ready_txfr = __systolic__result_chans__0_0_valid_and_not_has_been_sent & systolic__result_chans__0_0_load_en;
  assign systolic__hor_chans__0_0_load_en = systolic__hor_chans__0_0_vld & systolic__hor_chans__0_0_valid_load_en;
  assign systolic__vert_chans__0_0_load_en = systolic__vert_chans__0_0_vld & systolic__vert_chans__0_0_valid_load_en;
  assign or_8091 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_4307 = 32'h0000_0000 & {32{concat_4306[0]}} | new_accum & {32{concat_4306[1]}};
  assign or_4308 = and_4304 | and_4305;
  assign one_hot_sel_4313 = unexpand_for_next_value_331_1_case_1 & {2{concat_4306[0]}} | unexpand_for_next_value_331_1_case_0 & {2{concat_4306[1]}};
  assign __systolic__hor_chans__0_1_not_stage_load = ~__systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_1_has_been_sent_reg_load_en = __systolic__hor_chans__0_1_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_0_has_been_sent_reg_load_en = __systolic__vert_chans__1_0_valid_and_ready_txfr | __systolic__hor_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_not_stage_load = ~__systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_0_has_been_sent_reg_load_en = __systolic__result_chans__0_0_valid_and_ready_txfr | __systolic__result_chans__0_0_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_0_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__0_0_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_4308 ? one_hot_sel_4313 : ____state_1;
      ____state_0 <= or_4308 ? one_hot_sel_4307 : ____state_0;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__2_3_not_has_been_sent;
  wire systolic__hor_chans__2_3_valid_inv;
  wire __systolic__vert_chans__3_2_not_has_been_sent;
  wire systolic__vert_chans__3_2_valid_inv;
  wire __systolic__result_chans__2_2_vld_buf;
  wire __systolic__result_chans__2_2_not_has_been_sent;
  wire systolic__result_chans__2_2_valid_inv;
  wire __systolic__hor_chans__2_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_3_valid_load_en;
  wire __systolic__vert_chans__3_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_2_valid_load_en;
  wire __systolic__result_chans__2_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_2_valid_load_en;
  wire systolic__hor_chans__2_3_load_en;
  wire systolic__vert_chans__3_2_load_en;
  wire systolic__result_chans__2_2_load_en;
  wire __systolic__hor_chans__2_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_2_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_4458;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__2_2_valid_inv;
  wire systolic__vert_chans__2_2_valid_inv;
  wire and_4498;
  wire and_4499;
  wire [31:0] prod;
  wire systolic__hor_chans__2_2_valid_load_en;
  wire systolic__vert_chans__2_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4500;
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
  wire or_8095;
  wire [31:0] one_hot_sel_4501;
  wire or_4502;
  wire [1:0] one_hot_sel_4507;
  wire __systolic__hor_chans__2_3_not_stage_load;
  wire __systolic__hor_chans__2_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_2_not_stage_load;
  wire __systolic__result_chans__2_2_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__2_3_not_has_been_sent = ~__systolic__hor_chans__2_3_has_been_sent_reg;
  assign systolic__hor_chans__2_3_valid_inv = ~__systolic__hor_chans__2_3_valid_reg;
  assign __systolic__vert_chans__3_2_not_has_been_sent = ~__systolic__vert_chans__3_2_has_been_sent_reg;
  assign systolic__vert_chans__3_2_valid_inv = ~__systolic__vert_chans__3_2_valid_reg;
  assign __systolic__result_chans__2_2_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__2_2_not_has_been_sent = ~__systolic__result_chans__2_2_has_been_sent_reg;
  assign systolic__result_chans__2_2_valid_inv = ~__systolic__result_chans__2_2_valid_reg;
  assign __systolic__hor_chans__2_3_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__2_3_not_has_been_sent;
  assign systolic__hor_chans__2_3_valid_load_en = systolic__hor_chans__2_3_rdy | systolic__hor_chans__2_3_valid_inv;
  assign __systolic__vert_chans__3_2_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__3_2_not_has_been_sent;
  assign systolic__vert_chans__3_2_valid_load_en = systolic__vert_chans__3_2_rdy | systolic__vert_chans__3_2_valid_inv;
  assign __systolic__result_chans__2_2_valid_and_not_has_been_sent = __systolic__result_chans__2_2_vld_buf & __systolic__result_chans__2_2_not_has_been_sent;
  assign systolic__result_chans__2_2_valid_load_en = systolic__result_chans__2_2_rdy | systolic__result_chans__2_2_valid_inv;
  assign systolic__hor_chans__2_3_load_en = __systolic__hor_chans__2_3_valid_and_not_has_been_sent & systolic__hor_chans__2_3_valid_load_en;
  assign systolic__vert_chans__3_2_load_en = __systolic__vert_chans__3_2_valid_and_not_has_been_sent & systolic__vert_chans__3_2_valid_load_en;
  assign systolic__result_chans__2_2_load_en = __systolic__result_chans__2_2_valid_and_not_has_been_sent & systolic__result_chans__2_2_valid_load_en;
  assign __systolic__hor_chans__2_3_has_sent_or_is_ready = systolic__hor_chans__2_3_load_en | __systolic__hor_chans__2_3_has_been_sent_reg;
  assign __systolic__vert_chans__3_2_has_sent_or_is_ready = systolic__vert_chans__3_2_load_en | __systolic__vert_chans__3_2_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__2_3_has_sent_or_is_ready & __systolic__vert_chans__3_2_has_sent_or_is_ready & (~should_output | systolic__result_chans__2_2_load_en | __systolic__result_chans__2_2_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__2_2_valid_reg & __systolic__vert_chans__2_2_valid_reg;
  assign one_hot_4458 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__2_2_valid_inv = ~__systolic__hor_chans__2_2_valid_reg;
  assign systolic__vert_chans__2_2_valid_inv = ~__systolic__vert_chans__2_2_valid_reg;
  assign and_4498 = ~should_output & p1_stage_done;
  assign and_4499 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__2_2_valid_load_en = p0_load_en | systolic__hor_chans__2_2_valid_inv;
  assign systolic__vert_chans__2_2_valid_load_en = p0_load_en | systolic__vert_chans__2_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_4458[1] & should_output == one_hot_4458[0];
  assign concat_4500 = {and_4498, and_4499};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_631_1_case_1 = 2'h0;
  assign unexpand_for_next_value_631_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__2_3_valid_and_ready_txfr = __systolic__hor_chans__2_3_valid_and_not_has_been_sent & systolic__hor_chans__2_3_load_en;
  assign __systolic__vert_chans__3_2_valid_and_ready_txfr = __systolic__vert_chans__3_2_valid_and_not_has_been_sent & systolic__vert_chans__3_2_load_en;
  assign __systolic__result_chans__2_2_valid_and_all_active_outputs_ready = __systolic__result_chans__2_2_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__2_2_valid_and_ready_txfr = __systolic__result_chans__2_2_valid_and_not_has_been_sent & systolic__result_chans__2_2_load_en;
  assign systolic__hor_chans__2_2_load_en = systolic__hor_chans__2_2_vld & systolic__hor_chans__2_2_valid_load_en;
  assign systolic__vert_chans__2_2_load_en = systolic__vert_chans__2_2_vld & systolic__vert_chans__2_2_valid_load_en;
  assign or_8095 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_4501 = 32'h0000_0000 & {32{concat_4500[0]}} | new_accum & {32{concat_4500[1]}};
  assign or_4502 = and_4498 | and_4499;
  assign one_hot_sel_4507 = unexpand_for_next_value_631_1_case_1 & {2{concat_4500[0]}} | unexpand_for_next_value_631_1_case_0 & {2{concat_4500[1]}};
  assign __systolic__hor_chans__2_3_not_stage_load = ~__systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_3_has_been_sent_reg_load_en = __systolic__hor_chans__2_3_valid_and_ready_txfr | __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_2_has_been_sent_reg_load_en = __systolic__vert_chans__3_2_valid_and_ready_txfr | __systolic__hor_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_2_not_stage_load = ~__systolic__result_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_2_has_been_sent_reg_load_en = __systolic__result_chans__2_2_valid_and_ready_txfr | __systolic__result_chans__2_2_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__2_2_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__2_2_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_4502 ? one_hot_sel_4507 : ____state_1;
      ____state_0 <= or_4502 ? one_hot_sel_4501 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__2_3_has_been_sent_reg <= __systolic__hor_chans__2_3_has_been_sent_reg_load_en ? __systolic__hor_chans__2_3_not_stage_load : __systolic__hor_chans__2_3_has_been_sent_reg;
      __systolic__vert_chans__3_2_has_been_sent_reg <= __systolic__vert_chans__3_2_has_been_sent_reg_load_en ? __systolic__hor_chans__2_3_not_stage_load : __systolic__vert_chans__3_2_has_been_sent_reg;
      __systolic__result_chans__2_2_has_been_sent_reg <= __systolic__result_chans__2_2_has_been_sent_reg_load_en ? __systolic__result_chans__2_2_not_stage_load : __systolic__result_chans__2_2_has_been_sent_reg;
      __systolic__hor_chans__2_2_reg <= systolic__hor_chans__2_2_load_en ? systolic__hor_chans__2_2 : __systolic__hor_chans__2_2_reg;
      __systolic__hor_chans__2_2_valid_reg <= systolic__hor_chans__2_2_valid_load_en ? systolic__hor_chans__2_2_vld : __systolic__hor_chans__2_2_valid_reg;
      __systolic__vert_chans__2_2_reg <= systolic__vert_chans__2_2_load_en ? systolic__vert_chans__2_2 : __systolic__vert_chans__2_2_reg;
      __systolic__vert_chans__2_2_valid_reg <= systolic__vert_chans__2_2_valid_load_en ? systolic__vert_chans__2_2_vld : __systolic__vert_chans__2_2_valid_reg;
      __systolic__hor_chans__2_3_reg <= systolic__hor_chans__2_3_load_en ? p0_a : __systolic__hor_chans__2_3_reg;
      __systolic__hor_chans__2_3_valid_reg <= systolic__hor_chans__2_3_valid_load_en ? __systolic__hor_chans__2_3_valid_and_not_has_been_sent : __systolic__hor_chans__2_3_valid_reg;
      __systolic__vert_chans__3_2_reg <= systolic__vert_chans__3_2_load_en ? p0_b : __systolic__vert_chans__3_2_reg;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__2_4_not_has_been_sent;
  wire systolic__hor_chans__2_4_valid_inv;
  wire __systolic__vert_chans__3_3_not_has_been_sent;
  wire systolic__vert_chans__3_3_valid_inv;
  wire __systolic__result_chans__2_3_vld_buf;
  wire __systolic__result_chans__2_3_not_has_been_sent;
  wire systolic__result_chans__2_3_valid_inv;
  wire __systolic__hor_chans__2_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_4_valid_load_en;
  wire __systolic__vert_chans__3_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_3_valid_load_en;
  wire __systolic__result_chans__2_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_3_valid_load_en;
  wire systolic__hor_chans__2_4_load_en;
  wire systolic__vert_chans__3_3_load_en;
  wire systolic__result_chans__2_3_load_en;
  wire __systolic__hor_chans__2_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_3_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_4652;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__2_3_valid_inv;
  wire systolic__vert_chans__2_3_valid_inv;
  wire and_4692;
  wire and_4693;
  wire [31:0] prod;
  wire systolic__hor_chans__2_3_valid_load_en;
  wire systolic__vert_chans__2_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4694;
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
  wire or_8099;
  wire [31:0] one_hot_sel_4695;
  wire or_4696;
  wire [1:0] one_hot_sel_4701;
  wire __systolic__hor_chans__2_4_not_stage_load;
  wire __systolic__hor_chans__2_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_3_not_stage_load;
  wire __systolic__result_chans__2_3_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__2_4_not_has_been_sent = ~__systolic__hor_chans__2_4_has_been_sent_reg;
  assign systolic__hor_chans__2_4_valid_inv = ~__systolic__hor_chans__2_4_valid_reg;
  assign __systolic__vert_chans__3_3_not_has_been_sent = ~__systolic__vert_chans__3_3_has_been_sent_reg;
  assign systolic__vert_chans__3_3_valid_inv = ~__systolic__vert_chans__3_3_valid_reg;
  assign __systolic__result_chans__2_3_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__2_3_not_has_been_sent = ~__systolic__result_chans__2_3_has_been_sent_reg;
  assign systolic__result_chans__2_3_valid_inv = ~__systolic__result_chans__2_3_valid_reg;
  assign __systolic__hor_chans__2_4_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__2_4_not_has_been_sent;
  assign systolic__hor_chans__2_4_valid_load_en = systolic__hor_chans__2_4_rdy | systolic__hor_chans__2_4_valid_inv;
  assign __systolic__vert_chans__3_3_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__3_3_not_has_been_sent;
  assign systolic__vert_chans__3_3_valid_load_en = systolic__vert_chans__3_3_rdy | systolic__vert_chans__3_3_valid_inv;
  assign __systolic__result_chans__2_3_valid_and_not_has_been_sent = __systolic__result_chans__2_3_vld_buf & __systolic__result_chans__2_3_not_has_been_sent;
  assign systolic__result_chans__2_3_valid_load_en = systolic__result_chans__2_3_rdy | systolic__result_chans__2_3_valid_inv;
  assign systolic__hor_chans__2_4_load_en = __systolic__hor_chans__2_4_valid_and_not_has_been_sent & systolic__hor_chans__2_4_valid_load_en;
  assign systolic__vert_chans__3_3_load_en = __systolic__vert_chans__3_3_valid_and_not_has_been_sent & systolic__vert_chans__3_3_valid_load_en;
  assign systolic__result_chans__2_3_load_en = __systolic__result_chans__2_3_valid_and_not_has_been_sent & systolic__result_chans__2_3_valid_load_en;
  assign __systolic__hor_chans__2_4_has_sent_or_is_ready = systolic__hor_chans__2_4_load_en | __systolic__hor_chans__2_4_has_been_sent_reg;
  assign __systolic__vert_chans__3_3_has_sent_or_is_ready = systolic__vert_chans__3_3_load_en | __systolic__vert_chans__3_3_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__2_4_has_sent_or_is_ready & __systolic__vert_chans__3_3_has_sent_or_is_ready & (~should_output | systolic__result_chans__2_3_load_en | __systolic__result_chans__2_3_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__2_3_valid_reg & __systolic__vert_chans__2_3_valid_reg;
  assign one_hot_4652 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__2_3_valid_inv = ~__systolic__hor_chans__2_3_valid_reg;
  assign systolic__vert_chans__2_3_valid_inv = ~__systolic__vert_chans__2_3_valid_reg;
  assign and_4692 = ~should_output & p1_stage_done;
  assign and_4693 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__2_3_valid_load_en = p0_load_en | systolic__hor_chans__2_3_valid_inv;
  assign systolic__vert_chans__2_3_valid_load_en = p0_load_en | systolic__vert_chans__2_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_4652[1] & should_output == one_hot_4652[0];
  assign concat_4694 = {and_4692, and_4693};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_661_1_case_1 = 2'h0;
  assign unexpand_for_next_value_661_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__2_4_valid_and_ready_txfr = __systolic__hor_chans__2_4_valid_and_not_has_been_sent & systolic__hor_chans__2_4_load_en;
  assign __systolic__vert_chans__3_3_valid_and_ready_txfr = __systolic__vert_chans__3_3_valid_and_not_has_been_sent & systolic__vert_chans__3_3_load_en;
  assign __systolic__result_chans__2_3_valid_and_all_active_outputs_ready = __systolic__result_chans__2_3_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__2_3_valid_and_ready_txfr = __systolic__result_chans__2_3_valid_and_not_has_been_sent & systolic__result_chans__2_3_load_en;
  assign systolic__hor_chans__2_3_load_en = systolic__hor_chans__2_3_vld & systolic__hor_chans__2_3_valid_load_en;
  assign systolic__vert_chans__2_3_load_en = systolic__vert_chans__2_3_vld & systolic__vert_chans__2_3_valid_load_en;
  assign or_8099 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_4695 = 32'h0000_0000 & {32{concat_4694[0]}} | new_accum & {32{concat_4694[1]}};
  assign or_4696 = and_4692 | and_4693;
  assign one_hot_sel_4701 = unexpand_for_next_value_661_1_case_1 & {2{concat_4694[0]}} | unexpand_for_next_value_661_1_case_0 & {2{concat_4694[1]}};
  assign __systolic__hor_chans__2_4_not_stage_load = ~__systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_4_has_been_sent_reg_load_en = __systolic__hor_chans__2_4_valid_and_ready_txfr | __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_3_has_been_sent_reg_load_en = __systolic__vert_chans__3_3_valid_and_ready_txfr | __systolic__hor_chans__2_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_3_not_stage_load = ~__systolic__result_chans__2_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_3_has_been_sent_reg_load_en = __systolic__result_chans__2_3_valid_and_ready_txfr | __systolic__result_chans__2_3_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__2_3_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__2_3_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_4696 ? one_hot_sel_4701 : ____state_1;
      ____state_0 <= or_4696 ? one_hot_sel_4695 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__2_4_has_been_sent_reg <= __systolic__hor_chans__2_4_has_been_sent_reg_load_en ? __systolic__hor_chans__2_4_not_stage_load : __systolic__hor_chans__2_4_has_been_sent_reg;
      __systolic__vert_chans__3_3_has_been_sent_reg <= __systolic__vert_chans__3_3_has_been_sent_reg_load_en ? __systolic__hor_chans__2_4_not_stage_load : __systolic__vert_chans__3_3_has_been_sent_reg;
      __systolic__result_chans__2_3_has_been_sent_reg <= __systolic__result_chans__2_3_has_been_sent_reg_load_en ? __systolic__result_chans__2_3_not_stage_load : __systolic__result_chans__2_3_has_been_sent_reg;
      __systolic__hor_chans__2_3_reg <= systolic__hor_chans__2_3_load_en ? systolic__hor_chans__2_3 : __systolic__hor_chans__2_3_reg;
      __systolic__hor_chans__2_3_valid_reg <= systolic__hor_chans__2_3_valid_load_en ? systolic__hor_chans__2_3_vld : __systolic__hor_chans__2_3_valid_reg;
      __systolic__vert_chans__2_3_reg <= systolic__vert_chans__2_3_load_en ? systolic__vert_chans__2_3 : __systolic__vert_chans__2_3_reg;
      __systolic__vert_chans__2_3_valid_reg <= systolic__vert_chans__2_3_valid_load_en ? systolic__vert_chans__2_3_vld : __systolic__vert_chans__2_3_valid_reg;
      __systolic__hor_chans__2_4_reg <= systolic__hor_chans__2_4_load_en ? p0_a : __systolic__hor_chans__2_4_reg;
      __systolic__hor_chans__2_4_valid_reg <= systolic__hor_chans__2_4_valid_load_en ? __systolic__hor_chans__2_4_valid_and_not_has_been_sent : __systolic__hor_chans__2_4_valid_reg;
      __systolic__vert_chans__3_3_reg <= systolic__vert_chans__3_3_load_en ? p0_b : __systolic__vert_chans__3_3_reg;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__3_1_not_has_been_sent;
  wire systolic__hor_chans__3_1_valid_inv;
  wire __systolic__vert_chans__4_0_not_has_been_sent;
  wire systolic__vert_chans__4_0_valid_inv;
  wire __systolic__result_chans__3_0_vld_buf;
  wire __systolic__result_chans__3_0_not_has_been_sent;
  wire systolic__result_chans__3_0_valid_inv;
  wire __systolic__hor_chans__3_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_1_valid_load_en;
  wire __systolic__vert_chans__4_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_0_valid_load_en;
  wire __systolic__result_chans__3_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_0_valid_load_en;
  wire systolic__hor_chans__3_1_load_en;
  wire systolic__vert_chans__4_0_load_en;
  wire systolic__result_chans__3_0_load_en;
  wire __systolic__hor_chans__3_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_0_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_4846;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__3_0_valid_inv;
  wire systolic__vert_chans__3_0_valid_inv;
  wire and_4886;
  wire and_4887;
  wire [31:0] prod;
  wire systolic__hor_chans__3_0_valid_load_en;
  wire systolic__vert_chans__3_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_4888;
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
  wire or_8103;
  wire [31:0] one_hot_sel_4889;
  wire or_4890;
  wire [1:0] one_hot_sel_4895;
  wire __systolic__hor_chans__3_1_not_stage_load;
  wire __systolic__hor_chans__3_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_0_not_stage_load;
  wire __systolic__result_chans__3_0_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__3_1_not_has_been_sent = ~__systolic__hor_chans__3_1_has_been_sent_reg;
  assign systolic__hor_chans__3_1_valid_inv = ~__systolic__hor_chans__3_1_valid_reg;
  assign __systolic__vert_chans__4_0_not_has_been_sent = ~__systolic__vert_chans__4_0_has_been_sent_reg;
  assign systolic__vert_chans__4_0_valid_inv = ~__systolic__vert_chans__4_0_valid_reg;
  assign __systolic__result_chans__3_0_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__3_0_not_has_been_sent = ~__systolic__result_chans__3_0_has_been_sent_reg;
  assign systolic__result_chans__3_0_valid_inv = ~__systolic__result_chans__3_0_valid_reg;
  assign __systolic__hor_chans__3_1_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__3_1_not_has_been_sent;
  assign systolic__hor_chans__3_1_valid_load_en = systolic__hor_chans__3_1_rdy | systolic__hor_chans__3_1_valid_inv;
  assign __systolic__vert_chans__4_0_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__4_0_not_has_been_sent;
  assign systolic__vert_chans__4_0_valid_load_en = systolic__vert_chans__4_0_rdy | systolic__vert_chans__4_0_valid_inv;
  assign __systolic__result_chans__3_0_valid_and_not_has_been_sent = __systolic__result_chans__3_0_vld_buf & __systolic__result_chans__3_0_not_has_been_sent;
  assign systolic__result_chans__3_0_valid_load_en = systolic__result_chans__3_0_rdy | systolic__result_chans__3_0_valid_inv;
  assign systolic__hor_chans__3_1_load_en = __systolic__hor_chans__3_1_valid_and_not_has_been_sent & systolic__hor_chans__3_1_valid_load_en;
  assign systolic__vert_chans__4_0_load_en = __systolic__vert_chans__4_0_valid_and_not_has_been_sent & systolic__vert_chans__4_0_valid_load_en;
  assign systolic__result_chans__3_0_load_en = __systolic__result_chans__3_0_valid_and_not_has_been_sent & systolic__result_chans__3_0_valid_load_en;
  assign __systolic__hor_chans__3_1_has_sent_or_is_ready = systolic__hor_chans__3_1_load_en | __systolic__hor_chans__3_1_has_been_sent_reg;
  assign __systolic__vert_chans__4_0_has_sent_or_is_ready = systolic__vert_chans__4_0_load_en | __systolic__vert_chans__4_0_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__3_1_has_sent_or_is_ready & __systolic__vert_chans__4_0_has_sent_or_is_ready & (~should_output | systolic__result_chans__3_0_load_en | __systolic__result_chans__3_0_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__3_0_valid_reg & __systolic__vert_chans__3_0_valid_reg;
  assign one_hot_4846 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__3_0_valid_inv = ~__systolic__hor_chans__3_0_valid_reg;
  assign systolic__vert_chans__3_0_valid_inv = ~__systolic__vert_chans__3_0_valid_reg;
  assign and_4886 = ~should_output & p1_stage_done;
  assign and_4887 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__3_0_valid_load_en = p0_load_en | systolic__hor_chans__3_0_valid_inv;
  assign systolic__vert_chans__3_0_valid_load_en = p0_load_en | systolic__vert_chans__3_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_4846[1] & should_output == one_hot_4846[0];
  assign concat_4888 = {and_4886, and_4887};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_691_1_case_1 = 2'h0;
  assign unexpand_for_next_value_691_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__3_1_valid_and_ready_txfr = __systolic__hor_chans__3_1_valid_and_not_has_been_sent & systolic__hor_chans__3_1_load_en;
  assign __systolic__vert_chans__4_0_valid_and_ready_txfr = __systolic__vert_chans__4_0_valid_and_not_has_been_sent & systolic__vert_chans__4_0_load_en;
  assign __systolic__result_chans__3_0_valid_and_all_active_outputs_ready = __systolic__result_chans__3_0_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__3_0_valid_and_ready_txfr = __systolic__result_chans__3_0_valid_and_not_has_been_sent & systolic__result_chans__3_0_load_en;
  assign systolic__hor_chans__3_0_load_en = systolic__hor_chans__3_0_vld & systolic__hor_chans__3_0_valid_load_en;
  assign systolic__vert_chans__3_0_load_en = systolic__vert_chans__3_0_vld & systolic__vert_chans__3_0_valid_load_en;
  assign or_8103 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_4889 = 32'h0000_0000 & {32{concat_4888[0]}} | new_accum & {32{concat_4888[1]}};
  assign or_4890 = and_4886 | and_4887;
  assign one_hot_sel_4895 = unexpand_for_next_value_691_1_case_1 & {2{concat_4888[0]}} | unexpand_for_next_value_691_1_case_0 & {2{concat_4888[1]}};
  assign __systolic__hor_chans__3_1_not_stage_load = ~__systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_1_has_been_sent_reg_load_en = __systolic__hor_chans__3_1_valid_and_ready_txfr | __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_0_has_been_sent_reg_load_en = __systolic__vert_chans__4_0_valid_and_ready_txfr | __systolic__hor_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_0_not_stage_load = ~__systolic__result_chans__3_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_0_has_been_sent_reg_load_en = __systolic__result_chans__3_0_valid_and_ready_txfr | __systolic__result_chans__3_0_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__3_0_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__3_0_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_4890 ? one_hot_sel_4895 : ____state_1;
      ____state_0 <= or_4890 ? one_hot_sel_4889 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__3_1_has_been_sent_reg <= __systolic__hor_chans__3_1_has_been_sent_reg_load_en ? __systolic__hor_chans__3_1_not_stage_load : __systolic__hor_chans__3_1_has_been_sent_reg;
      __systolic__vert_chans__4_0_has_been_sent_reg <= __systolic__vert_chans__4_0_has_been_sent_reg_load_en ? __systolic__hor_chans__3_1_not_stage_load : __systolic__vert_chans__4_0_has_been_sent_reg;
      __systolic__result_chans__3_0_has_been_sent_reg <= __systolic__result_chans__3_0_has_been_sent_reg_load_en ? __systolic__result_chans__3_0_not_stage_load : __systolic__result_chans__3_0_has_been_sent_reg;
      __systolic__hor_chans__3_0_reg <= systolic__hor_chans__3_0_load_en ? systolic__hor_chans__3_0 : __systolic__hor_chans__3_0_reg;
      __systolic__hor_chans__3_0_valid_reg <= systolic__hor_chans__3_0_valid_load_en ? systolic__hor_chans__3_0_vld : __systolic__hor_chans__3_0_valid_reg;
      __systolic__vert_chans__3_0_reg <= systolic__vert_chans__3_0_load_en ? systolic__vert_chans__3_0 : __systolic__vert_chans__3_0_reg;
      __systolic__vert_chans__3_0_valid_reg <= systolic__vert_chans__3_0_valid_load_en ? systolic__vert_chans__3_0_vld : __systolic__vert_chans__3_0_valid_reg;
      __systolic__hor_chans__3_1_reg <= systolic__hor_chans__3_1_load_en ? p0_a : __systolic__hor_chans__3_1_reg;
      __systolic__hor_chans__3_1_valid_reg <= systolic__hor_chans__3_1_valid_load_en ? __systolic__hor_chans__3_1_valid_and_not_has_been_sent : __systolic__hor_chans__3_1_valid_reg;
      __systolic__vert_chans__4_0_reg <= systolic__vert_chans__4_0_load_en ? p0_b : __systolic__vert_chans__4_0_reg;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__3_2_not_has_been_sent;
  wire systolic__hor_chans__3_2_valid_inv;
  wire __systolic__vert_chans__4_1_not_has_been_sent;
  wire systolic__vert_chans__4_1_valid_inv;
  wire __systolic__result_chans__3_1_vld_buf;
  wire __systolic__result_chans__3_1_not_has_been_sent;
  wire systolic__result_chans__3_1_valid_inv;
  wire __systolic__hor_chans__3_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_2_valid_load_en;
  wire __systolic__vert_chans__4_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_1_valid_load_en;
  wire __systolic__result_chans__3_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_1_valid_load_en;
  wire systolic__hor_chans__3_2_load_en;
  wire systolic__vert_chans__4_1_load_en;
  wire systolic__result_chans__3_1_load_en;
  wire __systolic__hor_chans__3_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_1_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_5040;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__3_1_valid_inv;
  wire systolic__vert_chans__3_1_valid_inv;
  wire and_5080;
  wire and_5081;
  wire [31:0] prod;
  wire systolic__hor_chans__3_1_valid_load_en;
  wire systolic__vert_chans__3_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5082;
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
  wire or_8107;
  wire [31:0] one_hot_sel_5083;
  wire or_5084;
  wire [1:0] one_hot_sel_5089;
  wire __systolic__hor_chans__3_2_not_stage_load;
  wire __systolic__hor_chans__3_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_1_not_stage_load;
  wire __systolic__result_chans__3_1_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__3_2_not_has_been_sent = ~__systolic__hor_chans__3_2_has_been_sent_reg;
  assign systolic__hor_chans__3_2_valid_inv = ~__systolic__hor_chans__3_2_valid_reg;
  assign __systolic__vert_chans__4_1_not_has_been_sent = ~__systolic__vert_chans__4_1_has_been_sent_reg;
  assign systolic__vert_chans__4_1_valid_inv = ~__systolic__vert_chans__4_1_valid_reg;
  assign __systolic__result_chans__3_1_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__3_1_not_has_been_sent = ~__systolic__result_chans__3_1_has_been_sent_reg;
  assign systolic__result_chans__3_1_valid_inv = ~__systolic__result_chans__3_1_valid_reg;
  assign __systolic__hor_chans__3_2_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__3_2_not_has_been_sent;
  assign systolic__hor_chans__3_2_valid_load_en = systolic__hor_chans__3_2_rdy | systolic__hor_chans__3_2_valid_inv;
  assign __systolic__vert_chans__4_1_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__4_1_not_has_been_sent;
  assign systolic__vert_chans__4_1_valid_load_en = systolic__vert_chans__4_1_rdy | systolic__vert_chans__4_1_valid_inv;
  assign __systolic__result_chans__3_1_valid_and_not_has_been_sent = __systolic__result_chans__3_1_vld_buf & __systolic__result_chans__3_1_not_has_been_sent;
  assign systolic__result_chans__3_1_valid_load_en = systolic__result_chans__3_1_rdy | systolic__result_chans__3_1_valid_inv;
  assign systolic__hor_chans__3_2_load_en = __systolic__hor_chans__3_2_valid_and_not_has_been_sent & systolic__hor_chans__3_2_valid_load_en;
  assign systolic__vert_chans__4_1_load_en = __systolic__vert_chans__4_1_valid_and_not_has_been_sent & systolic__vert_chans__4_1_valid_load_en;
  assign systolic__result_chans__3_1_load_en = __systolic__result_chans__3_1_valid_and_not_has_been_sent & systolic__result_chans__3_1_valid_load_en;
  assign __systolic__hor_chans__3_2_has_sent_or_is_ready = systolic__hor_chans__3_2_load_en | __systolic__hor_chans__3_2_has_been_sent_reg;
  assign __systolic__vert_chans__4_1_has_sent_or_is_ready = systolic__vert_chans__4_1_load_en | __systolic__vert_chans__4_1_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__3_2_has_sent_or_is_ready & __systolic__vert_chans__4_1_has_sent_or_is_ready & (~should_output | systolic__result_chans__3_1_load_en | __systolic__result_chans__3_1_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__3_1_valid_reg & __systolic__vert_chans__3_1_valid_reg;
  assign one_hot_5040 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__3_1_valid_inv = ~__systolic__hor_chans__3_1_valid_reg;
  assign systolic__vert_chans__3_1_valid_inv = ~__systolic__vert_chans__3_1_valid_reg;
  assign and_5080 = ~should_output & p1_stage_done;
  assign and_5081 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__3_1_valid_load_en = p0_load_en | systolic__hor_chans__3_1_valid_inv;
  assign systolic__vert_chans__3_1_valid_load_en = p0_load_en | systolic__vert_chans__3_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5040[1] & should_output == one_hot_5040[0];
  assign concat_5082 = {and_5080, and_5081};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_721_1_case_1 = 2'h0;
  assign unexpand_for_next_value_721_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__3_2_valid_and_ready_txfr = __systolic__hor_chans__3_2_valid_and_not_has_been_sent & systolic__hor_chans__3_2_load_en;
  assign __systolic__vert_chans__4_1_valid_and_ready_txfr = __systolic__vert_chans__4_1_valid_and_not_has_been_sent & systolic__vert_chans__4_1_load_en;
  assign __systolic__result_chans__3_1_valid_and_all_active_outputs_ready = __systolic__result_chans__3_1_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__3_1_valid_and_ready_txfr = __systolic__result_chans__3_1_valid_and_not_has_been_sent & systolic__result_chans__3_1_load_en;
  assign systolic__hor_chans__3_1_load_en = systolic__hor_chans__3_1_vld & systolic__hor_chans__3_1_valid_load_en;
  assign systolic__vert_chans__3_1_load_en = systolic__vert_chans__3_1_vld & systolic__vert_chans__3_1_valid_load_en;
  assign or_8107 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_5083 = 32'h0000_0000 & {32{concat_5082[0]}} | new_accum & {32{concat_5082[1]}};
  assign or_5084 = and_5080 | and_5081;
  assign one_hot_sel_5089 = unexpand_for_next_value_721_1_case_1 & {2{concat_5082[0]}} | unexpand_for_next_value_721_1_case_0 & {2{concat_5082[1]}};
  assign __systolic__hor_chans__3_2_not_stage_load = ~__systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_2_has_been_sent_reg_load_en = __systolic__hor_chans__3_2_valid_and_ready_txfr | __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_1_has_been_sent_reg_load_en = __systolic__vert_chans__4_1_valid_and_ready_txfr | __systolic__hor_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_1_not_stage_load = ~__systolic__result_chans__3_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_1_has_been_sent_reg_load_en = __systolic__result_chans__3_1_valid_and_ready_txfr | __systolic__result_chans__3_1_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__3_1_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__3_1_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_5084 ? one_hot_sel_5089 : ____state_1;
      ____state_0 <= or_5084 ? one_hot_sel_5083 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__3_2_has_been_sent_reg <= __systolic__hor_chans__3_2_has_been_sent_reg_load_en ? __systolic__hor_chans__3_2_not_stage_load : __systolic__hor_chans__3_2_has_been_sent_reg;
      __systolic__vert_chans__4_1_has_been_sent_reg <= __systolic__vert_chans__4_1_has_been_sent_reg_load_en ? __systolic__hor_chans__3_2_not_stage_load : __systolic__vert_chans__4_1_has_been_sent_reg;
      __systolic__result_chans__3_1_has_been_sent_reg <= __systolic__result_chans__3_1_has_been_sent_reg_load_en ? __systolic__result_chans__3_1_not_stage_load : __systolic__result_chans__3_1_has_been_sent_reg;
      __systolic__hor_chans__3_1_reg <= systolic__hor_chans__3_1_load_en ? systolic__hor_chans__3_1 : __systolic__hor_chans__3_1_reg;
      __systolic__hor_chans__3_1_valid_reg <= systolic__hor_chans__3_1_valid_load_en ? systolic__hor_chans__3_1_vld : __systolic__hor_chans__3_1_valid_reg;
      __systolic__vert_chans__3_1_reg <= systolic__vert_chans__3_1_load_en ? systolic__vert_chans__3_1 : __systolic__vert_chans__3_1_reg;
      __systolic__vert_chans__3_1_valid_reg <= systolic__vert_chans__3_1_valid_load_en ? systolic__vert_chans__3_1_vld : __systolic__vert_chans__3_1_valid_reg;
      __systolic__hor_chans__3_2_reg <= systolic__hor_chans__3_2_load_en ? p0_a : __systolic__hor_chans__3_2_reg;
      __systolic__hor_chans__3_2_valid_reg <= systolic__hor_chans__3_2_valid_load_en ? __systolic__hor_chans__3_2_valid_and_not_has_been_sent : __systolic__hor_chans__3_2_valid_reg;
      __systolic__vert_chans__4_1_reg <= systolic__vert_chans__4_1_load_en ? p0_b : __systolic__vert_chans__4_1_reg;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__3_3_not_has_been_sent;
  wire systolic__hor_chans__3_3_valid_inv;
  wire __systolic__vert_chans__4_2_not_has_been_sent;
  wire systolic__vert_chans__4_2_valid_inv;
  wire __systolic__result_chans__3_2_vld_buf;
  wire __systolic__result_chans__3_2_not_has_been_sent;
  wire systolic__result_chans__3_2_valid_inv;
  wire __systolic__hor_chans__3_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_3_valid_load_en;
  wire __systolic__vert_chans__4_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_2_valid_load_en;
  wire __systolic__result_chans__3_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_2_valid_load_en;
  wire systolic__hor_chans__3_3_load_en;
  wire systolic__vert_chans__4_2_load_en;
  wire systolic__result_chans__3_2_load_en;
  wire __systolic__hor_chans__3_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_2_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_5234;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__3_2_valid_inv;
  wire systolic__vert_chans__3_2_valid_inv;
  wire and_5274;
  wire and_5275;
  wire [31:0] prod;
  wire systolic__hor_chans__3_2_valid_load_en;
  wire systolic__vert_chans__3_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5276;
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
  wire or_8111;
  wire [31:0] one_hot_sel_5277;
  wire or_5278;
  wire [1:0] one_hot_sel_5283;
  wire __systolic__hor_chans__3_3_not_stage_load;
  wire __systolic__hor_chans__3_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_2_not_stage_load;
  wire __systolic__result_chans__3_2_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__3_3_not_has_been_sent = ~__systolic__hor_chans__3_3_has_been_sent_reg;
  assign systolic__hor_chans__3_3_valid_inv = ~__systolic__hor_chans__3_3_valid_reg;
  assign __systolic__vert_chans__4_2_not_has_been_sent = ~__systolic__vert_chans__4_2_has_been_sent_reg;
  assign systolic__vert_chans__4_2_valid_inv = ~__systolic__vert_chans__4_2_valid_reg;
  assign __systolic__result_chans__3_2_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__3_2_not_has_been_sent = ~__systolic__result_chans__3_2_has_been_sent_reg;
  assign systolic__result_chans__3_2_valid_inv = ~__systolic__result_chans__3_2_valid_reg;
  assign __systolic__hor_chans__3_3_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__3_3_not_has_been_sent;
  assign systolic__hor_chans__3_3_valid_load_en = systolic__hor_chans__3_3_rdy | systolic__hor_chans__3_3_valid_inv;
  assign __systolic__vert_chans__4_2_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__4_2_not_has_been_sent;
  assign systolic__vert_chans__4_2_valid_load_en = systolic__vert_chans__4_2_rdy | systolic__vert_chans__4_2_valid_inv;
  assign __systolic__result_chans__3_2_valid_and_not_has_been_sent = __systolic__result_chans__3_2_vld_buf & __systolic__result_chans__3_2_not_has_been_sent;
  assign systolic__result_chans__3_2_valid_load_en = systolic__result_chans__3_2_rdy | systolic__result_chans__3_2_valid_inv;
  assign systolic__hor_chans__3_3_load_en = __systolic__hor_chans__3_3_valid_and_not_has_been_sent & systolic__hor_chans__3_3_valid_load_en;
  assign systolic__vert_chans__4_2_load_en = __systolic__vert_chans__4_2_valid_and_not_has_been_sent & systolic__vert_chans__4_2_valid_load_en;
  assign systolic__result_chans__3_2_load_en = __systolic__result_chans__3_2_valid_and_not_has_been_sent & systolic__result_chans__3_2_valid_load_en;
  assign __systolic__hor_chans__3_3_has_sent_or_is_ready = systolic__hor_chans__3_3_load_en | __systolic__hor_chans__3_3_has_been_sent_reg;
  assign __systolic__vert_chans__4_2_has_sent_or_is_ready = systolic__vert_chans__4_2_load_en | __systolic__vert_chans__4_2_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__3_3_has_sent_or_is_ready & __systolic__vert_chans__4_2_has_sent_or_is_ready & (~should_output | systolic__result_chans__3_2_load_en | __systolic__result_chans__3_2_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__3_2_valid_reg & __systolic__vert_chans__3_2_valid_reg;
  assign one_hot_5234 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__3_2_valid_inv = ~__systolic__hor_chans__3_2_valid_reg;
  assign systolic__vert_chans__3_2_valid_inv = ~__systolic__vert_chans__3_2_valid_reg;
  assign and_5274 = ~should_output & p1_stage_done;
  assign and_5275 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__3_2_valid_load_en = p0_load_en | systolic__hor_chans__3_2_valid_inv;
  assign systolic__vert_chans__3_2_valid_load_en = p0_load_en | systolic__vert_chans__3_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5234[1] & should_output == one_hot_5234[0];
  assign concat_5276 = {and_5274, and_5275};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_751_1_case_1 = 2'h0;
  assign unexpand_for_next_value_751_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__3_3_valid_and_ready_txfr = __systolic__hor_chans__3_3_valid_and_not_has_been_sent & systolic__hor_chans__3_3_load_en;
  assign __systolic__vert_chans__4_2_valid_and_ready_txfr = __systolic__vert_chans__4_2_valid_and_not_has_been_sent & systolic__vert_chans__4_2_load_en;
  assign __systolic__result_chans__3_2_valid_and_all_active_outputs_ready = __systolic__result_chans__3_2_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__3_2_valid_and_ready_txfr = __systolic__result_chans__3_2_valid_and_not_has_been_sent & systolic__result_chans__3_2_load_en;
  assign systolic__hor_chans__3_2_load_en = systolic__hor_chans__3_2_vld & systolic__hor_chans__3_2_valid_load_en;
  assign systolic__vert_chans__3_2_load_en = systolic__vert_chans__3_2_vld & systolic__vert_chans__3_2_valid_load_en;
  assign or_8111 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_5277 = 32'h0000_0000 & {32{concat_5276[0]}} | new_accum & {32{concat_5276[1]}};
  assign or_5278 = and_5274 | and_5275;
  assign one_hot_sel_5283 = unexpand_for_next_value_751_1_case_1 & {2{concat_5276[0]}} | unexpand_for_next_value_751_1_case_0 & {2{concat_5276[1]}};
  assign __systolic__hor_chans__3_3_not_stage_load = ~__systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_3_has_been_sent_reg_load_en = __systolic__hor_chans__3_3_valid_and_ready_txfr | __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_2_has_been_sent_reg_load_en = __systolic__vert_chans__4_2_valid_and_ready_txfr | __systolic__hor_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_2_not_stage_load = ~__systolic__result_chans__3_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_2_has_been_sent_reg_load_en = __systolic__result_chans__3_2_valid_and_ready_txfr | __systolic__result_chans__3_2_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__3_2_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__3_2_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_5278 ? one_hot_sel_5283 : ____state_1;
      ____state_0 <= or_5278 ? one_hot_sel_5277 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__3_3_has_been_sent_reg <= __systolic__hor_chans__3_3_has_been_sent_reg_load_en ? __systolic__hor_chans__3_3_not_stage_load : __systolic__hor_chans__3_3_has_been_sent_reg;
      __systolic__vert_chans__4_2_has_been_sent_reg <= __systolic__vert_chans__4_2_has_been_sent_reg_load_en ? __systolic__hor_chans__3_3_not_stage_load : __systolic__vert_chans__4_2_has_been_sent_reg;
      __systolic__result_chans__3_2_has_been_sent_reg <= __systolic__result_chans__3_2_has_been_sent_reg_load_en ? __systolic__result_chans__3_2_not_stage_load : __systolic__result_chans__3_2_has_been_sent_reg;
      __systolic__hor_chans__3_2_reg <= systolic__hor_chans__3_2_load_en ? systolic__hor_chans__3_2 : __systolic__hor_chans__3_2_reg;
      __systolic__hor_chans__3_2_valid_reg <= systolic__hor_chans__3_2_valid_load_en ? systolic__hor_chans__3_2_vld : __systolic__hor_chans__3_2_valid_reg;
      __systolic__vert_chans__3_2_reg <= systolic__vert_chans__3_2_load_en ? systolic__vert_chans__3_2 : __systolic__vert_chans__3_2_reg;
      __systolic__vert_chans__3_2_valid_reg <= systolic__vert_chans__3_2_valid_load_en ? systolic__vert_chans__3_2_vld : __systolic__vert_chans__3_2_valid_reg;
      __systolic__hor_chans__3_3_reg <= systolic__hor_chans__3_3_load_en ? p0_a : __systolic__hor_chans__3_3_reg;
      __systolic__hor_chans__3_3_valid_reg <= systolic__hor_chans__3_3_valid_load_en ? __systolic__hor_chans__3_3_valid_and_not_has_been_sent : __systolic__hor_chans__3_3_valid_reg;
      __systolic__vert_chans__4_2_reg <= systolic__vert_chans__4_2_load_en ? p0_b : __systolic__vert_chans__4_2_reg;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__3_4_not_has_been_sent;
  wire systolic__hor_chans__3_4_valid_inv;
  wire __systolic__vert_chans__4_3_not_has_been_sent;
  wire systolic__vert_chans__4_3_valid_inv;
  wire __systolic__result_chans__3_3_vld_buf;
  wire __systolic__result_chans__3_3_not_has_been_sent;
  wire systolic__result_chans__3_3_valid_inv;
  wire __systolic__hor_chans__3_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__3_4_valid_load_en;
  wire __systolic__vert_chans__4_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__4_3_valid_load_en;
  wire __systolic__result_chans__3_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__3_3_valid_load_en;
  wire systolic__hor_chans__3_4_load_en;
  wire systolic__vert_chans__4_3_load_en;
  wire systolic__result_chans__3_3_load_en;
  wire __systolic__hor_chans__3_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__4_3_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_5428;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__3_3_valid_inv;
  wire systolic__vert_chans__3_3_valid_inv;
  wire and_5468;
  wire and_5469;
  wire [31:0] prod;
  wire systolic__hor_chans__3_3_valid_load_en;
  wire systolic__vert_chans__3_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5470;
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
  wire or_8115;
  wire [31:0] one_hot_sel_5471;
  wire or_5472;
  wire [1:0] one_hot_sel_5477;
  wire __systolic__hor_chans__3_4_not_stage_load;
  wire __systolic__hor_chans__3_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__4_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__3_3_not_stage_load;
  wire __systolic__result_chans__3_3_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__3_4_not_has_been_sent = ~__systolic__hor_chans__3_4_has_been_sent_reg;
  assign systolic__hor_chans__3_4_valid_inv = ~__systolic__hor_chans__3_4_valid_reg;
  assign __systolic__vert_chans__4_3_not_has_been_sent = ~__systolic__vert_chans__4_3_has_been_sent_reg;
  assign systolic__vert_chans__4_3_valid_inv = ~__systolic__vert_chans__4_3_valid_reg;
  assign __systolic__result_chans__3_3_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__3_3_not_has_been_sent = ~__systolic__result_chans__3_3_has_been_sent_reg;
  assign systolic__result_chans__3_3_valid_inv = ~__systolic__result_chans__3_3_valid_reg;
  assign __systolic__hor_chans__3_4_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__3_4_not_has_been_sent;
  assign systolic__hor_chans__3_4_valid_load_en = systolic__hor_chans__3_4_rdy | systolic__hor_chans__3_4_valid_inv;
  assign __systolic__vert_chans__4_3_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__4_3_not_has_been_sent;
  assign systolic__vert_chans__4_3_valid_load_en = systolic__vert_chans__4_3_rdy | systolic__vert_chans__4_3_valid_inv;
  assign __systolic__result_chans__3_3_valid_and_not_has_been_sent = __systolic__result_chans__3_3_vld_buf & __systolic__result_chans__3_3_not_has_been_sent;
  assign systolic__result_chans__3_3_valid_load_en = systolic__result_chans__3_3_rdy | systolic__result_chans__3_3_valid_inv;
  assign systolic__hor_chans__3_4_load_en = __systolic__hor_chans__3_4_valid_and_not_has_been_sent & systolic__hor_chans__3_4_valid_load_en;
  assign systolic__vert_chans__4_3_load_en = __systolic__vert_chans__4_3_valid_and_not_has_been_sent & systolic__vert_chans__4_3_valid_load_en;
  assign systolic__result_chans__3_3_load_en = __systolic__result_chans__3_3_valid_and_not_has_been_sent & systolic__result_chans__3_3_valid_load_en;
  assign __systolic__hor_chans__3_4_has_sent_or_is_ready = systolic__hor_chans__3_4_load_en | __systolic__hor_chans__3_4_has_been_sent_reg;
  assign __systolic__vert_chans__4_3_has_sent_or_is_ready = systolic__vert_chans__4_3_load_en | __systolic__vert_chans__4_3_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__3_4_has_sent_or_is_ready & __systolic__vert_chans__4_3_has_sent_or_is_ready & (~should_output | systolic__result_chans__3_3_load_en | __systolic__result_chans__3_3_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__3_3_valid_reg & __systolic__vert_chans__3_3_valid_reg;
  assign one_hot_5428 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__3_3_valid_inv = ~__systolic__hor_chans__3_3_valid_reg;
  assign systolic__vert_chans__3_3_valid_inv = ~__systolic__vert_chans__3_3_valid_reg;
  assign and_5468 = ~should_output & p1_stage_done;
  assign and_5469 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__3_3_valid_load_en = p0_load_en | systolic__hor_chans__3_3_valid_inv;
  assign systolic__vert_chans__3_3_valid_load_en = p0_load_en | systolic__vert_chans__3_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5428[1] & should_output == one_hot_5428[0];
  assign concat_5470 = {and_5468, and_5469};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_781_1_case_1 = 2'h0;
  assign unexpand_for_next_value_781_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__3_4_valid_and_ready_txfr = __systolic__hor_chans__3_4_valid_and_not_has_been_sent & systolic__hor_chans__3_4_load_en;
  assign __systolic__vert_chans__4_3_valid_and_ready_txfr = __systolic__vert_chans__4_3_valid_and_not_has_been_sent & systolic__vert_chans__4_3_load_en;
  assign __systolic__result_chans__3_3_valid_and_all_active_outputs_ready = __systolic__result_chans__3_3_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__3_3_valid_and_ready_txfr = __systolic__result_chans__3_3_valid_and_not_has_been_sent & systolic__result_chans__3_3_load_en;
  assign systolic__hor_chans__3_3_load_en = systolic__hor_chans__3_3_vld & systolic__hor_chans__3_3_valid_load_en;
  assign systolic__vert_chans__3_3_load_en = systolic__vert_chans__3_3_vld & systolic__vert_chans__3_3_valid_load_en;
  assign or_8115 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_5471 = 32'h0000_0000 & {32{concat_5470[0]}} | new_accum & {32{concat_5470[1]}};
  assign or_5472 = and_5468 | and_5469;
  assign one_hot_sel_5477 = unexpand_for_next_value_781_1_case_1 & {2{concat_5470[0]}} | unexpand_for_next_value_781_1_case_0 & {2{concat_5470[1]}};
  assign __systolic__hor_chans__3_4_not_stage_load = ~__systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__3_4_has_been_sent_reg_load_en = __systolic__hor_chans__3_4_valid_and_ready_txfr | __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__4_3_has_been_sent_reg_load_en = __systolic__vert_chans__4_3_valid_and_ready_txfr | __systolic__hor_chans__3_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_3_not_stage_load = ~__systolic__result_chans__3_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__3_3_has_been_sent_reg_load_en = __systolic__result_chans__3_3_valid_and_ready_txfr | __systolic__result_chans__3_3_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__3_3_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__3_3_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_5472 ? one_hot_sel_5477 : ____state_1;
      ____state_0 <= or_5472 ? one_hot_sel_5471 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__3_4_has_been_sent_reg <= __systolic__hor_chans__3_4_has_been_sent_reg_load_en ? __systolic__hor_chans__3_4_not_stage_load : __systolic__hor_chans__3_4_has_been_sent_reg;
      __systolic__vert_chans__4_3_has_been_sent_reg <= __systolic__vert_chans__4_3_has_been_sent_reg_load_en ? __systolic__hor_chans__3_4_not_stage_load : __systolic__vert_chans__4_3_has_been_sent_reg;
      __systolic__result_chans__3_3_has_been_sent_reg <= __systolic__result_chans__3_3_has_been_sent_reg_load_en ? __systolic__result_chans__3_3_not_stage_load : __systolic__result_chans__3_3_has_been_sent_reg;
      __systolic__hor_chans__3_3_reg <= systolic__hor_chans__3_3_load_en ? systolic__hor_chans__3_3 : __systolic__hor_chans__3_3_reg;
      __systolic__hor_chans__3_3_valid_reg <= systolic__hor_chans__3_3_valid_load_en ? systolic__hor_chans__3_3_vld : __systolic__hor_chans__3_3_valid_reg;
      __systolic__vert_chans__3_3_reg <= systolic__vert_chans__3_3_load_en ? systolic__vert_chans__3_3 : __systolic__vert_chans__3_3_reg;
      __systolic__vert_chans__3_3_valid_reg <= systolic__vert_chans__3_3_valid_load_en ? systolic__vert_chans__3_3_vld : __systolic__vert_chans__3_3_valid_reg;
      __systolic__hor_chans__3_4_reg <= systolic__hor_chans__3_4_load_en ? p0_a : __systolic__hor_chans__3_4_reg;
      __systolic__hor_chans__3_4_valid_reg <= systolic__hor_chans__3_4_valid_load_en ? __systolic__hor_chans__3_4_valid_and_not_has_been_sent : __systolic__hor_chans__3_4_valid_reg;
      __systolic__vert_chans__4_3_reg <= systolic__vert_chans__4_3_load_en ? p0_b : __systolic__vert_chans__4_3_reg;
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
  reg [1:0] ____state_1;
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
  wire should_output;
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
  wire [2:0] one_hot_5622;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_1_valid_inv;
  wire systolic__vert_chans__0_1_valid_inv;
  wire and_5662;
  wire and_5663;
  wire [31:0] prod;
  wire systolic__hor_chans__0_1_valid_load_en;
  wire systolic__vert_chans__0_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5664;
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
  wire or_8119;
  wire [31:0] one_hot_sel_5665;
  wire or_5666;
  wire [1:0] one_hot_sel_5671;
  wire __systolic__hor_chans__0_2_not_stage_load;
  wire __systolic__hor_chans__0_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_1_not_stage_load;
  wire __systolic__result_chans__0_1_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__0_2_not_has_been_sent = ~__systolic__hor_chans__0_2_has_been_sent_reg;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign __systolic__vert_chans__1_1_not_has_been_sent = ~__systolic__vert_chans__1_1_has_been_sent_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign __systolic__result_chans__0_1_vld_buf = p0_valid & should_output;
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
  assign p1_all_active_outputs_ready = __systolic__hor_chans__0_2_has_sent_or_is_ready & __systolic__vert_chans__1_1_has_sent_or_is_ready & (~should_output | systolic__result_chans__0_1_load_en | __systolic__result_chans__0_1_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_1_valid_reg & __systolic__vert_chans__0_1_valid_reg;
  assign one_hot_5622 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_1_valid_inv = ~__systolic__hor_chans__0_1_valid_reg;
  assign systolic__vert_chans__0_1_valid_inv = ~__systolic__vert_chans__0_1_valid_reg;
  assign and_5662 = ~should_output & p1_stage_done;
  assign and_5663 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__0_1_valid_load_en = p0_load_en | systolic__hor_chans__0_1_valid_inv;
  assign systolic__vert_chans__0_1_valid_load_en = p0_load_en | systolic__vert_chans__0_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5622[1] & should_output == one_hot_5622[0];
  assign concat_5664 = {and_5662, and_5663};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_361_1_case_1 = 2'h0;
  assign unexpand_for_next_value_361_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_valid_and_ready_txfr = __systolic__hor_chans__0_2_valid_and_not_has_been_sent & systolic__hor_chans__0_2_load_en;
  assign __systolic__vert_chans__1_1_valid_and_ready_txfr = __systolic__vert_chans__1_1_valid_and_not_has_been_sent & systolic__vert_chans__1_1_load_en;
  assign __systolic__result_chans__0_1_valid_and_all_active_outputs_ready = __systolic__result_chans__0_1_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_valid_and_ready_txfr = __systolic__result_chans__0_1_valid_and_not_has_been_sent & systolic__result_chans__0_1_load_en;
  assign systolic__hor_chans__0_1_load_en = systolic__hor_chans__0_1_vld & systolic__hor_chans__0_1_valid_load_en;
  assign systolic__vert_chans__0_1_load_en = systolic__vert_chans__0_1_vld & systolic__vert_chans__0_1_valid_load_en;
  assign or_8119 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_5665 = 32'h0000_0000 & {32{concat_5664[0]}} | new_accum & {32{concat_5664[1]}};
  assign or_5666 = and_5662 | and_5663;
  assign one_hot_sel_5671 = unexpand_for_next_value_361_1_case_1 & {2{concat_5664[0]}} | unexpand_for_next_value_361_1_case_0 & {2{concat_5664[1]}};
  assign __systolic__hor_chans__0_2_not_stage_load = ~__systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_2_has_been_sent_reg_load_en = __systolic__hor_chans__0_2_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_1_has_been_sent_reg_load_en = __systolic__vert_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_not_stage_load = ~__systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_1_has_been_sent_reg_load_en = __systolic__result_chans__0_1_valid_and_ready_txfr | __systolic__result_chans__0_1_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_1_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__0_1_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_5666 ? one_hot_sel_5671 : ____state_1;
      ____state_0 <= or_5666 ? one_hot_sel_5665 : ____state_0;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__0_3_not_has_been_sent;
  wire systolic__hor_chans__0_3_valid_inv;
  wire __systolic__vert_chans__1_2_not_has_been_sent;
  wire systolic__vert_chans__1_2_valid_inv;
  wire __systolic__result_chans__0_2_vld_buf;
  wire __systolic__result_chans__0_2_not_has_been_sent;
  wire systolic__result_chans__0_2_valid_inv;
  wire __systolic__hor_chans__0_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_3_valid_load_en;
  wire __systolic__vert_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_2_valid_load_en;
  wire __systolic__result_chans__0_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_2_valid_load_en;
  wire systolic__hor_chans__0_3_load_en;
  wire systolic__vert_chans__1_2_load_en;
  wire systolic__result_chans__0_2_load_en;
  wire __systolic__hor_chans__0_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_2_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_5816;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_2_valid_inv;
  wire systolic__vert_chans__0_2_valid_inv;
  wire and_5856;
  wire and_5857;
  wire [31:0] prod;
  wire systolic__hor_chans__0_2_valid_load_en;
  wire systolic__vert_chans__0_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_5858;
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
  wire or_8123;
  wire [31:0] one_hot_sel_5859;
  wire or_5860;
  wire [1:0] one_hot_sel_5865;
  wire __systolic__hor_chans__0_3_not_stage_load;
  wire __systolic__hor_chans__0_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_2_not_stage_load;
  wire __systolic__result_chans__0_2_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__0_3_not_has_been_sent = ~__systolic__hor_chans__0_3_has_been_sent_reg;
  assign systolic__hor_chans__0_3_valid_inv = ~__systolic__hor_chans__0_3_valid_reg;
  assign __systolic__vert_chans__1_2_not_has_been_sent = ~__systolic__vert_chans__1_2_has_been_sent_reg;
  assign systolic__vert_chans__1_2_valid_inv = ~__systolic__vert_chans__1_2_valid_reg;
  assign __systolic__result_chans__0_2_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__0_2_not_has_been_sent = ~__systolic__result_chans__0_2_has_been_sent_reg;
  assign systolic__result_chans__0_2_valid_inv = ~__systolic__result_chans__0_2_valid_reg;
  assign __systolic__hor_chans__0_3_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__0_3_not_has_been_sent;
  assign systolic__hor_chans__0_3_valid_load_en = systolic__hor_chans__0_3_rdy | systolic__hor_chans__0_3_valid_inv;
  assign __systolic__vert_chans__1_2_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__1_2_not_has_been_sent;
  assign systolic__vert_chans__1_2_valid_load_en = systolic__vert_chans__1_2_rdy | systolic__vert_chans__1_2_valid_inv;
  assign __systolic__result_chans__0_2_valid_and_not_has_been_sent = __systolic__result_chans__0_2_vld_buf & __systolic__result_chans__0_2_not_has_been_sent;
  assign systolic__result_chans__0_2_valid_load_en = systolic__result_chans__0_2_rdy | systolic__result_chans__0_2_valid_inv;
  assign systolic__hor_chans__0_3_load_en = __systolic__hor_chans__0_3_valid_and_not_has_been_sent & systolic__hor_chans__0_3_valid_load_en;
  assign systolic__vert_chans__1_2_load_en = __systolic__vert_chans__1_2_valid_and_not_has_been_sent & systolic__vert_chans__1_2_valid_load_en;
  assign systolic__result_chans__0_2_load_en = __systolic__result_chans__0_2_valid_and_not_has_been_sent & systolic__result_chans__0_2_valid_load_en;
  assign __systolic__hor_chans__0_3_has_sent_or_is_ready = systolic__hor_chans__0_3_load_en | __systolic__hor_chans__0_3_has_been_sent_reg;
  assign __systolic__vert_chans__1_2_has_sent_or_is_ready = systolic__vert_chans__1_2_load_en | __systolic__vert_chans__1_2_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__0_3_has_sent_or_is_ready & __systolic__vert_chans__1_2_has_sent_or_is_ready & (~should_output | systolic__result_chans__0_2_load_en | __systolic__result_chans__0_2_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_2_valid_reg & __systolic__vert_chans__0_2_valid_reg;
  assign one_hot_5816 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_2_valid_inv = ~__systolic__hor_chans__0_2_valid_reg;
  assign systolic__vert_chans__0_2_valid_inv = ~__systolic__vert_chans__0_2_valid_reg;
  assign and_5856 = ~should_output & p1_stage_done;
  assign and_5857 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__0_2_valid_load_en = p0_load_en | systolic__hor_chans__0_2_valid_inv;
  assign systolic__vert_chans__0_2_valid_load_en = p0_load_en | systolic__vert_chans__0_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_5816[1] & should_output == one_hot_5816[0];
  assign concat_5858 = {and_5856, and_5857};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_391_1_case_1 = 2'h0;
  assign unexpand_for_next_value_391_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__0_3_valid_and_ready_txfr = __systolic__hor_chans__0_3_valid_and_not_has_been_sent & systolic__hor_chans__0_3_load_en;
  assign __systolic__vert_chans__1_2_valid_and_ready_txfr = __systolic__vert_chans__1_2_valid_and_not_has_been_sent & systolic__vert_chans__1_2_load_en;
  assign __systolic__result_chans__0_2_valid_and_all_active_outputs_ready = __systolic__result_chans__0_2_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__0_2_valid_and_ready_txfr = __systolic__result_chans__0_2_valid_and_not_has_been_sent & systolic__result_chans__0_2_load_en;
  assign systolic__hor_chans__0_2_load_en = systolic__hor_chans__0_2_vld & systolic__hor_chans__0_2_valid_load_en;
  assign systolic__vert_chans__0_2_load_en = systolic__vert_chans__0_2_vld & systolic__vert_chans__0_2_valid_load_en;
  assign or_8123 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_5859 = 32'h0000_0000 & {32{concat_5858[0]}} | new_accum & {32{concat_5858[1]}};
  assign or_5860 = and_5856 | and_5857;
  assign one_hot_sel_5865 = unexpand_for_next_value_391_1_case_1 & {2{concat_5858[0]}} | unexpand_for_next_value_391_1_case_0 & {2{concat_5858[1]}};
  assign __systolic__hor_chans__0_3_not_stage_load = ~__systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_3_has_been_sent_reg_load_en = __systolic__hor_chans__0_3_valid_and_ready_txfr | __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_2_has_been_sent_reg_load_en = __systolic__vert_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_2_not_stage_load = ~__systolic__result_chans__0_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_2_has_been_sent_reg_load_en = __systolic__result_chans__0_2_valid_and_ready_txfr | __systolic__result_chans__0_2_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_2_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__0_2_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_5860 ? one_hot_sel_5865 : ____state_1;
      ____state_0 <= or_5860 ? one_hot_sel_5859 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__0_3_has_been_sent_reg <= __systolic__hor_chans__0_3_has_been_sent_reg_load_en ? __systolic__hor_chans__0_3_not_stage_load : __systolic__hor_chans__0_3_has_been_sent_reg;
      __systolic__vert_chans__1_2_has_been_sent_reg <= __systolic__vert_chans__1_2_has_been_sent_reg_load_en ? __systolic__hor_chans__0_3_not_stage_load : __systolic__vert_chans__1_2_has_been_sent_reg;
      __systolic__result_chans__0_2_has_been_sent_reg <= __systolic__result_chans__0_2_has_been_sent_reg_load_en ? __systolic__result_chans__0_2_not_stage_load : __systolic__result_chans__0_2_has_been_sent_reg;
      __systolic__hor_chans__0_2_reg <= systolic__hor_chans__0_2_load_en ? systolic__hor_chans__0_2 : __systolic__hor_chans__0_2_reg;
      __systolic__hor_chans__0_2_valid_reg <= systolic__hor_chans__0_2_valid_load_en ? systolic__hor_chans__0_2_vld : __systolic__hor_chans__0_2_valid_reg;
      __systolic__vert_chans__0_2_reg <= systolic__vert_chans__0_2_load_en ? systolic__vert_chans__0_2 : __systolic__vert_chans__0_2_reg;
      __systolic__vert_chans__0_2_valid_reg <= systolic__vert_chans__0_2_valid_load_en ? systolic__vert_chans__0_2_vld : __systolic__vert_chans__0_2_valid_reg;
      __systolic__hor_chans__0_3_reg <= systolic__hor_chans__0_3_load_en ? p0_a : __systolic__hor_chans__0_3_reg;
      __systolic__hor_chans__0_3_valid_reg <= systolic__hor_chans__0_3_valid_load_en ? __systolic__hor_chans__0_3_valid_and_not_has_been_sent : __systolic__hor_chans__0_3_valid_reg;
      __systolic__vert_chans__1_2_reg <= systolic__vert_chans__1_2_load_en ? p0_b : __systolic__vert_chans__1_2_reg;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__0_4_not_has_been_sent;
  wire systolic__hor_chans__0_4_valid_inv;
  wire __systolic__vert_chans__1_3_not_has_been_sent;
  wire systolic__vert_chans__1_3_valid_inv;
  wire __systolic__result_chans__0_3_vld_buf;
  wire __systolic__result_chans__0_3_not_has_been_sent;
  wire systolic__result_chans__0_3_valid_inv;
  wire __systolic__hor_chans__0_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__0_4_valid_load_en;
  wire __systolic__vert_chans__1_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__1_3_valid_load_en;
  wire __systolic__result_chans__0_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__0_3_valid_load_en;
  wire systolic__hor_chans__0_4_load_en;
  wire systolic__vert_chans__1_3_load_en;
  wire systolic__result_chans__0_3_load_en;
  wire __systolic__hor_chans__0_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__1_3_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_6010;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__0_3_valid_inv;
  wire systolic__vert_chans__0_3_valid_inv;
  wire and_6050;
  wire and_6051;
  wire [31:0] prod;
  wire systolic__hor_chans__0_3_valid_load_en;
  wire systolic__vert_chans__0_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6052;
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
  wire or_8127;
  wire [31:0] one_hot_sel_6053;
  wire or_6054;
  wire [1:0] one_hot_sel_6059;
  wire __systolic__hor_chans__0_4_not_stage_load;
  wire __systolic__hor_chans__0_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__1_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__0_3_not_stage_load;
  wire __systolic__result_chans__0_3_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__0_4_not_has_been_sent = ~__systolic__hor_chans__0_4_has_been_sent_reg;
  assign systolic__hor_chans__0_4_valid_inv = ~__systolic__hor_chans__0_4_valid_reg;
  assign __systolic__vert_chans__1_3_not_has_been_sent = ~__systolic__vert_chans__1_3_has_been_sent_reg;
  assign systolic__vert_chans__1_3_valid_inv = ~__systolic__vert_chans__1_3_valid_reg;
  assign __systolic__result_chans__0_3_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__0_3_not_has_been_sent = ~__systolic__result_chans__0_3_has_been_sent_reg;
  assign systolic__result_chans__0_3_valid_inv = ~__systolic__result_chans__0_3_valid_reg;
  assign __systolic__hor_chans__0_4_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__0_4_not_has_been_sent;
  assign systolic__hor_chans__0_4_valid_load_en = systolic__hor_chans__0_4_rdy | systolic__hor_chans__0_4_valid_inv;
  assign __systolic__vert_chans__1_3_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__1_3_not_has_been_sent;
  assign systolic__vert_chans__1_3_valid_load_en = systolic__vert_chans__1_3_rdy | systolic__vert_chans__1_3_valid_inv;
  assign __systolic__result_chans__0_3_valid_and_not_has_been_sent = __systolic__result_chans__0_3_vld_buf & __systolic__result_chans__0_3_not_has_been_sent;
  assign systolic__result_chans__0_3_valid_load_en = systolic__result_chans__0_3_rdy | systolic__result_chans__0_3_valid_inv;
  assign systolic__hor_chans__0_4_load_en = __systolic__hor_chans__0_4_valid_and_not_has_been_sent & systolic__hor_chans__0_4_valid_load_en;
  assign systolic__vert_chans__1_3_load_en = __systolic__vert_chans__1_3_valid_and_not_has_been_sent & systolic__vert_chans__1_3_valid_load_en;
  assign systolic__result_chans__0_3_load_en = __systolic__result_chans__0_3_valid_and_not_has_been_sent & systolic__result_chans__0_3_valid_load_en;
  assign __systolic__hor_chans__0_4_has_sent_or_is_ready = systolic__hor_chans__0_4_load_en | __systolic__hor_chans__0_4_has_been_sent_reg;
  assign __systolic__vert_chans__1_3_has_sent_or_is_ready = systolic__vert_chans__1_3_load_en | __systolic__vert_chans__1_3_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__0_4_has_sent_or_is_ready & __systolic__vert_chans__1_3_has_sent_or_is_ready & (~should_output | systolic__result_chans__0_3_load_en | __systolic__result_chans__0_3_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__0_3_valid_reg & __systolic__vert_chans__0_3_valid_reg;
  assign one_hot_6010 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__0_3_valid_inv = ~__systolic__hor_chans__0_3_valid_reg;
  assign systolic__vert_chans__0_3_valid_inv = ~__systolic__vert_chans__0_3_valid_reg;
  assign and_6050 = ~should_output & p1_stage_done;
  assign and_6051 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__0_3_valid_load_en = p0_load_en | systolic__hor_chans__0_3_valid_inv;
  assign systolic__vert_chans__0_3_valid_load_en = p0_load_en | systolic__vert_chans__0_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6010[1] & should_output == one_hot_6010[0];
  assign concat_6052 = {and_6050, and_6051};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_421_1_case_1 = 2'h0;
  assign unexpand_for_next_value_421_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__0_4_valid_and_ready_txfr = __systolic__hor_chans__0_4_valid_and_not_has_been_sent & systolic__hor_chans__0_4_load_en;
  assign __systolic__vert_chans__1_3_valid_and_ready_txfr = __systolic__vert_chans__1_3_valid_and_not_has_been_sent & systolic__vert_chans__1_3_load_en;
  assign __systolic__result_chans__0_3_valid_and_all_active_outputs_ready = __systolic__result_chans__0_3_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__0_3_valid_and_ready_txfr = __systolic__result_chans__0_3_valid_and_not_has_been_sent & systolic__result_chans__0_3_load_en;
  assign systolic__hor_chans__0_3_load_en = systolic__hor_chans__0_3_vld & systolic__hor_chans__0_3_valid_load_en;
  assign systolic__vert_chans__0_3_load_en = systolic__vert_chans__0_3_vld & systolic__vert_chans__0_3_valid_load_en;
  assign or_8127 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_6053 = 32'h0000_0000 & {32{concat_6052[0]}} | new_accum & {32{concat_6052[1]}};
  assign or_6054 = and_6050 | and_6051;
  assign one_hot_sel_6059 = unexpand_for_next_value_421_1_case_1 & {2{concat_6052[0]}} | unexpand_for_next_value_421_1_case_0 & {2{concat_6052[1]}};
  assign __systolic__hor_chans__0_4_not_stage_load = ~__systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__0_4_has_been_sent_reg_load_en = __systolic__hor_chans__0_4_valid_and_ready_txfr | __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__1_3_has_been_sent_reg_load_en = __systolic__vert_chans__1_3_valid_and_ready_txfr | __systolic__hor_chans__0_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_3_not_stage_load = ~__systolic__result_chans__0_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__0_3_has_been_sent_reg_load_en = __systolic__result_chans__0_3_valid_and_ready_txfr | __systolic__result_chans__0_3_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__0_3_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__0_3_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_6054 ? one_hot_sel_6059 : ____state_1;
      ____state_0 <= or_6054 ? one_hot_sel_6053 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__0_4_has_been_sent_reg <= __systolic__hor_chans__0_4_has_been_sent_reg_load_en ? __systolic__hor_chans__0_4_not_stage_load : __systolic__hor_chans__0_4_has_been_sent_reg;
      __systolic__vert_chans__1_3_has_been_sent_reg <= __systolic__vert_chans__1_3_has_been_sent_reg_load_en ? __systolic__hor_chans__0_4_not_stage_load : __systolic__vert_chans__1_3_has_been_sent_reg;
      __systolic__result_chans__0_3_has_been_sent_reg <= __systolic__result_chans__0_3_has_been_sent_reg_load_en ? __systolic__result_chans__0_3_not_stage_load : __systolic__result_chans__0_3_has_been_sent_reg;
      __systolic__hor_chans__0_3_reg <= systolic__hor_chans__0_3_load_en ? systolic__hor_chans__0_3 : __systolic__hor_chans__0_3_reg;
      __systolic__hor_chans__0_3_valid_reg <= systolic__hor_chans__0_3_valid_load_en ? systolic__hor_chans__0_3_vld : __systolic__hor_chans__0_3_valid_reg;
      __systolic__vert_chans__0_3_reg <= systolic__vert_chans__0_3_load_en ? systolic__vert_chans__0_3 : __systolic__vert_chans__0_3_reg;
      __systolic__vert_chans__0_3_valid_reg <= systolic__vert_chans__0_3_valid_load_en ? systolic__vert_chans__0_3_vld : __systolic__vert_chans__0_3_valid_reg;
      __systolic__hor_chans__0_4_reg <= systolic__hor_chans__0_4_load_en ? p0_a : __systolic__hor_chans__0_4_reg;
      __systolic__hor_chans__0_4_valid_reg <= systolic__hor_chans__0_4_valid_load_en ? __systolic__hor_chans__0_4_valid_and_not_has_been_sent : __systolic__hor_chans__0_4_valid_reg;
      __systolic__vert_chans__1_3_reg <= systolic__vert_chans__1_3_load_en ? p0_b : __systolic__vert_chans__1_3_reg;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
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
  wire should_output;
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
  wire [2:0] one_hot_6204;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_0_valid_inv;
  wire systolic__vert_chans__1_0_valid_inv;
  wire and_6244;
  wire and_6245;
  wire [31:0] prod;
  wire systolic__hor_chans__1_0_valid_load_en;
  wire systolic__vert_chans__1_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6246;
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
  wire or_8131;
  wire [31:0] one_hot_sel_6247;
  wire or_6248;
  wire [1:0] one_hot_sel_6253;
  wire __systolic__hor_chans__1_1_not_stage_load;
  wire __systolic__hor_chans__1_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_0_not_stage_load;
  wire __systolic__result_chans__1_0_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__1_1_not_has_been_sent = ~__systolic__hor_chans__1_1_has_been_sent_reg;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign __systolic__vert_chans__2_0_not_has_been_sent = ~__systolic__vert_chans__2_0_has_been_sent_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign __systolic__result_chans__1_0_vld_buf = p0_valid & should_output;
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
  assign p1_all_active_outputs_ready = __systolic__hor_chans__1_1_has_sent_or_is_ready & __systolic__vert_chans__2_0_has_sent_or_is_ready & (~should_output | systolic__result_chans__1_0_load_en | __systolic__result_chans__1_0_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_0_valid_reg & __systolic__vert_chans__1_0_valid_reg;
  assign one_hot_6204 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_0_valid_inv = ~__systolic__hor_chans__1_0_valid_reg;
  assign systolic__vert_chans__1_0_valid_inv = ~__systolic__vert_chans__1_0_valid_reg;
  assign and_6244 = ~should_output & p1_stage_done;
  assign and_6245 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__1_0_valid_load_en = p0_load_en | systolic__hor_chans__1_0_valid_inv;
  assign systolic__vert_chans__1_0_valid_load_en = p0_load_en | systolic__vert_chans__1_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6204[1] & should_output == one_hot_6204[0];
  assign concat_6246 = {and_6244, and_6245};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_451_1_case_1 = 2'h0;
  assign unexpand_for_next_value_451_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_valid_and_ready_txfr = __systolic__hor_chans__1_1_valid_and_not_has_been_sent & systolic__hor_chans__1_1_load_en;
  assign __systolic__vert_chans__2_0_valid_and_ready_txfr = __systolic__vert_chans__2_0_valid_and_not_has_been_sent & systolic__vert_chans__2_0_load_en;
  assign __systolic__result_chans__1_0_valid_and_all_active_outputs_ready = __systolic__result_chans__1_0_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_valid_and_ready_txfr = __systolic__result_chans__1_0_valid_and_not_has_been_sent & systolic__result_chans__1_0_load_en;
  assign systolic__hor_chans__1_0_load_en = systolic__hor_chans__1_0_vld & systolic__hor_chans__1_0_valid_load_en;
  assign systolic__vert_chans__1_0_load_en = systolic__vert_chans__1_0_vld & systolic__vert_chans__1_0_valid_load_en;
  assign or_8131 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_6247 = 32'h0000_0000 & {32{concat_6246[0]}} | new_accum & {32{concat_6246[1]}};
  assign or_6248 = and_6244 | and_6245;
  assign one_hot_sel_6253 = unexpand_for_next_value_451_1_case_1 & {2{concat_6246[0]}} | unexpand_for_next_value_451_1_case_0 & {2{concat_6246[1]}};
  assign __systolic__hor_chans__1_1_not_stage_load = ~__systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_1_has_been_sent_reg_load_en = __systolic__hor_chans__1_1_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_0_has_been_sent_reg_load_en = __systolic__vert_chans__2_0_valid_and_ready_txfr | __systolic__hor_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_not_stage_load = ~__systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_0_has_been_sent_reg_load_en = __systolic__result_chans__1_0_valid_and_ready_txfr | __systolic__result_chans__1_0_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_0_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__1_0_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_6248 ? one_hot_sel_6253 : ____state_1;
      ____state_0 <= or_6248 ? one_hot_sel_6247 : ____state_0;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
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
  wire should_output;
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
  wire [2:0] one_hot_6398;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_1_valid_inv;
  wire systolic__vert_chans__1_1_valid_inv;
  wire and_6438;
  wire and_6439;
  wire [31:0] prod;
  wire systolic__hor_chans__1_1_valid_load_en;
  wire systolic__vert_chans__1_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6440;
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
  wire or_8135;
  wire [31:0] one_hot_sel_6441;
  wire or_6442;
  wire [1:0] one_hot_sel_6447;
  wire __systolic__hor_chans__1_2_not_stage_load;
  wire __systolic__hor_chans__1_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_1_not_stage_load;
  wire __systolic__result_chans__1_1_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__1_2_not_has_been_sent = ~__systolic__hor_chans__1_2_has_been_sent_reg;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign __systolic__vert_chans__2_1_not_has_been_sent = ~__systolic__vert_chans__2_1_has_been_sent_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign __systolic__result_chans__1_1_vld_buf = p0_valid & should_output;
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
  assign p1_all_active_outputs_ready = __systolic__hor_chans__1_2_has_sent_or_is_ready & __systolic__vert_chans__2_1_has_sent_or_is_ready & (~should_output | systolic__result_chans__1_1_load_en | __systolic__result_chans__1_1_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_1_valid_reg & __systolic__vert_chans__1_1_valid_reg;
  assign one_hot_6398 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_1_valid_inv = ~__systolic__hor_chans__1_1_valid_reg;
  assign systolic__vert_chans__1_1_valid_inv = ~__systolic__vert_chans__1_1_valid_reg;
  assign and_6438 = ~should_output & p1_stage_done;
  assign and_6439 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__1_1_valid_load_en = p0_load_en | systolic__hor_chans__1_1_valid_inv;
  assign systolic__vert_chans__1_1_valid_load_en = p0_load_en | systolic__vert_chans__1_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6398[1] & should_output == one_hot_6398[0];
  assign concat_6440 = {and_6438, and_6439};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_481_1_case_1 = 2'h0;
  assign unexpand_for_next_value_481_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_valid_and_ready_txfr = __systolic__hor_chans__1_2_valid_and_not_has_been_sent & systolic__hor_chans__1_2_load_en;
  assign __systolic__vert_chans__2_1_valid_and_ready_txfr = __systolic__vert_chans__2_1_valid_and_not_has_been_sent & systolic__vert_chans__2_1_load_en;
  assign __systolic__result_chans__1_1_valid_and_all_active_outputs_ready = __systolic__result_chans__1_1_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_valid_and_ready_txfr = __systolic__result_chans__1_1_valid_and_not_has_been_sent & systolic__result_chans__1_1_load_en;
  assign systolic__hor_chans__1_1_load_en = systolic__hor_chans__1_1_vld & systolic__hor_chans__1_1_valid_load_en;
  assign systolic__vert_chans__1_1_load_en = systolic__vert_chans__1_1_vld & systolic__vert_chans__1_1_valid_load_en;
  assign or_8135 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_6441 = 32'h0000_0000 & {32{concat_6440[0]}} | new_accum & {32{concat_6440[1]}};
  assign or_6442 = and_6438 | and_6439;
  assign one_hot_sel_6447 = unexpand_for_next_value_481_1_case_1 & {2{concat_6440[0]}} | unexpand_for_next_value_481_1_case_0 & {2{concat_6440[1]}};
  assign __systolic__hor_chans__1_2_not_stage_load = ~__systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_2_has_been_sent_reg_load_en = __systolic__hor_chans__1_2_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_1_has_been_sent_reg_load_en = __systolic__vert_chans__2_1_valid_and_ready_txfr | __systolic__hor_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_not_stage_load = ~__systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_1_has_been_sent_reg_load_en = __systolic__result_chans__1_1_valid_and_ready_txfr | __systolic__result_chans__1_1_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_1_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__1_1_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
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
      ____state_1 <= or_6442 ? one_hot_sel_6447 : ____state_1;
      ____state_0 <= or_6442 ? one_hot_sel_6441 : ____state_0;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__1_3_not_has_been_sent;
  wire systolic__hor_chans__1_3_valid_inv;
  wire __systolic__vert_chans__2_2_not_has_been_sent;
  wire systolic__vert_chans__2_2_valid_inv;
  wire __systolic__result_chans__1_2_vld_buf;
  wire __systolic__result_chans__1_2_not_has_been_sent;
  wire systolic__result_chans__1_2_valid_inv;
  wire __systolic__hor_chans__1_3_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_3_valid_load_en;
  wire __systolic__vert_chans__2_2_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_2_valid_load_en;
  wire __systolic__result_chans__1_2_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_2_valid_load_en;
  wire systolic__hor_chans__1_3_load_en;
  wire systolic__vert_chans__2_2_load_en;
  wire systolic__result_chans__1_2_load_en;
  wire __systolic__hor_chans__1_3_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_2_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_6592;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_2_valid_inv;
  wire systolic__vert_chans__1_2_valid_inv;
  wire and_6632;
  wire and_6633;
  wire [31:0] prod;
  wire systolic__hor_chans__1_2_valid_load_en;
  wire systolic__vert_chans__1_2_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6634;
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
  wire or_8139;
  wire [31:0] one_hot_sel_6635;
  wire or_6636;
  wire [1:0] one_hot_sel_6641;
  wire __systolic__hor_chans__1_3_not_stage_load;
  wire __systolic__hor_chans__1_3_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_2_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_2_not_stage_load;
  wire __systolic__result_chans__1_2_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__1_3_not_has_been_sent = ~__systolic__hor_chans__1_3_has_been_sent_reg;
  assign systolic__hor_chans__1_3_valid_inv = ~__systolic__hor_chans__1_3_valid_reg;
  assign __systolic__vert_chans__2_2_not_has_been_sent = ~__systolic__vert_chans__2_2_has_been_sent_reg;
  assign systolic__vert_chans__2_2_valid_inv = ~__systolic__vert_chans__2_2_valid_reg;
  assign __systolic__result_chans__1_2_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__1_2_not_has_been_sent = ~__systolic__result_chans__1_2_has_been_sent_reg;
  assign systolic__result_chans__1_2_valid_inv = ~__systolic__result_chans__1_2_valid_reg;
  assign __systolic__hor_chans__1_3_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__1_3_not_has_been_sent;
  assign systolic__hor_chans__1_3_valid_load_en = systolic__hor_chans__1_3_rdy | systolic__hor_chans__1_3_valid_inv;
  assign __systolic__vert_chans__2_2_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__2_2_not_has_been_sent;
  assign systolic__vert_chans__2_2_valid_load_en = systolic__vert_chans__2_2_rdy | systolic__vert_chans__2_2_valid_inv;
  assign __systolic__result_chans__1_2_valid_and_not_has_been_sent = __systolic__result_chans__1_2_vld_buf & __systolic__result_chans__1_2_not_has_been_sent;
  assign systolic__result_chans__1_2_valid_load_en = systolic__result_chans__1_2_rdy | systolic__result_chans__1_2_valid_inv;
  assign systolic__hor_chans__1_3_load_en = __systolic__hor_chans__1_3_valid_and_not_has_been_sent & systolic__hor_chans__1_3_valid_load_en;
  assign systolic__vert_chans__2_2_load_en = __systolic__vert_chans__2_2_valid_and_not_has_been_sent & systolic__vert_chans__2_2_valid_load_en;
  assign systolic__result_chans__1_2_load_en = __systolic__result_chans__1_2_valid_and_not_has_been_sent & systolic__result_chans__1_2_valid_load_en;
  assign __systolic__hor_chans__1_3_has_sent_or_is_ready = systolic__hor_chans__1_3_load_en | __systolic__hor_chans__1_3_has_been_sent_reg;
  assign __systolic__vert_chans__2_2_has_sent_or_is_ready = systolic__vert_chans__2_2_load_en | __systolic__vert_chans__2_2_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__1_3_has_sent_or_is_ready & __systolic__vert_chans__2_2_has_sent_or_is_ready & (~should_output | systolic__result_chans__1_2_load_en | __systolic__result_chans__1_2_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_2_valid_reg & __systolic__vert_chans__1_2_valid_reg;
  assign one_hot_6592 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_2_valid_inv = ~__systolic__hor_chans__1_2_valid_reg;
  assign systolic__vert_chans__1_2_valid_inv = ~__systolic__vert_chans__1_2_valid_reg;
  assign and_6632 = ~should_output & p1_stage_done;
  assign and_6633 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__1_2_valid_load_en = p0_load_en | systolic__hor_chans__1_2_valid_inv;
  assign systolic__vert_chans__1_2_valid_load_en = p0_load_en | systolic__vert_chans__1_2_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6592[1] & should_output == one_hot_6592[0];
  assign concat_6634 = {and_6632, and_6633};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_511_1_case_1 = 2'h0;
  assign unexpand_for_next_value_511_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__1_3_valid_and_ready_txfr = __systolic__hor_chans__1_3_valid_and_not_has_been_sent & systolic__hor_chans__1_3_load_en;
  assign __systolic__vert_chans__2_2_valid_and_ready_txfr = __systolic__vert_chans__2_2_valid_and_not_has_been_sent & systolic__vert_chans__2_2_load_en;
  assign __systolic__result_chans__1_2_valid_and_all_active_outputs_ready = __systolic__result_chans__1_2_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__1_2_valid_and_ready_txfr = __systolic__result_chans__1_2_valid_and_not_has_been_sent & systolic__result_chans__1_2_load_en;
  assign systolic__hor_chans__1_2_load_en = systolic__hor_chans__1_2_vld & systolic__hor_chans__1_2_valid_load_en;
  assign systolic__vert_chans__1_2_load_en = systolic__vert_chans__1_2_vld & systolic__vert_chans__1_2_valid_load_en;
  assign or_8139 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_6635 = 32'h0000_0000 & {32{concat_6634[0]}} | new_accum & {32{concat_6634[1]}};
  assign or_6636 = and_6632 | and_6633;
  assign one_hot_sel_6641 = unexpand_for_next_value_511_1_case_1 & {2{concat_6634[0]}} | unexpand_for_next_value_511_1_case_0 & {2{concat_6634[1]}};
  assign __systolic__hor_chans__1_3_not_stage_load = ~__systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_3_has_been_sent_reg_load_en = __systolic__hor_chans__1_3_valid_and_ready_txfr | __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_2_has_been_sent_reg_load_en = __systolic__vert_chans__2_2_valid_and_ready_txfr | __systolic__hor_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_2_not_stage_load = ~__systolic__result_chans__1_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_2_has_been_sent_reg_load_en = __systolic__result_chans__1_2_valid_and_ready_txfr | __systolic__result_chans__1_2_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_2_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__1_2_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_6636 ? one_hot_sel_6641 : ____state_1;
      ____state_0 <= or_6636 ? one_hot_sel_6635 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__1_3_has_been_sent_reg <= __systolic__hor_chans__1_3_has_been_sent_reg_load_en ? __systolic__hor_chans__1_3_not_stage_load : __systolic__hor_chans__1_3_has_been_sent_reg;
      __systolic__vert_chans__2_2_has_been_sent_reg <= __systolic__vert_chans__2_2_has_been_sent_reg_load_en ? __systolic__hor_chans__1_3_not_stage_load : __systolic__vert_chans__2_2_has_been_sent_reg;
      __systolic__result_chans__1_2_has_been_sent_reg <= __systolic__result_chans__1_2_has_been_sent_reg_load_en ? __systolic__result_chans__1_2_not_stage_load : __systolic__result_chans__1_2_has_been_sent_reg;
      __systolic__hor_chans__1_2_reg <= systolic__hor_chans__1_2_load_en ? systolic__hor_chans__1_2 : __systolic__hor_chans__1_2_reg;
      __systolic__hor_chans__1_2_valid_reg <= systolic__hor_chans__1_2_valid_load_en ? systolic__hor_chans__1_2_vld : __systolic__hor_chans__1_2_valid_reg;
      __systolic__vert_chans__1_2_reg <= systolic__vert_chans__1_2_load_en ? systolic__vert_chans__1_2 : __systolic__vert_chans__1_2_reg;
      __systolic__vert_chans__1_2_valid_reg <= systolic__vert_chans__1_2_valid_load_en ? systolic__vert_chans__1_2_vld : __systolic__vert_chans__1_2_valid_reg;
      __systolic__hor_chans__1_3_reg <= systolic__hor_chans__1_3_load_en ? p0_a : __systolic__hor_chans__1_3_reg;
      __systolic__hor_chans__1_3_valid_reg <= systolic__hor_chans__1_3_valid_load_en ? __systolic__hor_chans__1_3_valid_and_not_has_been_sent : __systolic__hor_chans__1_3_valid_reg;
      __systolic__vert_chans__2_2_reg <= systolic__vert_chans__2_2_load_en ? p0_b : __systolic__vert_chans__2_2_reg;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__1_4_not_has_been_sent;
  wire systolic__hor_chans__1_4_valid_inv;
  wire __systolic__vert_chans__2_3_not_has_been_sent;
  wire systolic__vert_chans__2_3_valid_inv;
  wire __systolic__result_chans__1_3_vld_buf;
  wire __systolic__result_chans__1_3_not_has_been_sent;
  wire systolic__result_chans__1_3_valid_inv;
  wire __systolic__hor_chans__1_4_valid_and_not_has_been_sent;
  wire systolic__hor_chans__1_4_valid_load_en;
  wire __systolic__vert_chans__2_3_valid_and_not_has_been_sent;
  wire systolic__vert_chans__2_3_valid_load_en;
  wire __systolic__result_chans__1_3_valid_and_not_has_been_sent;
  wire systolic__result_chans__1_3_valid_load_en;
  wire systolic__hor_chans__1_4_load_en;
  wire systolic__vert_chans__2_3_load_en;
  wire systolic__result_chans__1_3_load_en;
  wire __systolic__hor_chans__1_4_has_sent_or_is_ready;
  wire __systolic__vert_chans__2_3_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_6786;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__1_3_valid_inv;
  wire systolic__vert_chans__1_3_valid_inv;
  wire and_6826;
  wire and_6827;
  wire [31:0] prod;
  wire systolic__hor_chans__1_3_valid_load_en;
  wire systolic__vert_chans__1_3_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_6828;
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
  wire or_8143;
  wire [31:0] one_hot_sel_6829;
  wire or_6830;
  wire [1:0] one_hot_sel_6835;
  wire __systolic__hor_chans__1_4_not_stage_load;
  wire __systolic__hor_chans__1_4_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__2_3_has_been_sent_reg_load_en;
  wire __systolic__result_chans__1_3_not_stage_load;
  wire __systolic__result_chans__1_3_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__1_4_not_has_been_sent = ~__systolic__hor_chans__1_4_has_been_sent_reg;
  assign systolic__hor_chans__1_4_valid_inv = ~__systolic__hor_chans__1_4_valid_reg;
  assign __systolic__vert_chans__2_3_not_has_been_sent = ~__systolic__vert_chans__2_3_has_been_sent_reg;
  assign systolic__vert_chans__2_3_valid_inv = ~__systolic__vert_chans__2_3_valid_reg;
  assign __systolic__result_chans__1_3_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__1_3_not_has_been_sent = ~__systolic__result_chans__1_3_has_been_sent_reg;
  assign systolic__result_chans__1_3_valid_inv = ~__systolic__result_chans__1_3_valid_reg;
  assign __systolic__hor_chans__1_4_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__1_4_not_has_been_sent;
  assign systolic__hor_chans__1_4_valid_load_en = systolic__hor_chans__1_4_rdy | systolic__hor_chans__1_4_valid_inv;
  assign __systolic__vert_chans__2_3_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__2_3_not_has_been_sent;
  assign systolic__vert_chans__2_3_valid_load_en = systolic__vert_chans__2_3_rdy | systolic__vert_chans__2_3_valid_inv;
  assign __systolic__result_chans__1_3_valid_and_not_has_been_sent = __systolic__result_chans__1_3_vld_buf & __systolic__result_chans__1_3_not_has_been_sent;
  assign systolic__result_chans__1_3_valid_load_en = systolic__result_chans__1_3_rdy | systolic__result_chans__1_3_valid_inv;
  assign systolic__hor_chans__1_4_load_en = __systolic__hor_chans__1_4_valid_and_not_has_been_sent & systolic__hor_chans__1_4_valid_load_en;
  assign systolic__vert_chans__2_3_load_en = __systolic__vert_chans__2_3_valid_and_not_has_been_sent & systolic__vert_chans__2_3_valid_load_en;
  assign systolic__result_chans__1_3_load_en = __systolic__result_chans__1_3_valid_and_not_has_been_sent & systolic__result_chans__1_3_valid_load_en;
  assign __systolic__hor_chans__1_4_has_sent_or_is_ready = systolic__hor_chans__1_4_load_en | __systolic__hor_chans__1_4_has_been_sent_reg;
  assign __systolic__vert_chans__2_3_has_sent_or_is_ready = systolic__vert_chans__2_3_load_en | __systolic__vert_chans__2_3_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__1_4_has_sent_or_is_ready & __systolic__vert_chans__2_3_has_sent_or_is_ready & (~should_output | systolic__result_chans__1_3_load_en | __systolic__result_chans__1_3_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__1_3_valid_reg & __systolic__vert_chans__1_3_valid_reg;
  assign one_hot_6786 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__1_3_valid_inv = ~__systolic__hor_chans__1_3_valid_reg;
  assign systolic__vert_chans__1_3_valid_inv = ~__systolic__vert_chans__1_3_valid_reg;
  assign and_6826 = ~should_output & p1_stage_done;
  assign and_6827 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__1_3_valid_load_en = p0_load_en | systolic__hor_chans__1_3_valid_inv;
  assign systolic__vert_chans__1_3_valid_load_en = p0_load_en | systolic__vert_chans__1_3_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6786[1] & should_output == one_hot_6786[0];
  assign concat_6828 = {and_6826, and_6827};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_541_1_case_1 = 2'h0;
  assign unexpand_for_next_value_541_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__1_4_valid_and_ready_txfr = __systolic__hor_chans__1_4_valid_and_not_has_been_sent & systolic__hor_chans__1_4_load_en;
  assign __systolic__vert_chans__2_3_valid_and_ready_txfr = __systolic__vert_chans__2_3_valid_and_not_has_been_sent & systolic__vert_chans__2_3_load_en;
  assign __systolic__result_chans__1_3_valid_and_all_active_outputs_ready = __systolic__result_chans__1_3_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__1_3_valid_and_ready_txfr = __systolic__result_chans__1_3_valid_and_not_has_been_sent & systolic__result_chans__1_3_load_en;
  assign systolic__hor_chans__1_3_load_en = systolic__hor_chans__1_3_vld & systolic__hor_chans__1_3_valid_load_en;
  assign systolic__vert_chans__1_3_load_en = systolic__vert_chans__1_3_vld & systolic__vert_chans__1_3_valid_load_en;
  assign or_8143 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_6829 = 32'h0000_0000 & {32{concat_6828[0]}} | new_accum & {32{concat_6828[1]}};
  assign or_6830 = and_6826 | and_6827;
  assign one_hot_sel_6835 = unexpand_for_next_value_541_1_case_1 & {2{concat_6828[0]}} | unexpand_for_next_value_541_1_case_0 & {2{concat_6828[1]}};
  assign __systolic__hor_chans__1_4_not_stage_load = ~__systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__1_4_has_been_sent_reg_load_en = __systolic__hor_chans__1_4_valid_and_ready_txfr | __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__2_3_has_been_sent_reg_load_en = __systolic__vert_chans__2_3_valid_and_ready_txfr | __systolic__hor_chans__1_4_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_3_not_stage_load = ~__systolic__result_chans__1_3_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__1_3_has_been_sent_reg_load_en = __systolic__result_chans__1_3_valid_and_ready_txfr | __systolic__result_chans__1_3_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__1_3_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__1_3_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_6830 ? one_hot_sel_6835 : ____state_1;
      ____state_0 <= or_6830 ? one_hot_sel_6829 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__1_4_has_been_sent_reg <= __systolic__hor_chans__1_4_has_been_sent_reg_load_en ? __systolic__hor_chans__1_4_not_stage_load : __systolic__hor_chans__1_4_has_been_sent_reg;
      __systolic__vert_chans__2_3_has_been_sent_reg <= __systolic__vert_chans__2_3_has_been_sent_reg_load_en ? __systolic__hor_chans__1_4_not_stage_load : __systolic__vert_chans__2_3_has_been_sent_reg;
      __systolic__result_chans__1_3_has_been_sent_reg <= __systolic__result_chans__1_3_has_been_sent_reg_load_en ? __systolic__result_chans__1_3_not_stage_load : __systolic__result_chans__1_3_has_been_sent_reg;
      __systolic__hor_chans__1_3_reg <= systolic__hor_chans__1_3_load_en ? systolic__hor_chans__1_3 : __systolic__hor_chans__1_3_reg;
      __systolic__hor_chans__1_3_valid_reg <= systolic__hor_chans__1_3_valid_load_en ? systolic__hor_chans__1_3_vld : __systolic__hor_chans__1_3_valid_reg;
      __systolic__vert_chans__1_3_reg <= systolic__vert_chans__1_3_load_en ? systolic__vert_chans__1_3 : __systolic__vert_chans__1_3_reg;
      __systolic__vert_chans__1_3_valid_reg <= systolic__vert_chans__1_3_valid_load_en ? systolic__vert_chans__1_3_vld : __systolic__vert_chans__1_3_valid_reg;
      __systolic__hor_chans__1_4_reg <= systolic__hor_chans__1_4_load_en ? p0_a : __systolic__hor_chans__1_4_reg;
      __systolic__hor_chans__1_4_valid_reg <= systolic__hor_chans__1_4_valid_load_en ? __systolic__hor_chans__1_4_valid_and_not_has_been_sent : __systolic__hor_chans__1_4_valid_reg;
      __systolic__vert_chans__2_3_reg <= systolic__vert_chans__2_3_load_en ? p0_b : __systolic__vert_chans__2_3_reg;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__2_1_not_has_been_sent;
  wire systolic__hor_chans__2_1_valid_inv;
  wire __systolic__vert_chans__3_0_not_has_been_sent;
  wire systolic__vert_chans__3_0_valid_inv;
  wire __systolic__result_chans__2_0_vld_buf;
  wire __systolic__result_chans__2_0_not_has_been_sent;
  wire systolic__result_chans__2_0_valid_inv;
  wire __systolic__hor_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_1_valid_load_en;
  wire __systolic__vert_chans__3_0_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_0_valid_load_en;
  wire __systolic__result_chans__2_0_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_0_valid_load_en;
  wire systolic__hor_chans__2_1_load_en;
  wire systolic__vert_chans__3_0_load_en;
  wire systolic__result_chans__2_0_load_en;
  wire __systolic__hor_chans__2_1_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_0_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_6980;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__2_0_valid_inv;
  wire systolic__vert_chans__2_0_valid_inv;
  wire and_7020;
  wire and_7021;
  wire [31:0] prod;
  wire systolic__hor_chans__2_0_valid_load_en;
  wire systolic__vert_chans__2_0_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_7022;
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
  wire or_8147;
  wire [31:0] one_hot_sel_7023;
  wire or_7024;
  wire [1:0] one_hot_sel_7029;
  wire __systolic__hor_chans__2_1_not_stage_load;
  wire __systolic__hor_chans__2_1_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_0_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_0_not_stage_load;
  wire __systolic__result_chans__2_0_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__2_1_not_has_been_sent = ~__systolic__hor_chans__2_1_has_been_sent_reg;
  assign systolic__hor_chans__2_1_valid_inv = ~__systolic__hor_chans__2_1_valid_reg;
  assign __systolic__vert_chans__3_0_not_has_been_sent = ~__systolic__vert_chans__3_0_has_been_sent_reg;
  assign systolic__vert_chans__3_0_valid_inv = ~__systolic__vert_chans__3_0_valid_reg;
  assign __systolic__result_chans__2_0_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__2_0_not_has_been_sent = ~__systolic__result_chans__2_0_has_been_sent_reg;
  assign systolic__result_chans__2_0_valid_inv = ~__systolic__result_chans__2_0_valid_reg;
  assign __systolic__hor_chans__2_1_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__2_1_not_has_been_sent;
  assign systolic__hor_chans__2_1_valid_load_en = systolic__hor_chans__2_1_rdy | systolic__hor_chans__2_1_valid_inv;
  assign __systolic__vert_chans__3_0_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__3_0_not_has_been_sent;
  assign systolic__vert_chans__3_0_valid_load_en = systolic__vert_chans__3_0_rdy | systolic__vert_chans__3_0_valid_inv;
  assign __systolic__result_chans__2_0_valid_and_not_has_been_sent = __systolic__result_chans__2_0_vld_buf & __systolic__result_chans__2_0_not_has_been_sent;
  assign systolic__result_chans__2_0_valid_load_en = systolic__result_chans__2_0_rdy | systolic__result_chans__2_0_valid_inv;
  assign systolic__hor_chans__2_1_load_en = __systolic__hor_chans__2_1_valid_and_not_has_been_sent & systolic__hor_chans__2_1_valid_load_en;
  assign systolic__vert_chans__3_0_load_en = __systolic__vert_chans__3_0_valid_and_not_has_been_sent & systolic__vert_chans__3_0_valid_load_en;
  assign systolic__result_chans__2_0_load_en = __systolic__result_chans__2_0_valid_and_not_has_been_sent & systolic__result_chans__2_0_valid_load_en;
  assign __systolic__hor_chans__2_1_has_sent_or_is_ready = systolic__hor_chans__2_1_load_en | __systolic__hor_chans__2_1_has_been_sent_reg;
  assign __systolic__vert_chans__3_0_has_sent_or_is_ready = systolic__vert_chans__3_0_load_en | __systolic__vert_chans__3_0_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__2_1_has_sent_or_is_ready & __systolic__vert_chans__3_0_has_sent_or_is_ready & (~should_output | systolic__result_chans__2_0_load_en | __systolic__result_chans__2_0_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__2_0_valid_reg & __systolic__vert_chans__2_0_valid_reg;
  assign one_hot_6980 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__2_0_valid_inv = ~__systolic__hor_chans__2_0_valid_reg;
  assign systolic__vert_chans__2_0_valid_inv = ~__systolic__vert_chans__2_0_valid_reg;
  assign and_7020 = ~should_output & p1_stage_done;
  assign and_7021 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__2_0_valid_load_en = p0_load_en | systolic__hor_chans__2_0_valid_inv;
  assign systolic__vert_chans__2_0_valid_load_en = p0_load_en | systolic__vert_chans__2_0_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_6980[1] & should_output == one_hot_6980[0];
  assign concat_7022 = {and_7020, and_7021};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_571_1_case_1 = 2'h0;
  assign unexpand_for_next_value_571_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__2_1_valid_and_ready_txfr = __systolic__hor_chans__2_1_valid_and_not_has_been_sent & systolic__hor_chans__2_1_load_en;
  assign __systolic__vert_chans__3_0_valid_and_ready_txfr = __systolic__vert_chans__3_0_valid_and_not_has_been_sent & systolic__vert_chans__3_0_load_en;
  assign __systolic__result_chans__2_0_valid_and_all_active_outputs_ready = __systolic__result_chans__2_0_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__2_0_valid_and_ready_txfr = __systolic__result_chans__2_0_valid_and_not_has_been_sent & systolic__result_chans__2_0_load_en;
  assign systolic__hor_chans__2_0_load_en = systolic__hor_chans__2_0_vld & systolic__hor_chans__2_0_valid_load_en;
  assign systolic__vert_chans__2_0_load_en = systolic__vert_chans__2_0_vld & systolic__vert_chans__2_0_valid_load_en;
  assign or_8147 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_7023 = 32'h0000_0000 & {32{concat_7022[0]}} | new_accum & {32{concat_7022[1]}};
  assign or_7024 = and_7020 | and_7021;
  assign one_hot_sel_7029 = unexpand_for_next_value_571_1_case_1 & {2{concat_7022[0]}} | unexpand_for_next_value_571_1_case_0 & {2{concat_7022[1]}};
  assign __systolic__hor_chans__2_1_not_stage_load = ~__systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_1_has_been_sent_reg_load_en = __systolic__hor_chans__2_1_valid_and_ready_txfr | __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_0_has_been_sent_reg_load_en = __systolic__vert_chans__3_0_valid_and_ready_txfr | __systolic__hor_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_0_not_stage_load = ~__systolic__result_chans__2_0_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_0_has_been_sent_reg_load_en = __systolic__result_chans__2_0_valid_and_ready_txfr | __systolic__result_chans__2_0_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__2_0_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__2_0_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_7024 ? one_hot_sel_7029 : ____state_1;
      ____state_0 <= or_7024 ? one_hot_sel_7023 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__2_1_has_been_sent_reg <= __systolic__hor_chans__2_1_has_been_sent_reg_load_en ? __systolic__hor_chans__2_1_not_stage_load : __systolic__hor_chans__2_1_has_been_sent_reg;
      __systolic__vert_chans__3_0_has_been_sent_reg <= __systolic__vert_chans__3_0_has_been_sent_reg_load_en ? __systolic__hor_chans__2_1_not_stage_load : __systolic__vert_chans__3_0_has_been_sent_reg;
      __systolic__result_chans__2_0_has_been_sent_reg <= __systolic__result_chans__2_0_has_been_sent_reg_load_en ? __systolic__result_chans__2_0_not_stage_load : __systolic__result_chans__2_0_has_been_sent_reg;
      __systolic__hor_chans__2_0_reg <= systolic__hor_chans__2_0_load_en ? systolic__hor_chans__2_0 : __systolic__hor_chans__2_0_reg;
      __systolic__hor_chans__2_0_valid_reg <= systolic__hor_chans__2_0_valid_load_en ? systolic__hor_chans__2_0_vld : __systolic__hor_chans__2_0_valid_reg;
      __systolic__vert_chans__2_0_reg <= systolic__vert_chans__2_0_load_en ? systolic__vert_chans__2_0 : __systolic__vert_chans__2_0_reg;
      __systolic__vert_chans__2_0_valid_reg <= systolic__vert_chans__2_0_valid_load_en ? systolic__vert_chans__2_0_vld : __systolic__vert_chans__2_0_valid_reg;
      __systolic__hor_chans__2_1_reg <= systolic__hor_chans__2_1_load_en ? p0_a : __systolic__hor_chans__2_1_reg;
      __systolic__hor_chans__2_1_valid_reg <= systolic__hor_chans__2_1_valid_load_en ? __systolic__hor_chans__2_1_valid_and_not_has_been_sent : __systolic__hor_chans__2_1_valid_reg;
      __systolic__vert_chans__3_0_reg <= systolic__vert_chans__3_0_load_en ? p0_b : __systolic__vert_chans__3_0_reg;
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
  reg [31:0] p0_b;
  reg [1:0] ____state_1;
  reg [31:0] ____state_0;
  reg p0_valid;
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
  wire __systolic__hor_chans__2_2_not_has_been_sent;
  wire systolic__hor_chans__2_2_valid_inv;
  wire __systolic__vert_chans__3_1_not_has_been_sent;
  wire systolic__vert_chans__3_1_valid_inv;
  wire __systolic__result_chans__2_1_vld_buf;
  wire __systolic__result_chans__2_1_not_has_been_sent;
  wire systolic__result_chans__2_1_valid_inv;
  wire __systolic__hor_chans__2_2_valid_and_not_has_been_sent;
  wire systolic__hor_chans__2_2_valid_load_en;
  wire __systolic__vert_chans__3_1_valid_and_not_has_been_sent;
  wire systolic__vert_chans__3_1_valid_load_en;
  wire __systolic__result_chans__2_1_valid_and_not_has_been_sent;
  wire systolic__result_chans__2_1_valid_load_en;
  wire systolic__hor_chans__2_2_load_en;
  wire systolic__vert_chans__3_1_load_en;
  wire systolic__result_chans__2_1_load_en;
  wire __systolic__hor_chans__2_2_has_sent_or_is_ready;
  wire __systolic__vert_chans__3_1_has_sent_or_is_ready;
  wire p1_all_active_outputs_ready;
  wire p1_stage_done;
  wire p1_not_valid;
  wire [1:0] ____state_0__next_value_predicates;
  wire p0_enable;
  wire p0_all_active_inputs_valid;
  wire [2:0] one_hot_7174;
  wire p0_data_enable;
  wire p0_load_en;
  wire systolic__hor_chans__2_1_valid_inv;
  wire systolic__vert_chans__2_1_valid_inv;
  wire and_7214;
  wire and_7215;
  wire [31:0] prod;
  wire systolic__hor_chans__2_1_valid_load_en;
  wire systolic__vert_chans__2_1_valid_load_en;
  wire ____state_0__at_most_one_next_value;
  wire [1:0] concat_7216;
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
  wire or_8151;
  wire [31:0] one_hot_sel_7217;
  wire or_7218;
  wire [1:0] one_hot_sel_7223;
  wire __systolic__hor_chans__2_2_not_stage_load;
  wire __systolic__hor_chans__2_2_has_been_sent_reg_load_en;
  wire __systolic__vert_chans__3_1_has_been_sent_reg_load_en;
  wire __systolic__result_chans__2_1_not_stage_load;
  wire __systolic__result_chans__2_1_has_been_sent_reg_load_en;
  assign should_output = ____state_1 == 2'h3;
  assign __systolic__hor_chans__2_2_not_has_been_sent = ~__systolic__hor_chans__2_2_has_been_sent_reg;
  assign systolic__hor_chans__2_2_valid_inv = ~__systolic__hor_chans__2_2_valid_reg;
  assign __systolic__vert_chans__3_1_not_has_been_sent = ~__systolic__vert_chans__3_1_has_been_sent_reg;
  assign systolic__vert_chans__3_1_valid_inv = ~__systolic__vert_chans__3_1_valid_reg;
  assign __systolic__result_chans__2_1_vld_buf = p0_valid & should_output;
  assign __systolic__result_chans__2_1_not_has_been_sent = ~__systolic__result_chans__2_1_has_been_sent_reg;
  assign systolic__result_chans__2_1_valid_inv = ~__systolic__result_chans__2_1_valid_reg;
  assign __systolic__hor_chans__2_2_valid_and_not_has_been_sent = p0_valid & __systolic__hor_chans__2_2_not_has_been_sent;
  assign systolic__hor_chans__2_2_valid_load_en = systolic__hor_chans__2_2_rdy | systolic__hor_chans__2_2_valid_inv;
  assign __systolic__vert_chans__3_1_valid_and_not_has_been_sent = p0_valid & __systolic__vert_chans__3_1_not_has_been_sent;
  assign systolic__vert_chans__3_1_valid_load_en = systolic__vert_chans__3_1_rdy | systolic__vert_chans__3_1_valid_inv;
  assign __systolic__result_chans__2_1_valid_and_not_has_been_sent = __systolic__result_chans__2_1_vld_buf & __systolic__result_chans__2_1_not_has_been_sent;
  assign systolic__result_chans__2_1_valid_load_en = systolic__result_chans__2_1_rdy | systolic__result_chans__2_1_valid_inv;
  assign systolic__hor_chans__2_2_load_en = __systolic__hor_chans__2_2_valid_and_not_has_been_sent & systolic__hor_chans__2_2_valid_load_en;
  assign systolic__vert_chans__3_1_load_en = __systolic__vert_chans__3_1_valid_and_not_has_been_sent & systolic__vert_chans__3_1_valid_load_en;
  assign systolic__result_chans__2_1_load_en = __systolic__result_chans__2_1_valid_and_not_has_been_sent & systolic__result_chans__2_1_valid_load_en;
  assign __systolic__hor_chans__2_2_has_sent_or_is_ready = systolic__hor_chans__2_2_load_en | __systolic__hor_chans__2_2_has_been_sent_reg;
  assign __systolic__vert_chans__3_1_has_sent_or_is_ready = systolic__vert_chans__3_1_load_en | __systolic__vert_chans__3_1_has_been_sent_reg;
  assign p1_all_active_outputs_ready = __systolic__hor_chans__2_2_has_sent_or_is_ready & __systolic__vert_chans__3_1_has_sent_or_is_ready & (~should_output | systolic__result_chans__2_1_load_en | __systolic__result_chans__2_1_has_been_sent_reg);
  assign p1_stage_done = p0_valid & p1_all_active_outputs_ready;
  assign p1_not_valid = ~p0_valid;
  assign ____state_0__next_value_predicates = {~should_output, should_output};
  assign p0_enable = p1_stage_done | p1_not_valid;
  assign p0_all_active_inputs_valid = __systolic__hor_chans__2_1_valid_reg & __systolic__vert_chans__2_1_valid_reg;
  assign one_hot_7174 = {____state_0__next_value_predicates[1:0] == 2'h0, ____state_0__next_value_predicates[1] && !____state_0__next_value_predicates[0], ____state_0__next_value_predicates[0]};
  assign p0_data_enable = p0_enable & p0_all_active_inputs_valid;
  assign p0_load_en = p0_data_enable | rst;
  assign systolic__hor_chans__2_1_valid_inv = ~__systolic__hor_chans__2_1_valid_reg;
  assign systolic__vert_chans__2_1_valid_inv = ~__systolic__vert_chans__2_1_valid_reg;
  assign and_7214 = ~should_output & p1_stage_done;
  assign and_7215 = should_output & p1_stage_done;
  assign prod = umul32b_32b_x_32b(p0_a, p0_b);
  assign systolic__hor_chans__2_1_valid_load_en = p0_load_en | systolic__hor_chans__2_1_valid_inv;
  assign systolic__vert_chans__2_1_valid_load_en = p0_load_en | systolic__vert_chans__2_1_valid_inv;
  assign ____state_0__at_most_one_next_value = ~should_output == one_hot_7174[1] & should_output == one_hot_7174[0];
  assign concat_7216 = {and_7214, and_7215};
  assign new_accum = ____state_0 + prod;
  assign unexpand_for_next_value_601_1_case_1 = 2'h0;
  assign unexpand_for_next_value_601_1_case_0 = ____state_1 + 2'h1;
  assign __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready = p0_valid & p1_all_active_outputs_ready;
  assign __systolic__hor_chans__2_2_valid_and_ready_txfr = __systolic__hor_chans__2_2_valid_and_not_has_been_sent & systolic__hor_chans__2_2_load_en;
  assign __systolic__vert_chans__3_1_valid_and_ready_txfr = __systolic__vert_chans__3_1_valid_and_not_has_been_sent & systolic__vert_chans__3_1_load_en;
  assign __systolic__result_chans__2_1_valid_and_all_active_outputs_ready = __systolic__result_chans__2_1_vld_buf & p1_all_active_outputs_ready;
  assign __systolic__result_chans__2_1_valid_and_ready_txfr = __systolic__result_chans__2_1_valid_and_not_has_been_sent & systolic__result_chans__2_1_load_en;
  assign systolic__hor_chans__2_1_load_en = systolic__hor_chans__2_1_vld & systolic__hor_chans__2_1_valid_load_en;
  assign systolic__vert_chans__2_1_load_en = systolic__vert_chans__2_1_vld & systolic__vert_chans__2_1_valid_load_en;
  assign or_8151 = ~p1_stage_done | ____state_0__at_most_one_next_value | rst;
  assign one_hot_sel_7217 = 32'h0000_0000 & {32{concat_7216[0]}} | new_accum & {32{concat_7216[1]}};
  assign or_7218 = and_7214 | and_7215;
  assign one_hot_sel_7223 = unexpand_for_next_value_601_1_case_1 & {2{concat_7216[0]}} | unexpand_for_next_value_601_1_case_0 & {2{concat_7216[1]}};
  assign __systolic__hor_chans__2_2_not_stage_load = ~__systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__hor_chans__2_2_has_been_sent_reg_load_en = __systolic__hor_chans__2_2_valid_and_ready_txfr | __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__vert_chans__3_1_has_been_sent_reg_load_en = __systolic__vert_chans__3_1_valid_and_ready_txfr | __systolic__hor_chans__2_2_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_1_not_stage_load = ~__systolic__result_chans__2_1_valid_and_all_active_outputs_ready;
  assign __systolic__result_chans__2_1_has_been_sent_reg_load_en = __systolic__result_chans__2_1_valid_and_ready_txfr | __systolic__result_chans__2_1_valid_and_all_active_outputs_ready;
  always @ (posedge clk) begin
    p0_a <= p0_load_en ? __systolic__hor_chans__2_1_reg : p0_a;
    p0_b <= p0_load_en ? __systolic__vert_chans__2_1_reg : p0_b;
  end
  always @ (posedge clk) begin
    if (rst) begin
      ____state_1 <= 2'h0;
      ____state_0 <= 32'h0000_0000;
      p0_valid <= 1'h0;
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
      ____state_1 <= or_7218 ? one_hot_sel_7223 : ____state_1;
      ____state_0 <= or_7218 ? one_hot_sel_7217 : ____state_0;
      p0_valid <= p0_enable ? p0_all_active_inputs_valid : p0_valid;
      __systolic__hor_chans__2_2_has_been_sent_reg <= __systolic__hor_chans__2_2_has_been_sent_reg_load_en ? __systolic__hor_chans__2_2_not_stage_load : __systolic__hor_chans__2_2_has_been_sent_reg;
      __systolic__vert_chans__3_1_has_been_sent_reg <= __systolic__vert_chans__3_1_has_been_sent_reg_load_en ? __systolic__hor_chans__2_2_not_stage_load : __systolic__vert_chans__3_1_has_been_sent_reg;
      __systolic__result_chans__2_1_has_been_sent_reg <= __systolic__result_chans__2_1_has_been_sent_reg_load_en ? __systolic__result_chans__2_1_not_stage_load : __systolic__result_chans__2_1_has_been_sent_reg;
      __systolic__hor_chans__2_1_reg <= systolic__hor_chans__2_1_load_en ? systolic__hor_chans__2_1 : __systolic__hor_chans__2_1_reg;
      __systolic__hor_chans__2_1_valid_reg <= systolic__hor_chans__2_1_valid_load_en ? systolic__hor_chans__2_1_vld : __systolic__hor_chans__2_1_valid_reg;
      __systolic__vert_chans__2_1_reg <= systolic__vert_chans__2_1_load_en ? systolic__vert_chans__2_1 : __systolic__vert_chans__2_1_reg;
      __systolic__vert_chans__2_1_valid_reg <= systolic__vert_chans__2_1_valid_load_en ? systolic__vert_chans__2_1_vld : __systolic__vert_chans__2_1_valid_reg;
      __systolic__hor_chans__2_2_reg <= systolic__hor_chans__2_2_load_en ? p0_a : __systolic__hor_chans__2_2_reg;
      __systolic__hor_chans__2_2_valid_reg <= systolic__hor_chans__2_2_valid_load_en ? __systolic__hor_chans__2_2_valid_and_not_has_been_sent : __systolic__hor_chans__2_2_valid_reg;
      __systolic__vert_chans__3_1_reg <= systolic__vert_chans__3_1_load_en ? p0_b : __systolic__vert_chans__3_1_reg;
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
  wire [31:0] systolic__arg0_unflattened[0:3][0:3];
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
  wire [31:0] systolic__arg1_unflattened[0:3][0:3];
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
  wire instantiation_output_7340;
  wire instantiation_output_7346;
  wire [31:0] instantiation_output_7351;
  wire instantiation_output_7352;
  wire instantiation_output_7411;
  wire [31:0] instantiation_output_7416;
  wire instantiation_output_7417;
  wire instantiation_output_7476;
  wire [31:0] instantiation_output_7481;
  wire instantiation_output_7482;
  wire instantiation_output_7541;
  wire [31:0] instantiation_output_7546;
  wire instantiation_output_7547;
  wire instantiation_output_7606;
  wire [31:0] instantiation_output_7610[0:3][0:3];
  wire instantiation_output_7611;
  wire instantiation_output_7625;
  wire instantiation_output_7638;
  wire instantiation_output_7651;
  wire instantiation_output_7664;
  wire instantiation_output_7677;
  wire instantiation_output_7690;
  wire instantiation_output_7703;
  wire instantiation_output_7716;
  wire instantiation_output_7729;
  wire instantiation_output_7742;
  wire instantiation_output_7755;
  wire instantiation_output_7768;
  wire instantiation_output_7781;
  wire instantiation_output_7794;
  wire instantiation_output_7807;
  wire instantiation_output_7820;
  wire [31:0] instantiation_output_7825;
  wire instantiation_output_7826;
  wire [31:0] instantiation_output_7838;
  wire instantiation_output_7839;
  wire [31:0] instantiation_output_7851;
  wire instantiation_output_7852;
  wire [31:0] instantiation_output_7864;
  wire instantiation_output_7865;
  wire instantiation_output_8041;
  wire instantiation_output_8054;
  wire instantiation_output_8067;
  wire instantiation_output_8080;
  wire instantiation_output_7359;
  wire [31:0] instantiation_output_7364;
  wire instantiation_output_7365;
  wire [31:0] instantiation_output_7617;
  wire instantiation_output_7618;
  wire instantiation_output_7833;
  wire [31:0] instantiation_output_7877;
  wire instantiation_output_7878;
  wire instantiation_output_7515;
  wire [31:0] instantiation_output_7520;
  wire instantiation_output_7521;
  wire [31:0] instantiation_output_7747;
  wire instantiation_output_7748;
  wire instantiation_output_7963;
  wire [31:0] instantiation_output_8007;
  wire instantiation_output_8008;
  wire instantiation_output_7528;
  wire [31:0] instantiation_output_7533;
  wire instantiation_output_7534;
  wire [31:0] instantiation_output_7760;
  wire instantiation_output_7761;
  wire instantiation_output_7976;
  wire [31:0] instantiation_output_8020;
  wire instantiation_output_8021;
  wire instantiation_output_7554;
  wire [31:0] instantiation_output_7559;
  wire instantiation_output_7560;
  wire [31:0] instantiation_output_7773;
  wire instantiation_output_7774;
  wire instantiation_output_7989;
  wire [31:0] instantiation_output_8033;
  wire instantiation_output_8034;
  wire instantiation_output_7567;
  wire [31:0] instantiation_output_7572;
  wire instantiation_output_7573;
  wire [31:0] instantiation_output_7786;
  wire instantiation_output_7787;
  wire instantiation_output_8002;
  wire [31:0] instantiation_output_8046;
  wire instantiation_output_8047;
  wire instantiation_output_7580;
  wire [31:0] instantiation_output_7585;
  wire instantiation_output_7586;
  wire [31:0] instantiation_output_7799;
  wire instantiation_output_7800;
  wire instantiation_output_8015;
  wire [31:0] instantiation_output_8059;
  wire instantiation_output_8060;
  wire instantiation_output_7593;
  wire [31:0] instantiation_output_7598;
  wire instantiation_output_7599;
  wire [31:0] instantiation_output_7812;
  wire instantiation_output_7813;
  wire instantiation_output_8028;
  wire [31:0] instantiation_output_8072;
  wire instantiation_output_8073;
  wire instantiation_output_7372;
  wire [31:0] instantiation_output_7377;
  wire instantiation_output_7378;
  wire [31:0] instantiation_output_7630;
  wire instantiation_output_7631;
  wire instantiation_output_7846;
  wire [31:0] instantiation_output_7890;
  wire instantiation_output_7891;
  wire instantiation_output_7385;
  wire [31:0] instantiation_output_7390;
  wire instantiation_output_7391;
  wire [31:0] instantiation_output_7643;
  wire instantiation_output_7644;
  wire instantiation_output_7859;
  wire [31:0] instantiation_output_7903;
  wire instantiation_output_7904;
  wire instantiation_output_7398;
  wire [31:0] instantiation_output_7403;
  wire instantiation_output_7404;
  wire [31:0] instantiation_output_7656;
  wire instantiation_output_7657;
  wire instantiation_output_7872;
  wire [31:0] instantiation_output_7916;
  wire instantiation_output_7917;
  wire instantiation_output_7424;
  wire [31:0] instantiation_output_7429;
  wire instantiation_output_7430;
  wire [31:0] instantiation_output_7669;
  wire instantiation_output_7670;
  wire instantiation_output_7885;
  wire [31:0] instantiation_output_7929;
  wire instantiation_output_7930;
  wire instantiation_output_7437;
  wire [31:0] instantiation_output_7442;
  wire instantiation_output_7443;
  wire [31:0] instantiation_output_7682;
  wire instantiation_output_7683;
  wire instantiation_output_7898;
  wire [31:0] instantiation_output_7942;
  wire instantiation_output_7943;
  wire instantiation_output_7450;
  wire [31:0] instantiation_output_7455;
  wire instantiation_output_7456;
  wire [31:0] instantiation_output_7695;
  wire instantiation_output_7696;
  wire instantiation_output_7911;
  wire [31:0] instantiation_output_7955;
  wire instantiation_output_7956;
  wire instantiation_output_7463;
  wire [31:0] instantiation_output_7468;
  wire instantiation_output_7469;
  wire [31:0] instantiation_output_7708;
  wire instantiation_output_7709;
  wire instantiation_output_7924;
  wire [31:0] instantiation_output_7968;
  wire instantiation_output_7969;
  wire instantiation_output_7489;
  wire [31:0] instantiation_output_7494;
  wire instantiation_output_7495;
  wire [31:0] instantiation_output_7721;
  wire instantiation_output_7722;
  wire instantiation_output_7937;
  wire [31:0] instantiation_output_7981;
  wire instantiation_output_7982;
  wire instantiation_output_7502;
  wire [31:0] instantiation_output_7507;
  wire instantiation_output_7508;
  wire [31:0] instantiation_output_7734;
  wire instantiation_output_7735;
  wire instantiation_output_7950;
  wire [31:0] instantiation_output_7994;
  wire instantiation_output_7995;
  wire instantiation_output_7353;
  wire [31:0] instantiation_output_7357;
  wire instantiation_output_7358;
  wire instantiation_output_7366;
  wire [31:0] instantiation_output_7370;
  wire instantiation_output_7371;
  wire instantiation_output_7379;
  wire [31:0] instantiation_output_7383;
  wire instantiation_output_7384;
  wire instantiation_output_7392;
  wire [31:0] instantiation_output_7396;
  wire instantiation_output_7397;
  wire instantiation_output_7405;
  wire [31:0] instantiation_output_7409;
  wire instantiation_output_7410;
  wire instantiation_output_7418;
  wire [31:0] instantiation_output_7422;
  wire instantiation_output_7423;
  wire instantiation_output_7431;
  wire [31:0] instantiation_output_7435;
  wire instantiation_output_7436;
  wire instantiation_output_7444;
  wire [31:0] instantiation_output_7448;
  wire instantiation_output_7449;
  wire instantiation_output_7457;
  wire [31:0] instantiation_output_7461;
  wire instantiation_output_7462;
  wire instantiation_output_7470;
  wire [31:0] instantiation_output_7474;
  wire instantiation_output_7475;
  wire instantiation_output_7483;
  wire [31:0] instantiation_output_7487;
  wire instantiation_output_7488;
  wire instantiation_output_7496;
  wire [31:0] instantiation_output_7500;
  wire instantiation_output_7501;
  wire instantiation_output_7509;
  wire [31:0] instantiation_output_7513;
  wire instantiation_output_7514;
  wire instantiation_output_7522;
  wire [31:0] instantiation_output_7526;
  wire instantiation_output_7527;
  wire instantiation_output_7535;
  wire [31:0] instantiation_output_7539;
  wire instantiation_output_7540;
  wire instantiation_output_7548;
  wire [31:0] instantiation_output_7552;
  wire instantiation_output_7553;
  wire instantiation_output_7561;
  wire [31:0] instantiation_output_7565;
  wire instantiation_output_7566;
  wire instantiation_output_7574;
  wire [31:0] instantiation_output_7578;
  wire instantiation_output_7579;
  wire instantiation_output_7587;
  wire [31:0] instantiation_output_7591;
  wire instantiation_output_7592;
  wire instantiation_output_7600;
  wire [31:0] instantiation_output_7604;
  wire instantiation_output_7605;
  wire instantiation_output_7619;
  wire [31:0] instantiation_output_7623;
  wire instantiation_output_7624;
  wire instantiation_output_7632;
  wire [31:0] instantiation_output_7636;
  wire instantiation_output_7637;
  wire instantiation_output_7645;
  wire [31:0] instantiation_output_7649;
  wire instantiation_output_7650;
  wire instantiation_output_7658;
  wire [31:0] instantiation_output_7662;
  wire instantiation_output_7663;
  wire instantiation_output_7671;
  wire [31:0] instantiation_output_7675;
  wire instantiation_output_7676;
  wire instantiation_output_7684;
  wire [31:0] instantiation_output_7688;
  wire instantiation_output_7689;
  wire instantiation_output_7697;
  wire [31:0] instantiation_output_7701;
  wire instantiation_output_7702;
  wire instantiation_output_7710;
  wire [31:0] instantiation_output_7714;
  wire instantiation_output_7715;
  wire instantiation_output_7723;
  wire [31:0] instantiation_output_7727;
  wire instantiation_output_7728;
  wire instantiation_output_7736;
  wire [31:0] instantiation_output_7740;
  wire instantiation_output_7741;
  wire instantiation_output_7749;
  wire [31:0] instantiation_output_7753;
  wire instantiation_output_7754;
  wire instantiation_output_7762;
  wire [31:0] instantiation_output_7766;
  wire instantiation_output_7767;
  wire instantiation_output_7775;
  wire [31:0] instantiation_output_7779;
  wire instantiation_output_7780;
  wire instantiation_output_7788;
  wire [31:0] instantiation_output_7792;
  wire instantiation_output_7793;
  wire instantiation_output_7801;
  wire [31:0] instantiation_output_7805;
  wire instantiation_output_7806;
  wire instantiation_output_7814;
  wire [31:0] instantiation_output_7818;
  wire instantiation_output_7819;
  wire instantiation_output_7827;
  wire [31:0] instantiation_output_7831;
  wire instantiation_output_7832;
  wire instantiation_output_7840;
  wire [31:0] instantiation_output_7844;
  wire instantiation_output_7845;
  wire instantiation_output_7853;
  wire [31:0] instantiation_output_7857;
  wire instantiation_output_7858;
  wire instantiation_output_7866;
  wire [31:0] instantiation_output_7870;
  wire instantiation_output_7871;
  wire instantiation_output_7879;
  wire [31:0] instantiation_output_7883;
  wire instantiation_output_7884;
  wire instantiation_output_7892;
  wire [31:0] instantiation_output_7896;
  wire instantiation_output_7897;
  wire instantiation_output_7905;
  wire [31:0] instantiation_output_7909;
  wire instantiation_output_7910;
  wire instantiation_output_7918;
  wire [31:0] instantiation_output_7922;
  wire instantiation_output_7923;
  wire instantiation_output_7931;
  wire [31:0] instantiation_output_7935;
  wire instantiation_output_7936;
  wire instantiation_output_7944;
  wire [31:0] instantiation_output_7948;
  wire instantiation_output_7949;
  wire instantiation_output_7957;
  wire [31:0] instantiation_output_7961;
  wire instantiation_output_7962;
  wire instantiation_output_7970;
  wire [31:0] instantiation_output_7974;
  wire instantiation_output_7975;
  wire instantiation_output_7983;
  wire [31:0] instantiation_output_7987;
  wire instantiation_output_7988;
  wire instantiation_output_7996;
  wire [31:0] instantiation_output_8000;
  wire instantiation_output_8001;
  wire instantiation_output_8009;
  wire [31:0] instantiation_output_8013;
  wire instantiation_output_8014;
  wire instantiation_output_8022;
  wire [31:0] instantiation_output_8026;
  wire instantiation_output_8027;
  wire instantiation_output_8035;
  wire [31:0] instantiation_output_8039;
  wire instantiation_output_8040;
  wire instantiation_output_8048;
  wire [31:0] instantiation_output_8052;
  wire instantiation_output_8053;
  wire instantiation_output_8061;
  wire [31:0] instantiation_output_8065;
  wire instantiation_output_8066;
  wire instantiation_output_8074;
  wire [31:0] instantiation_output_8078;
  wire instantiation_output_8079;

  // ===== Instantiations
  __systolic__SystolicArray_0_next__1 __systolic__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .systolic__arg0({{systolic__arg0_unflattened[3][3], systolic__arg0_unflattened[3][2], systolic__arg0_unflattened[3][1], systolic__arg0_unflattened[3][0]}, {systolic__arg0_unflattened[2][3], systolic__arg0_unflattened[2][2], systolic__arg0_unflattened[2][1], systolic__arg0_unflattened[2][0]}, {systolic__arg0_unflattened[1][3], systolic__arg0_unflattened[1][2], systolic__arg0_unflattened[1][1], systolic__arg0_unflattened[1][0]}, {systolic__arg0_unflattened[0][3], systolic__arg0_unflattened[0][2], systolic__arg0_unflattened[0][1], systolic__arg0_unflattened[0][0]}}),
    .systolic__arg0_vld(systolic__arg0_vld),
    .systolic__arg1({{systolic__arg1_unflattened[3][3], systolic__arg1_unflattened[3][2], systolic__arg1_unflattened[3][1], systolic__arg1_unflattened[3][0]}, {systolic__arg1_unflattened[2][3], systolic__arg1_unflattened[2][2], systolic__arg1_unflattened[2][1], systolic__arg1_unflattened[2][0]}, {systolic__arg1_unflattened[1][3], systolic__arg1_unflattened[1][2], systolic__arg1_unflattened[1][1], systolic__arg1_unflattened[1][0]}, {systolic__arg1_unflattened[0][3], systolic__arg1_unflattened[0][2], systolic__arg1_unflattened[0][1], systolic__arg1_unflattened[0][0]}}),
    .systolic__arg1_vld(systolic__arg1_vld),
    .systolic__hor_chans__0_0_rdy(instantiation_output_7353),
    .systolic__hor_chans__0_4(instantiation_output_7409),
    .systolic__hor_chans__0_4_vld(instantiation_output_7410),
    .systolic__hor_chans__1_0_rdy(instantiation_output_7418),
    .systolic__hor_chans__1_4(instantiation_output_7474),
    .systolic__hor_chans__1_4_vld(instantiation_output_7475),
    .systolic__hor_chans__2_0_rdy(instantiation_output_7483),
    .systolic__hor_chans__2_4(instantiation_output_7539),
    .systolic__hor_chans__2_4_vld(instantiation_output_7540),
    .systolic__hor_chans__3_0_rdy(instantiation_output_7548),
    .systolic__hor_chans__3_4(instantiation_output_7604),
    .systolic__hor_chans__3_4_vld(instantiation_output_7605),
    .systolic__out0_rdy(systolic__out0_rdy),
    .systolic__result_chans__0_0(instantiation_output_7623),
    .systolic__result_chans__0_0_vld(instantiation_output_7624),
    .systolic__result_chans__0_1(instantiation_output_7636),
    .systolic__result_chans__0_1_vld(instantiation_output_7637),
    .systolic__result_chans__0_2(instantiation_output_7649),
    .systolic__result_chans__0_2_vld(instantiation_output_7650),
    .systolic__result_chans__0_3(instantiation_output_7662),
    .systolic__result_chans__0_3_vld(instantiation_output_7663),
    .systolic__result_chans__1_0(instantiation_output_7675),
    .systolic__result_chans__1_0_vld(instantiation_output_7676),
    .systolic__result_chans__1_1(instantiation_output_7688),
    .systolic__result_chans__1_1_vld(instantiation_output_7689),
    .systolic__result_chans__1_2(instantiation_output_7701),
    .systolic__result_chans__1_2_vld(instantiation_output_7702),
    .systolic__result_chans__1_3(instantiation_output_7714),
    .systolic__result_chans__1_3_vld(instantiation_output_7715),
    .systolic__result_chans__2_0(instantiation_output_7727),
    .systolic__result_chans__2_0_vld(instantiation_output_7728),
    .systolic__result_chans__2_1(instantiation_output_7740),
    .systolic__result_chans__2_1_vld(instantiation_output_7741),
    .systolic__result_chans__2_2(instantiation_output_7753),
    .systolic__result_chans__2_2_vld(instantiation_output_7754),
    .systolic__result_chans__2_3(instantiation_output_7766),
    .systolic__result_chans__2_3_vld(instantiation_output_7767),
    .systolic__result_chans__3_0(instantiation_output_7779),
    .systolic__result_chans__3_0_vld(instantiation_output_7780),
    .systolic__result_chans__3_1(instantiation_output_7792),
    .systolic__result_chans__3_1_vld(instantiation_output_7793),
    .systolic__result_chans__3_2(instantiation_output_7805),
    .systolic__result_chans__3_2_vld(instantiation_output_7806),
    .systolic__result_chans__3_3(instantiation_output_7818),
    .systolic__result_chans__3_3_vld(instantiation_output_7819),
    .systolic__vert_chans__0_0_rdy(instantiation_output_7827),
    .systolic__vert_chans__0_1_rdy(instantiation_output_7840),
    .systolic__vert_chans__0_2_rdy(instantiation_output_7853),
    .systolic__vert_chans__0_3_rdy(instantiation_output_7866),
    .systolic__vert_chans__4_0(instantiation_output_8039),
    .systolic__vert_chans__4_0_vld(instantiation_output_8040),
    .systolic__vert_chans__4_1(instantiation_output_8052),
    .systolic__vert_chans__4_1_vld(instantiation_output_8053),
    .systolic__vert_chans__4_2(instantiation_output_8065),
    .systolic__vert_chans__4_2_vld(instantiation_output_8066),
    .systolic__vert_chans__4_3(instantiation_output_8078),
    .systolic__vert_chans__4_3_vld(instantiation_output_8079),
    .systolic__arg0_rdy(instantiation_output_7340),
    .systolic__arg1_rdy(instantiation_output_7346),
    .systolic__hor_chans__0_0(instantiation_output_7351),
    .systolic__hor_chans__0_0_vld(instantiation_output_7352),
    .systolic__hor_chans__0_4_rdy(instantiation_output_7411),
    .systolic__hor_chans__1_0(instantiation_output_7416),
    .systolic__hor_chans__1_0_vld(instantiation_output_7417),
    .systolic__hor_chans__1_4_rdy(instantiation_output_7476),
    .systolic__hor_chans__2_0(instantiation_output_7481),
    .systolic__hor_chans__2_0_vld(instantiation_output_7482),
    .systolic__hor_chans__2_4_rdy(instantiation_output_7541),
    .systolic__hor_chans__3_0(instantiation_output_7546),
    .systolic__hor_chans__3_0_vld(instantiation_output_7547),
    .systolic__hor_chans__3_4_rdy(instantiation_output_7606),
    .systolic__out0({{instantiation_output_7610[3][3], instantiation_output_7610[3][2], instantiation_output_7610[3][1], instantiation_output_7610[3][0]}, {instantiation_output_7610[2][3], instantiation_output_7610[2][2], instantiation_output_7610[2][1], instantiation_output_7610[2][0]}, {instantiation_output_7610[1][3], instantiation_output_7610[1][2], instantiation_output_7610[1][1], instantiation_output_7610[1][0]}, {instantiation_output_7610[0][3], instantiation_output_7610[0][2], instantiation_output_7610[0][1], instantiation_output_7610[0][0]}}),
    .systolic__out0_vld(instantiation_output_7611),
    .systolic__result_chans__0_0_rdy(instantiation_output_7625),
    .systolic__result_chans__0_1_rdy(instantiation_output_7638),
    .systolic__result_chans__0_2_rdy(instantiation_output_7651),
    .systolic__result_chans__0_3_rdy(instantiation_output_7664),
    .systolic__result_chans__1_0_rdy(instantiation_output_7677),
    .systolic__result_chans__1_1_rdy(instantiation_output_7690),
    .systolic__result_chans__1_2_rdy(instantiation_output_7703),
    .systolic__result_chans__1_3_rdy(instantiation_output_7716),
    .systolic__result_chans__2_0_rdy(instantiation_output_7729),
    .systolic__result_chans__2_1_rdy(instantiation_output_7742),
    .systolic__result_chans__2_2_rdy(instantiation_output_7755),
    .systolic__result_chans__2_3_rdy(instantiation_output_7768),
    .systolic__result_chans__3_0_rdy(instantiation_output_7781),
    .systolic__result_chans__3_1_rdy(instantiation_output_7794),
    .systolic__result_chans__3_2_rdy(instantiation_output_7807),
    .systolic__result_chans__3_3_rdy(instantiation_output_7820),
    .systolic__vert_chans__0_0(instantiation_output_7825),
    .systolic__vert_chans__0_0_vld(instantiation_output_7826),
    .systolic__vert_chans__0_1(instantiation_output_7838),
    .systolic__vert_chans__0_1_vld(instantiation_output_7839),
    .systolic__vert_chans__0_2(instantiation_output_7851),
    .systolic__vert_chans__0_2_vld(instantiation_output_7852),
    .systolic__vert_chans__0_3(instantiation_output_7864),
    .systolic__vert_chans__0_3_vld(instantiation_output_7865),
    .systolic__vert_chans__4_0_rdy(instantiation_output_8041),
    .systolic__vert_chans__4_1_rdy(instantiation_output_8054),
    .systolic__vert_chans__4_2_rdy(instantiation_output_8067),
    .systolic__vert_chans__4_3_rdy(instantiation_output_8080),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_0_next __systolic__SystolicArray__PE_0_next_inst1 (
    .rst(rst),
    .systolic__hor_chans__0_0(instantiation_output_7357),
    .systolic__hor_chans__0_0_vld(instantiation_output_7358),
    .systolic__hor_chans__0_1_rdy(instantiation_output_7366),
    .systolic__result_chans__0_0_rdy(instantiation_output_7619),
    .systolic__vert_chans__0_0(instantiation_output_7831),
    .systolic__vert_chans__0_0_vld(instantiation_output_7832),
    .systolic__vert_chans__1_0_rdy(instantiation_output_7879),
    .systolic__hor_chans__0_0_rdy(instantiation_output_7359),
    .systolic__hor_chans__0_1(instantiation_output_7364),
    .systolic__hor_chans__0_1_vld(instantiation_output_7365),
    .systolic__result_chans__0_0(instantiation_output_7617),
    .systolic__result_chans__0_0_vld(instantiation_output_7618),
    .systolic__vert_chans__0_0_rdy(instantiation_output_7833),
    .systolic__vert_chans__1_0(instantiation_output_7877),
    .systolic__vert_chans__1_0_vld(instantiation_output_7878),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_10_next __systolic__SystolicArray__PE_10_next_inst2 (
    .rst(rst),
    .systolic__hor_chans__2_2(instantiation_output_7513),
    .systolic__hor_chans__2_2_vld(instantiation_output_7514),
    .systolic__hor_chans__2_3_rdy(instantiation_output_7522),
    .systolic__result_chans__2_2_rdy(instantiation_output_7749),
    .systolic__vert_chans__2_2(instantiation_output_7961),
    .systolic__vert_chans__2_2_vld(instantiation_output_7962),
    .systolic__vert_chans__3_2_rdy(instantiation_output_8009),
    .systolic__hor_chans__2_2_rdy(instantiation_output_7515),
    .systolic__hor_chans__2_3(instantiation_output_7520),
    .systolic__hor_chans__2_3_vld(instantiation_output_7521),
    .systolic__result_chans__2_2(instantiation_output_7747),
    .systolic__result_chans__2_2_vld(instantiation_output_7748),
    .systolic__vert_chans__2_2_rdy(instantiation_output_7963),
    .systolic__vert_chans__3_2(instantiation_output_8007),
    .systolic__vert_chans__3_2_vld(instantiation_output_8008),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_11_next __systolic__SystolicArray__PE_11_next_inst3 (
    .rst(rst),
    .systolic__hor_chans__2_3(instantiation_output_7526),
    .systolic__hor_chans__2_3_vld(instantiation_output_7527),
    .systolic__hor_chans__2_4_rdy(instantiation_output_7535),
    .systolic__result_chans__2_3_rdy(instantiation_output_7762),
    .systolic__vert_chans__2_3(instantiation_output_7974),
    .systolic__vert_chans__2_3_vld(instantiation_output_7975),
    .systolic__vert_chans__3_3_rdy(instantiation_output_8022),
    .systolic__hor_chans__2_3_rdy(instantiation_output_7528),
    .systolic__hor_chans__2_4(instantiation_output_7533),
    .systolic__hor_chans__2_4_vld(instantiation_output_7534),
    .systolic__result_chans__2_3(instantiation_output_7760),
    .systolic__result_chans__2_3_vld(instantiation_output_7761),
    .systolic__vert_chans__2_3_rdy(instantiation_output_7976),
    .systolic__vert_chans__3_3(instantiation_output_8020),
    .systolic__vert_chans__3_3_vld(instantiation_output_8021),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_12_next __systolic__SystolicArray__PE_12_next_inst4 (
    .rst(rst),
    .systolic__hor_chans__3_0(instantiation_output_7552),
    .systolic__hor_chans__3_0_vld(instantiation_output_7553),
    .systolic__hor_chans__3_1_rdy(instantiation_output_7561),
    .systolic__result_chans__3_0_rdy(instantiation_output_7775),
    .systolic__vert_chans__3_0(instantiation_output_7987),
    .systolic__vert_chans__3_0_vld(instantiation_output_7988),
    .systolic__vert_chans__4_0_rdy(instantiation_output_8035),
    .systolic__hor_chans__3_0_rdy(instantiation_output_7554),
    .systolic__hor_chans__3_1(instantiation_output_7559),
    .systolic__hor_chans__3_1_vld(instantiation_output_7560),
    .systolic__result_chans__3_0(instantiation_output_7773),
    .systolic__result_chans__3_0_vld(instantiation_output_7774),
    .systolic__vert_chans__3_0_rdy(instantiation_output_7989),
    .systolic__vert_chans__4_0(instantiation_output_8033),
    .systolic__vert_chans__4_0_vld(instantiation_output_8034),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_13_next __systolic__SystolicArray__PE_13_next_inst5 (
    .rst(rst),
    .systolic__hor_chans__3_1(instantiation_output_7565),
    .systolic__hor_chans__3_1_vld(instantiation_output_7566),
    .systolic__hor_chans__3_2_rdy(instantiation_output_7574),
    .systolic__result_chans__3_1_rdy(instantiation_output_7788),
    .systolic__vert_chans__3_1(instantiation_output_8000),
    .systolic__vert_chans__3_1_vld(instantiation_output_8001),
    .systolic__vert_chans__4_1_rdy(instantiation_output_8048),
    .systolic__hor_chans__3_1_rdy(instantiation_output_7567),
    .systolic__hor_chans__3_2(instantiation_output_7572),
    .systolic__hor_chans__3_2_vld(instantiation_output_7573),
    .systolic__result_chans__3_1(instantiation_output_7786),
    .systolic__result_chans__3_1_vld(instantiation_output_7787),
    .systolic__vert_chans__3_1_rdy(instantiation_output_8002),
    .systolic__vert_chans__4_1(instantiation_output_8046),
    .systolic__vert_chans__4_1_vld(instantiation_output_8047),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_14_next __systolic__SystolicArray__PE_14_next_inst6 (
    .rst(rst),
    .systolic__hor_chans__3_2(instantiation_output_7578),
    .systolic__hor_chans__3_2_vld(instantiation_output_7579),
    .systolic__hor_chans__3_3_rdy(instantiation_output_7587),
    .systolic__result_chans__3_2_rdy(instantiation_output_7801),
    .systolic__vert_chans__3_2(instantiation_output_8013),
    .systolic__vert_chans__3_2_vld(instantiation_output_8014),
    .systolic__vert_chans__4_2_rdy(instantiation_output_8061),
    .systolic__hor_chans__3_2_rdy(instantiation_output_7580),
    .systolic__hor_chans__3_3(instantiation_output_7585),
    .systolic__hor_chans__3_3_vld(instantiation_output_7586),
    .systolic__result_chans__3_2(instantiation_output_7799),
    .systolic__result_chans__3_2_vld(instantiation_output_7800),
    .systolic__vert_chans__3_2_rdy(instantiation_output_8015),
    .systolic__vert_chans__4_2(instantiation_output_8059),
    .systolic__vert_chans__4_2_vld(instantiation_output_8060),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_15_next __systolic__SystolicArray__PE_15_next_inst7 (
    .rst(rst),
    .systolic__hor_chans__3_3(instantiation_output_7591),
    .systolic__hor_chans__3_3_vld(instantiation_output_7592),
    .systolic__hor_chans__3_4_rdy(instantiation_output_7600),
    .systolic__result_chans__3_3_rdy(instantiation_output_7814),
    .systolic__vert_chans__3_3(instantiation_output_8026),
    .systolic__vert_chans__3_3_vld(instantiation_output_8027),
    .systolic__vert_chans__4_3_rdy(instantiation_output_8074),
    .systolic__hor_chans__3_3_rdy(instantiation_output_7593),
    .systolic__hor_chans__3_4(instantiation_output_7598),
    .systolic__hor_chans__3_4_vld(instantiation_output_7599),
    .systolic__result_chans__3_3(instantiation_output_7812),
    .systolic__result_chans__3_3_vld(instantiation_output_7813),
    .systolic__vert_chans__3_3_rdy(instantiation_output_8028),
    .systolic__vert_chans__4_3(instantiation_output_8072),
    .systolic__vert_chans__4_3_vld(instantiation_output_8073),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_1_next __systolic__SystolicArray__PE_1_next_inst8 (
    .rst(rst),
    .systolic__hor_chans__0_1(instantiation_output_7370),
    .systolic__hor_chans__0_1_vld(instantiation_output_7371),
    .systolic__hor_chans__0_2_rdy(instantiation_output_7379),
    .systolic__result_chans__0_1_rdy(instantiation_output_7632),
    .systolic__vert_chans__0_1(instantiation_output_7844),
    .systolic__vert_chans__0_1_vld(instantiation_output_7845),
    .systolic__vert_chans__1_1_rdy(instantiation_output_7892),
    .systolic__hor_chans__0_1_rdy(instantiation_output_7372),
    .systolic__hor_chans__0_2(instantiation_output_7377),
    .systolic__hor_chans__0_2_vld(instantiation_output_7378),
    .systolic__result_chans__0_1(instantiation_output_7630),
    .systolic__result_chans__0_1_vld(instantiation_output_7631),
    .systolic__vert_chans__0_1_rdy(instantiation_output_7846),
    .systolic__vert_chans__1_1(instantiation_output_7890),
    .systolic__vert_chans__1_1_vld(instantiation_output_7891),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_2_next __systolic__SystolicArray__PE_2_next_inst9 (
    .rst(rst),
    .systolic__hor_chans__0_2(instantiation_output_7383),
    .systolic__hor_chans__0_2_vld(instantiation_output_7384),
    .systolic__hor_chans__0_3_rdy(instantiation_output_7392),
    .systolic__result_chans__0_2_rdy(instantiation_output_7645),
    .systolic__vert_chans__0_2(instantiation_output_7857),
    .systolic__vert_chans__0_2_vld(instantiation_output_7858),
    .systolic__vert_chans__1_2_rdy(instantiation_output_7905),
    .systolic__hor_chans__0_2_rdy(instantiation_output_7385),
    .systolic__hor_chans__0_3(instantiation_output_7390),
    .systolic__hor_chans__0_3_vld(instantiation_output_7391),
    .systolic__result_chans__0_2(instantiation_output_7643),
    .systolic__result_chans__0_2_vld(instantiation_output_7644),
    .systolic__vert_chans__0_2_rdy(instantiation_output_7859),
    .systolic__vert_chans__1_2(instantiation_output_7903),
    .systolic__vert_chans__1_2_vld(instantiation_output_7904),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_3_next __systolic__SystolicArray__PE_3_next_inst10 (
    .rst(rst),
    .systolic__hor_chans__0_3(instantiation_output_7396),
    .systolic__hor_chans__0_3_vld(instantiation_output_7397),
    .systolic__hor_chans__0_4_rdy(instantiation_output_7405),
    .systolic__result_chans__0_3_rdy(instantiation_output_7658),
    .systolic__vert_chans__0_3(instantiation_output_7870),
    .systolic__vert_chans__0_3_vld(instantiation_output_7871),
    .systolic__vert_chans__1_3_rdy(instantiation_output_7918),
    .systolic__hor_chans__0_3_rdy(instantiation_output_7398),
    .systolic__hor_chans__0_4(instantiation_output_7403),
    .systolic__hor_chans__0_4_vld(instantiation_output_7404),
    .systolic__result_chans__0_3(instantiation_output_7656),
    .systolic__result_chans__0_3_vld(instantiation_output_7657),
    .systolic__vert_chans__0_3_rdy(instantiation_output_7872),
    .systolic__vert_chans__1_3(instantiation_output_7916),
    .systolic__vert_chans__1_3_vld(instantiation_output_7917),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_4_next __systolic__SystolicArray__PE_4_next_inst11 (
    .rst(rst),
    .systolic__hor_chans__1_0(instantiation_output_7422),
    .systolic__hor_chans__1_0_vld(instantiation_output_7423),
    .systolic__hor_chans__1_1_rdy(instantiation_output_7431),
    .systolic__result_chans__1_0_rdy(instantiation_output_7671),
    .systolic__vert_chans__1_0(instantiation_output_7883),
    .systolic__vert_chans__1_0_vld(instantiation_output_7884),
    .systolic__vert_chans__2_0_rdy(instantiation_output_7931),
    .systolic__hor_chans__1_0_rdy(instantiation_output_7424),
    .systolic__hor_chans__1_1(instantiation_output_7429),
    .systolic__hor_chans__1_1_vld(instantiation_output_7430),
    .systolic__result_chans__1_0(instantiation_output_7669),
    .systolic__result_chans__1_0_vld(instantiation_output_7670),
    .systolic__vert_chans__1_0_rdy(instantiation_output_7885),
    .systolic__vert_chans__2_0(instantiation_output_7929),
    .systolic__vert_chans__2_0_vld(instantiation_output_7930),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_5_next __systolic__SystolicArray__PE_5_next_inst12 (
    .rst(rst),
    .systolic__hor_chans__1_1(instantiation_output_7435),
    .systolic__hor_chans__1_1_vld(instantiation_output_7436),
    .systolic__hor_chans__1_2_rdy(instantiation_output_7444),
    .systolic__result_chans__1_1_rdy(instantiation_output_7684),
    .systolic__vert_chans__1_1(instantiation_output_7896),
    .systolic__vert_chans__1_1_vld(instantiation_output_7897),
    .systolic__vert_chans__2_1_rdy(instantiation_output_7944),
    .systolic__hor_chans__1_1_rdy(instantiation_output_7437),
    .systolic__hor_chans__1_2(instantiation_output_7442),
    .systolic__hor_chans__1_2_vld(instantiation_output_7443),
    .systolic__result_chans__1_1(instantiation_output_7682),
    .systolic__result_chans__1_1_vld(instantiation_output_7683),
    .systolic__vert_chans__1_1_rdy(instantiation_output_7898),
    .systolic__vert_chans__2_1(instantiation_output_7942),
    .systolic__vert_chans__2_1_vld(instantiation_output_7943),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_6_next __systolic__SystolicArray__PE_6_next_inst13 (
    .rst(rst),
    .systolic__hor_chans__1_2(instantiation_output_7448),
    .systolic__hor_chans__1_2_vld(instantiation_output_7449),
    .systolic__hor_chans__1_3_rdy(instantiation_output_7457),
    .systolic__result_chans__1_2_rdy(instantiation_output_7697),
    .systolic__vert_chans__1_2(instantiation_output_7909),
    .systolic__vert_chans__1_2_vld(instantiation_output_7910),
    .systolic__vert_chans__2_2_rdy(instantiation_output_7957),
    .systolic__hor_chans__1_2_rdy(instantiation_output_7450),
    .systolic__hor_chans__1_3(instantiation_output_7455),
    .systolic__hor_chans__1_3_vld(instantiation_output_7456),
    .systolic__result_chans__1_2(instantiation_output_7695),
    .systolic__result_chans__1_2_vld(instantiation_output_7696),
    .systolic__vert_chans__1_2_rdy(instantiation_output_7911),
    .systolic__vert_chans__2_2(instantiation_output_7955),
    .systolic__vert_chans__2_2_vld(instantiation_output_7956),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_7_next __systolic__SystolicArray__PE_7_next_inst14 (
    .rst(rst),
    .systolic__hor_chans__1_3(instantiation_output_7461),
    .systolic__hor_chans__1_3_vld(instantiation_output_7462),
    .systolic__hor_chans__1_4_rdy(instantiation_output_7470),
    .systolic__result_chans__1_3_rdy(instantiation_output_7710),
    .systolic__vert_chans__1_3(instantiation_output_7922),
    .systolic__vert_chans__1_3_vld(instantiation_output_7923),
    .systolic__vert_chans__2_3_rdy(instantiation_output_7970),
    .systolic__hor_chans__1_3_rdy(instantiation_output_7463),
    .systolic__hor_chans__1_4(instantiation_output_7468),
    .systolic__hor_chans__1_4_vld(instantiation_output_7469),
    .systolic__result_chans__1_3(instantiation_output_7708),
    .systolic__result_chans__1_3_vld(instantiation_output_7709),
    .systolic__vert_chans__1_3_rdy(instantiation_output_7924),
    .systolic__vert_chans__2_3(instantiation_output_7968),
    .systolic__vert_chans__2_3_vld(instantiation_output_7969),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_8_next __systolic__SystolicArray__PE_8_next_inst15 (
    .rst(rst),
    .systolic__hor_chans__2_0(instantiation_output_7487),
    .systolic__hor_chans__2_0_vld(instantiation_output_7488),
    .systolic__hor_chans__2_1_rdy(instantiation_output_7496),
    .systolic__result_chans__2_0_rdy(instantiation_output_7723),
    .systolic__vert_chans__2_0(instantiation_output_7935),
    .systolic__vert_chans__2_0_vld(instantiation_output_7936),
    .systolic__vert_chans__3_0_rdy(instantiation_output_7983),
    .systolic__hor_chans__2_0_rdy(instantiation_output_7489),
    .systolic__hor_chans__2_1(instantiation_output_7494),
    .systolic__hor_chans__2_1_vld(instantiation_output_7495),
    .systolic__result_chans__2_0(instantiation_output_7721),
    .systolic__result_chans__2_0_vld(instantiation_output_7722),
    .systolic__vert_chans__2_0_rdy(instantiation_output_7937),
    .systolic__vert_chans__3_0(instantiation_output_7981),
    .systolic__vert_chans__3_0_vld(instantiation_output_7982),
    .clk(clk)
  );
  __systolic__SystolicArray__PE_9_next __systolic__SystolicArray__PE_9_next_inst16 (
    .rst(rst),
    .systolic__hor_chans__2_1(instantiation_output_7500),
    .systolic__hor_chans__2_1_vld(instantiation_output_7501),
    .systolic__hor_chans__2_2_rdy(instantiation_output_7509),
    .systolic__result_chans__2_1_rdy(instantiation_output_7736),
    .systolic__vert_chans__2_1(instantiation_output_7948),
    .systolic__vert_chans__2_1_vld(instantiation_output_7949),
    .systolic__vert_chans__3_1_rdy(instantiation_output_7996),
    .systolic__hor_chans__2_1_rdy(instantiation_output_7502),
    .systolic__hor_chans__2_2(instantiation_output_7507),
    .systolic__hor_chans__2_2_vld(instantiation_output_7508),
    .systolic__result_chans__2_1(instantiation_output_7734),
    .systolic__result_chans__2_1_vld(instantiation_output_7735),
    .systolic__vert_chans__2_1_rdy(instantiation_output_7950),
    .systolic__vert_chans__3_1(instantiation_output_7994),
    .systolic__vert_chans__3_1_vld(instantiation_output_7995),
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
    .push_data(instantiation_output_7351),
    .push_valid(instantiation_output_7352),
    .pop_ready(instantiation_output_7359),
    .push_ready(instantiation_output_7353),
    .pop_data(instantiation_output_7357),
    .pop_valid(instantiation_output_7358)
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
    .push_data(instantiation_output_7364),
    .push_valid(instantiation_output_7365),
    .pop_ready(instantiation_output_7372),
    .push_ready(instantiation_output_7366),
    .pop_data(instantiation_output_7370),
    .pop_valid(instantiation_output_7371)
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
    .push_data(instantiation_output_7377),
    .push_valid(instantiation_output_7378),
    .pop_ready(instantiation_output_7385),
    .push_ready(instantiation_output_7379),
    .pop_data(instantiation_output_7383),
    .pop_valid(instantiation_output_7384)
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
    .push_data(instantiation_output_7390),
    .push_valid(instantiation_output_7391),
    .pop_ready(instantiation_output_7398),
    .push_ready(instantiation_output_7392),
    .pop_data(instantiation_output_7396),
    .pop_valid(instantiation_output_7397)
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
    .push_data(instantiation_output_7403),
    .push_valid(instantiation_output_7404),
    .pop_ready(instantiation_output_7411),
    .push_ready(instantiation_output_7405),
    .pop_data(instantiation_output_7409),
    .pop_valid(instantiation_output_7410)
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
    .push_data(instantiation_output_7416),
    .push_valid(instantiation_output_7417),
    .pop_ready(instantiation_output_7424),
    .push_ready(instantiation_output_7418),
    .pop_data(instantiation_output_7422),
    .pop_valid(instantiation_output_7423)
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
    .push_data(instantiation_output_7429),
    .push_valid(instantiation_output_7430),
    .pop_ready(instantiation_output_7437),
    .push_ready(instantiation_output_7431),
    .pop_data(instantiation_output_7435),
    .pop_valid(instantiation_output_7436)
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
    .push_data(instantiation_output_7442),
    .push_valid(instantiation_output_7443),
    .pop_ready(instantiation_output_7450),
    .push_ready(instantiation_output_7444),
    .pop_data(instantiation_output_7448),
    .pop_valid(instantiation_output_7449)
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
    .push_data(instantiation_output_7455),
    .push_valid(instantiation_output_7456),
    .pop_ready(instantiation_output_7463),
    .push_ready(instantiation_output_7457),
    .pop_data(instantiation_output_7461),
    .pop_valid(instantiation_output_7462)
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
    .push_data(instantiation_output_7468),
    .push_valid(instantiation_output_7469),
    .pop_ready(instantiation_output_7476),
    .push_ready(instantiation_output_7470),
    .pop_data(instantiation_output_7474),
    .pop_valid(instantiation_output_7475)
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
    .push_data(instantiation_output_7481),
    .push_valid(instantiation_output_7482),
    .pop_ready(instantiation_output_7489),
    .push_ready(instantiation_output_7483),
    .pop_data(instantiation_output_7487),
    .pop_valid(instantiation_output_7488)
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
    .push_data(instantiation_output_7494),
    .push_valid(instantiation_output_7495),
    .pop_ready(instantiation_output_7502),
    .push_ready(instantiation_output_7496),
    .pop_data(instantiation_output_7500),
    .pop_valid(instantiation_output_7501)
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
    .push_data(instantiation_output_7507),
    .push_valid(instantiation_output_7508),
    .pop_ready(instantiation_output_7515),
    .push_ready(instantiation_output_7509),
    .pop_data(instantiation_output_7513),
    .pop_valid(instantiation_output_7514)
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
    .push_data(instantiation_output_7520),
    .push_valid(instantiation_output_7521),
    .pop_ready(instantiation_output_7528),
    .push_ready(instantiation_output_7522),
    .pop_data(instantiation_output_7526),
    .pop_valid(instantiation_output_7527)
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
    .push_data(instantiation_output_7533),
    .push_valid(instantiation_output_7534),
    .pop_ready(instantiation_output_7541),
    .push_ready(instantiation_output_7535),
    .pop_data(instantiation_output_7539),
    .pop_valid(instantiation_output_7540)
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
    .push_data(instantiation_output_7546),
    .push_valid(instantiation_output_7547),
    .pop_ready(instantiation_output_7554),
    .push_ready(instantiation_output_7548),
    .pop_data(instantiation_output_7552),
    .pop_valid(instantiation_output_7553)
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
    .push_data(instantiation_output_7559),
    .push_valid(instantiation_output_7560),
    .pop_ready(instantiation_output_7567),
    .push_ready(instantiation_output_7561),
    .pop_data(instantiation_output_7565),
    .pop_valid(instantiation_output_7566)
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
    .push_data(instantiation_output_7572),
    .push_valid(instantiation_output_7573),
    .pop_ready(instantiation_output_7580),
    .push_ready(instantiation_output_7574),
    .pop_data(instantiation_output_7578),
    .pop_valid(instantiation_output_7579)
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
    .push_data(instantiation_output_7585),
    .push_valid(instantiation_output_7586),
    .pop_ready(instantiation_output_7593),
    .push_ready(instantiation_output_7587),
    .pop_data(instantiation_output_7591),
    .pop_valid(instantiation_output_7592)
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
    .push_data(instantiation_output_7598),
    .push_valid(instantiation_output_7599),
    .pop_ready(instantiation_output_7606),
    .push_ready(instantiation_output_7600),
    .pop_data(instantiation_output_7604),
    .pop_valid(instantiation_output_7605)
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
    .push_data(instantiation_output_7617),
    .push_valid(instantiation_output_7618),
    .pop_ready(instantiation_output_7625),
    .push_ready(instantiation_output_7619),
    .pop_data(instantiation_output_7623),
    .pop_valid(instantiation_output_7624)
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
    .push_data(instantiation_output_7630),
    .push_valid(instantiation_output_7631),
    .pop_ready(instantiation_output_7638),
    .push_ready(instantiation_output_7632),
    .pop_data(instantiation_output_7636),
    .pop_valid(instantiation_output_7637)
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
    .push_data(instantiation_output_7643),
    .push_valid(instantiation_output_7644),
    .pop_ready(instantiation_output_7651),
    .push_ready(instantiation_output_7645),
    .pop_data(instantiation_output_7649),
    .pop_valid(instantiation_output_7650)
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
    .push_data(instantiation_output_7656),
    .push_valid(instantiation_output_7657),
    .pop_ready(instantiation_output_7664),
    .push_ready(instantiation_output_7658),
    .pop_data(instantiation_output_7662),
    .pop_valid(instantiation_output_7663)
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
    .push_data(instantiation_output_7669),
    .push_valid(instantiation_output_7670),
    .pop_ready(instantiation_output_7677),
    .push_ready(instantiation_output_7671),
    .pop_data(instantiation_output_7675),
    .pop_valid(instantiation_output_7676)
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
    .push_data(instantiation_output_7682),
    .push_valid(instantiation_output_7683),
    .pop_ready(instantiation_output_7690),
    .push_ready(instantiation_output_7684),
    .pop_data(instantiation_output_7688),
    .pop_valid(instantiation_output_7689)
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
    .push_data(instantiation_output_7695),
    .push_valid(instantiation_output_7696),
    .pop_ready(instantiation_output_7703),
    .push_ready(instantiation_output_7697),
    .pop_data(instantiation_output_7701),
    .pop_valid(instantiation_output_7702)
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
    .push_data(instantiation_output_7708),
    .push_valid(instantiation_output_7709),
    .pop_ready(instantiation_output_7716),
    .push_ready(instantiation_output_7710),
    .pop_data(instantiation_output_7714),
    .pop_valid(instantiation_output_7715)
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
    .push_data(instantiation_output_7721),
    .push_valid(instantiation_output_7722),
    .pop_ready(instantiation_output_7729),
    .push_ready(instantiation_output_7723),
    .pop_data(instantiation_output_7727),
    .pop_valid(instantiation_output_7728)
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
    .push_data(instantiation_output_7734),
    .push_valid(instantiation_output_7735),
    .pop_ready(instantiation_output_7742),
    .push_ready(instantiation_output_7736),
    .pop_data(instantiation_output_7740),
    .pop_valid(instantiation_output_7741)
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
    .push_data(instantiation_output_7747),
    .push_valid(instantiation_output_7748),
    .pop_ready(instantiation_output_7755),
    .push_ready(instantiation_output_7749),
    .pop_data(instantiation_output_7753),
    .pop_valid(instantiation_output_7754)
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
    .push_data(instantiation_output_7760),
    .push_valid(instantiation_output_7761),
    .pop_ready(instantiation_output_7768),
    .push_ready(instantiation_output_7762),
    .pop_data(instantiation_output_7766),
    .pop_valid(instantiation_output_7767)
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
    .push_data(instantiation_output_7773),
    .push_valid(instantiation_output_7774),
    .pop_ready(instantiation_output_7781),
    .push_ready(instantiation_output_7775),
    .pop_data(instantiation_output_7779),
    .pop_valid(instantiation_output_7780)
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
    .push_data(instantiation_output_7786),
    .push_valid(instantiation_output_7787),
    .pop_ready(instantiation_output_7794),
    .push_ready(instantiation_output_7788),
    .pop_data(instantiation_output_7792),
    .pop_valid(instantiation_output_7793)
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
    .push_data(instantiation_output_7799),
    .push_valid(instantiation_output_7800),
    .pop_ready(instantiation_output_7807),
    .push_ready(instantiation_output_7801),
    .pop_data(instantiation_output_7805),
    .pop_valid(instantiation_output_7806)
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
    .push_data(instantiation_output_7812),
    .push_valid(instantiation_output_7813),
    .pop_ready(instantiation_output_7820),
    .push_ready(instantiation_output_7814),
    .pop_data(instantiation_output_7818),
    .pop_valid(instantiation_output_7819)
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
    .push_data(instantiation_output_7825),
    .push_valid(instantiation_output_7826),
    .pop_ready(instantiation_output_7833),
    .push_ready(instantiation_output_7827),
    .pop_data(instantiation_output_7831),
    .pop_valid(instantiation_output_7832)
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
    .push_data(instantiation_output_7838),
    .push_valid(instantiation_output_7839),
    .pop_ready(instantiation_output_7846),
    .push_ready(instantiation_output_7840),
    .pop_data(instantiation_output_7844),
    .pop_valid(instantiation_output_7845)
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
    .push_data(instantiation_output_7851),
    .push_valid(instantiation_output_7852),
    .pop_ready(instantiation_output_7859),
    .push_ready(instantiation_output_7853),
    .pop_data(instantiation_output_7857),
    .pop_valid(instantiation_output_7858)
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
    .push_data(instantiation_output_7864),
    .push_valid(instantiation_output_7865),
    .pop_ready(instantiation_output_7872),
    .push_ready(instantiation_output_7866),
    .pop_data(instantiation_output_7870),
    .pop_valid(instantiation_output_7871)
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
    .push_data(instantiation_output_7877),
    .push_valid(instantiation_output_7878),
    .pop_ready(instantiation_output_7885),
    .push_ready(instantiation_output_7879),
    .pop_data(instantiation_output_7883),
    .pop_valid(instantiation_output_7884)
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
    .push_data(instantiation_output_7890),
    .push_valid(instantiation_output_7891),
    .pop_ready(instantiation_output_7898),
    .push_ready(instantiation_output_7892),
    .pop_data(instantiation_output_7896),
    .pop_valid(instantiation_output_7897)
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
    .push_data(instantiation_output_7903),
    .push_valid(instantiation_output_7904),
    .pop_ready(instantiation_output_7911),
    .push_ready(instantiation_output_7905),
    .pop_data(instantiation_output_7909),
    .pop_valid(instantiation_output_7910)
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
    .push_data(instantiation_output_7916),
    .push_valid(instantiation_output_7917),
    .pop_ready(instantiation_output_7924),
    .push_ready(instantiation_output_7918),
    .pop_data(instantiation_output_7922),
    .pop_valid(instantiation_output_7923)
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
    .push_data(instantiation_output_7929),
    .push_valid(instantiation_output_7930),
    .pop_ready(instantiation_output_7937),
    .push_ready(instantiation_output_7931),
    .pop_data(instantiation_output_7935),
    .pop_valid(instantiation_output_7936)
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
    .push_data(instantiation_output_7942),
    .push_valid(instantiation_output_7943),
    .pop_ready(instantiation_output_7950),
    .push_ready(instantiation_output_7944),
    .pop_data(instantiation_output_7948),
    .pop_valid(instantiation_output_7949)
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
    .push_data(instantiation_output_7955),
    .push_valid(instantiation_output_7956),
    .pop_ready(instantiation_output_7963),
    .push_ready(instantiation_output_7957),
    .pop_data(instantiation_output_7961),
    .pop_valid(instantiation_output_7962)
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
    .push_data(instantiation_output_7968),
    .push_valid(instantiation_output_7969),
    .pop_ready(instantiation_output_7976),
    .push_ready(instantiation_output_7970),
    .pop_data(instantiation_output_7974),
    .pop_valid(instantiation_output_7975)
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
    .push_data(instantiation_output_7981),
    .push_valid(instantiation_output_7982),
    .pop_ready(instantiation_output_7989),
    .push_ready(instantiation_output_7983),
    .pop_data(instantiation_output_7987),
    .pop_valid(instantiation_output_7988)
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
    .push_data(instantiation_output_7994),
    .push_valid(instantiation_output_7995),
    .pop_ready(instantiation_output_8002),
    .push_ready(instantiation_output_7996),
    .pop_data(instantiation_output_8000),
    .pop_valid(instantiation_output_8001)
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
    .push_data(instantiation_output_8007),
    .push_valid(instantiation_output_8008),
    .pop_ready(instantiation_output_8015),
    .push_ready(instantiation_output_8009),
    .pop_data(instantiation_output_8013),
    .pop_valid(instantiation_output_8014)
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
    .push_data(instantiation_output_8020),
    .push_valid(instantiation_output_8021),
    .pop_ready(instantiation_output_8028),
    .push_ready(instantiation_output_8022),
    .pop_data(instantiation_output_8026),
    .pop_valid(instantiation_output_8027)
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
    .push_data(instantiation_output_8033),
    .push_valid(instantiation_output_8034),
    .pop_ready(instantiation_output_8041),
    .push_ready(instantiation_output_8035),
    .pop_data(instantiation_output_8039),
    .pop_valid(instantiation_output_8040)
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
    .push_data(instantiation_output_8046),
    .push_valid(instantiation_output_8047),
    .pop_ready(instantiation_output_8054),
    .push_ready(instantiation_output_8048),
    .pop_data(instantiation_output_8052),
    .pop_valid(instantiation_output_8053)
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
    .push_data(instantiation_output_8059),
    .push_valid(instantiation_output_8060),
    .pop_ready(instantiation_output_8067),
    .push_ready(instantiation_output_8061),
    .pop_data(instantiation_output_8065),
    .pop_valid(instantiation_output_8066)
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
    .push_data(instantiation_output_8072),
    .push_valid(instantiation_output_8073),
    .pop_ready(instantiation_output_8080),
    .push_ready(instantiation_output_8074),
    .pop_data(instantiation_output_8078),
    .pop_valid(instantiation_output_8079)
  );
  assign systolic__arg0_rdy = instantiation_output_7340;
  assign systolic__arg1_rdy = instantiation_output_7346;
  assign systolic__out0 = {{instantiation_output_7610[3][3], instantiation_output_7610[3][2], instantiation_output_7610[3][1], instantiation_output_7610[3][0]}, {instantiation_output_7610[2][3], instantiation_output_7610[2][2], instantiation_output_7610[2][1], instantiation_output_7610[2][0]}, {instantiation_output_7610[1][3], instantiation_output_7610[1][2], instantiation_output_7610[1][1], instantiation_output_7610[1][0]}, {instantiation_output_7610[0][3], instantiation_output_7610[0][2], instantiation_output_7610[0][1], instantiation_output_7610[0][0]}};
  assign systolic__out0_vld = instantiation_output_7611;
endmodule
