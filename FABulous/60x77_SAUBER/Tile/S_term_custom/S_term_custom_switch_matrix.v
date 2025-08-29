 // NumberOfConfigBits: 0
module S_term_custom_switch_matrix
    #(
        parameter NoConfigBits=0
    )
    (
        input from_SA0,
        input from_SA1,
        input from_SA2,
        input from_SA3,
        input from_SB0,
        input from_SB1,
        input from_SB2,
        input from_SB3,
        input from_SC0,
        input from_SC1,
        input from_SC2,
        input from_SC3,
        input from_SD0,
        input from_SD1,
        input from_SD2,
        input from_SD3,
        input from_SF0,
        input from_SF1,
        input from_SF2,
        input from_SF3,
        input from_SG0,
        input from_SG1,
        input from_SG2,
        input from_SG3,
        input from_SG4,
        input from_SG5,
        input from_SG6,
        input from_SG7,
        input from_SH0,
        input from_SH1,
        input from_SH2,
        input from_SH3,
        input from_SH4,
        input from_SH5,
        input from_SH6,
        input from_SH7,
        input from_SI0,
        input from_SI1,
        input from_SI2,
        input from_SI3,
        input from_SI4,
        input from_SI5,
        input from_SI6,
        input from_SI7,
        input from_SI8,
        input from_SI9,
        input from_SI10,
        input from_SI11,
        output to_NA0,
        output to_NA1,
        output to_NA2,
        output to_NA3,
        output to_NB0,
        output to_NB1,
        output to_NB2,
        output to_NB3,
        output to_NC0,
        output to_NC1,
        output to_NC2,
        output to_NC3,
        output to_ND0,
        output to_ND1,
        output to_ND2,
        output to_ND3,
        output to_NF0,
        output to_NF1,
        output to_NF2,
        output to_NF3,
        output to_NG0,
        output to_NG1,
        output to_NG2,
        output to_NG3,
        output to_NG4,
        output to_NG5,
        output to_NG6,
        output to_NG7,
        output to_NH0,
        output to_NH1,
        output to_NH2,
        output to_NH3,
        output to_NH4,
        output to_NH5,
        output to_NH6,
        output to_NH7,
        output to_NI0,
        output to_NI1,
        output to_NI2,
        output to_NI3,
        output to_NI4,
        output to_NI5,
        output to_NI6,
        output to_NI7,
        output to_NI8,
        output to_NI9,
        output to_NI10,
        output to_NI11
 //global
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

wire[1-1:0] to_NA0_input;
wire[1-1:0] to_NA1_input;
wire[1-1:0] to_NA2_input;
wire[1-1:0] to_NA3_input;
wire[1-1:0] to_NB0_input;
wire[1-1:0] to_NB1_input;
wire[1-1:0] to_NB2_input;
wire[1-1:0] to_NB3_input;
wire[1-1:0] to_NC0_input;
wire[1-1:0] to_NC1_input;
wire[1-1:0] to_NC2_input;
wire[1-1:0] to_NC3_input;
wire[1-1:0] to_ND0_input;
wire[1-1:0] to_ND1_input;
wire[1-1:0] to_ND2_input;
wire[1-1:0] to_ND3_input;
wire[1-1:0] to_NF0_input;
wire[1-1:0] to_NF1_input;
wire[1-1:0] to_NF2_input;
wire[1-1:0] to_NF3_input;
wire[1-1:0] to_NG0_input;
wire[1-1:0] to_NG1_input;
wire[1-1:0] to_NG2_input;
wire[1-1:0] to_NG3_input;
wire[1-1:0] to_NG4_input;
wire[1-1:0] to_NG5_input;
wire[1-1:0] to_NG6_input;
wire[1-1:0] to_NG7_input;
wire[1-1:0] to_NH0_input;
wire[1-1:0] to_NH1_input;
wire[1-1:0] to_NH2_input;
wire[1-1:0] to_NH3_input;
wire[1-1:0] to_NH4_input;
wire[1-1:0] to_NH5_input;
wire[1-1:0] to_NH6_input;
wire[1-1:0] to_NH7_input;
wire[1-1:0] to_NI0_input;
wire[1-1:0] to_NI1_input;
wire[1-1:0] to_NI2_input;
wire[1-1:0] to_NI3_input;
wire[1-1:0] to_NI4_input;
wire[1-1:0] to_NI5_input;
wire[1-1:0] to_NI6_input;
wire[1-1:0] to_NI7_input;
wire[1-1:0] to_NI8_input;
wire[1-1:0] to_NI9_input;
wire[1-1:0] to_NI10_input;
wire[1-1:0] to_NI11_input;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer to_NA0 MUX-1
assign to_NA0 = from_SA0;

 //switch matrix multiplexer to_NA1 MUX-1
assign to_NA1 = from_SA1;

 //switch matrix multiplexer to_NA2 MUX-1
assign to_NA2 = from_SA2;

 //switch matrix multiplexer to_NA3 MUX-1
assign to_NA3 = from_SA3;

 //switch matrix multiplexer to_NB0 MUX-1
assign to_NB0 = from_SB0;

 //switch matrix multiplexer to_NB1 MUX-1
assign to_NB1 = from_SB1;

 //switch matrix multiplexer to_NB2 MUX-1
assign to_NB2 = from_SB2;

 //switch matrix multiplexer to_NB3 MUX-1
assign to_NB3 = from_SB3;

 //switch matrix multiplexer to_NC0 MUX-1
assign to_NC0 = from_SC0;

 //switch matrix multiplexer to_NC1 MUX-1
assign to_NC1 = from_SC1;

 //switch matrix multiplexer to_NC2 MUX-1
assign to_NC2 = from_SC2;

 //switch matrix multiplexer to_NC3 MUX-1
assign to_NC3 = from_SC3;

 //switch matrix multiplexer to_ND0 MUX-1
assign to_ND0 = from_SD0;

 //switch matrix multiplexer to_ND1 MUX-1
assign to_ND1 = from_SD1;

 //switch matrix multiplexer to_ND2 MUX-1
assign to_ND2 = from_SD2;

 //switch matrix multiplexer to_ND3 MUX-1
assign to_ND3 = from_SD3;

 //switch matrix multiplexer to_NF0 MUX-1
assign to_NF0 = from_SF0;

 //switch matrix multiplexer to_NF1 MUX-1
assign to_NF1 = from_SF1;

 //switch matrix multiplexer to_NF2 MUX-1
assign to_NF2 = from_SF2;

 //switch matrix multiplexer to_NF3 MUX-1
assign to_NF3 = from_SF3;

 //switch matrix multiplexer to_NG0 MUX-1
assign to_NG0 = from_SG0;

 //switch matrix multiplexer to_NG1 MUX-1
assign to_NG1 = from_SG1;

 //switch matrix multiplexer to_NG2 MUX-1
assign to_NG2 = from_SG2;

 //switch matrix multiplexer to_NG3 MUX-1
assign to_NG3 = from_SG3;

 //switch matrix multiplexer to_NG4 MUX-1
assign to_NG4 = from_SG4;

 //switch matrix multiplexer to_NG5 MUX-1
assign to_NG5 = from_SG5;

 //switch matrix multiplexer to_NG6 MUX-1
assign to_NG6 = from_SG6;

 //switch matrix multiplexer to_NG7 MUX-1
assign to_NG7 = from_SG7;

 //switch matrix multiplexer to_NH0 MUX-1
assign to_NH0 = from_SH0;

 //switch matrix multiplexer to_NH1 MUX-1
assign to_NH1 = from_SH1;

 //switch matrix multiplexer to_NH2 MUX-1
assign to_NH2 = from_SH2;

 //switch matrix multiplexer to_NH3 MUX-1
assign to_NH3 = from_SH3;

 //switch matrix multiplexer to_NH4 MUX-1
assign to_NH4 = from_SH4;

 //switch matrix multiplexer to_NH5 MUX-1
assign to_NH5 = from_SH5;

 //switch matrix multiplexer to_NH6 MUX-1
assign to_NH6 = from_SH6;

 //switch matrix multiplexer to_NH7 MUX-1
assign to_NH7 = from_SH7;

 //switch matrix multiplexer to_NI0 MUX-1
assign to_NI0 = from_SI0;

 //switch matrix multiplexer to_NI1 MUX-1
assign to_NI1 = from_SI1;

 //switch matrix multiplexer to_NI2 MUX-1
assign to_NI2 = from_SI2;

 //switch matrix multiplexer to_NI3 MUX-1
assign to_NI3 = from_SI3;

 //switch matrix multiplexer to_NI4 MUX-1
assign to_NI4 = from_SI4;

 //switch matrix multiplexer to_NI5 MUX-1
assign to_NI5 = from_SI5;

 //switch matrix multiplexer to_NI6 MUX-1
assign to_NI6 = from_SI6;

 //switch matrix multiplexer to_NI7 MUX-1
assign to_NI7 = from_SI7;

 //switch matrix multiplexer to_NI8 MUX-1
assign to_NI8 = from_SI8;

 //switch matrix multiplexer to_NI9 MUX-1
assign to_NI9 = from_SI9;

 //switch matrix multiplexer to_NI10 MUX-1
assign to_NI10 = from_SI10;

 //switch matrix multiplexer to_NI11 MUX-1
assign to_NI11 = from_SI11;

endmodule