module __systolic_2x2_k1__SystolicArray_0_next__1(
  input wire clk,
  input wire rst,
  input wire systolic_2x2_k1__a_fifo_0_0_rdy,
  input wire [31:0] systolic_2x2_k1__a_fifo_0_2,
  input wire systolic_2x2_k1__a_fifo_0_2_vld,
  input wire systolic_2x2_k1__a_fifo_1_0_rdy,
  input wire [31:0] systolic_2x2_k1__a_fifo_1_2,
  input wire systolic_2x2_k1__a_fifo_1_2_vld,
  input wire [31:0] systolic_2x2_k1__a_row_0,
  input wire systolic_2x2_k1__a_row_0_vld,
  input wire [31:0] systolic_2x2_k1__a_row_1,
  input wire systolic_2x2_k1__a_row_1_vld,
  input wire [31:0] systolic_2x2_k1__b_col_0,
  input wire systolic_2x2_k1__b_col_0_vld,
  input wire [31:0] systolic_2x2_k1__b_col_1,
  input wire systolic_2x2_k1__b_col_1_vld,
  input wire systolic_2x2_k1__b_fifo_0_0_rdy,
  input wire [31:0] systolic_2x2_k1__b_fifo_0_2,
  input wire systolic_2x2_k1__b_fifo_0_2_vld,
  input wire systolic_2x2_k1__b_fifo_1_0_rdy,
  input wire [31:0] systolic_2x2_k1__b_fifo_1_2,
  input wire systolic_2x2_k1__b_fifo_1_2_vld,
  input wire [31:0] systolic_2x2_k1__c_out_0_0,
  input wire systolic_2x2_k1__c_out_0_0_vld,
  input wire [31:0] systolic_2x2_k1__c_out_0_1,
  input wire systolic_2x2_k1__c_out_0_1_vld,
  input wire [31:0] systolic_2x2_k1__c_out_1_0,
  input wire systolic_2x2_k1__c_out_1_0_vld,
  input wire [31:0] systolic_2x2_k1__c_out_1_1,
  input wire systolic_2x2_k1__c_out_1_1_vld,
  input wire systolic_2x2_k1__c_result_rdy,
  output wire [31:0] systolic_2x2_k1__a_fifo_0_0,
  output wire systolic_2x2_k1__a_fifo_0_0_vld,
  output wire systolic_2x2_k1__a_fifo_0_2_rdy,
  output wire [31:0] systolic_2x2_k1__a_fifo_1_0,
  output wire systolic_2x2_k1__a_fifo_1_0_vld,
  output wire systolic_2x2_k1__a_fifo_1_2_rdy,
  output wire systolic_2x2_k1__a_row_0_rdy,
  output wire systolic_2x2_k1__a_row_1_rdy,
  output wire systolic_2x2_k1__b_col_0_rdy,
  output wire systolic_2x2_k1__b_col_1_rdy,
  output wire [31:0] systolic_2x2_k1__b_fifo_0_0,
  output wire systolic_2x2_k1__b_fifo_0_0_vld,
  output wire systolic_2x2_k1__b_fifo_0_2_rdy,
  output wire [31:0] systolic_2x2_k1__b_fifo_1_0,
  output wire systolic_2x2_k1__b_fifo_1_0_vld,
  output wire systolic_2x2_k1__b_fifo_1_2_rdy,
  output wire systolic_2x2_k1__c_out_0_0_rdy,
  output wire systolic_2x2_k1__c_out_0_1_rdy,
  output wire systolic_2x2_k1__c_out_1_0_rdy,
  output wire systolic_2x2_k1__c_out_1_1_rdy,
  output wire [127:0] systolic_2x2_k1__c_result,
  output wire systolic_2x2_k1__c_result_vld
);
  wire [31:0] __systolic_2x2_k1__c_result_reg_init[2][2];
  assign __systolic_2x2_k1__c_result_reg_init = '{'{32'h0000_0000, 32'h0000_0000}, '{32'h0000_0000, 32'h0000_0000}};
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic_2x2_k1__a_fifo_0_0_has_been_sent_reg;
  reg __systolic_2x2_k1__a_fifo_1_0_has_been_sent_reg;
  reg __systolic_2x2_k1__b_fifo_0_0_has_been_sent_reg;
  reg __systolic_2x2_k1__b_fifo_1_0_has_been_sent_reg;
  reg __systolic_2x2_k1__c_result_has_been_sent_reg;
  reg [31:0] __systolic_2x2_k1__a_row_0_reg;
  reg __systolic_2x2_k1__a_row_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__a_row_1_reg;
  reg __systolic_2x2_k1__a_row_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_col_0_reg;
  reg __systolic_2x2_k1__b_col_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_col_1_reg;
  reg __systolic_2x2_k1__b_col_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__c_out_0_0_reg;
  reg __systolic_2x2_k1__c_out_0_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__c_out_0_1_reg;
  reg __systolic_2x2_k1__c_out_0_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__c_out_1_0_reg;
  reg __systolic_2x2_k1__c_out_1_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__c_out_1_1_reg;
  reg __systolic_2x2_k1__c_out_1_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_0_2_reg;
  reg __systolic_2x2_k1__a_fifo_0_2_valid_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_1_2_reg;
  reg __systolic_2x2_k1__a_fifo_1_2_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_0_2_reg;
  reg __systolic_2x2_k1__b_fifo_0_2_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_1_2_reg;
  reg __systolic_2x2_k1__b_fifo_1_2_valid_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_0_0_reg;
  reg __systolic_2x2_k1__a_fifo_0_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_1_0_reg;
  reg __systolic_2x2_k1__a_fifo_1_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_0_0_reg;
  reg __systolic_2x2_k1__b_fifo_0_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_1_0_reg;
  reg __systolic_2x2_k1__b_fifo_1_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__c_result_reg[2][2];
  reg __systolic_2x2_k1__c_result_valid_reg;
  wire p4_all_active_inputs_valid;
  wire __systolic_2x2_k1__c_result_vld_buf;
  wire __systolic_2x2_k1__c_result_not_has_been_sent;
  wire systolic_2x2_k1__c_result_valid_inv;
  wire __systolic_2x2_k1__c_result_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__c_result_valid_load_en;
  wire systolic_2x2_k1__c_result_load_en;
  wire __systolic_2x2_k1__c_result_has_sent_or_is_ready;
  wire p4_stage_done;
  wire p4_not_valid;
  wire p3_enable;
  wire __systolic_2x2_k1__b_fifo_1_0_vld_buf;
  wire __systolic_2x2_k1__b_fifo_1_0_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_1_0_valid_inv;
  wire __systolic_2x2_k1__b_fifo_1_0_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_1_0_valid_load_en;
  wire systolic_2x2_k1__b_fifo_1_0_load_en;
  wire __systolic_2x2_k1__b_fifo_1_0_has_sent_or_is_ready;
  wire p3_stage_done;
  wire p3_data_enable;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic_2x2_k1__b_fifo_0_0_vld_buf;
  wire __systolic_2x2_k1__b_fifo_0_0_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_0_0_valid_inv;
  wire __systolic_2x2_k1__b_fifo_0_0_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_0_0_valid_load_en;
  wire systolic_2x2_k1__b_fifo_0_0_load_en;
  wire __systolic_2x2_k1__b_fifo_0_0_has_sent_or_is_ready;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_not_valid;
  wire p1_enable;
  wire __systolic_2x2_k1__a_fifo_1_0_vld_buf;
  wire __systolic_2x2_k1__a_fifo_1_0_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_1_0_valid_inv;
  wire __systolic_2x2_k1__a_fifo_1_0_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_1_0_valid_load_en;
  wire systolic_2x2_k1__a_fifo_1_0_load_en;
  wire __systolic_2x2_k1__a_fifo_1_0_has_sent_or_is_ready;
  wire p1_stage_done;
  wire p1_data_enable;
  wire p1_not_valid;
  wire p0_enable;
  wire __systolic_2x2_k1__a_fifo_0_0_vld_buf;
  wire __systolic_2x2_k1__a_fifo_0_0_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_0_0_valid_inv;
  wire __systolic_2x2_k1__a_fifo_0_0_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_0_0_valid_load_en;
  wire systolic_2x2_k1__a_fifo_0_0_load_en;
  wire __systolic_2x2_k1__a_fifo_0_0_has_sent_or_is_ready;
  wire p0_stage_done;
  wire systolic_2x2_k1__a_fifo_0_2_valid_inv;
  wire systolic_2x2_k1__a_fifo_1_2_valid_inv;
  wire p0_data_enable;
  wire systolic_2x2_k1__a_row_0_valid_inv;
  wire systolic_2x2_k1__a_row_1_valid_inv;
  wire systolic_2x2_k1__b_col_0_valid_inv;
  wire systolic_2x2_k1__b_col_1_valid_inv;
  wire systolic_2x2_k1__b_fifo_0_2_valid_inv;
  wire systolic_2x2_k1__b_fifo_1_2_valid_inv;
  wire systolic_2x2_k1__c_out_0_0_valid_inv;
  wire systolic_2x2_k1__c_out_0_1_valid_inv;
  wire systolic_2x2_k1__c_out_1_0_valid_inv;
  wire systolic_2x2_k1__c_out_1_1_valid_inv;
  wire systolic_2x2_k1__a_fifo_0_2_valid_load_en;
  wire systolic_2x2_k1__a_fifo_1_2_valid_load_en;
  wire systolic_2x2_k1__a_row_0_valid_load_en;
  wire systolic_2x2_k1__a_row_1_valid_load_en;
  wire systolic_2x2_k1__b_col_0_valid_load_en;
  wire systolic_2x2_k1__b_col_1_valid_load_en;
  wire systolic_2x2_k1__b_fifo_0_2_valid_load_en;
  wire systolic_2x2_k1__b_fifo_1_2_valid_load_en;
  wire systolic_2x2_k1__c_out_0_0_valid_load_en;
  wire systolic_2x2_k1__c_out_0_1_valid_load_en;
  wire systolic_2x2_k1__c_out_1_0_valid_load_en;
  wire systolic_2x2_k1__c_out_1_1_valid_load_en;
  wire __systolic_2x2_k1__a_fifo_0_0_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__a_fifo_0_0_valid_and_ready_txfr;
  wire __systolic_2x2_k1__a_fifo_1_0_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__a_fifo_1_0_valid_and_ready_txfr;
  wire __systolic_2x2_k1__b_fifo_0_0_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__b_fifo_0_0_valid_and_ready_txfr;
  wire __systolic_2x2_k1__b_fifo_1_0_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__b_fifo_1_0_valid_and_ready_txfr;
  wire __systolic_2x2_k1__c_result_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__c_result_valid_and_ready_txfr;
  wire [31:0] array_646[2];
  wire [31:0] array_647[2];
  wire systolic_2x2_k1__a_fifo_0_2_load_en;
  wire systolic_2x2_k1__a_fifo_1_2_load_en;
  wire systolic_2x2_k1__a_row_0_load_en;
  wire systolic_2x2_k1__a_row_1_load_en;
  wire systolic_2x2_k1__b_col_0_load_en;
  wire systolic_2x2_k1__b_col_1_load_en;
  wire systolic_2x2_k1__b_fifo_0_2_load_en;
  wire systolic_2x2_k1__b_fifo_1_2_load_en;
  wire systolic_2x2_k1__c_out_0_0_load_en;
  wire systolic_2x2_k1__c_out_0_1_load_en;
  wire systolic_2x2_k1__c_out_1_0_load_en;
  wire systolic_2x2_k1__c_out_1_1_load_en;
  wire __systolic_2x2_k1__a_fifo_0_0_not_stage_load;
  wire __systolic_2x2_k1__a_fifo_0_0_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__a_fifo_1_0_not_stage_load;
  wire __systolic_2x2_k1__a_fifo_1_0_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__b_fifo_0_0_not_stage_load;
  wire __systolic_2x2_k1__b_fifo_0_0_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__b_fifo_1_0_not_stage_load;
  wire __systolic_2x2_k1__b_fifo_1_0_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__c_result_not_stage_load;
  wire __systolic_2x2_k1__c_result_has_been_sent_reg_load_en;
  wire [31:0] C[2][2];
  assign p4_all_active_inputs_valid = __systolic_2x2_k1__c_out_0_0_valid_reg & __systolic_2x2_k1__c_out_0_1_valid_reg & __systolic_2x2_k1__c_out_1_0_valid_reg & __systolic_2x2_k1__c_out_1_1_valid_reg & __systolic_2x2_k1__a_fifo_0_2_valid_reg & __systolic_2x2_k1__a_fifo_1_2_valid_reg & __systolic_2x2_k1__b_fifo_0_2_valid_reg & __systolic_2x2_k1__b_fifo_1_2_valid_reg;
  assign __systolic_2x2_k1__c_result_vld_buf = p4_all_active_inputs_valid & p3_valid;
  assign __systolic_2x2_k1__c_result_not_has_been_sent = ~__systolic_2x2_k1__c_result_has_been_sent_reg;
  assign systolic_2x2_k1__c_result_valid_inv = ~__systolic_2x2_k1__c_result_valid_reg;
  assign __systolic_2x2_k1__c_result_valid_and_not_has_been_sent = __systolic_2x2_k1__c_result_vld_buf & __systolic_2x2_k1__c_result_not_has_been_sent;
  assign systolic_2x2_k1__c_result_valid_load_en = systolic_2x2_k1__c_result_rdy | systolic_2x2_k1__c_result_valid_inv;
  assign systolic_2x2_k1__c_result_load_en = __systolic_2x2_k1__c_result_valid_and_not_has_been_sent & systolic_2x2_k1__c_result_valid_load_en;
  assign __systolic_2x2_k1__c_result_has_sent_or_is_ready = systolic_2x2_k1__c_result_load_en | __systolic_2x2_k1__c_result_has_been_sent_reg;
  assign p4_stage_done = p3_valid & p4_all_active_inputs_valid & __systolic_2x2_k1__c_result_has_sent_or_is_ready;
  assign p4_not_valid = ~p3_valid;
  assign p3_enable = p4_stage_done | p4_not_valid;
  assign __systolic_2x2_k1__b_fifo_1_0_vld_buf = __systolic_2x2_k1__b_col_1_valid_reg & p2_valid & p3_enable;
  assign __systolic_2x2_k1__b_fifo_1_0_not_has_been_sent = ~__systolic_2x2_k1__b_fifo_1_0_has_been_sent_reg;
  assign systolic_2x2_k1__b_fifo_1_0_valid_inv = ~__systolic_2x2_k1__b_fifo_1_0_valid_reg;
  assign __systolic_2x2_k1__b_fifo_1_0_valid_and_not_has_been_sent = __systolic_2x2_k1__b_fifo_1_0_vld_buf & __systolic_2x2_k1__b_fifo_1_0_not_has_been_sent;
  assign systolic_2x2_k1__b_fifo_1_0_valid_load_en = systolic_2x2_k1__b_fifo_1_0_rdy | systolic_2x2_k1__b_fifo_1_0_valid_inv;
  assign systolic_2x2_k1__b_fifo_1_0_load_en = __systolic_2x2_k1__b_fifo_1_0_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_1_0_valid_load_en;
  assign __systolic_2x2_k1__b_fifo_1_0_has_sent_or_is_ready = systolic_2x2_k1__b_fifo_1_0_load_en | __systolic_2x2_k1__b_fifo_1_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & __systolic_2x2_k1__b_col_1_valid_reg & __systolic_2x2_k1__b_fifo_1_0_has_sent_or_is_ready;
  assign p3_data_enable = p3_enable & p3_stage_done;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_data_enable | p3_not_valid;
  assign __systolic_2x2_k1__b_fifo_0_0_vld_buf = __systolic_2x2_k1__b_col_0_valid_reg & p1_valid & p2_enable;
  assign __systolic_2x2_k1__b_fifo_0_0_not_has_been_sent = ~__systolic_2x2_k1__b_fifo_0_0_has_been_sent_reg;
  assign systolic_2x2_k1__b_fifo_0_0_valid_inv = ~__systolic_2x2_k1__b_fifo_0_0_valid_reg;
  assign __systolic_2x2_k1__b_fifo_0_0_valid_and_not_has_been_sent = __systolic_2x2_k1__b_fifo_0_0_vld_buf & __systolic_2x2_k1__b_fifo_0_0_not_has_been_sent;
  assign systolic_2x2_k1__b_fifo_0_0_valid_load_en = systolic_2x2_k1__b_fifo_0_0_rdy | systolic_2x2_k1__b_fifo_0_0_valid_inv;
  assign systolic_2x2_k1__b_fifo_0_0_load_en = __systolic_2x2_k1__b_fifo_0_0_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_0_0_valid_load_en;
  assign __systolic_2x2_k1__b_fifo_0_0_has_sent_or_is_ready = systolic_2x2_k1__b_fifo_0_0_load_en | __systolic_2x2_k1__b_fifo_0_0_has_been_sent_reg;
  assign p2_stage_done = p1_valid & __systolic_2x2_k1__b_col_0_valid_reg & __systolic_2x2_k1__b_fifo_0_0_has_sent_or_is_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign __systolic_2x2_k1__a_fifo_1_0_vld_buf = __systolic_2x2_k1__a_row_1_valid_reg & p0_valid & p1_enable;
  assign __systolic_2x2_k1__a_fifo_1_0_not_has_been_sent = ~__systolic_2x2_k1__a_fifo_1_0_has_been_sent_reg;
  assign systolic_2x2_k1__a_fifo_1_0_valid_inv = ~__systolic_2x2_k1__a_fifo_1_0_valid_reg;
  assign __systolic_2x2_k1__a_fifo_1_0_valid_and_not_has_been_sent = __systolic_2x2_k1__a_fifo_1_0_vld_buf & __systolic_2x2_k1__a_fifo_1_0_not_has_been_sent;
  assign systolic_2x2_k1__a_fifo_1_0_valid_load_en = systolic_2x2_k1__a_fifo_1_0_rdy | systolic_2x2_k1__a_fifo_1_0_valid_inv;
  assign systolic_2x2_k1__a_fifo_1_0_load_en = __systolic_2x2_k1__a_fifo_1_0_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_1_0_valid_load_en;
  assign __systolic_2x2_k1__a_fifo_1_0_has_sent_or_is_ready = systolic_2x2_k1__a_fifo_1_0_load_en | __systolic_2x2_k1__a_fifo_1_0_has_been_sent_reg;
  assign p1_stage_done = p0_valid & __systolic_2x2_k1__a_row_1_valid_reg & __systolic_2x2_k1__a_fifo_1_0_has_sent_or_is_ready;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign __systolic_2x2_k1__a_fifo_0_0_vld_buf = __systolic_2x2_k1__a_row_0_valid_reg & p0_enable;
  assign __systolic_2x2_k1__a_fifo_0_0_not_has_been_sent = ~__systolic_2x2_k1__a_fifo_0_0_has_been_sent_reg;
  assign systolic_2x2_k1__a_fifo_0_0_valid_inv = ~__systolic_2x2_k1__a_fifo_0_0_valid_reg;
  assign __systolic_2x2_k1__a_fifo_0_0_valid_and_not_has_been_sent = __systolic_2x2_k1__a_fifo_0_0_vld_buf & __systolic_2x2_k1__a_fifo_0_0_not_has_been_sent;
  assign systolic_2x2_k1__a_fifo_0_0_valid_load_en = systolic_2x2_k1__a_fifo_0_0_rdy | systolic_2x2_k1__a_fifo_0_0_valid_inv;
  assign systolic_2x2_k1__a_fifo_0_0_load_en = __systolic_2x2_k1__a_fifo_0_0_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_0_0_valid_load_en;
  assign __systolic_2x2_k1__a_fifo_0_0_has_sent_or_is_ready = systolic_2x2_k1__a_fifo_0_0_load_en | __systolic_2x2_k1__a_fifo_0_0_has_been_sent_reg;
  assign p0_stage_done = __systolic_2x2_k1__a_row_0_valid_reg & __systolic_2x2_k1__a_fifo_0_0_has_sent_or_is_ready;
  assign systolic_2x2_k1__a_fifo_0_2_valid_inv = ~__systolic_2x2_k1__a_fifo_0_2_valid_reg;
  assign systolic_2x2_k1__a_fifo_1_2_valid_inv = ~__systolic_2x2_k1__a_fifo_1_2_valid_reg;
  assign p0_data_enable = p0_enable & p0_stage_done;
  assign systolic_2x2_k1__a_row_0_valid_inv = ~__systolic_2x2_k1__a_row_0_valid_reg;
  assign systolic_2x2_k1__a_row_1_valid_inv = ~__systolic_2x2_k1__a_row_1_valid_reg;
  assign systolic_2x2_k1__b_col_0_valid_inv = ~__systolic_2x2_k1__b_col_0_valid_reg;
  assign systolic_2x2_k1__b_col_1_valid_inv = ~__systolic_2x2_k1__b_col_1_valid_reg;
  assign systolic_2x2_k1__b_fifo_0_2_valid_inv = ~__systolic_2x2_k1__b_fifo_0_2_valid_reg;
  assign systolic_2x2_k1__b_fifo_1_2_valid_inv = ~__systolic_2x2_k1__b_fifo_1_2_valid_reg;
  assign systolic_2x2_k1__c_out_0_0_valid_inv = ~__systolic_2x2_k1__c_out_0_0_valid_reg;
  assign systolic_2x2_k1__c_out_0_1_valid_inv = ~__systolic_2x2_k1__c_out_0_1_valid_reg;
  assign systolic_2x2_k1__c_out_1_0_valid_inv = ~__systolic_2x2_k1__c_out_1_0_valid_reg;
  assign systolic_2x2_k1__c_out_1_1_valid_inv = ~__systolic_2x2_k1__c_out_1_1_valid_reg;
  assign systolic_2x2_k1__a_fifo_0_2_valid_load_en = p4_stage_done | systolic_2x2_k1__a_fifo_0_2_valid_inv;
  assign systolic_2x2_k1__a_fifo_1_2_valid_load_en = p4_stage_done | systolic_2x2_k1__a_fifo_1_2_valid_inv;
  assign systolic_2x2_k1__a_row_0_valid_load_en = p0_data_enable | systolic_2x2_k1__a_row_0_valid_inv;
  assign systolic_2x2_k1__a_row_1_valid_load_en = p1_data_enable | systolic_2x2_k1__a_row_1_valid_inv;
  assign systolic_2x2_k1__b_col_0_valid_load_en = p2_data_enable | systolic_2x2_k1__b_col_0_valid_inv;
  assign systolic_2x2_k1__b_col_1_valid_load_en = p3_data_enable | systolic_2x2_k1__b_col_1_valid_inv;
  assign systolic_2x2_k1__b_fifo_0_2_valid_load_en = p4_stage_done | systolic_2x2_k1__b_fifo_0_2_valid_inv;
  assign systolic_2x2_k1__b_fifo_1_2_valid_load_en = p4_stage_done | systolic_2x2_k1__b_fifo_1_2_valid_inv;
  assign systolic_2x2_k1__c_out_0_0_valid_load_en = p4_stage_done | systolic_2x2_k1__c_out_0_0_valid_inv;
  assign systolic_2x2_k1__c_out_0_1_valid_load_en = p4_stage_done | systolic_2x2_k1__c_out_0_1_valid_inv;
  assign systolic_2x2_k1__c_out_1_0_valid_load_en = p4_stage_done | systolic_2x2_k1__c_out_1_0_valid_inv;
  assign systolic_2x2_k1__c_out_1_1_valid_load_en = p4_stage_done | systolic_2x2_k1__c_out_1_1_valid_inv;
  assign __systolic_2x2_k1__a_fifo_0_0_valid_and_all_active_outputs_ready = __systolic_2x2_k1__a_fifo_0_0_vld_buf & systolic_2x2_k1__a_fifo_0_0_load_en;
  assign __systolic_2x2_k1__a_fifo_0_0_valid_and_ready_txfr = __systolic_2x2_k1__a_fifo_0_0_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_0_0_load_en;
  assign __systolic_2x2_k1__a_fifo_1_0_valid_and_all_active_outputs_ready = __systolic_2x2_k1__a_fifo_1_0_vld_buf & systolic_2x2_k1__a_fifo_1_0_load_en;
  assign __systolic_2x2_k1__a_fifo_1_0_valid_and_ready_txfr = __systolic_2x2_k1__a_fifo_1_0_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_1_0_load_en;
  assign __systolic_2x2_k1__b_fifo_0_0_valid_and_all_active_outputs_ready = __systolic_2x2_k1__b_fifo_0_0_vld_buf & systolic_2x2_k1__b_fifo_0_0_load_en;
  assign __systolic_2x2_k1__b_fifo_0_0_valid_and_ready_txfr = __systolic_2x2_k1__b_fifo_0_0_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_0_0_load_en;
  assign __systolic_2x2_k1__b_fifo_1_0_valid_and_all_active_outputs_ready = __systolic_2x2_k1__b_fifo_1_0_vld_buf & systolic_2x2_k1__b_fifo_1_0_load_en;
  assign __systolic_2x2_k1__b_fifo_1_0_valid_and_ready_txfr = __systolic_2x2_k1__b_fifo_1_0_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_1_0_load_en;
  assign __systolic_2x2_k1__c_result_valid_and_all_active_outputs_ready = __systolic_2x2_k1__c_result_vld_buf & systolic_2x2_k1__c_result_load_en;
  assign __systolic_2x2_k1__c_result_valid_and_ready_txfr = __systolic_2x2_k1__c_result_valid_and_not_has_been_sent & systolic_2x2_k1__c_result_load_en;
  assign array_646[0] = __systolic_2x2_k1__c_out_0_0_reg;
  assign array_646[1] = __systolic_2x2_k1__c_out_0_1_reg;
  assign array_647[0] = __systolic_2x2_k1__c_out_1_0_reg;
  assign array_647[1] = __systolic_2x2_k1__c_out_1_1_reg;
  assign systolic_2x2_k1__a_fifo_0_2_load_en = systolic_2x2_k1__a_fifo_0_2_vld & systolic_2x2_k1__a_fifo_0_2_valid_load_en;
  assign systolic_2x2_k1__a_fifo_1_2_load_en = systolic_2x2_k1__a_fifo_1_2_vld & systolic_2x2_k1__a_fifo_1_2_valid_load_en;
  assign systolic_2x2_k1__a_row_0_load_en = systolic_2x2_k1__a_row_0_vld & systolic_2x2_k1__a_row_0_valid_load_en;
  assign systolic_2x2_k1__a_row_1_load_en = systolic_2x2_k1__a_row_1_vld & systolic_2x2_k1__a_row_1_valid_load_en;
  assign systolic_2x2_k1__b_col_0_load_en = systolic_2x2_k1__b_col_0_vld & systolic_2x2_k1__b_col_0_valid_load_en;
  assign systolic_2x2_k1__b_col_1_load_en = systolic_2x2_k1__b_col_1_vld & systolic_2x2_k1__b_col_1_valid_load_en;
  assign systolic_2x2_k1__b_fifo_0_2_load_en = systolic_2x2_k1__b_fifo_0_2_vld & systolic_2x2_k1__b_fifo_0_2_valid_load_en;
  assign systolic_2x2_k1__b_fifo_1_2_load_en = systolic_2x2_k1__b_fifo_1_2_vld & systolic_2x2_k1__b_fifo_1_2_valid_load_en;
  assign systolic_2x2_k1__c_out_0_0_load_en = systolic_2x2_k1__c_out_0_0_vld & systolic_2x2_k1__c_out_0_0_valid_load_en;
  assign systolic_2x2_k1__c_out_0_1_load_en = systolic_2x2_k1__c_out_0_1_vld & systolic_2x2_k1__c_out_0_1_valid_load_en;
  assign systolic_2x2_k1__c_out_1_0_load_en = systolic_2x2_k1__c_out_1_0_vld & systolic_2x2_k1__c_out_1_0_valid_load_en;
  assign systolic_2x2_k1__c_out_1_1_load_en = systolic_2x2_k1__c_out_1_1_vld & systolic_2x2_k1__c_out_1_1_valid_load_en;
  assign __systolic_2x2_k1__a_fifo_0_0_not_stage_load = ~__systolic_2x2_k1__a_fifo_0_0_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__a_fifo_0_0_has_been_sent_reg_load_en = __systolic_2x2_k1__a_fifo_0_0_valid_and_ready_txfr | __systolic_2x2_k1__a_fifo_0_0_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__a_fifo_1_0_not_stage_load = ~__systolic_2x2_k1__a_fifo_1_0_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__a_fifo_1_0_has_been_sent_reg_load_en = __systolic_2x2_k1__a_fifo_1_0_valid_and_ready_txfr | __systolic_2x2_k1__a_fifo_1_0_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__b_fifo_0_0_not_stage_load = ~__systolic_2x2_k1__b_fifo_0_0_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__b_fifo_0_0_has_been_sent_reg_load_en = __systolic_2x2_k1__b_fifo_0_0_valid_and_ready_txfr | __systolic_2x2_k1__b_fifo_0_0_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__b_fifo_1_0_not_stage_load = ~__systolic_2x2_k1__b_fifo_1_0_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__b_fifo_1_0_has_been_sent_reg_load_en = __systolic_2x2_k1__b_fifo_1_0_valid_and_ready_txfr | __systolic_2x2_k1__b_fifo_1_0_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__c_result_not_stage_load = ~__systolic_2x2_k1__c_result_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__c_result_has_been_sent_reg_load_en = __systolic_2x2_k1__c_result_valid_and_ready_txfr | __systolic_2x2_k1__c_result_valid_and_all_active_outputs_ready;
  assign C[0] = array_646;
  assign C[1] = array_647;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic_2x2_k1__a_fifo_0_0_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_1_0_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_0_0_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_1_0_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__c_result_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__a_row_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_row_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__a_row_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_row_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_col_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_col_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_col_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_col_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__c_out_0_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__c_out_0_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__c_out_0_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__c_out_0_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__c_out_1_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__c_out_1_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__c_out_1_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__c_out_1_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_0_2_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_0_2_valid_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_1_2_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_1_2_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_0_2_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_0_2_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_1_2_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_1_2_valid_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_0_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_0_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_1_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_1_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_0_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_0_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_1_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_1_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__c_result_reg <= __systolic_2x2_k1__c_result_reg_init;
      __systolic_2x2_k1__c_result_valid_reg <= 1'h0;
    end else begin
      p0_valid <= p0_enable ? p0_stage_done : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic_2x2_k1__a_fifo_0_0_has_been_sent_reg <= __systolic_2x2_k1__a_fifo_0_0_has_been_sent_reg_load_en ? __systolic_2x2_k1__a_fifo_0_0_not_stage_load : __systolic_2x2_k1__a_fifo_0_0_has_been_sent_reg;
      __systolic_2x2_k1__a_fifo_1_0_has_been_sent_reg <= __systolic_2x2_k1__a_fifo_1_0_has_been_sent_reg_load_en ? __systolic_2x2_k1__a_fifo_1_0_not_stage_load : __systolic_2x2_k1__a_fifo_1_0_has_been_sent_reg;
      __systolic_2x2_k1__b_fifo_0_0_has_been_sent_reg <= __systolic_2x2_k1__b_fifo_0_0_has_been_sent_reg_load_en ? __systolic_2x2_k1__b_fifo_0_0_not_stage_load : __systolic_2x2_k1__b_fifo_0_0_has_been_sent_reg;
      __systolic_2x2_k1__b_fifo_1_0_has_been_sent_reg <= __systolic_2x2_k1__b_fifo_1_0_has_been_sent_reg_load_en ? __systolic_2x2_k1__b_fifo_1_0_not_stage_load : __systolic_2x2_k1__b_fifo_1_0_has_been_sent_reg;
      __systolic_2x2_k1__c_result_has_been_sent_reg <= __systolic_2x2_k1__c_result_has_been_sent_reg_load_en ? __systolic_2x2_k1__c_result_not_stage_load : __systolic_2x2_k1__c_result_has_been_sent_reg;
      __systolic_2x2_k1__a_row_0_reg <= systolic_2x2_k1__a_row_0_load_en ? systolic_2x2_k1__a_row_0 : __systolic_2x2_k1__a_row_0_reg;
      __systolic_2x2_k1__a_row_0_valid_reg <= systolic_2x2_k1__a_row_0_valid_load_en ? systolic_2x2_k1__a_row_0_vld : __systolic_2x2_k1__a_row_0_valid_reg;
      __systolic_2x2_k1__a_row_1_reg <= systolic_2x2_k1__a_row_1_load_en ? systolic_2x2_k1__a_row_1 : __systolic_2x2_k1__a_row_1_reg;
      __systolic_2x2_k1__a_row_1_valid_reg <= systolic_2x2_k1__a_row_1_valid_load_en ? systolic_2x2_k1__a_row_1_vld : __systolic_2x2_k1__a_row_1_valid_reg;
      __systolic_2x2_k1__b_col_0_reg <= systolic_2x2_k1__b_col_0_load_en ? systolic_2x2_k1__b_col_0 : __systolic_2x2_k1__b_col_0_reg;
      __systolic_2x2_k1__b_col_0_valid_reg <= systolic_2x2_k1__b_col_0_valid_load_en ? systolic_2x2_k1__b_col_0_vld : __systolic_2x2_k1__b_col_0_valid_reg;
      __systolic_2x2_k1__b_col_1_reg <= systolic_2x2_k1__b_col_1_load_en ? systolic_2x2_k1__b_col_1 : __systolic_2x2_k1__b_col_1_reg;
      __systolic_2x2_k1__b_col_1_valid_reg <= systolic_2x2_k1__b_col_1_valid_load_en ? systolic_2x2_k1__b_col_1_vld : __systolic_2x2_k1__b_col_1_valid_reg;
      __systolic_2x2_k1__c_out_0_0_reg <= systolic_2x2_k1__c_out_0_0_load_en ? systolic_2x2_k1__c_out_0_0 : __systolic_2x2_k1__c_out_0_0_reg;
      __systolic_2x2_k1__c_out_0_0_valid_reg <= systolic_2x2_k1__c_out_0_0_valid_load_en ? systolic_2x2_k1__c_out_0_0_vld : __systolic_2x2_k1__c_out_0_0_valid_reg;
      __systolic_2x2_k1__c_out_0_1_reg <= systolic_2x2_k1__c_out_0_1_load_en ? systolic_2x2_k1__c_out_0_1 : __systolic_2x2_k1__c_out_0_1_reg;
      __systolic_2x2_k1__c_out_0_1_valid_reg <= systolic_2x2_k1__c_out_0_1_valid_load_en ? systolic_2x2_k1__c_out_0_1_vld : __systolic_2x2_k1__c_out_0_1_valid_reg;
      __systolic_2x2_k1__c_out_1_0_reg <= systolic_2x2_k1__c_out_1_0_load_en ? systolic_2x2_k1__c_out_1_0 : __systolic_2x2_k1__c_out_1_0_reg;
      __systolic_2x2_k1__c_out_1_0_valid_reg <= systolic_2x2_k1__c_out_1_0_valid_load_en ? systolic_2x2_k1__c_out_1_0_vld : __systolic_2x2_k1__c_out_1_0_valid_reg;
      __systolic_2x2_k1__c_out_1_1_reg <= systolic_2x2_k1__c_out_1_1_load_en ? systolic_2x2_k1__c_out_1_1 : __systolic_2x2_k1__c_out_1_1_reg;
      __systolic_2x2_k1__c_out_1_1_valid_reg <= systolic_2x2_k1__c_out_1_1_valid_load_en ? systolic_2x2_k1__c_out_1_1_vld : __systolic_2x2_k1__c_out_1_1_valid_reg;
      __systolic_2x2_k1__a_fifo_0_2_reg <= systolic_2x2_k1__a_fifo_0_2_load_en ? systolic_2x2_k1__a_fifo_0_2 : __systolic_2x2_k1__a_fifo_0_2_reg;
      __systolic_2x2_k1__a_fifo_0_2_valid_reg <= systolic_2x2_k1__a_fifo_0_2_valid_load_en ? systolic_2x2_k1__a_fifo_0_2_vld : __systolic_2x2_k1__a_fifo_0_2_valid_reg;
      __systolic_2x2_k1__a_fifo_1_2_reg <= systolic_2x2_k1__a_fifo_1_2_load_en ? systolic_2x2_k1__a_fifo_1_2 : __systolic_2x2_k1__a_fifo_1_2_reg;
      __systolic_2x2_k1__a_fifo_1_2_valid_reg <= systolic_2x2_k1__a_fifo_1_2_valid_load_en ? systolic_2x2_k1__a_fifo_1_2_vld : __systolic_2x2_k1__a_fifo_1_2_valid_reg;
      __systolic_2x2_k1__b_fifo_0_2_reg <= systolic_2x2_k1__b_fifo_0_2_load_en ? systolic_2x2_k1__b_fifo_0_2 : __systolic_2x2_k1__b_fifo_0_2_reg;
      __systolic_2x2_k1__b_fifo_0_2_valid_reg <= systolic_2x2_k1__b_fifo_0_2_valid_load_en ? systolic_2x2_k1__b_fifo_0_2_vld : __systolic_2x2_k1__b_fifo_0_2_valid_reg;
      __systolic_2x2_k1__b_fifo_1_2_reg <= systolic_2x2_k1__b_fifo_1_2_load_en ? systolic_2x2_k1__b_fifo_1_2 : __systolic_2x2_k1__b_fifo_1_2_reg;
      __systolic_2x2_k1__b_fifo_1_2_valid_reg <= systolic_2x2_k1__b_fifo_1_2_valid_load_en ? systolic_2x2_k1__b_fifo_1_2_vld : __systolic_2x2_k1__b_fifo_1_2_valid_reg;
      __systolic_2x2_k1__a_fifo_0_0_reg <= systolic_2x2_k1__a_fifo_0_0_load_en ? __systolic_2x2_k1__a_row_0_reg : __systolic_2x2_k1__a_fifo_0_0_reg;
      __systolic_2x2_k1__a_fifo_0_0_valid_reg <= systolic_2x2_k1__a_fifo_0_0_valid_load_en ? __systolic_2x2_k1__a_fifo_0_0_valid_and_not_has_been_sent : __systolic_2x2_k1__a_fifo_0_0_valid_reg;
      __systolic_2x2_k1__a_fifo_1_0_reg <= systolic_2x2_k1__a_fifo_1_0_load_en ? __systolic_2x2_k1__a_row_1_reg : __systolic_2x2_k1__a_fifo_1_0_reg;
      __systolic_2x2_k1__a_fifo_1_0_valid_reg <= systolic_2x2_k1__a_fifo_1_0_valid_load_en ? __systolic_2x2_k1__a_fifo_1_0_valid_and_not_has_been_sent : __systolic_2x2_k1__a_fifo_1_0_valid_reg;
      __systolic_2x2_k1__b_fifo_0_0_reg <= systolic_2x2_k1__b_fifo_0_0_load_en ? __systolic_2x2_k1__b_col_0_reg : __systolic_2x2_k1__b_fifo_0_0_reg;
      __systolic_2x2_k1__b_fifo_0_0_valid_reg <= systolic_2x2_k1__b_fifo_0_0_valid_load_en ? __systolic_2x2_k1__b_fifo_0_0_valid_and_not_has_been_sent : __systolic_2x2_k1__b_fifo_0_0_valid_reg;
      __systolic_2x2_k1__b_fifo_1_0_reg <= systolic_2x2_k1__b_fifo_1_0_load_en ? __systolic_2x2_k1__b_col_1_reg : __systolic_2x2_k1__b_fifo_1_0_reg;
      __systolic_2x2_k1__b_fifo_1_0_valid_reg <= systolic_2x2_k1__b_fifo_1_0_valid_load_en ? __systolic_2x2_k1__b_fifo_1_0_valid_and_not_has_been_sent : __systolic_2x2_k1__b_fifo_1_0_valid_reg;
      __systolic_2x2_k1__c_result_reg <= systolic_2x2_k1__c_result_load_en ? C : __systolic_2x2_k1__c_result_reg;
      __systolic_2x2_k1__c_result_valid_reg <= systolic_2x2_k1__c_result_valid_load_en ? __systolic_2x2_k1__c_result_valid_and_not_has_been_sent : __systolic_2x2_k1__c_result_valid_reg;
    end
  end
  assign systolic_2x2_k1__a_fifo_0_0 = __systolic_2x2_k1__a_fifo_0_0_reg;
  assign systolic_2x2_k1__a_fifo_0_0_vld = __systolic_2x2_k1__a_fifo_0_0_valid_reg;
  assign systolic_2x2_k1__a_fifo_0_2_rdy = systolic_2x2_k1__a_fifo_0_2_load_en;
  assign systolic_2x2_k1__a_fifo_1_0 = __systolic_2x2_k1__a_fifo_1_0_reg;
  assign systolic_2x2_k1__a_fifo_1_0_vld = __systolic_2x2_k1__a_fifo_1_0_valid_reg;
  assign systolic_2x2_k1__a_fifo_1_2_rdy = systolic_2x2_k1__a_fifo_1_2_load_en;
  assign systolic_2x2_k1__a_row_0_rdy = systolic_2x2_k1__a_row_0_load_en;
  assign systolic_2x2_k1__a_row_1_rdy = systolic_2x2_k1__a_row_1_load_en;
  assign systolic_2x2_k1__b_col_0_rdy = systolic_2x2_k1__b_col_0_load_en;
  assign systolic_2x2_k1__b_col_1_rdy = systolic_2x2_k1__b_col_1_load_en;
  assign systolic_2x2_k1__b_fifo_0_0 = __systolic_2x2_k1__b_fifo_0_0_reg;
  assign systolic_2x2_k1__b_fifo_0_0_vld = __systolic_2x2_k1__b_fifo_0_0_valid_reg;
  assign systolic_2x2_k1__b_fifo_0_2_rdy = systolic_2x2_k1__b_fifo_0_2_load_en;
  assign systolic_2x2_k1__b_fifo_1_0 = __systolic_2x2_k1__b_fifo_1_0_reg;
  assign systolic_2x2_k1__b_fifo_1_0_vld = __systolic_2x2_k1__b_fifo_1_0_valid_reg;
  assign systolic_2x2_k1__b_fifo_1_2_rdy = systolic_2x2_k1__b_fifo_1_2_load_en;
  assign systolic_2x2_k1__c_out_0_0_rdy = systolic_2x2_k1__c_out_0_0_load_en;
  assign systolic_2x2_k1__c_out_0_1_rdy = systolic_2x2_k1__c_out_0_1_load_en;
  assign systolic_2x2_k1__c_out_1_0_rdy = systolic_2x2_k1__c_out_1_0_load_en;
  assign systolic_2x2_k1__c_out_1_1_rdy = systolic_2x2_k1__c_out_1_1_load_en;
  assign systolic_2x2_k1__c_result = {{__systolic_2x2_k1__c_result_reg[1][1], __systolic_2x2_k1__c_result_reg[1][0]}, {__systolic_2x2_k1__c_result_reg[0][1], __systolic_2x2_k1__c_result_reg[0][0]}};
  assign systolic_2x2_k1__c_result_vld = __systolic_2x2_k1__c_result_valid_reg;
