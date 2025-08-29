module top_wrapper;
wire [22:0] io_in_0t, io_in_0f, io_in_1t, io_in_1f, io_out_0t, io_out_0f, io_out_1t, io_out_1f, io_oeb, ctrl_io_in_0t, ctrl_io_in_0f, ctrl_io_out_0t, ctrl_io_out_0f, ctrl_io_oeb;
 
// IO
 
(* keep, BEL="X0Y1.A" *) IO_1_bidirectional_frame_config_pass io0_i (.Q0_t(io_in_0t[0]), .Q0_f(io_in_0f[0]), .Q1_t(io_in_1t[0]), .Q1_f(io_in_1f[0]), .I0_t(io_out_0t[0]), .I0_f(io_out_0f[0]), .I1_t(io_out_1t[0]), .I1_f(io_out_1f[0]), .T(io_oeb[0]));
(* keep, BEL="X0Y2.A" *) IO_1_bidirectional_frame_config_pass io1_i (.Q0_t(io_in_0t[1]), .Q0_f(io_in_0f[1]), .Q1_t(io_in_1t[1]), .Q1_f(io_in_1f[1]), .I0_t(io_out_0t[1]), .I0_f(io_out_0f[1]), .I1_t(io_out_1t[1]), .I1_f(io_out_1f[1]), .T(io_oeb[1]));
(* keep, BEL="X0Y3.A" *) IO_1_bidirectional_frame_config_pass io2_i (.Q0_t(io_in_0t[2]), .Q0_f(io_in_0f[2]), .Q1_t(io_in_1t[2]), .Q1_f(io_in_1f[2]), .I0_t(io_out_0t[2]), .I0_f(io_out_0f[2]), .I1_t(io_out_1t[2]), .I1_f(io_out_1f[2]), .T(io_oeb[2]));
(* keep, BEL="X0Y4.A" *) IO_1_bidirectional_frame_config_pass io3_i (.Q0_t(io_in_0t[3]), .Q0_f(io_in_0f[3]), .Q1_t(io_in_1t[3]), .Q1_f(io_in_1f[3]), .I0_t(io_out_0t[3]), .I0_f(io_out_0f[3]), .I1_t(io_out_1t[3]), .I1_f(io_out_1f[3]), .T(io_oeb[3]));
(* keep, BEL="X0Y5.A" *) IO_1_bidirectional_frame_config_pass io4_i (.Q0_t(io_in_0t[4]), .Q0_f(io_in_0f[4]), .Q1_t(io_in_1t[4]), .Q1_f(io_in_1f[4]), .I0_t(io_out_0t[4]), .I0_f(io_out_0f[4]), .I1_t(io_out_1t[4]), .I1_f(io_out_1f[4]), .T(io_oeb[4]));
(* keep, BEL="X0Y6.A" *) IO_1_bidirectional_frame_config_pass io5_i (.Q0_t(io_in_0t[5]), .Q0_f(io_in_0f[5]), .Q1_t(io_in_1t[5]), .Q1_f(io_in_1f[5]), .I0_t(io_out_0t[5]), .I0_f(io_out_0f[5]), .I1_t(io_out_1t[5]), .I1_f(io_out_1f[5]), .T(io_oeb[5]));
(* keep, BEL="X0Y7.A" *) IO_1_bidirectional_frame_config_pass io6_i (.Q0_t(io_in_0t[6]), .Q0_f(io_in_0f[6]), .Q1_t(io_in_1t[6]), .Q1_f(io_in_1f[6]), .I0_t(io_out_0t[6]), .I0_f(io_out_0f[6]), .I1_t(io_out_1t[6]), .I1_f(io_out_1f[6]), .T(io_oeb[6]));
(* keep, BEL="X0Y8.A" *) IO_1_bidirectional_frame_config_pass io7_i (.Q0_t(io_in_0t[7]), .Q0_f(io_in_0f[7]), .Q1_t(io_in_1t[7]), .Q1_f(io_in_1f[7]), .I0_t(io_out_0t[7]), .I0_f(io_out_0f[7]), .I1_t(io_out_1t[7]), .I1_f(io_out_1f[7]), .T(io_oeb[7]));
(* keep, BEL="X0Y9.A" *) IO_1_bidirectional_frame_config_pass io8_i (.Q0_t(io_in_0t[8]), .Q0_f(io_in_0f[8]), .Q1_t(io_in_1t[8]), .Q1_f(io_in_1f[8]), .I0_t(io_out_0t[8]), .I0_f(io_out_0f[8]), .I1_t(io_out_1t[8]), .I1_f(io_out_1f[8]), .T(io_oeb[8]));
(* keep, BEL="X0Y10.A" *) IO_1_bidirectional_frame_config_pass io9_i (.Q0_t(io_in_0t[9]), .Q0_f(io_in_0f[9]), .Q1_t(io_in_1t[9]), .Q1_f(io_in_1f[9]), .I0_t(io_out_0t[9]), .I0_f(io_out_0f[9]), .I1_t(io_out_1t[9]), .I1_f(io_out_1f[9]), .T(io_oeb[9]));
(* keep, BEL="X0Y11.A" *) IO_1_bidirectional_frame_config_pass io10_i (.Q0_t(io_in_0t[10]), .Q0_f(io_in_0f[10]), .Q1_t(io_in_1t[10]), .Q1_f(io_in_1f[10]), .I0_t(io_out_0t[10]), .I0_f(io_out_0f[10]), .I1_t(io_out_1t[10]), .I1_f(io_out_1f[10]), .T(io_oeb[10]));
(* keep, BEL="X0Y12.A" *) IO_1_bidirectional_frame_config_pass io11_i (.Q0_t(io_in_0t[11]), .Q0_f(io_in_0f[11]), .Q1_t(io_in_1t[11]), .Q1_f(io_in_1f[11]), .I0_t(io_out_0t[11]), .I0_f(io_out_0f[11]), .I1_t(io_out_1t[11]), .I1_f(io_out_1f[11]), .T(io_oeb[11]));
(* keep, BEL="X0Y13.A" *) IO_1_bidirectional_frame_config_pass io12_i (.Q0_t(io_in_0t[12]), .Q0_f(io_in_0f[12]), .Q1_t(io_in_1t[12]), .Q1_f(io_in_1f[12]), .I0_t(io_out_0t[12]), .I0_f(io_out_0f[12]), .I1_t(io_out_1t[12]), .I1_f(io_out_1f[12]), .T(io_oeb[12]));
(* keep, BEL="X0Y14.A" *) IO_1_bidirectional_frame_config_pass io13_i (.Q0_t(io_in_0t[13]), .Q0_f(io_in_0f[13]), .Q1_t(io_in_1t[13]), .Q1_f(io_in_1f[13]), .I0_t(io_out_0t[13]), .I0_f(io_out_0f[13]), .I1_t(io_out_1t[13]), .I1_f(io_out_1f[13]), .T(io_oeb[13]));
(* keep, BEL="X0Y15.A" *) IO_1_bidirectional_frame_config_pass io14_i (.Q0_t(io_in_0t[14]), .Q0_f(io_in_0f[14]), .Q1_t(io_in_1t[14]), .Q1_f(io_in_1f[14]), .I0_t(io_out_0t[14]), .I0_f(io_out_0f[14]), .I1_t(io_out_1t[14]), .I1_f(io_out_1f[14]), .T(io_oeb[14]));
(* keep, BEL="X0Y16.A" *) IO_1_bidirectional_frame_config_pass io15_i (.Q0_t(io_in_0t[15]), .Q0_f(io_in_0f[15]), .Q1_t(io_in_1t[15]), .Q1_f(io_in_1f[15]), .I0_t(io_out_0t[15]), .I0_f(io_out_0f[15]), .I1_t(io_out_1t[15]), .I1_f(io_out_1f[15]), .T(io_oeb[15]));
(* keep, BEL="X0Y17.A" *) IO_1_bidirectional_frame_config_pass io16_i (.Q0_t(io_in_0t[16]), .Q0_f(io_in_0f[16]), .Q1_t(io_in_1t[16]), .Q1_f(io_in_1f[16]), .I0_t(io_out_0t[16]), .I0_f(io_out_0f[16]), .I1_t(io_out_1t[16]), .I1_f(io_out_1f[16]), .T(io_oeb[16]));
(* keep, BEL="X0Y18.A" *) IO_1_bidirectional_frame_config_pass io17_i (.Q0_t(io_in_0t[17]), .Q0_f(io_in_0f[17]), .Q1_t(io_in_1t[17]), .Q1_f(io_in_1f[17]), .I0_t(io_out_0t[17]), .I0_f(io_out_0f[17]), .I1_t(io_out_1t[17]), .I1_f(io_out_1f[17]), .T(io_oeb[17]));
(* keep, BEL="X0Y19.A" *) IO_1_bidirectional_frame_config_pass io18_i (.Q0_t(io_in_0t[18]), .Q0_f(io_in_0f[18]), .Q1_t(io_in_1t[18]), .Q1_f(io_in_1f[18]), .I0_t(io_out_0t[18]), .I0_f(io_out_0f[18]), .I1_t(io_out_1t[18]), .I1_f(io_out_1f[18]), .T(io_oeb[18]));
(* keep, BEL="X0Y20.A" *) IO_1_bidirectional_frame_config_pass io19_i (.Q0_t(io_in_0t[19]), .Q0_f(io_in_0f[19]), .Q1_t(io_in_1t[19]), .Q1_f(io_in_1f[19]), .I0_t(io_out_0t[19]), .I0_f(io_out_0f[19]), .I1_t(io_out_1t[19]), .I1_f(io_out_1f[19]), .T(io_oeb[19]));
(* keep, BEL="X0Y21.A" *) IO_1_bidirectional_frame_config_pass io20_i (.Q0_t(io_in_0t[20]), .Q0_f(io_in_0f[20]), .Q1_t(io_in_1t[20]), .Q1_f(io_in_1f[20]), .I0_t(io_out_0t[20]), .I0_f(io_out_0f[20]), .I1_t(io_out_1t[20]), .I1_f(io_out_1f[20]), .T(io_oeb[20]));
(* keep, BEL="X0Y22.A" *) IO_1_bidirectional_frame_config_pass io21_i (.Q0_t(io_in_0t[21]), .Q0_f(io_in_0f[21]), .Q1_t(io_in_1t[21]), .Q1_f(io_in_1f[21]), .I0_t(io_out_0t[21]), .I0_f(io_out_0f[21]), .I1_t(io_out_1t[21]), .I1_f(io_out_1f[21]), .T(io_oeb[21]));
(* keep, BEL="X0Y23.A" *) IO_1_bidirectional_frame_config_pass io22_i (.Q0_t(io_in_0t[22]), .Q0_f(io_in_0f[22]), .Q1_t(io_in_1t[22]), .Q1_f(io_in_1f[22]), .I0_t(io_out_0t[22]), .I0_f(io_out_0f[22]), .I1_t(io_out_1t[22]), .I1_f(io_out_1f[22]), .T(io_oeb[22]));
 
