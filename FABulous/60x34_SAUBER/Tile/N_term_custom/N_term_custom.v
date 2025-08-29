module N_term_custom
    #(
`ifdef EMULATION
        parameter [639:0] Emulate_Bitstream=640'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32,
        parameter NoConfigBits=0
    )
    (
 //Side.SOUTH
        input [3:0] from_NA,        //Port(Name=from_NA, IO=INPUT, XOffset=0, YOffset=-1, WireCount=4, Side=SOUTH)
        input [3:0] from_NB,        //Port(Name=from_NB, IO=INPUT, XOffset=0, YOffset=-1, WireCount=4, Side=SOUTH)
        input [3:0] from_NC,        //Port(Name=from_NC, IO=INPUT, XOffset=0, YOffset=-1, WireCount=4, Side=SOUTH)
        input [3:0] from_ND,        //Port(Name=from_ND, IO=INPUT, XOffset=0, YOffset=-1, WireCount=4, Side=SOUTH)
        input [3:0] from_NF,        //Port(Name=from_NF, IO=INPUT, XOffset=0, YOffset=-1, WireCount=4, Side=SOUTH)
        input [7:0] from_NG,        //Port(Name=from_NG, IO=INPUT, XOffset=0, YOffset=-2, WireCount=4, Side=SOUTH)
        input [7:0] from_NH,        //Port(Name=from_NH, IO=INPUT, XOffset=0, YOffset=-2, WireCount=4, Side=SOUTH)
        input [11:0] from_NI,        //Port(Name=from_NI, IO=INPUT, XOffset=0, YOffset=-3, WireCount=4, Side=SOUTH)
        output [3:0] to_SA,        //Port(Name=to_SA, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=4, Side=SOUTH)
        output [3:0] to_SB,        //Port(Name=to_SB, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=4, Side=SOUTH)
        output [3:0] to_SC,        //Port(Name=to_SC, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=4, Side=SOUTH)
        output [3:0] to_SD,        //Port(Name=to_SD, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=4, Side=SOUTH)
        output [3:0] to_SF,        //Port(Name=to_SF, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=4, Side=SOUTH)
        output [7:0] to_SG,        //Port(Name=to_SG, IO=OUTPUT, XOffset=0, YOffset=2, WireCount=4, Side=SOUTH)
        output [7:0] to_SH,        //Port(Name=to_SH, IO=OUTPUT, XOffset=0, YOffset=2, WireCount=4, Side=SOUTH)
        output [11:0] to_SI,        //Port(Name=to_SI, IO=OUTPUT, XOffset=0, YOffset=3, WireCount=4, Side=SOUTH)
    //Tile IO ports from BELs
        input UserCLK,
        output UserCLKo,
        input rst,
        output rsto,
        input [MaxFramesPerCol -1:0] FrameStrobe,
        output [MaxFramesPerCol -1:0] FrameStrobe_O
    //global
);
 //signal declarations
 //BEL ports (e.g., slices)
 //Jump wires
 //internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)
wire[NoConfigBits-1:0] ConfigBits;
wire[NoConfigBits-1:0] ConfigBits_N;

 //Connection for outgoing wires
wire[FrameBitsPerRow-1:0] FrameData_i;
wire[FrameBitsPerRow-1:0] FrameData_O_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_O_i;

assign FrameStrobe_O_i = FrameStrobe_i;

my_buf strobe_inbuf_0 (
    .A(FrameStrobe[0]),
    .X(FrameStrobe_i[0])
);

my_buf strobe_inbuf_1 (
    .A(FrameStrobe[1]),
    .X(FrameStrobe_i[1])
);

my_buf strobe_inbuf_2 (
    .A(FrameStrobe[2]),
    .X(FrameStrobe_i[2])
);

my_buf strobe_inbuf_3 (
    .A(FrameStrobe[3]),
    .X(FrameStrobe_i[3])
);

my_buf strobe_inbuf_4 (
    .A(FrameStrobe[4]),
    .X(FrameStrobe_i[4])
);

my_buf strobe_inbuf_5 (
    .A(FrameStrobe[5]),
    .X(FrameStrobe_i[5])
);

my_buf strobe_inbuf_6 (
    .A(FrameStrobe[6]),
    .X(FrameStrobe_i[6])
);

my_buf strobe_inbuf_7 (
    .A(FrameStrobe[7]),
    .X(FrameStrobe_i[7])
);

my_buf strobe_inbuf_8 (
    .A(FrameStrobe[8]),
    .X(FrameStrobe_i[8])
);

my_buf strobe_inbuf_9 (
    .A(FrameStrobe[9]),
    .X(FrameStrobe_i[9])
);

my_buf strobe_inbuf_10 (
    .A(FrameStrobe[10]),
    .X(FrameStrobe_i[10])
);

my_buf strobe_inbuf_11 (
    .A(FrameStrobe[11]),
    .X(FrameStrobe_i[11])
);

my_buf strobe_inbuf_12 (
    .A(FrameStrobe[12]),
    .X(FrameStrobe_i[12])
);

my_buf strobe_inbuf_13 (
    .A(FrameStrobe[13]),
    .X(FrameStrobe_i[13])
);

my_buf strobe_inbuf_14 (
    .A(FrameStrobe[14]),
    .X(FrameStrobe_i[14])
);

my_buf strobe_inbuf_15 (
    .A(FrameStrobe[15]),
    .X(FrameStrobe_i[15])
);

my_buf strobe_inbuf_16 (
    .A(FrameStrobe[16]),
    .X(FrameStrobe_i[16])
);

my_buf strobe_inbuf_17 (
    .A(FrameStrobe[17]),
    .X(FrameStrobe_i[17])
);

my_buf strobe_inbuf_18 (
    .A(FrameStrobe[18]),
    .X(FrameStrobe_i[18])
);

my_buf strobe_inbuf_19 (
    .A(FrameStrobe[19]),
    .X(FrameStrobe_i[19])
);

my_buf strobe_outbuf_0 (
    .A(FrameStrobe_O_i[0]),
    .X(FrameStrobe_O[0])
);

my_buf strobe_outbuf_1 (
    .A(FrameStrobe_O_i[1]),
    .X(FrameStrobe_O[1])
);

my_buf strobe_outbuf_2 (
    .A(FrameStrobe_O_i[2]),
    .X(FrameStrobe_O[2])
);

my_buf strobe_outbuf_3 (
    .A(FrameStrobe_O_i[3]),
    .X(FrameStrobe_O[3])
);

my_buf strobe_outbuf_4 (
    .A(FrameStrobe_O_i[4]),
    .X(FrameStrobe_O[4])
);

my_buf strobe_outbuf_5 (
    .A(FrameStrobe_O_i[5]),
    .X(FrameStrobe_O[5])
);

my_buf strobe_outbuf_6 (
    .A(FrameStrobe_O_i[6]),
    .X(FrameStrobe_O[6])
);

my_buf strobe_outbuf_7 (
    .A(FrameStrobe_O_i[7]),
    .X(FrameStrobe_O[7])
);

my_buf strobe_outbuf_8 (
    .A(FrameStrobe_O_i[8]),
    .X(FrameStrobe_O[8])
);

my_buf strobe_outbuf_9 (
    .A(FrameStrobe_O_i[9]),
    .X(FrameStrobe_O[9])
);

my_buf strobe_outbuf_10 (
    .A(FrameStrobe_O_i[10]),
    .X(FrameStrobe_O[10])
);

my_buf strobe_outbuf_11 (
    .A(FrameStrobe_O_i[11]),
    .X(FrameStrobe_O[11])
);

my_buf strobe_outbuf_12 (
    .A(FrameStrobe_O_i[12]),
    .X(FrameStrobe_O[12])
);

my_buf strobe_outbuf_13 (
    .A(FrameStrobe_O_i[13]),
    .X(FrameStrobe_O[13])
);

my_buf strobe_outbuf_14 (
    .A(FrameStrobe_O_i[14]),
    .X(FrameStrobe_O[14])
);

my_buf strobe_outbuf_15 (
    .A(FrameStrobe_O_i[15]),
    .X(FrameStrobe_O[15])
);

my_buf strobe_outbuf_16 (
    .A(FrameStrobe_O_i[16]),
    .X(FrameStrobe_O[16])
);

my_buf strobe_outbuf_17 (
    .A(FrameStrobe_O_i[17]),
    .X(FrameStrobe_O[17])
);

my_buf strobe_outbuf_18 (
    .A(FrameStrobe_O_i[18]),
    .X(FrameStrobe_O[18])
);

my_buf strobe_outbuf_19 (
    .A(FrameStrobe_O_i[19]),
    .X(FrameStrobe_O[19])
);

clk_buf inst_clk_buf (
    .A(UserCLK),
    .X(UserCLKo)
);

my_buf inst_rst_buf (
    .A(rst),
    .X(rsto)
);


 //BEL component instantiations
N_term_custom_switch_matrix Inst_N_term_custom_switch_matrix (
    .from_NA0(from_NA[0]),
    .from_NA1(from_NA[1]),
    .from_NA2(from_NA[2]),
    .from_NA3(from_NA[3]),
    .from_NB0(from_NB[0]),
    .from_NB1(from_NB[1]),
    .from_NB2(from_NB[2]),
    .from_NB3(from_NB[3]),
    .from_NC0(from_NC[0]),
    .from_NC1(from_NC[1]),
    .from_NC2(from_NC[2]),
    .from_NC3(from_NC[3]),
    .from_ND0(from_ND[0]),
    .from_ND1(from_ND[1]),
    .from_ND2(from_ND[2]),
    .from_ND3(from_ND[3]),
    .from_NF0(from_NF[0]),
    .from_NF1(from_NF[1]),
    .from_NF2(from_NF[2]),
    .from_NF3(from_NF[3]),
    .from_NG0(from_NG[0]),
    .from_NG1(from_NG[1]),
    .from_NG2(from_NG[2]),
    .from_NG3(from_NG[3]),
    .from_NG4(from_NG[4]),
    .from_NG5(from_NG[5]),
    .from_NG6(from_NG[6]),
    .from_NG7(from_NG[7]),
    .from_NH0(from_NH[0]),
    .from_NH1(from_NH[1]),
    .from_NH2(from_NH[2]),
    .from_NH3(from_NH[3]),
    .from_NH4(from_NH[4]),
    .from_NH5(from_NH[5]),
    .from_NH6(from_NH[6]),
    .from_NH7(from_NH[7]),
    .from_NI0(from_NI[0]),
    .from_NI1(from_NI[1]),
    .from_NI2(from_NI[2]),
    .from_NI3(from_NI[3]),
    .from_NI4(from_NI[4]),
    .from_NI5(from_NI[5]),
    .from_NI6(from_NI[6]),
    .from_NI7(from_NI[7]),
    .from_NI8(from_NI[8]),
    .from_NI9(from_NI[9]),
    .from_NI10(from_NI[10]),
    .from_NI11(from_NI[11]),
    .to_SA0(to_SA[0]),
    .to_SA1(to_SA[1]),
    .to_SA2(to_SA[2]),
    .to_SA3(to_SA[3]),
    .to_SB0(to_SB[0]),
    .to_SB1(to_SB[1]),
    .to_SB2(to_SB[2]),
    .to_SB3(to_SB[3]),
    .to_SC0(to_SC[0]),
    .to_SC1(to_SC[1]),
    .to_SC2(to_SC[2]),
    .to_SC3(to_SC[3]),
    .to_SD0(to_SD[0]),
    .to_SD1(to_SD[1]),
    .to_SD2(to_SD[2]),
    .to_SD3(to_SD[3]),
    .to_SF0(to_SF[0]),
    .to_SF1(to_SF[1]),
    .to_SF2(to_SF[2]),
    .to_SF3(to_SF[3]),
    .to_SG0(to_SG[0]),
    .to_SG1(to_SG[1]),
    .to_SG2(to_SG[2]),
    .to_SG3(to_SG[3]),
    .to_SG4(to_SG[4]),
    .to_SG5(to_SG[5]),
    .to_SG6(to_SG[6]),
    .to_SG7(to_SG[7]),
    .to_SH0(to_SH[0]),
    .to_SH1(to_SH[1]),
    .to_SH2(to_SH[2]),
    .to_SH3(to_SH[3]),
    .to_SH4(to_SH[4]),
    .to_SH5(to_SH[5]),
    .to_SH6(to_SH[6]),
    .to_SH7(to_SH[7]),
    .to_SI0(to_SI[0]),
    .to_SI1(to_SI[1]),
    .to_SI2(to_SI[2]),
    .to_SI3(to_SI[3]),
    .to_SI4(to_SI[4]),
    .to_SI5(to_SI[5]),
    .to_SI6(to_SI[6]),
    .to_SI7(to_SI[7]),
    .to_SI8(to_SI[8]),
    .to_SI9(to_SI[9]),
    .to_SI10(to_SI[10]),
    .to_SI11(to_SI[11])
);

endmodule