endmodule


module __systolic_2x2_k1__SystolicArray__PE_0__1_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic_2x2_k1__a_fifo_0_0,
  input wire systolic_2x2_k1__a_fifo_0_0_vld,
  input wire systolic_2x2_k1__a_fifo_0_1_rdy,
  input wire [31:0] systolic_2x2_k1__b_fifo_0_0,
  input wire systolic_2x2_k1__b_fifo_0_0_vld,
  input wire systolic_2x2_k1__b_fifo_0_1_rdy,
  input wire systolic_2x2_k1__c_out_0_0_rdy,
  output wire systolic_2x2_k1__a_fifo_0_0_rdy,
  output wire [31:0] systolic_2x2_k1__a_fifo_0_1,
  output wire systolic_2x2_k1__a_fifo_0_1_vld,
  output wire systolic_2x2_k1__b_fifo_0_0_rdy,
  output wire [31:0] systolic_2x2_k1__b_fifo_0_1,
  output wire systolic_2x2_k1__b_fifo_0_1_vld,
  output wire [31:0] systolic_2x2_k1__c_out_0_0,
  output wire systolic_2x2_k1__c_out_0_0_vld
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
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic_2x2_k1__a_fifo_0_1_has_been_sent_reg;
  reg __systolic_2x2_k1__b_fifo_0_1_has_been_sent_reg;
  reg __systolic_2x2_k1__c_out_0_0_has_been_sent_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_0_0_reg;
  reg __systolic_2x2_k1__a_fifo_0_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_0_0_reg;
  reg __systolic_2x2_k1__b_fifo_0_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_0_1_reg;
  reg __systolic_2x2_k1__a_fifo_0_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_0_1_reg;
  reg __systolic_2x2_k1__b_fifo_0_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__c_out_0_0_reg;
  reg __systolic_2x2_k1__c_out_0_0_valid_reg;
  wire __systolic_2x2_k1__c_out_0_0_not_has_been_sent;
  wire systolic_2x2_k1__c_out_0_0_valid_inv;
  wire __systolic_2x2_k1__c_out_0_0_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__c_out_0_0_valid_load_en;
  wire systolic_2x2_k1__c_out_0_0_load_en;
  wire __systolic_2x2_k1__c_out_0_0_has_sent_or_is_ready;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic_2x2_k1__a_fifo_0_1_vld_buf;
  wire __systolic_2x2_k1__a_fifo_0_1_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_0_1_valid_inv;
  wire __systolic_2x2_k1__b_fifo_0_1_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_0_1_valid_inv;
  wire __systolic_2x2_k1__a_fifo_0_1_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_0_1_valid_load_en;
  wire __systolic_2x2_k1__b_fifo_0_1_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_0_1_valid_load_en;
  wire systolic_2x2_k1__a_fifo_0_1_load_en;
  wire systolic_2x2_k1__b_fifo_0_1_load_en;
  wire __systolic_2x2_k1__a_fifo_0_1_has_sent_or_is_ready;
  wire __systolic_2x2_k1__b_fifo_0_1_has_sent_or_is_ready;
  wire p2_all_active_outputs_ready;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire p1_data_enable;
  wire p1_not_valid;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic_2x2_k1__a_fifo_0_0_valid_inv;
  wire systolic_2x2_k1__b_fifo_0_0_valid_inv;
  wire systolic_2x2_k1__a_fifo_0_0_valid_load_en;
  wire systolic_2x2_k1__b_fifo_0_0_valid_load_en;
  wire __systolic_2x2_k1__a_fifo_0_1_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__a_fifo_0_1_valid_and_ready_txfr;
  wire __systolic_2x2_k1__b_fifo_0_1_valid_and_ready_txfr;
  wire __systolic_2x2_k1__c_out_0_0_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__c_out_0_0_valid_and_ready_txfr;
  wire systolic_2x2_k1__a_fifo_0_0_load_en;
  wire systolic_2x2_k1__b_fifo_0_0_load_en;
  wire p3_enable;
  wire [31:0] prod;
  wire __systolic_2x2_k1__a_fifo_0_1_not_stage_load;
  wire __systolic_2x2_k1__a_fifo_0_1_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__b_fifo_0_1_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__c_out_0_0_not_stage_load;
  wire __systolic_2x2_k1__c_out_0_0_has_been_sent_reg_load_en;
  assign __systolic_2x2_k1__c_out_0_0_not_has_been_sent = ~__systolic_2x2_k1__c_out_0_0_has_been_sent_reg;
  assign systolic_2x2_k1__c_out_0_0_valid_inv = ~__systolic_2x2_k1__c_out_0_0_valid_reg;
  assign __systolic_2x2_k1__c_out_0_0_valid_and_not_has_been_sent = p2_valid & __systolic_2x2_k1__c_out_0_0_not_has_been_sent;
  assign systolic_2x2_k1__c_out_0_0_valid_load_en = systolic_2x2_k1__c_out_0_0_rdy | systolic_2x2_k1__c_out_0_0_valid_inv;
  assign systolic_2x2_k1__c_out_0_0_load_en = __systolic_2x2_k1__c_out_0_0_valid_and_not_has_been_sent & systolic_2x2_k1__c_out_0_0_valid_load_en;
  assign __systolic_2x2_k1__c_out_0_0_has_sent_or_is_ready = systolic_2x2_k1__c_out_0_0_load_en | __systolic_2x2_k1__c_out_0_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & __systolic_2x2_k1__c_out_0_0_has_sent_or_is_ready;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
  assign __systolic_2x2_k1__a_fifo_0_1_vld_buf = p1_valid & p2_enable;
  assign __systolic_2x2_k1__a_fifo_0_1_not_has_been_sent = ~__systolic_2x2_k1__a_fifo_0_1_has_been_sent_reg;
  assign systolic_2x2_k1__a_fifo_0_1_valid_inv = ~__systolic_2x2_k1__a_fifo_0_1_valid_reg;
  assign __systolic_2x2_k1__b_fifo_0_1_not_has_been_sent = ~__systolic_2x2_k1__b_fifo_0_1_has_been_sent_reg;
  assign systolic_2x2_k1__b_fifo_0_1_valid_inv = ~__systolic_2x2_k1__b_fifo_0_1_valid_reg;
  assign __systolic_2x2_k1__a_fifo_0_1_valid_and_not_has_been_sent = __systolic_2x2_k1__a_fifo_0_1_vld_buf & __systolic_2x2_k1__a_fifo_0_1_not_has_been_sent;
  assign systolic_2x2_k1__a_fifo_0_1_valid_load_en = systolic_2x2_k1__a_fifo_0_1_rdy | systolic_2x2_k1__a_fifo_0_1_valid_inv;
  assign __systolic_2x2_k1__b_fifo_0_1_valid_and_not_has_been_sent = __systolic_2x2_k1__a_fifo_0_1_vld_buf & __systolic_2x2_k1__b_fifo_0_1_not_has_been_sent;
  assign systolic_2x2_k1__b_fifo_0_1_valid_load_en = systolic_2x2_k1__b_fifo_0_1_rdy | systolic_2x2_k1__b_fifo_0_1_valid_inv;
  assign systolic_2x2_k1__a_fifo_0_1_load_en = __systolic_2x2_k1__a_fifo_0_1_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_0_1_valid_load_en;
  assign systolic_2x2_k1__b_fifo_0_1_load_en = __systolic_2x2_k1__b_fifo_0_1_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_0_1_valid_load_en;
  assign __systolic_2x2_k1__a_fifo_0_1_has_sent_or_is_ready = systolic_2x2_k1__a_fifo_0_1_load_en | __systolic_2x2_k1__a_fifo_0_1_has_been_sent_reg;
  assign __systolic_2x2_k1__b_fifo_0_1_has_sent_or_is_ready = systolic_2x2_k1__b_fifo_0_1_load_en | __systolic_2x2_k1__b_fifo_0_1_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic_2x2_k1__a_fifo_0_1_has_sent_or_is_ready & __systolic_2x2_k1__b_fifo_0_1_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic_2x2_k1__b_fifo_0_0_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic_2x2_k1__a_fifo_0_0_valid_reg;
  assign systolic_2x2_k1__a_fifo_0_0_valid_inv = ~__systolic_2x2_k1__a_fifo_0_0_valid_reg;
  assign systolic_2x2_k1__b_fifo_0_0_valid_inv = ~__systolic_2x2_k1__b_fifo_0_0_valid_reg;
  assign systolic_2x2_k1__a_fifo_0_0_valid_load_en = p0_data_enable | systolic_2x2_k1__a_fifo_0_0_valid_inv;
  assign systolic_2x2_k1__b_fifo_0_0_valid_load_en = p1_data_enable | systolic_2x2_k1__b_fifo_0_0_valid_inv;
  assign __systolic_2x2_k1__a_fifo_0_1_valid_and_all_active_outputs_ready = __systolic_2x2_k1__a_fifo_0_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic_2x2_k1__a_fifo_0_1_valid_and_ready_txfr = __systolic_2x2_k1__a_fifo_0_1_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_0_1_load_en;
  assign __systolic_2x2_k1__b_fifo_0_1_valid_and_ready_txfr = __systolic_2x2_k1__b_fifo_0_1_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_0_1_load_en;
  assign __systolic_2x2_k1__c_out_0_0_valid_and_all_active_outputs_ready = p2_valid & systolic_2x2_k1__c_out_0_0_load_en;
  assign __systolic_2x2_k1__c_out_0_0_valid_and_ready_txfr = __systolic_2x2_k1__c_out_0_0_valid_and_not_has_been_sent & systolic_2x2_k1__c_out_0_0_load_en;
  assign systolic_2x2_k1__a_fifo_0_0_load_en = systolic_2x2_k1__a_fifo_0_0_vld & systolic_2x2_k1__a_fifo_0_0_valid_load_en;
  assign systolic_2x2_k1__b_fifo_0_0_load_en = systolic_2x2_k1__b_fifo_0_0_vld & systolic_2x2_k1__b_fifo_0_0_valid_load_en;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign __systolic_2x2_k1__a_fifo_0_1_not_stage_load = ~__systolic_2x2_k1__a_fifo_0_1_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__a_fifo_0_1_has_been_sent_reg_load_en = __systolic_2x2_k1__a_fifo_0_1_valid_and_ready_txfr | __systolic_2x2_k1__a_fifo_0_1_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__b_fifo_0_1_has_been_sent_reg_load_en = __systolic_2x2_k1__b_fifo_0_1_valid_and_ready_txfr | __systolic_2x2_k1__a_fifo_0_1_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__c_out_0_0_not_stage_load = ~__systolic_2x2_k1__c_out_0_0_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__c_out_0_0_has_been_sent_reg_load_en = __systolic_2x2_k1__c_out_0_0_valid_and_ready_txfr | __systolic_2x2_k1__c_out_0_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic_2x2_k1__a_fifo_0_1_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_0_1_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__c_out_0_0_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_0_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_0_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_0_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_0_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_0_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_0_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_0_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_0_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__c_out_0_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__c_out_0_0_valid_reg <= 1'h0;
    end else begin
      p0_a <= p0_data_enable ? __systolic_2x2_k1__a_fifo_0_0_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic_2x2_k1__b_fifo_0_0_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      p0_valid <= p0_enable ? __systolic_2x2_k1__a_fifo_0_0_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic_2x2_k1__a_fifo_0_1_has_been_sent_reg <= __systolic_2x2_k1__a_fifo_0_1_has_been_sent_reg_load_en ? __systolic_2x2_k1__a_fifo_0_1_not_stage_load : __systolic_2x2_k1__a_fifo_0_1_has_been_sent_reg;
      __systolic_2x2_k1__b_fifo_0_1_has_been_sent_reg <= __systolic_2x2_k1__b_fifo_0_1_has_been_sent_reg_load_en ? __systolic_2x2_k1__a_fifo_0_1_not_stage_load : __systolic_2x2_k1__b_fifo_0_1_has_been_sent_reg;
      __systolic_2x2_k1__c_out_0_0_has_been_sent_reg <= __systolic_2x2_k1__c_out_0_0_has_been_sent_reg_load_en ? __systolic_2x2_k1__c_out_0_0_not_stage_load : __systolic_2x2_k1__c_out_0_0_has_been_sent_reg;
      __systolic_2x2_k1__a_fifo_0_0_reg <= systolic_2x2_k1__a_fifo_0_0_load_en ? systolic_2x2_k1__a_fifo_0_0 : __systolic_2x2_k1__a_fifo_0_0_reg;
      __systolic_2x2_k1__a_fifo_0_0_valid_reg <= systolic_2x2_k1__a_fifo_0_0_valid_load_en ? systolic_2x2_k1__a_fifo_0_0_vld : __systolic_2x2_k1__a_fifo_0_0_valid_reg;
      __systolic_2x2_k1__b_fifo_0_0_reg <= systolic_2x2_k1__b_fifo_0_0_load_en ? systolic_2x2_k1__b_fifo_0_0 : __systolic_2x2_k1__b_fifo_0_0_reg;
      __systolic_2x2_k1__b_fifo_0_0_valid_reg <= systolic_2x2_k1__b_fifo_0_0_valid_load_en ? systolic_2x2_k1__b_fifo_0_0_vld : __systolic_2x2_k1__b_fifo_0_0_valid_reg;
      __systolic_2x2_k1__a_fifo_0_1_reg <= systolic_2x2_k1__a_fifo_0_1_load_en ? p1_a : __systolic_2x2_k1__a_fifo_0_1_reg;
      __systolic_2x2_k1__a_fifo_0_1_valid_reg <= systolic_2x2_k1__a_fifo_0_1_valid_load_en ? __systolic_2x2_k1__a_fifo_0_1_valid_and_not_has_been_sent : __systolic_2x2_k1__a_fifo_0_1_valid_reg;
      __systolic_2x2_k1__b_fifo_0_1_reg <= systolic_2x2_k1__b_fifo_0_1_load_en ? p1_b : __systolic_2x2_k1__b_fifo_0_1_reg;
      __systolic_2x2_k1__b_fifo_0_1_valid_reg <= systolic_2x2_k1__b_fifo_0_1_valid_load_en ? __systolic_2x2_k1__b_fifo_0_1_valid_and_not_has_been_sent : __systolic_2x2_k1__b_fifo_0_1_valid_reg;
      __systolic_2x2_k1__c_out_0_0_reg <= systolic_2x2_k1__c_out_0_0_load_en ? p2_prod : __systolic_2x2_k1__c_out_0_0_reg;
      __systolic_2x2_k1__c_out_0_0_valid_reg <= systolic_2x2_k1__c_out_0_0_valid_load_en ? __systolic_2x2_k1__c_out_0_0_valid_and_not_has_been_sent : __systolic_2x2_k1__c_out_0_0_valid_reg;
    end
  end
  assign systolic_2x2_k1__a_fifo_0_0_rdy = systolic_2x2_k1__a_fifo_0_0_load_en;
  assign systolic_2x2_k1__a_fifo_0_1 = __systolic_2x2_k1__a_fifo_0_1_reg;
  assign systolic_2x2_k1__a_fifo_0_1_vld = __systolic_2x2_k1__a_fifo_0_1_valid_reg;
  assign systolic_2x2_k1__b_fifo_0_0_rdy = systolic_2x2_k1__b_fifo_0_0_load_en;
  assign systolic_2x2_k1__b_fifo_0_1 = __systolic_2x2_k1__b_fifo_0_1_reg;
  assign systolic_2x2_k1__b_fifo_0_1_vld = __systolic_2x2_k1__b_fifo_0_1_valid_reg;
  assign systolic_2x2_k1__c_out_0_0 = __systolic_2x2_k1__c_out_0_0_reg;
  assign systolic_2x2_k1__c_out_0_0_vld = __systolic_2x2_k1__c_out_0_0_valid_reg;