// ctrl IO
 
(* keep, BEL="X10Y1.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io0_i (.Q0_t(ctrl_io_in_0t[0]), .Q0_f(ctrl_io_in_0f[0]), .I0_t(ctrl_io_out_0t[0]), .I0_f(ctrl_io_out_0f[0]), .T(ctrl_io_oeb[0]));
(* keep, BEL="X10Y2.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io1_i (.Q0_t(ctrl_io_in_0t[1]), .Q0_f(ctrl_io_in_0f[1]), .I0_t(ctrl_io_out_0t[1]), .I0_f(ctrl_io_out_0f[1]), .T(ctrl_io_oeb[1]));
(* keep, BEL="X10Y3.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io2_i (.Q0_t(ctrl_io_in_0t[2]), .Q0_f(ctrl_io_in_0f[2]), .I0_t(ctrl_io_out_0t[2]), .I0_f(ctrl_io_out_0f[2]), .T(ctrl_io_oeb[2]));
(* keep, BEL="X10Y4.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io3_i (.Q0_t(ctrl_io_in_0t[3]), .Q0_f(ctrl_io_in_0f[3]), .I0_t(ctrl_io_out_0t[3]), .I0_f(ctrl_io_out_0f[3]), .T(ctrl_io_oeb[3]));
(* keep, BEL="X10Y5.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io4_i (.Q0_t(ctrl_io_in_0t[4]), .Q0_f(ctrl_io_in_0f[4]), .I0_t(ctrl_io_out_0t[4]), .I0_f(ctrl_io_out_0f[4]), .T(ctrl_io_oeb[4]));
(* keep, BEL="X10Y6.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io5_i (.Q0_t(ctrl_io_in_0t[5]), .Q0_f(ctrl_io_in_0f[5]), .I0_t(ctrl_io_out_0t[5]), .I0_f(ctrl_io_out_0f[5]), .T(ctrl_io_oeb[5]));
(* keep, BEL="X10Y7.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io6_i (.Q0_t(ctrl_io_in_0t[6]), .Q0_f(ctrl_io_in_0f[6]), .I0_t(ctrl_io_out_0t[6]), .I0_f(ctrl_io_out_0f[6]), .T(ctrl_io_oeb[6]));
(* keep, BEL="X10Y8.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io7_i (.Q0_t(ctrl_io_in_0t[7]), .Q0_f(ctrl_io_in_0f[7]), .I0_t(ctrl_io_out_0t[7]), .I0_f(ctrl_io_out_0f[7]), .T(ctrl_io_oeb[7]));
(* keep, BEL="X10Y9.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io8_i (.Q0_t(ctrl_io_in_0t[8]), .Q0_f(ctrl_io_in_0f[8]), .I0_t(ctrl_io_out_0t[8]), .I0_f(ctrl_io_out_0f[8]), .T(ctrl_io_oeb[8]));
(* keep, BEL="X10Y10.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io9_i (.Q0_t(ctrl_io_in_0t[9]), .Q0_f(ctrl_io_in_0f[9]), .I0_t(ctrl_io_out_0t[9]), .I0_f(ctrl_io_out_0f[9]), .T(ctrl_io_oeb[9]));
(* keep, BEL="X10Y11.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io10_i (.Q0_t(ctrl_io_in_0t[10]), .Q0_f(ctrl_io_in_0f[10]), .I0_t(ctrl_io_out_0t[10]), .I0_f(ctrl_io_out_0f[10]), .T(ctrl_io_oeb[10]));
(* keep, BEL="X10Y12.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io11_i (.Q0_t(ctrl_io_in_0t[11]), .Q0_f(ctrl_io_in_0f[11]), .I0_t(ctrl_io_out_0t[11]), .I0_f(ctrl_io_out_0f[11]), .T(ctrl_io_oeb[11]));
(* keep, BEL="X10Y13.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io12_i (.Q0_t(ctrl_io_in_0t[12]), .Q0_f(ctrl_io_in_0f[12]), .I0_t(ctrl_io_out_0t[12]), .I0_f(ctrl_io_out_0f[12]), .T(ctrl_io_oeb[12]));
(* keep, BEL="X10Y14.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io13_i (.Q0_t(ctrl_io_in_0t[13]), .Q0_f(ctrl_io_in_0f[13]), .I0_t(ctrl_io_out_0t[13]), .I0_f(ctrl_io_out_0f[13]), .T(ctrl_io_oeb[13]));
(* keep, BEL="X10Y15.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io14_i (.Q0_t(ctrl_io_in_0t[14]), .Q0_f(ctrl_io_in_0f[14]), .I0_t(ctrl_io_out_0t[14]), .I0_f(ctrl_io_out_0f[14]), .T(ctrl_io_oeb[14]));
(* keep, BEL="X10Y16.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io15_i (.Q0_t(ctrl_io_in_0t[15]), .Q0_f(ctrl_io_in_0f[15]), .I0_t(ctrl_io_out_0t[15]), .I0_f(ctrl_io_out_0f[15]), .T(ctrl_io_oeb[15]));
(* keep, BEL="X10Y17.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io16_i (.Q0_t(ctrl_io_in_0t[16]), .Q0_f(ctrl_io_in_0f[16]), .I0_t(ctrl_io_out_0t[16]), .I0_f(ctrl_io_out_0f[16]), .T(ctrl_io_oeb[16]));
(* keep, BEL="X10Y18.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io17_i (.Q0_t(ctrl_io_in_0t[17]), .Q0_f(ctrl_io_in_0f[17]), .I0_t(ctrl_io_out_0t[17]), .I0_f(ctrl_io_out_0f[17]), .T(ctrl_io_oeb[17]));
(* keep, BEL="X10Y19.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io18_i (.Q0_t(ctrl_io_in_0t[18]), .Q0_f(ctrl_io_in_0f[18]), .I0_t(ctrl_io_out_0t[18]), .I0_f(ctrl_io_out_0f[18]), .T(ctrl_io_oeb[18]));
(* keep, BEL="X10Y20.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io19_i (.Q0_t(ctrl_io_in_0t[19]), .Q0_f(ctrl_io_in_0f[19]), .I0_t(ctrl_io_out_0t[19]), .I0_f(ctrl_io_out_0f[19]), .T(ctrl_io_oeb[19]));
(* keep, BEL="X10Y21.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io20_i (.Q0_t(ctrl_io_in_0t[20]), .Q0_f(ctrl_io_in_0f[20]), .I0_t(ctrl_io_out_0t[20]), .I0_f(ctrl_io_out_0f[20]), .T(ctrl_io_oeb[20]));
(* keep, BEL="X10Y22.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io21_i (.Q0_t(ctrl_io_in_0t[21]), .Q0_f(ctrl_io_in_0f[21]), .I0_t(ctrl_io_out_0t[21]), .I0_f(ctrl_io_out_0f[21]), .T(ctrl_io_oeb[21]));
(* keep, BEL="X10Y23.A" *) ctrl_IO_1_bidirectional_frame_config_pass ctrl_io22_i (.Q0_t(ctrl_io_in_0t[22]), .Q0_f(ctrl_io_in_0f[22]), .I0_t(ctrl_io_out_0t[22]), .I0_f(ctrl_io_out_0f[22]), .T(ctrl_io_oeb[22]));
 
 
top top_i(.io_in_0t(io_in_0t), .io_in_0f(io_in_0f), .io_in_1t(io_in_1t), .io_in_1f(io_in_1f), .io_out_0t(io_out_0t), .io_out_0f(io_out_0f), .io_out_1t(io_out_1t), .io_out_1f(io_out_1f), .io_oeb(io_oeb), .ctrl_io_in_0t(ctrl_io_in_0t), .ctrl_io_in_0f(ctrl_io_in_0f), .ctrl_io_out_0t(ctrl_io_out_0t), .ctrl_io_out_0f(ctrl_io_out_0f), .ctrl_io_oeb(ctrl_io_oeb));
endmodule
