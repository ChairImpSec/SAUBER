 // NumberOfConfigBits: 47
module ctrl_to_sec_switch_matrix
    #(
        parameter NoConfigBits=47
    )
    (
        input from_EA0,
        input from_EB0,
        input from_EC0,
        input from_ED0,
        input from_EF0,
        input from_EG0,
        input from_EG1,
        input from_EH0,
        input from_EH1,
        input from_EI0,
        input from_EI1,
        input from_EI2,
        input from_WA_1s0,
        input from_WB_1s0,
        input from_WC_1s0,
        input from_WD_1s0,
        input from_WF_1s0,
        input from_WG_1s0,
        input from_WH_1s0,
        input from_WI_1s0,
        input from_NA0,
        input from_NB0,
        input from_NC0,
        input from_ND0,
        input from_NF0,
        input from_NG0,
        input from_NH0,
        input from_NI0,
        input from_SA0,
        input from_SB0,
        input from_SC0,
        input from_SD0,
        input from_SF0,
        input from_SG0,
        input from_SH0,
        input from_SI0,
        output to_WA0,
        output to_WB0,
        output to_WC0,
        output to_WD0,
        output to_WF0,
        output to_WG0,
        output to_WG1,
        output to_WH0,
        output to_WH1,
        output to_WI0,
        output to_WI1,
        output to_WI2,
        output to_NA0,
        output to_NB0,
        output to_NC0,
        output to_ND0,
        output to_NF0,
        output to_NG0,
        output to_NH0,
        output to_NI0,
        output to_SA0,
        output to_SB0,
        output to_SC0,
        output to_SD0,
        output to_SF0,
        output to_SG0,
        output to_SH0,
        output to_SI0,
 //global
        input [NoConfigBits-1:0] ConfigBits,
        input [NoConfigBits-1:0] ConfigBits_N
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

wire[3-1:0] to_WA0_input;
wire[4-1:0] to_WB0_input;
wire[4-1:0] to_WC0_input;
wire[4-1:0] to_WD0_input;
wire[4-1:0] to_WF0_input;
wire[4-1:0] to_WG0_input;
wire[1-1:0] to_WG1_input;
wire[4-1:0] to_WH0_input;
wire[1-1:0] to_WH1_input;
wire[4-1:0] to_WI0_input;
wire[1-1:0] to_WI1_input;
wire[1-1:0] to_WI2_input;
wire[4-1:0] to_NA0_input;
wire[4-1:0] to_NB0_input;
wire[4-1:0] to_NC0_input;
wire[4-1:0] to_ND0_input;
wire[4-1:0] to_NF0_input;
wire[4-1:0] to_NG0_input;
wire[4-1:0] to_NH0_input;
wire[4-1:0] to_NI0_input;
wire[4-1:0] to_SA0_input;
wire[4-1:0] to_SB0_input;
wire[4-1:0] to_SC0_input;
wire[4-1:0] to_SD0_input;
wire[4-1:0] to_SF0_input;
wire[4-1:0] to_SG0_input;
wire[4-1:0] to_SH0_input;
wire[4-1:0] to_SI0_input;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer to_WA0 MUX-3
assign to_WA0_input = {from_SA0,from_NA0,from_WA_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_WA0 (
    .A0(to_WA0_input[0]),
    .A1(to_WA0_input[1]),
    .A2(to_WA0_input[2]),
    .S0(ConfigBits[0+0]),
    .S0N(ConfigBits_N[0+0]),
    .S1(ConfigBits[0+1]),
    .S1N(ConfigBits_N[0+1]),
    .X(to_WA0)
);

 //switch matrix multiplexer to_WB0 MUX-4
assign to_WB0_input = {from_SB0,from_NB0,from_WB_1s0,from_EB0};
cus_mux41_buf inst_cus_mux41_buf_to_WB0 (
    .A0(to_WB0_input[0]),
    .A1(to_WB0_input[1]),
    .A2(to_WB0_input[2]),
    .A3(to_WB0_input[3]),
    .S0(ConfigBits[1+0]),
    .S0N(ConfigBits_N[1+0]),
    .S1(ConfigBits[1+1]),
    .S1N(ConfigBits_N[1+1]),
    .X(to_WB0)
);

 //switch matrix multiplexer to_WC0 MUX-4
assign to_WC0_input = {from_SC0,from_NC0,from_WC_1s0,from_EC0};
cus_mux41_buf inst_cus_mux41_buf_to_WC0 (
    .A0(to_WC0_input[0]),
    .A1(to_WC0_input[1]),
    .A2(to_WC0_input[2]),
    .A3(to_WC0_input[3]),
    .S0(ConfigBits[3+0]),
    .S0N(ConfigBits_N[3+0]),
    .S1(ConfigBits[3+1]),
    .S1N(ConfigBits_N[3+1]),
    .X(to_WC0)
);

 //switch matrix multiplexer to_WD0 MUX-4
assign to_WD0_input = {from_SD0,from_ND0,from_WD_1s0,from_ED0};
cus_mux41_buf inst_cus_mux41_buf_to_WD0 (
    .A0(to_WD0_input[0]),
    .A1(to_WD0_input[1]),
    .A2(to_WD0_input[2]),
    .A3(to_WD0_input[3]),
    .S0(ConfigBits[5+0]),
    .S0N(ConfigBits_N[5+0]),
    .S1(ConfigBits[5+1]),
    .S1N(ConfigBits_N[5+1]),
    .X(to_WD0)
);

 //switch matrix multiplexer to_WF0 MUX-4
assign to_WF0_input = {from_SF0,from_NF0,from_WF_1s0,from_EF0};
cus_mux41_buf inst_cus_mux41_buf_to_WF0 (
    .A0(to_WF0_input[0]),
    .A1(to_WF0_input[1]),
    .A2(to_WF0_input[2]),
    .A3(to_WF0_input[3]),
    .S0(ConfigBits[7+0]),
    .S0N(ConfigBits_N[7+0]),
    .S1(ConfigBits[7+1]),
    .S1N(ConfigBits_N[7+1]),
    .X(to_WF0)
);

 //switch matrix multiplexer to_WG0 MUX-4
assign to_WG0_input = {from_SG0,from_NG0,from_WG_1s0,from_EG0};
cus_mux41_buf inst_cus_mux41_buf_to_WG0 (
    .A0(to_WG0_input[0]),
    .A1(to_WG0_input[1]),
    .A2(to_WG0_input[2]),
    .A3(to_WG0_input[3]),
    .S0(ConfigBits[9+0]),
    .S0N(ConfigBits_N[9+0]),
    .S1(ConfigBits[9+1]),
    .S1N(ConfigBits_N[9+1]),
    .X(to_WG0)
);

 //switch matrix multiplexer to_WG1 MUX-1
assign to_WG1 = from_EG1;

 //switch matrix multiplexer to_WH0 MUX-4
assign to_WH0_input = {from_SH0,from_NH0,from_WH_1s0,from_EH0};
cus_mux41_buf inst_cus_mux41_buf_to_WH0 (
    .A0(to_WH0_input[0]),
    .A1(to_WH0_input[1]),
    .A2(to_WH0_input[2]),
    .A3(to_WH0_input[3]),
    .S0(ConfigBits[11+0]),
    .S0N(ConfigBits_N[11+0]),
    .S1(ConfigBits[11+1]),
    .S1N(ConfigBits_N[11+1]),
    .X(to_WH0)
);

 //switch matrix multiplexer to_WH1 MUX-1
assign to_WH1 = from_EH1;

 //switch matrix multiplexer to_WI0 MUX-4
assign to_WI0_input = {from_SI0,from_NI0,from_WI_1s0,from_EI0};
cus_mux41_buf inst_cus_mux41_buf_to_WI0 (
    .A0(to_WI0_input[0]),
    .A1(to_WI0_input[1]),
    .A2(to_WI0_input[2]),
    .A3(to_WI0_input[3]),
    .S0(ConfigBits[13+0]),
    .S0N(ConfigBits_N[13+0]),
    .S1(ConfigBits[13+1]),
    .S1N(ConfigBits_N[13+1]),
    .X(to_WI0)
);

 //switch matrix multiplexer to_WI1 MUX-1
assign to_WI1 = from_EI1;

 //switch matrix multiplexer to_WI2 MUX-1
assign to_WI2 = from_EI2;

 //switch matrix multiplexer to_NA0 MUX-4
assign to_NA0_input = {from_SA0,from_NA0,from_WA_1s0,from_EA0};
cus_mux41_buf inst_cus_mux41_buf_to_NA0 (
    .A0(to_NA0_input[0]),
    .A1(to_NA0_input[1]),
    .A2(to_NA0_input[2]),
    .A3(to_NA0_input[3]),
    .S0(ConfigBits[15+0]),
    .S0N(ConfigBits_N[15+0]),
    .S1(ConfigBits[15+1]),
    .S1N(ConfigBits_N[15+1]),
    .X(to_NA0)
);

 //switch matrix multiplexer to_NB0 MUX-4
assign to_NB0_input = {from_SB0,from_NB0,from_WB_1s0,from_EB0};
cus_mux41_buf inst_cus_mux41_buf_to_NB0 (
    .A0(to_NB0_input[0]),
    .A1(to_NB0_input[1]),
    .A2(to_NB0_input[2]),
    .A3(to_NB0_input[3]),
    .S0(ConfigBits[17+0]),
    .S0N(ConfigBits_N[17+0]),
    .S1(ConfigBits[17+1]),
    .S1N(ConfigBits_N[17+1]),
    .X(to_NB0)
);

 //switch matrix multiplexer to_NC0 MUX-4
assign to_NC0_input = {from_SC0,from_NC0,from_WC_1s0,from_EC0};
cus_mux41_buf inst_cus_mux41_buf_to_NC0 (
    .A0(to_NC0_input[0]),
    .A1(to_NC0_input[1]),
    .A2(to_NC0_input[2]),
    .A3(to_NC0_input[3]),
    .S0(ConfigBits[19+0]),
    .S0N(ConfigBits_N[19+0]),
    .S1(ConfigBits[19+1]),
    .S1N(ConfigBits_N[19+1]),
    .X(to_NC0)
);

 //switch matrix multiplexer to_ND0 MUX-4
assign to_ND0_input = {from_SD0,from_ND0,from_WD_1s0,from_ED0};
cus_mux41_buf inst_cus_mux41_buf_to_ND0 (
    .A0(to_ND0_input[0]),
    .A1(to_ND0_input[1]),
    .A2(to_ND0_input[2]),
    .A3(to_ND0_input[3]),
    .S0(ConfigBits[21+0]),
    .S0N(ConfigBits_N[21+0]),
    .S1(ConfigBits[21+1]),
    .S1N(ConfigBits_N[21+1]),
    .X(to_ND0)
);

 //switch matrix multiplexer to_NF0 MUX-4
assign to_NF0_input = {from_SF0,from_NF0,from_WF_1s0,from_EF0};
cus_mux41_buf inst_cus_mux41_buf_to_NF0 (
    .A0(to_NF0_input[0]),
    .A1(to_NF0_input[1]),
    .A2(to_NF0_input[2]),
    .A3(to_NF0_input[3]),
    .S0(ConfigBits[23+0]),
    .S0N(ConfigBits_N[23+0]),
    .S1(ConfigBits[23+1]),
    .S1N(ConfigBits_N[23+1]),
    .X(to_NF0)
);

 //switch matrix multiplexer to_NG0 MUX-4
assign to_NG0_input = {from_SG0,from_NG0,from_WG_1s0,from_EG0};
cus_mux41_buf inst_cus_mux41_buf_to_NG0 (
    .A0(to_NG0_input[0]),
    .A1(to_NG0_input[1]),
    .A2(to_NG0_input[2]),
    .A3(to_NG0_input[3]),
    .S0(ConfigBits[25+0]),
    .S0N(ConfigBits_N[25+0]),
    .S1(ConfigBits[25+1]),
    .S1N(ConfigBits_N[25+1]),
    .X(to_NG0)
);

 //switch matrix multiplexer to_NH0 MUX-4
assign to_NH0_input = {from_SH0,from_NH0,from_WH_1s0,from_EH0};
cus_mux41_buf inst_cus_mux41_buf_to_NH0 (
    .A0(to_NH0_input[0]),
    .A1(to_NH0_input[1]),
    .A2(to_NH0_input[2]),
    .A3(to_NH0_input[3]),
    .S0(ConfigBits[27+0]),
    .S0N(ConfigBits_N[27+0]),
    .S1(ConfigBits[27+1]),
    .S1N(ConfigBits_N[27+1]),
    .X(to_NH0)
);

 //switch matrix multiplexer to_NI0 MUX-4
assign to_NI0_input = {from_SI0,from_NI0,from_WI_1s0,from_EI0};
cus_mux41_buf inst_cus_mux41_buf_to_NI0 (
    .A0(to_NI0_input[0]),
    .A1(to_NI0_input[1]),
    .A2(to_NI0_input[2]),
    .A3(to_NI0_input[3]),
    .S0(ConfigBits[29+0]),
    .S0N(ConfigBits_N[29+0]),
    .S1(ConfigBits[29+1]),
    .S1N(ConfigBits_N[29+1]),
    .X(to_NI0)
);

 //switch matrix multiplexer to_SA0 MUX-4
assign to_SA0_input = {from_SA0,from_NA0,from_WA_1s0,from_EA0};
cus_mux41_buf inst_cus_mux41_buf_to_SA0 (
    .A0(to_SA0_input[0]),
    .A1(to_SA0_input[1]),
    .A2(to_SA0_input[2]),
    .A3(to_SA0_input[3]),
    .S0(ConfigBits[31+0]),
    .S0N(ConfigBits_N[31+0]),
    .S1(ConfigBits[31+1]),
    .S1N(ConfigBits_N[31+1]),
    .X(to_SA0)
);

 //switch matrix multiplexer to_SB0 MUX-4
assign to_SB0_input = {from_SB0,from_NB0,from_WB_1s0,from_EB0};
cus_mux41_buf inst_cus_mux41_buf_to_SB0 (
    .A0(to_SB0_input[0]),
    .A1(to_SB0_input[1]),
    .A2(to_SB0_input[2]),
    .A3(to_SB0_input[3]),
    .S0(ConfigBits[33+0]),
    .S0N(ConfigBits_N[33+0]),
    .S1(ConfigBits[33+1]),
    .S1N(ConfigBits_N[33+1]),
    .X(to_SB0)
);

 //switch matrix multiplexer to_SC0 MUX-4
assign to_SC0_input = {from_SC0,from_NC0,from_WC_1s0,from_EC0};
cus_mux41_buf inst_cus_mux41_buf_to_SC0 (
    .A0(to_SC0_input[0]),
    .A1(to_SC0_input[1]),
    .A2(to_SC0_input[2]),
    .A3(to_SC0_input[3]),
    .S0(ConfigBits[35+0]),
    .S0N(ConfigBits_N[35+0]),
    .S1(ConfigBits[35+1]),
    .S1N(ConfigBits_N[35+1]),
    .X(to_SC0)
);

 //switch matrix multiplexer to_SD0 MUX-4
assign to_SD0_input = {from_SD0,from_ND0,from_WD_1s0,from_ED0};
cus_mux41_buf inst_cus_mux41_buf_to_SD0 (
    .A0(to_SD0_input[0]),
    .A1(to_SD0_input[1]),
    .A2(to_SD0_input[2]),
    .A3(to_SD0_input[3]),
    .S0(ConfigBits[37+0]),
    .S0N(ConfigBits_N[37+0]),
    .S1(ConfigBits[37+1]),
    .S1N(ConfigBits_N[37+1]),
    .X(to_SD0)
);

 //switch matrix multiplexer to_SF0 MUX-4
assign to_SF0_input = {from_SF0,from_NF0,from_WF_1s0,from_EF0};
cus_mux41_buf inst_cus_mux41_buf_to_SF0 (
    .A0(to_SF0_input[0]),
    .A1(to_SF0_input[1]),
    .A2(to_SF0_input[2]),
    .A3(to_SF0_input[3]),
    .S0(ConfigBits[39+0]),
    .S0N(ConfigBits_N[39+0]),
    .S1(ConfigBits[39+1]),
    .S1N(ConfigBits_N[39+1]),
    .X(to_SF0)
);

 //switch matrix multiplexer to_SG0 MUX-4
assign to_SG0_input = {from_SG0,from_NG0,from_WG_1s0,from_EG0};
cus_mux41_buf inst_cus_mux41_buf_to_SG0 (
    .A0(to_SG0_input[0]),
    .A1(to_SG0_input[1]),
    .A2(to_SG0_input[2]),
    .A3(to_SG0_input[3]),
    .S0(ConfigBits[41+0]),
    .S0N(ConfigBits_N[41+0]),
    .S1(ConfigBits[41+1]),
    .S1N(ConfigBits_N[41+1]),
    .X(to_SG0)
);

 //switch matrix multiplexer to_SH0 MUX-4
assign to_SH0_input = {from_SH0,from_NH0,from_WH_1s0,from_EH0};
cus_mux41_buf inst_cus_mux41_buf_to_SH0 (
    .A0(to_SH0_input[0]),
    .A1(to_SH0_input[1]),
    .A2(to_SH0_input[2]),
    .A3(to_SH0_input[3]),
    .S0(ConfigBits[43+0]),
    .S0N(ConfigBits_N[43+0]),
    .S1(ConfigBits[43+1]),
    .S1N(ConfigBits_N[43+1]),
    .X(to_SH0)
);

 //switch matrix multiplexer to_SI0 MUX-4
assign to_SI0_input = {from_SI0,from_NI0,from_WI_1s0,from_EI0};
cus_mux41_buf inst_cus_mux41_buf_to_SI0 (
    .A0(to_SI0_input[0]),
    .A1(to_SI0_input[1]),
    .A2(to_SI0_input[2]),
    .A3(to_SI0_input[3]),
    .S0(ConfigBits[45+0]),
    .S0N(ConfigBits_N[45+0]),
    .S1(ConfigBits[45+1]),
    .S1N(ConfigBits_N[45+1]),
    .X(to_SI0)
);

endmodule