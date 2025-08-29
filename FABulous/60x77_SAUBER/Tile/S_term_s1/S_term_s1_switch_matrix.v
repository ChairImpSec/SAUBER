 // NumberOfConfigBits: 0
module S_term_s1_switch_matrix
    #(
        parameter NoConfigBits=0
    )
    (
        input from_SA_1s0,
        input from_SA_1s1,
        input from_SB_1s0,
        input from_SB_1s1,
        input from_SC_1s0,
        input from_SC_1s1,
        input from_SD_1s0,
        input from_SD_1s1,
        input from_SF_1s0,
        input from_SF_1s1,
        input from_SG_1s0,
        input from_SG_1s1,
        input from_SH_1s0,
        input from_SH_1s1,
        input from_SI_1s0,
        input from_SI_1s1,
        output to_NA_1s0,
        output to_NA_1s1,
        output to_NB_1s0,
        output to_NB_1s1,
        output to_NC_1s0,
        output to_NC_1s1,
        output to_ND_1s0,
        output to_ND_1s1,
        output to_NF_1s0,
        output to_NF_1s1,
        output to_NG_1s0,
        output to_NG_1s1,
        output to_NH_1s0,
        output to_NH_1s1,
        output to_NI_1s0,
        output to_NI_1s1
 //global
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

wire[1-1:0] to_NA_1s0_input;
wire[1-1:0] to_NA_1s1_input;
wire[1-1:0] to_NB_1s0_input;
wire[1-1:0] to_NB_1s1_input;
wire[1-1:0] to_NC_1s0_input;
wire[1-1:0] to_NC_1s1_input;
wire[1-1:0] to_ND_1s0_input;
wire[1-1:0] to_ND_1s1_input;
wire[1-1:0] to_NF_1s0_input;
wire[1-1:0] to_NF_1s1_input;
wire[1-1:0] to_NG_1s0_input;
wire[1-1:0] to_NG_1s1_input;
wire[1-1:0] to_NH_1s0_input;
wire[1-1:0] to_NH_1s1_input;
wire[1-1:0] to_NI_1s0_input;
wire[1-1:0] to_NI_1s1_input;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer to_NA_1s0 MUX-1
assign to_NA_1s0 = from_SA_1s0;

 //switch matrix multiplexer to_NA_1s1 MUX-1
assign to_NA_1s1 = from_SA_1s1;

 //switch matrix multiplexer to_NB_1s0 MUX-1
assign to_NB_1s0 = from_SB_1s0;

 //switch matrix multiplexer to_NB_1s1 MUX-1
assign to_NB_1s1 = from_SB_1s1;

 //switch matrix multiplexer to_NC_1s0 MUX-1
assign to_NC_1s0 = from_SC_1s0;

 //switch matrix multiplexer to_NC_1s1 MUX-1
assign to_NC_1s1 = from_SC_1s1;

 //switch matrix multiplexer to_ND_1s0 MUX-1
assign to_ND_1s0 = from_SD_1s0;

 //switch matrix multiplexer to_ND_1s1 MUX-1
assign to_ND_1s1 = from_SD_1s1;

 //switch matrix multiplexer to_NF_1s0 MUX-1
assign to_NF_1s0 = from_SF_1s0;

 //switch matrix multiplexer to_NF_1s1 MUX-1
assign to_NF_1s1 = from_SF_1s1;

 //switch matrix multiplexer to_NG_1s0 MUX-1
assign to_NG_1s0 = from_SG_1s0;

 //switch matrix multiplexer to_NG_1s1 MUX-1
assign to_NG_1s1 = from_SG_1s1;

 //switch matrix multiplexer to_NH_1s0 MUX-1
assign to_NH_1s0 = from_SH_1s0;

 //switch matrix multiplexer to_NH_1s1 MUX-1
assign to_NH_1s1 = from_SH_1s1;

 //switch matrix multiplexer to_NI_1s0 MUX-1
assign to_NI_1s0 = from_SI_1s0;

 //switch matrix multiplexer to_NI_1s1 MUX-1
assign to_NI_1s1 = from_SI_1s1;

endmodule