endmodule


module __systolic_2x2_k1__SystolicArray__PE_1__1_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic_2x2_k1__a_fifo_0_1,
  input wire systolic_2x2_k1__a_fifo_0_1_vld,
  input wire systolic_2x2_k1__a_fifo_0_2_rdy,
  input wire [31:0] systolic_2x2_k1__b_fifo_1_0,
  input wire systolic_2x2_k1__b_fifo_1_0_vld,
  input wire systolic_2x2_k1__b_fifo_1_1_rdy,
  input wire systolic_2x2_k1__c_out_0_1_rdy,
  output wire systolic_2x2_k1__a_fifo_0_1_rdy,
  output wire [31:0] systolic_2x2_k1__a_fifo_0_2,
  output wire systolic_2x2_k1__a_fifo_0_2_vld,
  output wire systolic_2x2_k1__b_fifo_1_0_rdy,
  output wire [31:0] systolic_2x2_k1__b_fifo_1_1,
  output wire systolic_2x2_k1__b_fifo_1_1_vld,
  output wire [31:0] systolic_2x2_k1__c_out_0_1,
  output wire systolic_2x2_k1__c_out_0_1_vld
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
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic_2x2_k1__a_fifo_0_2_has_been_sent_reg;
  reg __systolic_2x2_k1__b_fifo_1_1_has_been_sent_reg;
  reg __systolic_2x2_k1__c_out_0_1_has_been_sent_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_0_1_reg;
  reg __systolic_2x2_k1__a_fifo_0_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_1_0_reg;
  reg __systolic_2x2_k1__b_fifo_1_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_0_2_reg;
  reg __systolic_2x2_k1__a_fifo_0_2_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_1_1_reg;
  reg __systolic_2x2_k1__b_fifo_1_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__c_out_0_1_reg;
  reg __systolic_2x2_k1__c_out_0_1_valid_reg;
  wire __systolic_2x2_k1__c_out_0_1_not_has_been_sent;
  wire systolic_2x2_k1__c_out_0_1_valid_inv;
  wire __systolic_2x2_k1__c_out_0_1_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__c_out_0_1_valid_load_en;
  wire systolic_2x2_k1__c_out_0_1_load_en;
  wire __systolic_2x2_k1__c_out_0_1_has_sent_or_is_ready;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic_2x2_k1__a_fifo_0_2_vld_buf;
  wire __systolic_2x2_k1__a_fifo_0_2_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_0_2_valid_inv;
  wire __systolic_2x2_k1__b_fifo_1_1_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_1_1_valid_inv;
  wire __systolic_2x2_k1__a_fifo_0_2_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_0_2_valid_load_en;
  wire __systolic_2x2_k1__b_fifo_1_1_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_1_1_valid_load_en;
  wire systolic_2x2_k1__a_fifo_0_2_load_en;
  wire systolic_2x2_k1__b_fifo_1_1_load_en;
  wire __systolic_2x2_k1__a_fifo_0_2_has_sent_or_is_ready;
  wire __systolic_2x2_k1__b_fifo_1_1_has_sent_or_is_ready;
  wire p2_all_active_outputs_ready;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire p1_data_enable;
  wire p1_not_valid;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic_2x2_k1__a_fifo_0_1_valid_inv;
  wire systolic_2x2_k1__b_fifo_1_0_valid_inv;
  wire systolic_2x2_k1__a_fifo_0_1_valid_load_en;
  wire systolic_2x2_k1__b_fifo_1_0_valid_load_en;
  wire __systolic_2x2_k1__a_fifo_0_2_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__a_fifo_0_2_valid_and_ready_txfr;
  wire __systolic_2x2_k1__b_fifo_1_1_valid_and_ready_txfr;
  wire __systolic_2x2_k1__c_out_0_1_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__c_out_0_1_valid_and_ready_txfr;
  wire systolic_2x2_k1__a_fifo_0_1_load_en;
  wire systolic_2x2_k1__b_fifo_1_0_load_en;
  wire p3_enable;
  wire [31:0] prod;
  wire __systolic_2x2_k1__a_fifo_0_2_not_stage_load;
  wire __systolic_2x2_k1__a_fifo_0_2_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__b_fifo_1_1_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__c_out_0_1_not_stage_load;
  wire __systolic_2x2_k1__c_out_0_1_has_been_sent_reg_load_en;
  assign __systolic_2x2_k1__c_out_0_1_not_has_been_sent = ~__systolic_2x2_k1__c_out_0_1_has_been_sent_reg;
  assign systolic_2x2_k1__c_out_0_1_valid_inv = ~__systolic_2x2_k1__c_out_0_1_valid_reg;
  assign __systolic_2x2_k1__c_out_0_1_valid_and_not_has_been_sent = p2_valid & __systolic_2x2_k1__c_out_0_1_not_has_been_sent;
  assign systolic_2x2_k1__c_out_0_1_valid_load_en = systolic_2x2_k1__c_out_0_1_rdy | systolic_2x2_k1__c_out_0_1_valid_inv;
  assign systolic_2x2_k1__c_out_0_1_load_en = __systolic_2x2_k1__c_out_0_1_valid_and_not_has_been_sent & systolic_2x2_k1__c_out_0_1_valid_load_en;
  assign __systolic_2x2_k1__c_out_0_1_has_sent_or_is_ready = systolic_2x2_k1__c_out_0_1_load_en | __systolic_2x2_k1__c_out_0_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & __systolic_2x2_k1__c_out_0_1_has_sent_or_is_ready;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
  assign __systolic_2x2_k1__a_fifo_0_2_vld_buf = p1_valid & p2_enable;
  assign __systolic_2x2_k1__a_fifo_0_2_not_has_been_sent = ~__systolic_2x2_k1__a_fifo_0_2_has_been_sent_reg;
  assign systolic_2x2_k1__a_fifo_0_2_valid_inv = ~__systolic_2x2_k1__a_fifo_0_2_valid_reg;
  assign __systolic_2x2_k1__b_fifo_1_1_not_has_been_sent = ~__systolic_2x2_k1__b_fifo_1_1_has_been_sent_reg;
  assign systolic_2x2_k1__b_fifo_1_1_valid_inv = ~__systolic_2x2_k1__b_fifo_1_1_valid_reg;
  assign __systolic_2x2_k1__a_fifo_0_2_valid_and_not_has_been_sent = __systolic_2x2_k1__a_fifo_0_2_vld_buf & __systolic_2x2_k1__a_fifo_0_2_not_has_been_sent;
  assign systolic_2x2_k1__a_fifo_0_2_valid_load_en = systolic_2x2_k1__a_fifo_0_2_rdy | systolic_2x2_k1__a_fifo_0_2_valid_inv;
  assign __systolic_2x2_k1__b_fifo_1_1_valid_and_not_has_been_sent = __systolic_2x2_k1__a_fifo_0_2_vld_buf & __systolic_2x2_k1__b_fifo_1_1_not_has_been_sent;
  assign systolic_2x2_k1__b_fifo_1_1_valid_load_en = systolic_2x2_k1__b_fifo_1_1_rdy | systolic_2x2_k1__b_fifo_1_1_valid_inv;
  assign systolic_2x2_k1__a_fifo_0_2_load_en = __systolic_2x2_k1__a_fifo_0_2_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_0_2_valid_load_en;
  assign systolic_2x2_k1__b_fifo_1_1_load_en = __systolic_2x2_k1__b_fifo_1_1_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_1_1_valid_load_en;
  assign __systolic_2x2_k1__a_fifo_0_2_has_sent_or_is_ready = systolic_2x2_k1__a_fifo_0_2_load_en | __systolic_2x2_k1__a_fifo_0_2_has_been_sent_reg;
  assign __systolic_2x2_k1__b_fifo_1_1_has_sent_or_is_ready = systolic_2x2_k1__b_fifo_1_1_load_en | __systolic_2x2_k1__b_fifo_1_1_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic_2x2_k1__a_fifo_0_2_has_sent_or_is_ready & __systolic_2x2_k1__b_fifo_1_1_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic_2x2_k1__b_fifo_1_0_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic_2x2_k1__a_fifo_0_1_valid_reg;
  assign systolic_2x2_k1__a_fifo_0_1_valid_inv = ~__systolic_2x2_k1__a_fifo_0_1_valid_reg;
  assign systolic_2x2_k1__b_fifo_1_0_valid_inv = ~__systolic_2x2_k1__b_fifo_1_0_valid_reg;
  assign systolic_2x2_k1__a_fifo_0_1_valid_load_en = p0_data_enable | systolic_2x2_k1__a_fifo_0_1_valid_inv;
  assign systolic_2x2_k1__b_fifo_1_0_valid_load_en = p1_data_enable | systolic_2x2_k1__b_fifo_1_0_valid_inv;
  assign __systolic_2x2_k1__a_fifo_0_2_valid_and_all_active_outputs_ready = __systolic_2x2_k1__a_fifo_0_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic_2x2_k1__a_fifo_0_2_valid_and_ready_txfr = __systolic_2x2_k1__a_fifo_0_2_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_0_2_load_en;
  assign __systolic_2x2_k1__b_fifo_1_1_valid_and_ready_txfr = __systolic_2x2_k1__b_fifo_1_1_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_1_1_load_en;
  assign __systolic_2x2_k1__c_out_0_1_valid_and_all_active_outputs_ready = p2_valid & systolic_2x2_k1__c_out_0_1_load_en;
  assign __systolic_2x2_k1__c_out_0_1_valid_and_ready_txfr = __systolic_2x2_k1__c_out_0_1_valid_and_not_has_been_sent & systolic_2x2_k1__c_out_0_1_load_en;
  assign systolic_2x2_k1__a_fifo_0_1_load_en = systolic_2x2_k1__a_fifo_0_1_vld & systolic_2x2_k1__a_fifo_0_1_valid_load_en;
  assign systolic_2x2_k1__b_fifo_1_0_load_en = systolic_2x2_k1__b_fifo_1_0_vld & systolic_2x2_k1__b_fifo_1_0_valid_load_en;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign __systolic_2x2_k1__a_fifo_0_2_not_stage_load = ~__systolic_2x2_k1__a_fifo_0_2_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__a_fifo_0_2_has_been_sent_reg_load_en = __systolic_2x2_k1__a_fifo_0_2_valid_and_ready_txfr | __systolic_2x2_k1__a_fifo_0_2_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__b_fifo_1_1_has_been_sent_reg_load_en = __systolic_2x2_k1__b_fifo_1_1_valid_and_ready_txfr | __systolic_2x2_k1__a_fifo_0_2_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__c_out_0_1_not_stage_load = ~__systolic_2x2_k1__c_out_0_1_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__c_out_0_1_has_been_sent_reg_load_en = __systolic_2x2_k1__c_out_0_1_valid_and_ready_txfr | __systolic_2x2_k1__c_out_0_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic_2x2_k1__a_fifo_0_2_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_1_1_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__c_out_0_1_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_0_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_0_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_1_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_1_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_0_2_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_0_2_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_1_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_1_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__c_out_0_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__c_out_0_1_valid_reg <= 1'h0;
    end else begin
      p0_a <= p0_data_enable ? __systolic_2x2_k1__a_fifo_0_1_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic_2x2_k1__b_fifo_1_0_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      p0_valid <= p0_enable ? __systolic_2x2_k1__a_fifo_0_1_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic_2x2_k1__a_fifo_0_2_has_been_sent_reg <= __systolic_2x2_k1__a_fifo_0_2_has_been_sent_reg_load_en ? __systolic_2x2_k1__a_fifo_0_2_not_stage_load : __systolic_2x2_k1__a_fifo_0_2_has_been_sent_reg;
      __systolic_2x2_k1__b_fifo_1_1_has_been_sent_reg <= __systolic_2x2_k1__b_fifo_1_1_has_been_sent_reg_load_en ? __systolic_2x2_k1__a_fifo_0_2_not_stage_load : __systolic_2x2_k1__b_fifo_1_1_has_been_sent_reg;
      __systolic_2x2_k1__c_out_0_1_has_been_sent_reg <= __systolic_2x2_k1__c_out_0_1_has_been_sent_reg_load_en ? __systolic_2x2_k1__c_out_0_1_not_stage_load : __systolic_2x2_k1__c_out_0_1_has_been_sent_reg;
      __systolic_2x2_k1__a_fifo_0_1_reg <= systolic_2x2_k1__a_fifo_0_1_load_en ? systolic_2x2_k1__a_fifo_0_1 : __systolic_2x2_k1__a_fifo_0_1_reg;
      __systolic_2x2_k1__a_fifo_0_1_valid_reg <= systolic_2x2_k1__a_fifo_0_1_valid_load_en ? systolic_2x2_k1__a_fifo_0_1_vld : __systolic_2x2_k1__a_fifo_0_1_valid_reg;
      __systolic_2x2_k1__b_fifo_1_0_reg <= systolic_2x2_k1__b_fifo_1_0_load_en ? systolic_2x2_k1__b_fifo_1_0 : __systolic_2x2_k1__b_fifo_1_0_reg;
      __systolic_2x2_k1__b_fifo_1_0_valid_reg <= systolic_2x2_k1__b_fifo_1_0_valid_load_en ? systolic_2x2_k1__b_fifo_1_0_vld : __systolic_2x2_k1__b_fifo_1_0_valid_reg;
      __systolic_2x2_k1__a_fifo_0_2_reg <= systolic_2x2_k1__a_fifo_0_2_load_en ? p1_a : __systolic_2x2_k1__a_fifo_0_2_reg;
      __systolic_2x2_k1__a_fifo_0_2_valid_reg <= systolic_2x2_k1__a_fifo_0_2_valid_load_en ? __systolic_2x2_k1__a_fifo_0_2_valid_and_not_has_been_sent : __systolic_2x2_k1__a_fifo_0_2_valid_reg;
      __systolic_2x2_k1__b_fifo_1_1_reg <= systolic_2x2_k1__b_fifo_1_1_load_en ? p1_b : __systolic_2x2_k1__b_fifo_1_1_reg;
      __systolic_2x2_k1__b_fifo_1_1_valid_reg <= systolic_2x2_k1__b_fifo_1_1_valid_load_en ? __systolic_2x2_k1__b_fifo_1_1_valid_and_not_has_been_sent : __systolic_2x2_k1__b_fifo_1_1_valid_reg;
      __systolic_2x2_k1__c_out_0_1_reg <= systolic_2x2_k1__c_out_0_1_load_en ? p2_prod : __systolic_2x2_k1__c_out_0_1_reg;
      __systolic_2x2_k1__c_out_0_1_valid_reg <= systolic_2x2_k1__c_out_0_1_valid_load_en ? __systolic_2x2_k1__c_out_0_1_valid_and_not_has_been_sent : __systolic_2x2_k1__c_out_0_1_valid_reg;
    end
  end
  assign systolic_2x2_k1__a_fifo_0_1_rdy = systolic_2x2_k1__a_fifo_0_1_load_en;
  assign systolic_2x2_k1__a_fifo_0_2 = __systolic_2x2_k1__a_fifo_0_2_reg;
  assign systolic_2x2_k1__a_fifo_0_2_vld = __systolic_2x2_k1__a_fifo_0_2_valid_reg;
  assign systolic_2x2_k1__b_fifo_1_0_rdy = systolic_2x2_k1__b_fifo_1_0_load_en;
  assign systolic_2x2_k1__b_fifo_1_1 = __systolic_2x2_k1__b_fifo_1_1_reg;
  assign systolic_2x2_k1__b_fifo_1_1_vld = __systolic_2x2_k1__b_fifo_1_1_valid_reg;
  assign systolic_2x2_k1__c_out_0_1 = __systolic_2x2_k1__c_out_0_1_reg;
  assign systolic_2x2_k1__c_out_0_1_vld = __systolic_2x2_k1__c_out_0_1_valid_reg;
endmodule


module __systolic_2x2_k1__SystolicArray__PE_2__1_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic_2x2_k1__a_fifo_1_0,
  input wire systolic_2x2_k1__a_fifo_1_0_vld,
  input wire systolic_2x2_k1__a_fifo_1_1_rdy,
  input wire [31:0] systolic_2x2_k1__b_fifo_0_1,
  input wire systolic_2x2_k1__b_fifo_0_1_vld,
  input wire systolic_2x2_k1__b_fifo_0_2_rdy,
  input wire systolic_2x2_k1__c_out_1_0_rdy,
  output wire systolic_2x2_k1__a_fifo_1_0_rdy,
  output wire [31:0] systolic_2x2_k1__a_fifo_1_1,
  output wire systolic_2x2_k1__a_fifo_1_1_vld,
  output wire systolic_2x2_k1__b_fifo_0_1_rdy,
  output wire [31:0] systolic_2x2_k1__b_fifo_0_2,
  output wire systolic_2x2_k1__b_fifo_0_2_vld,
  output wire [31:0] systolic_2x2_k1__c_out_1_0,
  output wire systolic_2x2_k1__c_out_1_0_vld
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
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic_2x2_k1__a_fifo_1_1_has_been_sent_reg;
  reg __systolic_2x2_k1__b_fifo_0_2_has_been_sent_reg;
  reg __systolic_2x2_k1__c_out_1_0_has_been_sent_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_1_0_reg;
  reg __systolic_2x2_k1__a_fifo_1_0_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_0_1_reg;
  reg __systolic_2x2_k1__b_fifo_0_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_1_1_reg;
  reg __systolic_2x2_k1__a_fifo_1_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_0_2_reg;
  reg __systolic_2x2_k1__b_fifo_0_2_valid_reg;
  reg [31:0] __systolic_2x2_k1__c_out_1_0_reg;
  reg __systolic_2x2_k1__c_out_1_0_valid_reg;
  wire __systolic_2x2_k1__c_out_1_0_not_has_been_sent;
  wire systolic_2x2_k1__c_out_1_0_valid_inv;
  wire __systolic_2x2_k1__c_out_1_0_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__c_out_1_0_valid_load_en;
  wire systolic_2x2_k1__c_out_1_0_load_en;
  wire __systolic_2x2_k1__c_out_1_0_has_sent_or_is_ready;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic_2x2_k1__a_fifo_1_1_vld_buf;
  wire __systolic_2x2_k1__a_fifo_1_1_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_1_1_valid_inv;
  wire __systolic_2x2_k1__b_fifo_0_2_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_0_2_valid_inv;
  wire __systolic_2x2_k1__a_fifo_1_1_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_1_1_valid_load_en;
  wire __systolic_2x2_k1__b_fifo_0_2_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_0_2_valid_load_en;
  wire systolic_2x2_k1__a_fifo_1_1_load_en;
  wire systolic_2x2_k1__b_fifo_0_2_load_en;
  wire __systolic_2x2_k1__a_fifo_1_1_has_sent_or_is_ready;
  wire __systolic_2x2_k1__b_fifo_0_2_has_sent_or_is_ready;
  wire p2_all_active_outputs_ready;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire p1_data_enable;
  wire p1_not_valid;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic_2x2_k1__a_fifo_1_0_valid_inv;
  wire systolic_2x2_k1__b_fifo_0_1_valid_inv;
  wire systolic_2x2_k1__a_fifo_1_0_valid_load_en;
  wire systolic_2x2_k1__b_fifo_0_1_valid_load_en;
  wire __systolic_2x2_k1__a_fifo_1_1_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__a_fifo_1_1_valid_and_ready_txfr;
  wire __systolic_2x2_k1__b_fifo_0_2_valid_and_ready_txfr;
  wire __systolic_2x2_k1__c_out_1_0_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__c_out_1_0_valid_and_ready_txfr;
  wire systolic_2x2_k1__a_fifo_1_0_load_en;
  wire systolic_2x2_k1__b_fifo_0_1_load_en;
  wire p3_enable;
  wire [31:0] prod;
  wire __systolic_2x2_k1__a_fifo_1_1_not_stage_load;
  wire __systolic_2x2_k1__a_fifo_1_1_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__b_fifo_0_2_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__c_out_1_0_not_stage_load;
  wire __systolic_2x2_k1__c_out_1_0_has_been_sent_reg_load_en;
  assign __systolic_2x2_k1__c_out_1_0_not_has_been_sent = ~__systolic_2x2_k1__c_out_1_0_has_been_sent_reg;
  assign systolic_2x2_k1__c_out_1_0_valid_inv = ~__systolic_2x2_k1__c_out_1_0_valid_reg;
  assign __systolic_2x2_k1__c_out_1_0_valid_and_not_has_been_sent = p2_valid & __systolic_2x2_k1__c_out_1_0_not_has_been_sent;
  assign systolic_2x2_k1__c_out_1_0_valid_load_en = systolic_2x2_k1__c_out_1_0_rdy | systolic_2x2_k1__c_out_1_0_valid_inv;
  assign systolic_2x2_k1__c_out_1_0_load_en = __systolic_2x2_k1__c_out_1_0_valid_and_not_has_been_sent & systolic_2x2_k1__c_out_1_0_valid_load_en;
  assign __systolic_2x2_k1__c_out_1_0_has_sent_or_is_ready = systolic_2x2_k1__c_out_1_0_load_en | __systolic_2x2_k1__c_out_1_0_has_been_sent_reg;
  assign p3_stage_done = p2_valid & __systolic_2x2_k1__c_out_1_0_has_sent_or_is_ready;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
  assign __systolic_2x2_k1__a_fifo_1_1_vld_buf = p1_valid & p2_enable;
  assign __systolic_2x2_k1__a_fifo_1_1_not_has_been_sent = ~__systolic_2x2_k1__a_fifo_1_1_has_been_sent_reg;
  assign systolic_2x2_k1__a_fifo_1_1_valid_inv = ~__systolic_2x2_k1__a_fifo_1_1_valid_reg;
  assign __systolic_2x2_k1__b_fifo_0_2_not_has_been_sent = ~__systolic_2x2_k1__b_fifo_0_2_has_been_sent_reg;
  assign systolic_2x2_k1__b_fifo_0_2_valid_inv = ~__systolic_2x2_k1__b_fifo_0_2_valid_reg;
  assign __systolic_2x2_k1__a_fifo_1_1_valid_and_not_has_been_sent = __systolic_2x2_k1__a_fifo_1_1_vld_buf & __systolic_2x2_k1__a_fifo_1_1_not_has_been_sent;
  assign systolic_2x2_k1__a_fifo_1_1_valid_load_en = systolic_2x2_k1__a_fifo_1_1_rdy | systolic_2x2_k1__a_fifo_1_1_valid_inv;
  assign __systolic_2x2_k1__b_fifo_0_2_valid_and_not_has_been_sent = __systolic_2x2_k1__a_fifo_1_1_vld_buf & __systolic_2x2_k1__b_fifo_0_2_not_has_been_sent;
  assign systolic_2x2_k1__b_fifo_0_2_valid_load_en = systolic_2x2_k1__b_fifo_0_2_rdy | systolic_2x2_k1__b_fifo_0_2_valid_inv;
  assign systolic_2x2_k1__a_fifo_1_1_load_en = __systolic_2x2_k1__a_fifo_1_1_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_1_1_valid_load_en;
  assign systolic_2x2_k1__b_fifo_0_2_load_en = __systolic_2x2_k1__b_fifo_0_2_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_0_2_valid_load_en;
  assign __systolic_2x2_k1__a_fifo_1_1_has_sent_or_is_ready = systolic_2x2_k1__a_fifo_1_1_load_en | __systolic_2x2_k1__a_fifo_1_1_has_been_sent_reg;
  assign __systolic_2x2_k1__b_fifo_0_2_has_sent_or_is_ready = systolic_2x2_k1__b_fifo_0_2_load_en | __systolic_2x2_k1__b_fifo_0_2_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic_2x2_k1__a_fifo_1_1_has_sent_or_is_ready & __systolic_2x2_k1__b_fifo_0_2_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic_2x2_k1__b_fifo_0_1_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic_2x2_k1__a_fifo_1_0_valid_reg;
  assign systolic_2x2_k1__a_fifo_1_0_valid_inv = ~__systolic_2x2_k1__a_fifo_1_0_valid_reg;
  assign systolic_2x2_k1__b_fifo_0_1_valid_inv = ~__systolic_2x2_k1__b_fifo_0_1_valid_reg;
  assign systolic_2x2_k1__a_fifo_1_0_valid_load_en = p0_data_enable | systolic_2x2_k1__a_fifo_1_0_valid_inv;
  assign systolic_2x2_k1__b_fifo_0_1_valid_load_en = p1_data_enable | systolic_2x2_k1__b_fifo_0_1_valid_inv;
  assign __systolic_2x2_k1__a_fifo_1_1_valid_and_all_active_outputs_ready = __systolic_2x2_k1__a_fifo_1_1_vld_buf & p2_all_active_outputs_ready;
  assign __systolic_2x2_k1__a_fifo_1_1_valid_and_ready_txfr = __systolic_2x2_k1__a_fifo_1_1_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_1_1_load_en;
  assign __systolic_2x2_k1__b_fifo_0_2_valid_and_ready_txfr = __systolic_2x2_k1__b_fifo_0_2_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_0_2_load_en;
  assign __systolic_2x2_k1__c_out_1_0_valid_and_all_active_outputs_ready = p2_valid & systolic_2x2_k1__c_out_1_0_load_en;
  assign __systolic_2x2_k1__c_out_1_0_valid_and_ready_txfr = __systolic_2x2_k1__c_out_1_0_valid_and_not_has_been_sent & systolic_2x2_k1__c_out_1_0_load_en;
  assign systolic_2x2_k1__a_fifo_1_0_load_en = systolic_2x2_k1__a_fifo_1_0_vld & systolic_2x2_k1__a_fifo_1_0_valid_load_en;
  assign systolic_2x2_k1__b_fifo_0_1_load_en = systolic_2x2_k1__b_fifo_0_1_vld & systolic_2x2_k1__b_fifo_0_1_valid_load_en;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign __systolic_2x2_k1__a_fifo_1_1_not_stage_load = ~__systolic_2x2_k1__a_fifo_1_1_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__a_fifo_1_1_has_been_sent_reg_load_en = __systolic_2x2_k1__a_fifo_1_1_valid_and_ready_txfr | __systolic_2x2_k1__a_fifo_1_1_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__b_fifo_0_2_has_been_sent_reg_load_en = __systolic_2x2_k1__b_fifo_0_2_valid_and_ready_txfr | __systolic_2x2_k1__a_fifo_1_1_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__c_out_1_0_not_stage_load = ~__systolic_2x2_k1__c_out_1_0_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__c_out_1_0_has_been_sent_reg_load_en = __systolic_2x2_k1__c_out_1_0_valid_and_ready_txfr | __systolic_2x2_k1__c_out_1_0_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic_2x2_k1__a_fifo_1_1_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_0_2_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__c_out_1_0_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_1_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_1_0_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_0_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_0_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_1_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_1_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_0_2_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_0_2_valid_reg <= 1'h0;
      __systolic_2x2_k1__c_out_1_0_reg <= 32'h0000_0000;
      __systolic_2x2_k1__c_out_1_0_valid_reg <= 1'h0;
    end else begin
      p0_a <= p0_data_enable ? __systolic_2x2_k1__a_fifo_1_0_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic_2x2_k1__b_fifo_0_1_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      p0_valid <= p0_enable ? __systolic_2x2_k1__a_fifo_1_0_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic_2x2_k1__a_fifo_1_1_has_been_sent_reg <= __systolic_2x2_k1__a_fifo_1_1_has_been_sent_reg_load_en ? __systolic_2x2_k1__a_fifo_1_1_not_stage_load : __systolic_2x2_k1__a_fifo_1_1_has_been_sent_reg;
      __systolic_2x2_k1__b_fifo_0_2_has_been_sent_reg <= __systolic_2x2_k1__b_fifo_0_2_has_been_sent_reg_load_en ? __systolic_2x2_k1__a_fifo_1_1_not_stage_load : __systolic_2x2_k1__b_fifo_0_2_has_been_sent_reg;
      __systolic_2x2_k1__c_out_1_0_has_been_sent_reg <= __systolic_2x2_k1__c_out_1_0_has_been_sent_reg_load_en ? __systolic_2x2_k1__c_out_1_0_not_stage_load : __systolic_2x2_k1__c_out_1_0_has_been_sent_reg;
      __systolic_2x2_k1__a_fifo_1_0_reg <= systolic_2x2_k1__a_fifo_1_0_load_en ? systolic_2x2_k1__a_fifo_1_0 : __systolic_2x2_k1__a_fifo_1_0_reg;
      __systolic_2x2_k1__a_fifo_1_0_valid_reg <= systolic_2x2_k1__a_fifo_1_0_valid_load_en ? systolic_2x2_k1__a_fifo_1_0_vld : __systolic_2x2_k1__a_fifo_1_0_valid_reg;
      __systolic_2x2_k1__b_fifo_0_1_reg <= systolic_2x2_k1__b_fifo_0_1_load_en ? systolic_2x2_k1__b_fifo_0_1 : __systolic_2x2_k1__b_fifo_0_1_reg;
      __systolic_2x2_k1__b_fifo_0_1_valid_reg <= systolic_2x2_k1__b_fifo_0_1_valid_load_en ? systolic_2x2_k1__b_fifo_0_1_vld : __systolic_2x2_k1__b_fifo_0_1_valid_reg;
      __systolic_2x2_k1__a_fifo_1_1_reg <= systolic_2x2_k1__a_fifo_1_1_load_en ? p1_a : __systolic_2x2_k1__a_fifo_1_1_reg;
      __systolic_2x2_k1__a_fifo_1_1_valid_reg <= systolic_2x2_k1__a_fifo_1_1_valid_load_en ? __systolic_2x2_k1__a_fifo_1_1_valid_and_not_has_been_sent : __systolic_2x2_k1__a_fifo_1_1_valid_reg;
      __systolic_2x2_k1__b_fifo_0_2_reg <= systolic_2x2_k1__b_fifo_0_2_load_en ? p1_b : __systolic_2x2_k1__b_fifo_0_2_reg;
      __systolic_2x2_k1__b_fifo_0_2_valid_reg <= systolic_2x2_k1__b_fifo_0_2_valid_load_en ? __systolic_2x2_k1__b_fifo_0_2_valid_and_not_has_been_sent : __systolic_2x2_k1__b_fifo_0_2_valid_reg;
      __systolic_2x2_k1__c_out_1_0_reg <= systolic_2x2_k1__c_out_1_0_load_en ? p2_prod : __systolic_2x2_k1__c_out_1_0_reg;
      __systolic_2x2_k1__c_out_1_0_valid_reg <= systolic_2x2_k1__c_out_1_0_valid_load_en ? __systolic_2x2_k1__c_out_1_0_valid_and_not_has_been_sent : __systolic_2x2_k1__c_out_1_0_valid_reg;
    end
  end
  assign systolic_2x2_k1__a_fifo_1_0_rdy = systolic_2x2_k1__a_fifo_1_0_load_en;
  assign systolic_2x2_k1__a_fifo_1_1 = __systolic_2x2_k1__a_fifo_1_1_reg;
  assign systolic_2x2_k1__a_fifo_1_1_vld = __systolic_2x2_k1__a_fifo_1_1_valid_reg;
  assign systolic_2x2_k1__b_fifo_0_1_rdy = systolic_2x2_k1__b_fifo_0_1_load_en;
  assign systolic_2x2_k1__b_fifo_0_2 = __systolic_2x2_k1__b_fifo_0_2_reg;
  assign systolic_2x2_k1__b_fifo_0_2_vld = __systolic_2x2_k1__b_fifo_0_2_valid_reg;
  assign systolic_2x2_k1__c_out_1_0 = __systolic_2x2_k1__c_out_1_0_reg;
  assign systolic_2x2_k1__c_out_1_0_vld = __systolic_2x2_k1__c_out_1_0_valid_reg;
endmodule


module __systolic_2x2_k1__SystolicArray__PE_3__1_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic_2x2_k1__a_fifo_1_1,
  input wire systolic_2x2_k1__a_fifo_1_1_vld,
  input wire systolic_2x2_k1__a_fifo_1_2_rdy,
  input wire [31:0] systolic_2x2_k1__b_fifo_1_1,
  input wire systolic_2x2_k1__b_fifo_1_1_vld,
  input wire systolic_2x2_k1__b_fifo_1_2_rdy,
  input wire systolic_2x2_k1__c_out_1_1_rdy,
  output wire systolic_2x2_k1__a_fifo_1_1_rdy,
  output wire [31:0] systolic_2x2_k1__a_fifo_1_2,
  output wire systolic_2x2_k1__a_fifo_1_2_vld,
  output wire systolic_2x2_k1__b_fifo_1_1_rdy,
  output wire [31:0] systolic_2x2_k1__b_fifo_1_2,
  output wire systolic_2x2_k1__b_fifo_1_2_vld,
  output wire [31:0] systolic_2x2_k1__c_out_1_1,
  output wire systolic_2x2_k1__c_out_1_1_vld
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
  reg p0_valid;
  reg p1_valid;
  reg p2_valid;
  reg p3_valid;
  reg __systolic_2x2_k1__a_fifo_1_2_has_been_sent_reg;
  reg __systolic_2x2_k1__b_fifo_1_2_has_been_sent_reg;
  reg __systolic_2x2_k1__c_out_1_1_has_been_sent_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_1_1_reg;
  reg __systolic_2x2_k1__a_fifo_1_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_1_1_reg;
  reg __systolic_2x2_k1__b_fifo_1_1_valid_reg;
  reg [31:0] __systolic_2x2_k1__a_fifo_1_2_reg;
  reg __systolic_2x2_k1__a_fifo_1_2_valid_reg;
  reg [31:0] __systolic_2x2_k1__b_fifo_1_2_reg;
  reg __systolic_2x2_k1__b_fifo_1_2_valid_reg;
  reg [31:0] __systolic_2x2_k1__c_out_1_1_reg;
  reg __systolic_2x2_k1__c_out_1_1_valid_reg;
  wire __systolic_2x2_k1__c_out_1_1_not_has_been_sent;
  wire systolic_2x2_k1__c_out_1_1_valid_inv;
  wire __systolic_2x2_k1__c_out_1_1_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__c_out_1_1_valid_load_en;
  wire systolic_2x2_k1__c_out_1_1_load_en;
  wire __systolic_2x2_k1__c_out_1_1_has_sent_or_is_ready;
  wire p3_stage_done;
  wire p3_not_valid;
  wire p2_enable;
  wire __systolic_2x2_k1__a_fifo_1_2_vld_buf;
  wire __systolic_2x2_k1__a_fifo_1_2_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_1_2_valid_inv;
  wire __systolic_2x2_k1__b_fifo_1_2_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_1_2_valid_inv;
  wire __systolic_2x2_k1__a_fifo_1_2_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__a_fifo_1_2_valid_load_en;
  wire __systolic_2x2_k1__b_fifo_1_2_valid_and_not_has_been_sent;
  wire systolic_2x2_k1__b_fifo_1_2_valid_load_en;
  wire systolic_2x2_k1__a_fifo_1_2_load_en;
  wire systolic_2x2_k1__b_fifo_1_2_load_en;
  wire __systolic_2x2_k1__a_fifo_1_2_has_sent_or_is_ready;
  wire __systolic_2x2_k1__b_fifo_1_2_has_sent_or_is_ready;
  wire p2_all_active_outputs_ready;
  wire p2_stage_done;
  wire p2_data_enable;
  wire p2_not_valid;
  wire p1_enable;
  wire p1_stage_done;
  wire p1_data_enable;
  wire p1_not_valid;
  wire p0_enable;
  wire p0_data_enable;
  wire systolic_2x2_k1__a_fifo_1_1_valid_inv;
  wire systolic_2x2_k1__b_fifo_1_1_valid_inv;
  wire systolic_2x2_k1__a_fifo_1_1_valid_load_en;
  wire systolic_2x2_k1__b_fifo_1_1_valid_load_en;
  wire __systolic_2x2_k1__a_fifo_1_2_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__a_fifo_1_2_valid_and_ready_txfr;
  wire __systolic_2x2_k1__b_fifo_1_2_valid_and_ready_txfr;
  wire __systolic_2x2_k1__c_out_1_1_valid_and_all_active_outputs_ready;
  wire __systolic_2x2_k1__c_out_1_1_valid_and_ready_txfr;
  wire systolic_2x2_k1__a_fifo_1_1_load_en;
  wire systolic_2x2_k1__b_fifo_1_1_load_en;
  wire p3_enable;
  wire [31:0] prod;
  wire __systolic_2x2_k1__a_fifo_1_2_not_stage_load;
  wire __systolic_2x2_k1__a_fifo_1_2_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__b_fifo_1_2_has_been_sent_reg_load_en;
  wire __systolic_2x2_k1__c_out_1_1_not_stage_load;
  wire __systolic_2x2_k1__c_out_1_1_has_been_sent_reg_load_en;
  assign __systolic_2x2_k1__c_out_1_1_not_has_been_sent = ~__systolic_2x2_k1__c_out_1_1_has_been_sent_reg;
  assign systolic_2x2_k1__c_out_1_1_valid_inv = ~__systolic_2x2_k1__c_out_1_1_valid_reg;
  assign __systolic_2x2_k1__c_out_1_1_valid_and_not_has_been_sent = p2_valid & __systolic_2x2_k1__c_out_1_1_not_has_been_sent;
  assign systolic_2x2_k1__c_out_1_1_valid_load_en = systolic_2x2_k1__c_out_1_1_rdy | systolic_2x2_k1__c_out_1_1_valid_inv;
  assign systolic_2x2_k1__c_out_1_1_load_en = __systolic_2x2_k1__c_out_1_1_valid_and_not_has_been_sent & systolic_2x2_k1__c_out_1_1_valid_load_en;
  assign __systolic_2x2_k1__c_out_1_1_has_sent_or_is_ready = systolic_2x2_k1__c_out_1_1_load_en | __systolic_2x2_k1__c_out_1_1_has_been_sent_reg;
  assign p3_stage_done = p2_valid & __systolic_2x2_k1__c_out_1_1_has_sent_or_is_ready;
  assign p3_not_valid = ~p2_valid;
  assign p2_enable = p3_stage_done | p3_not_valid;
  assign __systolic_2x2_k1__a_fifo_1_2_vld_buf = p1_valid & p2_enable;
  assign __systolic_2x2_k1__a_fifo_1_2_not_has_been_sent = ~__systolic_2x2_k1__a_fifo_1_2_has_been_sent_reg;
  assign systolic_2x2_k1__a_fifo_1_2_valid_inv = ~__systolic_2x2_k1__a_fifo_1_2_valid_reg;
  assign __systolic_2x2_k1__b_fifo_1_2_not_has_been_sent = ~__systolic_2x2_k1__b_fifo_1_2_has_been_sent_reg;
  assign systolic_2x2_k1__b_fifo_1_2_valid_inv = ~__systolic_2x2_k1__b_fifo_1_2_valid_reg;
  assign __systolic_2x2_k1__a_fifo_1_2_valid_and_not_has_been_sent = __systolic_2x2_k1__a_fifo_1_2_vld_buf & __systolic_2x2_k1__a_fifo_1_2_not_has_been_sent;
  assign systolic_2x2_k1__a_fifo_1_2_valid_load_en = systolic_2x2_k1__a_fifo_1_2_rdy | systolic_2x2_k1__a_fifo_1_2_valid_inv;
  assign __systolic_2x2_k1__b_fifo_1_2_valid_and_not_has_been_sent = __systolic_2x2_k1__a_fifo_1_2_vld_buf & __systolic_2x2_k1__b_fifo_1_2_not_has_been_sent;
  assign systolic_2x2_k1__b_fifo_1_2_valid_load_en = systolic_2x2_k1__b_fifo_1_2_rdy | systolic_2x2_k1__b_fifo_1_2_valid_inv;
  assign systolic_2x2_k1__a_fifo_1_2_load_en = __systolic_2x2_k1__a_fifo_1_2_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_1_2_valid_load_en;
  assign systolic_2x2_k1__b_fifo_1_2_load_en = __systolic_2x2_k1__b_fifo_1_2_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_1_2_valid_load_en;
  assign __systolic_2x2_k1__a_fifo_1_2_has_sent_or_is_ready = systolic_2x2_k1__a_fifo_1_2_load_en | __systolic_2x2_k1__a_fifo_1_2_has_been_sent_reg;
  assign __systolic_2x2_k1__b_fifo_1_2_has_sent_or_is_ready = systolic_2x2_k1__b_fifo_1_2_load_en | __systolic_2x2_k1__b_fifo_1_2_has_been_sent_reg;
  assign p2_all_active_outputs_ready = __systolic_2x2_k1__a_fifo_1_2_has_sent_or_is_ready & __systolic_2x2_k1__b_fifo_1_2_has_sent_or_is_ready;
  assign p2_stage_done = p1_valid & p2_all_active_outputs_ready;
  assign p2_data_enable = p2_enable & p2_stage_done;
  assign p2_not_valid = ~p1_valid;
  assign p1_enable = p2_data_enable | p2_not_valid;
  assign p1_stage_done = p0_valid & __systolic_2x2_k1__b_fifo_1_1_valid_reg;
  assign p1_data_enable = p1_enable & p1_stage_done;
  assign p1_not_valid = ~p0_valid;
  assign p0_enable = p1_data_enable | p1_not_valid;
  assign p0_data_enable = p0_enable & __systolic_2x2_k1__a_fifo_1_1_valid_reg;
  assign systolic_2x2_k1__a_fifo_1_1_valid_inv = ~__systolic_2x2_k1__a_fifo_1_1_valid_reg;
  assign systolic_2x2_k1__b_fifo_1_1_valid_inv = ~__systolic_2x2_k1__b_fifo_1_1_valid_reg;
  assign systolic_2x2_k1__a_fifo_1_1_valid_load_en = p0_data_enable | systolic_2x2_k1__a_fifo_1_1_valid_inv;
  assign systolic_2x2_k1__b_fifo_1_1_valid_load_en = p1_data_enable | systolic_2x2_k1__b_fifo_1_1_valid_inv;
  assign __systolic_2x2_k1__a_fifo_1_2_valid_and_all_active_outputs_ready = __systolic_2x2_k1__a_fifo_1_2_vld_buf & p2_all_active_outputs_ready;
  assign __systolic_2x2_k1__a_fifo_1_2_valid_and_ready_txfr = __systolic_2x2_k1__a_fifo_1_2_valid_and_not_has_been_sent & systolic_2x2_k1__a_fifo_1_2_load_en;
  assign __systolic_2x2_k1__b_fifo_1_2_valid_and_ready_txfr = __systolic_2x2_k1__b_fifo_1_2_valid_and_not_has_been_sent & systolic_2x2_k1__b_fifo_1_2_load_en;
  assign __systolic_2x2_k1__c_out_1_1_valid_and_all_active_outputs_ready = p2_valid & systolic_2x2_k1__c_out_1_1_load_en;
  assign __systolic_2x2_k1__c_out_1_1_valid_and_ready_txfr = __systolic_2x2_k1__c_out_1_1_valid_and_not_has_been_sent & systolic_2x2_k1__c_out_1_1_load_en;
  assign systolic_2x2_k1__a_fifo_1_1_load_en = systolic_2x2_k1__a_fifo_1_1_vld & systolic_2x2_k1__a_fifo_1_1_valid_load_en;
  assign systolic_2x2_k1__b_fifo_1_1_load_en = systolic_2x2_k1__b_fifo_1_1_vld & systolic_2x2_k1__b_fifo_1_1_valid_load_en;
  assign p3_enable = 1'h1;
  assign prod = umul32b_32b_x_32b(p1_a, p1_b);
  assign __systolic_2x2_k1__a_fifo_1_2_not_stage_load = ~__systolic_2x2_k1__a_fifo_1_2_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__a_fifo_1_2_has_been_sent_reg_load_en = __systolic_2x2_k1__a_fifo_1_2_valid_and_ready_txfr | __systolic_2x2_k1__a_fifo_1_2_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__b_fifo_1_2_has_been_sent_reg_load_en = __systolic_2x2_k1__b_fifo_1_2_valid_and_ready_txfr | __systolic_2x2_k1__a_fifo_1_2_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__c_out_1_1_not_stage_load = ~__systolic_2x2_k1__c_out_1_1_valid_and_all_active_outputs_ready;
  assign __systolic_2x2_k1__c_out_1_1_has_been_sent_reg_load_en = __systolic_2x2_k1__c_out_1_1_valid_and_ready_txfr | __systolic_2x2_k1__c_out_1_1_valid_and_all_active_outputs_ready;
  always_ff @ (posedge clk) begin
    if (rst) begin
      p0_a <= 32'h0000_0000;
      p1_a <= 32'h0000_0000;
      p1_b <= 32'h0000_0000;
      p2_prod <= 32'h0000_0000;
      p0_valid <= 1'h0;
      p1_valid <= 1'h0;
      p2_valid <= 1'h0;
      p3_valid <= 1'h0;
      __systolic_2x2_k1__a_fifo_1_2_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_1_2_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__c_out_1_1_has_been_sent_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_1_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_1_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_1_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_1_1_valid_reg <= 1'h0;
      __systolic_2x2_k1__a_fifo_1_2_reg <= 32'h0000_0000;
      __systolic_2x2_k1__a_fifo_1_2_valid_reg <= 1'h0;
      __systolic_2x2_k1__b_fifo_1_2_reg <= 32'h0000_0000;
      __systolic_2x2_k1__b_fifo_1_2_valid_reg <= 1'h0;
      __systolic_2x2_k1__c_out_1_1_reg <= 32'h0000_0000;
      __systolic_2x2_k1__c_out_1_1_valid_reg <= 1'h0;
    end else begin
      p0_a <= p0_data_enable ? __systolic_2x2_k1__a_fifo_1_1_reg : p0_a;
      p1_a <= p1_data_enable ? p0_a : p1_a;
      p1_b <= p1_data_enable ? __systolic_2x2_k1__b_fifo_1_1_reg : p1_b;
      p2_prod <= p2_data_enable ? prod : p2_prod;
      p0_valid <= p0_enable ? __systolic_2x2_k1__a_fifo_1_1_valid_reg : p0_valid;
      p1_valid <= p1_enable ? p1_stage_done : p1_valid;
      p2_valid <= p2_enable ? p2_stage_done : p2_valid;
      p3_valid <= p3_enable ? p3_stage_done : p3_valid;
      __systolic_2x2_k1__a_fifo_1_2_has_been_sent_reg <= __systolic_2x2_k1__a_fifo_1_2_has_been_sent_reg_load_en ? __systolic_2x2_k1__a_fifo_1_2_not_stage_load : __systolic_2x2_k1__a_fifo_1_2_has_been_sent_reg;
      __systolic_2x2_k1__b_fifo_1_2_has_been_sent_reg <= __systolic_2x2_k1__b_fifo_1_2_has_been_sent_reg_load_en ? __systolic_2x2_k1__a_fifo_1_2_not_stage_load : __systolic_2x2_k1__b_fifo_1_2_has_been_sent_reg;
      __systolic_2x2_k1__c_out_1_1_has_been_sent_reg <= __systolic_2x2_k1__c_out_1_1_has_been_sent_reg_load_en ? __systolic_2x2_k1__c_out_1_1_not_stage_load : __systolic_2x2_k1__c_out_1_1_has_been_sent_reg;
      __systolic_2x2_k1__a_fifo_1_1_reg <= systolic_2x2_k1__a_fifo_1_1_load_en ? systolic_2x2_k1__a_fifo_1_1 : __systolic_2x2_k1__a_fifo_1_1_reg;
      __systolic_2x2_k1__a_fifo_1_1_valid_reg <= systolic_2x2_k1__a_fifo_1_1_valid_load_en ? systolic_2x2_k1__a_fifo_1_1_vld : __systolic_2x2_k1__a_fifo_1_1_valid_reg;
      __systolic_2x2_k1__b_fifo_1_1_reg <= systolic_2x2_k1__b_fifo_1_1_load_en ? systolic_2x2_k1__b_fifo_1_1 : __systolic_2x2_k1__b_fifo_1_1_reg;
      __systolic_2x2_k1__b_fifo_1_1_valid_reg <= systolic_2x2_k1__b_fifo_1_1_valid_load_en ? systolic_2x2_k1__b_fifo_1_1_vld : __systolic_2x2_k1__b_fifo_1_1_valid_reg;
      __systolic_2x2_k1__a_fifo_1_2_reg <= systolic_2x2_k1__a_fifo_1_2_load_en ? p1_a : __systolic_2x2_k1__a_fifo_1_2_reg;
      __systolic_2x2_k1__a_fifo_1_2_valid_reg <= systolic_2x2_k1__a_fifo_1_2_valid_load_en ? __systolic_2x2_k1__a_fifo_1_2_valid_and_not_has_been_sent : __systolic_2x2_k1__a_fifo_1_2_valid_reg;
      __systolic_2x2_k1__b_fifo_1_2_reg <= systolic_2x2_k1__b_fifo_1_2_load_en ? p1_b : __systolic_2x2_k1__b_fifo_1_2_reg;
      __systolic_2x2_k1__b_fifo_1_2_valid_reg <= systolic_2x2_k1__b_fifo_1_2_valid_load_en ? __systolic_2x2_k1__b_fifo_1_2_valid_and_not_has_been_sent : __systolic_2x2_k1__b_fifo_1_2_valid_reg;
      __systolic_2x2_k1__c_out_1_1_reg <= systolic_2x2_k1__c_out_1_1_load_en ? p2_prod : __systolic_2x2_k1__c_out_1_1_reg;
      __systolic_2x2_k1__c_out_1_1_valid_reg <= systolic_2x2_k1__c_out_1_1_valid_load_en ? __systolic_2x2_k1__c_out_1_1_valid_and_not_has_been_sent : __systolic_2x2_k1__c_out_1_1_valid_reg;
    end
  end
  assign systolic_2x2_k1__a_fifo_1_1_rdy = systolic_2x2_k1__a_fifo_1_1_load_en;
  assign systolic_2x2_k1__a_fifo_1_2 = __systolic_2x2_k1__a_fifo_1_2_reg;
  assign systolic_2x2_k1__a_fifo_1_2_vld = __systolic_2x2_k1__a_fifo_1_2_valid_reg;
  assign systolic_2x2_k1__b_fifo_1_1_rdy = systolic_2x2_k1__b_fifo_1_1_load_en;
  assign systolic_2x2_k1__b_fifo_1_2 = __systolic_2x2_k1__b_fifo_1_2_reg;
  assign systolic_2x2_k1__b_fifo_1_2_vld = __systolic_2x2_k1__b_fifo_1_2_valid_reg;
  assign systolic_2x2_k1__c_out_1_1 = __systolic_2x2_k1__c_out_1_1_reg;
  assign systolic_2x2_k1__c_out_1_1_vld = __systolic_2x2_k1__c_out_1_1_valid_reg;
endmodule


module __systolic_2x2_k1__SystolicArray_0_next(
  input wire clk,
  input wire rst,
  input wire [31:0] systolic_2x2_k1__a_row_0,
  input wire systolic_2x2_k1__a_row_0_vld,
  input wire [31:0] systolic_2x2_k1__a_row_1,
  input wire systolic_2x2_k1__a_row_1_vld,
  input wire [31:0] systolic_2x2_k1__b_col_0,
  input wire systolic_2x2_k1__b_col_0_vld,
  input wire [31:0] systolic_2x2_k1__b_col_1,
  input wire systolic_2x2_k1__b_col_1_vld,
  input wire systolic_2x2_k1__c_result_rdy,
  output wire systolic_2x2_k1__a_row_0_rdy,
  output wire systolic_2x2_k1__a_row_1_rdy,
  output wire systolic_2x2_k1__b_col_0_rdy,
  output wire systolic_2x2_k1__b_col_1_rdy,
  output wire [127:0] systolic_2x2_k1__c_result,
  output wire systolic_2x2_k1__c_result_vld
);
  wire [31:0] instantiation_output_1744;
  wire instantiation_output_1745;
  wire instantiation_output_1778;
  wire [31:0] instantiation_output_1783;
  wire instantiation_output_1784;
  wire instantiation_output_1817;
  wire instantiation_output_1823;
  wire instantiation_output_1829;
  wire instantiation_output_1835;
  wire instantiation_output_1841;
  wire [31:0] instantiation_output_1846;
  wire instantiation_output_1847;
  wire instantiation_output_1880;
  wire [31:0] instantiation_output_1885;
  wire instantiation_output_1886;
  wire instantiation_output_1919;
  wire instantiation_output_1932;
  wire instantiation_output_1945;
  wire instantiation_output_1958;
  wire instantiation_output_1971;
  wire [31:0] instantiation_output_1975[2][2];
  wire instantiation_output_1976;
  wire instantiation_output_1752;
  wire [31:0] instantiation_output_1757;
  wire instantiation_output_1758;
  wire instantiation_output_1854;
  wire [31:0] instantiation_output_1859;
  wire instantiation_output_1860;
  wire [31:0] instantiation_output_1924;
  wire instantiation_output_1925;
  wire instantiation_output_1765;
  wire [31:0] instantiation_output_1770;
  wire instantiation_output_1771;
  wire instantiation_output_1893;
  wire [31:0] instantiation_output_1898;
  wire instantiation_output_1899;
  wire [31:0] instantiation_output_1937;
  wire instantiation_output_1938;
  wire instantiation_output_1791;
  wire [31:0] instantiation_output_1796;
  wire instantiation_output_1797;
  wire instantiation_output_1867;
  wire [31:0] instantiation_output_1872;
  wire instantiation_output_1873;
  wire [31:0] instantiation_output_1950;
  wire instantiation_output_1951;
  wire instantiation_output_1804;
  wire [31:0] instantiation_output_1809;
  wire instantiation_output_1810;
  wire instantiation_output_1906;
  wire [31:0] instantiation_output_1911;
  wire instantiation_output_1912;
  wire [31:0] instantiation_output_1963;
  wire instantiation_output_1964;
  wire instantiation_output_1746;
  wire [31:0] instantiation_output_1750;
  wire instantiation_output_1751;
  wire instantiation_output_1759;
  wire [31:0] instantiation_output_1763;
  wire instantiation_output_1764;
  wire instantiation_output_1772;
  wire [31:0] instantiation_output_1776;
  wire instantiation_output_1777;
  wire instantiation_output_1785;
  wire [31:0] instantiation_output_1789;
  wire instantiation_output_1790;
  wire instantiation_output_1798;
  wire [31:0] instantiation_output_1802;
  wire instantiation_output_1803;
  wire instantiation_output_1811;
  wire [31:0] instantiation_output_1815;
  wire instantiation_output_1816;
  wire instantiation_output_1848;
  wire [31:0] instantiation_output_1852;
  wire instantiation_output_1853;
  wire instantiation_output_1861;
  wire [31:0] instantiation_output_1865;
  wire instantiation_output_1866;
  wire instantiation_output_1874;
  wire [31:0] instantiation_output_1878;
  wire instantiation_output_1879;
  wire instantiation_output_1887;
  wire [31:0] instantiation_output_1891;
  wire instantiation_output_1892;
  wire instantiation_output_1900;
  wire [31:0] instantiation_output_1904;
  wire instantiation_output_1905;
  wire instantiation_output_1913;
  wire [31:0] instantiation_output_1917;
  wire instantiation_output_1918;
  wire instantiation_output_1926;
  wire [31:0] instantiation_output_1930;
  wire instantiation_output_1931;
  wire instantiation_output_1939;
  wire [31:0] instantiation_output_1943;
  wire instantiation_output_1944;
  wire instantiation_output_1952;
  wire [31:0] instantiation_output_1956;
  wire instantiation_output_1957;
  wire instantiation_output_1965;
  wire [31:0] instantiation_output_1969;
  wire instantiation_output_1970;

  // ===== Instantiations
  __systolic_2x2_k1__SystolicArray_0_next__1 __systolic_2x2_k1__SystolicArray_0_next__1_inst0 (
    .rst(rst),
    .systolic_2x2_k1__a_fifo_0_0_rdy(instantiation_output_1746),
    .systolic_2x2_k1__a_fifo_0_2(instantiation_output_1776),
    .systolic_2x2_k1__a_fifo_0_2_vld(instantiation_output_1777),
    .systolic_2x2_k1__a_fifo_1_0_rdy(instantiation_output_1785),
    .systolic_2x2_k1__a_fifo_1_2(instantiation_output_1815),
    .systolic_2x2_k1__a_fifo_1_2_vld(instantiation_output_1816),
    .systolic_2x2_k1__a_row_0(systolic_2x2_k1__a_row_0),
    .systolic_2x2_k1__a_row_0_vld(systolic_2x2_k1__a_row_0_vld),
    .systolic_2x2_k1__a_row_1(systolic_2x2_k1__a_row_1),
    .systolic_2x2_k1__a_row_1_vld(systolic_2x2_k1__a_row_1_vld),
    .systolic_2x2_k1__b_col_0(systolic_2x2_k1__b_col_0),
    .systolic_2x2_k1__b_col_0_vld(systolic_2x2_k1__b_col_0_vld),
    .systolic_2x2_k1__b_col_1(systolic_2x2_k1__b_col_1),
    .systolic_2x2_k1__b_col_1_vld(systolic_2x2_k1__b_col_1_vld),
    .systolic_2x2_k1__b_fifo_0_0_rdy(instantiation_output_1848),
    .systolic_2x2_k1__b_fifo_0_2(instantiation_output_1878),
    .systolic_2x2_k1__b_fifo_0_2_vld(instantiation_output_1879),
    .systolic_2x2_k1__b_fifo_1_0_rdy(instantiation_output_1887),
    .systolic_2x2_k1__b_fifo_1_2(instantiation_output_1917),
    .systolic_2x2_k1__b_fifo_1_2_vld(instantiation_output_1918),
    .systolic_2x2_k1__c_out_0_0(instantiation_output_1930),
    .systolic_2x2_k1__c_out_0_0_vld(instantiation_output_1931),
    .systolic_2x2_k1__c_out_0_1(instantiation_output_1943),
    .systolic_2x2_k1__c_out_0_1_vld(instantiation_output_1944),
    .systolic_2x2_k1__c_out_1_0(instantiation_output_1956),
    .systolic_2x2_k1__c_out_1_0_vld(instantiation_output_1957),
    .systolic_2x2_k1__c_out_1_1(instantiation_output_1969),
    .systolic_2x2_k1__c_out_1_1_vld(instantiation_output_1970),
    .systolic_2x2_k1__c_result_rdy(systolic_2x2_k1__c_result_rdy),
    .systolic_2x2_k1__a_fifo_0_0(instantiation_output_1744),
    .systolic_2x2_k1__a_fifo_0_0_vld(instantiation_output_1745),
    .systolic_2x2_k1__a_fifo_0_2_rdy(instantiation_output_1778),
    .systolic_2x2_k1__a_fifo_1_0(instantiation_output_1783),
    .systolic_2x2_k1__a_fifo_1_0_vld(instantiation_output_1784),
    .systolic_2x2_k1__a_fifo_1_2_rdy(instantiation_output_1817),
    .systolic_2x2_k1__a_row_0_rdy(instantiation_output_1823),
    .systolic_2x2_k1__a_row_1_rdy(instantiation_output_1829),
    .systolic_2x2_k1__b_col_0_rdy(instantiation_output_1835),
    .systolic_2x2_k1__b_col_1_rdy(instantiation_output_1841),
    .systolic_2x2_k1__b_fifo_0_0(instantiation_output_1846),
    .systolic_2x2_k1__b_fifo_0_0_vld(instantiation_output_1847),
    .systolic_2x2_k1__b_fifo_0_2_rdy(instantiation_output_1880),
    .systolic_2x2_k1__b_fifo_1_0(instantiation_output_1885),
    .systolic_2x2_k1__b_fifo_1_0_vld(instantiation_output_1886),
    .systolic_2x2_k1__b_fifo_1_2_rdy(instantiation_output_1919),
    .systolic_2x2_k1__c_out_0_0_rdy(instantiation_output_1932),
    .systolic_2x2_k1__c_out_0_1_rdy(instantiation_output_1945),
    .systolic_2x2_k1__c_out_1_0_rdy(instantiation_output_1958),
    .systolic_2x2_k1__c_out_1_1_rdy(instantiation_output_1971),
    .systolic_2x2_k1__c_result({{instantiation_output_1975[1][1], instantiation_output_1975[1][0]}, {instantiation_output_1975[0][1], instantiation_output_1975[0][0]}}),
    .systolic_2x2_k1__c_result_vld(instantiation_output_1976),
    .clk(clk)
  );
  __systolic_2x2_k1__SystolicArray__PE_0__1_next __systolic_2x2_k1__SystolicArray__PE_0__1_next_inst1 (
    .rst(rst),
    .systolic_2x2_k1__a_fifo_0_0(instantiation_output_1750),
    .systolic_2x2_k1__a_fifo_0_0_vld(instantiation_output_1751),
    .systolic_2x2_k1__a_fifo_0_1_rdy(instantiation_output_1759),
    .systolic_2x2_k1__b_fifo_0_0(instantiation_output_1852),
    .systolic_2x2_k1__b_fifo_0_0_vld(instantiation_output_1853),
    .systolic_2x2_k1__b_fifo_0_1_rdy(instantiation_output_1861),
    .systolic_2x2_k1__c_out_0_0_rdy(instantiation_output_1926),
    .systolic_2x2_k1__a_fifo_0_0_rdy(instantiation_output_1752),
    .systolic_2x2_k1__a_fifo_0_1(instantiation_output_1757),
    .systolic_2x2_k1__a_fifo_0_1_vld(instantiation_output_1758),
    .systolic_2x2_k1__b_fifo_0_0_rdy(instantiation_output_1854),
    .systolic_2x2_k1__b_fifo_0_1(instantiation_output_1859),
    .systolic_2x2_k1__b_fifo_0_1_vld(instantiation_output_1860),
    .systolic_2x2_k1__c_out_0_0(instantiation_output_1924),
    .systolic_2x2_k1__c_out_0_0_vld(instantiation_output_1925),
    .clk(clk)
  );
  __systolic_2x2_k1__SystolicArray__PE_1__1_next __systolic_2x2_k1__SystolicArray__PE_1__1_next_inst2 (
    .rst(rst),
    .systolic_2x2_k1__a_fifo_0_1(instantiation_output_1763),
    .systolic_2x2_k1__a_fifo_0_1_vld(instantiation_output_1764),
    .systolic_2x2_k1__a_fifo_0_2_rdy(instantiation_output_1772),
    .systolic_2x2_k1__b_fifo_1_0(instantiation_output_1891),
    .systolic_2x2_k1__b_fifo_1_0_vld(instantiation_output_1892),
    .systolic_2x2_k1__b_fifo_1_1_rdy(instantiation_output_1900),
    .systolic_2x2_k1__c_out_0_1_rdy(instantiation_output_1939),
    .systolic_2x2_k1__a_fifo_0_1_rdy(instantiation_output_1765),
    .systolic_2x2_k1__a_fifo_0_2(instantiation_output_1770),
    .systolic_2x2_k1__a_fifo_0_2_vld(instantiation_output_1771),
    .systolic_2x2_k1__b_fifo_1_0_rdy(instantiation_output_1893),
    .systolic_2x2_k1__b_fifo_1_1(instantiation_output_1898),
    .systolic_2x2_k1__b_fifo_1_1_vld(instantiation_output_1899),
    .systolic_2x2_k1__c_out_0_1(instantiation_output_1937),
    .systolic_2x2_k1__c_out_0_1_vld(instantiation_output_1938),
    .clk(clk)
  );
  __systolic_2x2_k1__SystolicArray__PE_2__1_next __systolic_2x2_k1__SystolicArray__PE_2__1_next_inst3 (
    .rst(rst),
    .systolic_2x2_k1__a_fifo_1_0(instantiation_output_1789),
    .systolic_2x2_k1__a_fifo_1_0_vld(instantiation_output_1790),
    .systolic_2x2_k1__a_fifo_1_1_rdy(instantiation_output_1798),
    .systolic_2x2_k1__b_fifo_0_1(instantiation_output_1865),
    .systolic_2x2_k1__b_fifo_0_1_vld(instantiation_output_1866),
    .systolic_2x2_k1__b_fifo_0_2_rdy(instantiation_output_1874),
    .systolic_2x2_k1__c_out_1_0_rdy(instantiation_output_1952),
    .systolic_2x2_k1__a_fifo_1_0_rdy(instantiation_output_1791),
    .systolic_2x2_k1__a_fifo_1_1(instantiation_output_1796),
    .systolic_2x2_k1__a_fifo_1_1_vld(instantiation_output_1797),
    .systolic_2x2_k1__b_fifo_0_1_rdy(instantiation_output_1867),
    .systolic_2x2_k1__b_fifo_0_2(instantiation_output_1872),
    .systolic_2x2_k1__b_fifo_0_2_vld(instantiation_output_1873),
    .systolic_2x2_k1__c_out_1_0(instantiation_output_1950),
    .systolic_2x2_k1__c_out_1_0_vld(instantiation_output_1951),
    .clk(clk)
  );
  __systolic_2x2_k1__SystolicArray__PE_3__1_next __systolic_2x2_k1__SystolicArray__PE_3__1_next_inst4 (
    .rst(rst),
    .systolic_2x2_k1__a_fifo_1_1(instantiation_output_1802),
    .systolic_2x2_k1__a_fifo_1_1_vld(instantiation_output_1803),
    .systolic_2x2_k1__a_fifo_1_2_rdy(instantiation_output_1811),
    .systolic_2x2_k1__b_fifo_1_1(instantiation_output_1904),
    .systolic_2x2_k1__b_fifo_1_1_vld(instantiation_output_1905),
    .systolic_2x2_k1__b_fifo_1_2_rdy(instantiation_output_1913),
    .systolic_2x2_k1__c_out_1_1_rdy(instantiation_output_1965),
    .systolic_2x2_k1__a_fifo_1_1_rdy(instantiation_output_1804),
    .systolic_2x2_k1__a_fifo_1_2(instantiation_output_1809),
    .systolic_2x2_k1__a_fifo_1_2_vld(instantiation_output_1810),
    .systolic_2x2_k1__b_fifo_1_1_rdy(instantiation_output_1906),
    .systolic_2x2_k1__b_fifo_1_2(instantiation_output_1911),
    .systolic_2x2_k1__b_fifo_1_2_vld(instantiation_output_1912),
    .systolic_2x2_k1__c_out_1_1(instantiation_output_1963),
    .systolic_2x2_k1__c_out_1_1_vld(instantiation_output_1964),
    .clk(clk)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__a_fifo_0_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1744),
    .push_valid(instantiation_output_1745),
    .pop_ready(instantiation_output_1752),
    .push_ready(instantiation_output_1746),
    .pop_data(instantiation_output_1750),
    .pop_valid(instantiation_output_1751)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__a_fifo_0_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1757),
    .push_valid(instantiation_output_1758),
    .pop_ready(instantiation_output_1765),
    .push_ready(instantiation_output_1759),
    .pop_data(instantiation_output_1763),
    .pop_valid(instantiation_output_1764)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__a_fifo_0_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1770),
    .push_valid(instantiation_output_1771),
    .pop_ready(instantiation_output_1778),
    .push_ready(instantiation_output_1772),
    .pop_data(instantiation_output_1776),
    .pop_valid(instantiation_output_1777)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__a_fifo_1_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1783),
    .push_valid(instantiation_output_1784),
    .pop_ready(instantiation_output_1791),
    .push_ready(instantiation_output_1785),
    .pop_data(instantiation_output_1789),
    .pop_valid(instantiation_output_1790)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__a_fifo_1_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1796),
    .push_valid(instantiation_output_1797),
    .pop_ready(instantiation_output_1804),
    .push_ready(instantiation_output_1798),
    .pop_data(instantiation_output_1802),
    .pop_valid(instantiation_output_1803)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__a_fifo_1_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1809),
    .push_valid(instantiation_output_1810),
    .pop_ready(instantiation_output_1817),
    .push_ready(instantiation_output_1811),
    .pop_data(instantiation_output_1815),
    .pop_valid(instantiation_output_1816)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__b_fifo_0_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1846),
    .push_valid(instantiation_output_1847),
    .pop_ready(instantiation_output_1854),
    .push_ready(instantiation_output_1848),
    .pop_data(instantiation_output_1852),
    .pop_valid(instantiation_output_1853)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__b_fifo_0_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1859),
    .push_valid(instantiation_output_1860),
    .pop_ready(instantiation_output_1867),
    .push_ready(instantiation_output_1861),
    .pop_data(instantiation_output_1865),
    .pop_valid(instantiation_output_1866)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__b_fifo_0_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1872),
    .push_valid(instantiation_output_1873),
    .pop_ready(instantiation_output_1880),
    .push_ready(instantiation_output_1874),
    .pop_data(instantiation_output_1878),
    .pop_valid(instantiation_output_1879)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__b_fifo_1_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1885),
    .push_valid(instantiation_output_1886),
    .pop_ready(instantiation_output_1893),
    .push_ready(instantiation_output_1887),
    .pop_data(instantiation_output_1891),
    .pop_valid(instantiation_output_1892)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__b_fifo_1_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1898),
    .push_valid(instantiation_output_1899),
    .pop_ready(instantiation_output_1906),
    .push_ready(instantiation_output_1900),
    .pop_data(instantiation_output_1904),
    .pop_valid(instantiation_output_1905)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__b_fifo_1_2 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1911),
    .push_valid(instantiation_output_1912),
    .pop_ready(instantiation_output_1919),
    .push_ready(instantiation_output_1913),
    .pop_data(instantiation_output_1917),
    .pop_valid(instantiation_output_1918)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__c_out_0_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1924),
    .push_valid(instantiation_output_1925),
    .pop_ready(instantiation_output_1932),
    .push_ready(instantiation_output_1926),
    .pop_data(instantiation_output_1930),
    .pop_valid(instantiation_output_1931)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__c_out_0_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1937),
    .push_valid(instantiation_output_1938),
    .pop_ready(instantiation_output_1945),
    .push_ready(instantiation_output_1939),
    .pop_data(instantiation_output_1943),
    .pop_valid(instantiation_output_1944)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__c_out_1_0 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1950),
    .push_valid(instantiation_output_1951),
    .pop_ready(instantiation_output_1958),
    .push_ready(instantiation_output_1952),
    .pop_data(instantiation_output_1956),
    .pop_valid(instantiation_output_1957)
  );
  xls_fifo_wrapper #(
    .Width(32'd32),
    .Depth(32'd1),
    .EnableBypass(1'd1),
    .RegisterPushOutputs(1'd1),
    .RegisterPopOutputs(1'd0)
  ) fifo_systolic_2x2_k1__c_out_1_1 (
    .clk(clk),
    .rst(rst),
    .push_data(instantiation_output_1963),
    .push_valid(instantiation_output_1964),
    .pop_ready(instantiation_output_1971),
    .push_ready(instantiation_output_1965),
    .pop_data(instantiation_output_1969),
    .pop_valid(instantiation_output_1970)
  );
  assign systolic_2x2_k1__a_row_0_rdy = instantiation_output_1823;
  assign systolic_2x2_k1__a_row_1_rdy = instantiation_output_1829;
  assign systolic_2x2_k1__b_col_0_rdy = instantiation_output_1835;
  assign systolic_2x2_k1__b_col_1_rdy = instantiation_output_1841;
  assign systolic_2x2_k1__c_result = {{instantiation_output_1975[1][1], instantiation_output_1975[1][0]}, {instantiation_output_1975[0][1], instantiation_output_1975[0][0]}};
  assign systolic_2x2_k1__c_result_vld = instantiation_output_1976;
endmodule
