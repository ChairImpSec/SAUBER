module nonlinear_LMDPL
    #(
`ifdef EMULATION
        parameter [639:0] Emulate_Bitstream=640'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32,
        parameter NoConfigBits=340
    )
    (
 //Side.NORTH
        output [3:0] to_NA,        //Port(Name=to_NA, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [3:0] to_NB,        //Port(Name=to_NB, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [3:0] to_NC,        //Port(Name=to_NC, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [3:0] to_ND,        //Port(Name=to_ND, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [3:0] to_NF,        //Port(Name=to_NF, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [7:0] to_NG,        //Port(Name=to_NG, IO=OUTPUT, XOffset=0, YOffset=-2, WireCount=4, Side=NORTH)
        output [7:0] to_NH,        //Port(Name=to_NH, IO=OUTPUT, XOffset=0, YOffset=-2, WireCount=4, Side=NORTH)
        output [11:0] to_NI,        //Port(Name=to_NI, IO=OUTPUT, XOffset=0, YOffset=-3, WireCount=4, Side=NORTH)
        input [3:0] from_SA,        //Port(Name=from_SA, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [3:0] from_SB,        //Port(Name=from_SB, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [3:0] from_SC,        //Port(Name=from_SC, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [3:0] from_SD,        //Port(Name=from_SD, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [3:0] from_SF,        //Port(Name=from_SF, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [7:0] from_SG,        //Port(Name=from_SG, IO=INPUT, XOffset=0, YOffset=2, WireCount=4, Side=NORTH)
        input [7:0] from_SH,        //Port(Name=from_SH, IO=INPUT, XOffset=0, YOffset=2, WireCount=4, Side=NORTH)
        input [11:0] from_SI,        //Port(Name=from_SI, IO=INPUT, XOffset=0, YOffset=3, WireCount=4, Side=NORTH)
 //Side.EAST
        output [3:0] to_EA,        //Port(Name=to_EA, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=4, Side=EAST)
        output [3:0] to_EB,        //Port(Name=to_EB, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=4, Side=EAST)
        output [3:0] to_EC,        //Port(Name=to_EC, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=4, Side=EAST)
        output [3:0] to_ED,        //Port(Name=to_ED, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=4, Side=EAST)
        output [3:0] to_EF,        //Port(Name=to_EF, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=4, Side=EAST)
        output [7:0] to_EG,        //Port(Name=to_EG, IO=OUTPUT, XOffset=2, YOffset=0, WireCount=4, Side=EAST)
        output [7:0] to_EH,        //Port(Name=to_EH, IO=OUTPUT, XOffset=2, YOffset=0, WireCount=4, Side=EAST)
        output [11:0] to_EI,        //Port(Name=to_EI, IO=OUTPUT, XOffset=3, YOffset=0, WireCount=4, Side=EAST)
        input [3:0] from_WA,        //Port(Name=from_WA, IO=INPUT, XOffset=-1, YOffset=0, WireCount=4, Side=EAST)
        input [3:0] from_WB,        //Port(Name=from_WB, IO=INPUT, XOffset=-1, YOffset=0, WireCount=4, Side=EAST)
        input [3:0] from_WC,        //Port(Name=from_WC, IO=INPUT, XOffset=-1, YOffset=0, WireCount=4, Side=EAST)
        input [3:0] from_WD,        //Port(Name=from_WD, IO=INPUT, XOffset=-1, YOffset=0, WireCount=4, Side=EAST)
        input [3:0] from_WF,        //Port(Name=from_WF, IO=INPUT, XOffset=-1, YOffset=0, WireCount=4, Side=EAST)
        input [7:0] from_WG,        //Port(Name=from_WG, IO=INPUT, XOffset=-2, YOffset=0, WireCount=4, Side=EAST)
        input [7:0] from_WH,        //Port(Name=from_WH, IO=INPUT, XOffset=-2, YOffset=0, WireCount=4, Side=EAST)
        input [11:0] from_WI,        //Port(Name=from_WI, IO=INPUT, XOffset=-3, YOffset=0, WireCount=4, Side=EAST)
 //Side.WEST
        input [3:0] from_EA,        //Port(Name=from_EA, IO=INPUT, XOffset=1, YOffset=0, WireCount=4, Side=WEST)
        input [3:0] from_EB,        //Port(Name=from_EB, IO=INPUT, XOffset=1, YOffset=0, WireCount=4, Side=WEST)
        input [3:0] from_EC,        //Port(Name=from_EC, IO=INPUT, XOffset=1, YOffset=0, WireCount=4, Side=WEST)
        input [3:0] from_ED,        //Port(Name=from_ED, IO=INPUT, XOffset=1, YOffset=0, WireCount=4, Side=WEST)
        input [3:0] from_EF,        //Port(Name=from_EF, IO=INPUT, XOffset=1, YOffset=0, WireCount=4, Side=WEST)
        input [7:0] from_EG,        //Port(Name=from_EG, IO=INPUT, XOffset=2, YOffset=0, WireCount=4, Side=WEST)
        input [7:0] from_EH,        //Port(Name=from_EH, IO=INPUT, XOffset=2, YOffset=0, WireCount=4, Side=WEST)
        input [11:0] from_EI,        //Port(Name=from_EI, IO=INPUT, XOffset=3, YOffset=0, WireCount=4, Side=WEST)
        output [3:0] to_WA,        //Port(Name=to_WA, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=4, Side=WEST)
        output [3:0] to_WB,        //Port(Name=to_WB, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=4, Side=WEST)
        output [3:0] to_WC,        //Port(Name=to_WC, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=4, Side=WEST)
        output [3:0] to_WD,        //Port(Name=to_WD, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=4, Side=WEST)
        output [3:0] to_WF,        //Port(Name=to_WF, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=4, Side=WEST)
        output [7:0] to_WG,        //Port(Name=to_WG, IO=OUTPUT, XOffset=-2, YOffset=0, WireCount=4, Side=WEST)
        output [7:0] to_WH,        //Port(Name=to_WH, IO=OUTPUT, XOffset=-2, YOffset=0, WireCount=4, Side=WEST)
        output [11:0] to_WI,        //Port(Name=to_WI, IO=OUTPUT, XOffset=-3, YOffset=0, WireCount=4, Side=WEST)
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
        input R_t,
        input R_f,
        output F_masked1,
        output F_masked2,
    //Tile IO ports from BELs
        input UserCLK,
        output UserCLKo,
        input rst,
        output rsto,
        input [FrameBitsPerRow -1:0] FrameData, //CONFIG_PORT
        output [FrameBitsPerRow -1:0] FrameData_O,
        input [MaxFramesPerCol -1:0] FrameStrobe, //CONFIG_PORT
        output [MaxFramesPerCol -1:0] FrameStrobe_O
    //global
);
 //signal declarations
 //BEL ports (e.g., slices)
wire A0_t;
wire B0_t;
wire A0_f;
wire B0_f;
wire A1_t;
wire B1_t;
wire A1_f;
wire B1_f;
wire Z0_t;
wire Z0_f;
wire Z1_t;
wire Z1_f;
 //Jump wires
wire[4-1:0] to_J_I1A;
wire[4-1:0] to_J_I2A;
wire[4-1:0] to_J_I1B;
wire[4-1:0] to_J_I2B;
 //internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)
wire[NoConfigBits-1:0] ConfigBits;
wire[NoConfigBits-1:0] ConfigBits_N;

 //Connection for outgoing wires
wire[FrameBitsPerRow-1:0] FrameData_i;
wire[FrameBitsPerRow-1:0] FrameData_O_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_O_i;
wire[7:0] from_EG_i;
wire[3:0] to_EG_i;
wire[7:0] from_EH_i;
wire[3:0] to_EH_i;
wire[11:0] from_EI_i;
wire[7:0] to_EI_i;
wire[7:0] from_WG_i;
wire[3:0] to_WG_i;
wire[7:0] from_WH_i;
wire[3:0] to_WH_i;
wire[11:0] from_WI_i;
wire[7:0] to_WI_i;
wire[7:0] from_NG_i;
wire[3:0] to_NG_i;
wire[7:0] from_NH_i;
wire[3:0] to_NH_i;
wire[11:0] from_NI_i;
wire[7:0] to_NI_i;
wire[7:0] from_SG_i;
wire[3:0] to_SG_i;
wire[7:0] from_SH_i;
wire[3:0] to_SH_i;
wire[11:0] from_SI_i;
wire[7:0] to_SI_i;

assign FrameData_O_i = FrameData_i;

my_buf data_inbuf_0 (
    .A(FrameData[0]),
    .X(FrameData_i[0])
);

my_buf data_inbuf_1 (
    .A(FrameData[1]),
    .X(FrameData_i[1])
);

my_buf data_inbuf_2 (
    .A(FrameData[2]),
    .X(FrameData_i[2])
);

my_buf data_inbuf_3 (
    .A(FrameData[3]),
    .X(FrameData_i[3])
);

my_buf data_inbuf_4 (
    .A(FrameData[4]),
    .X(FrameData_i[4])
);

my_buf data_inbuf_5 (
    .A(FrameData[5]),
    .X(FrameData_i[5])
);

my_buf data_inbuf_6 (
    .A(FrameData[6]),
    .X(FrameData_i[6])
);

my_buf data_inbuf_7 (
    .A(FrameData[7]),
    .X(FrameData_i[7])
);

my_buf data_inbuf_8 (
    .A(FrameData[8]),
    .X(FrameData_i[8])
);

my_buf data_inbuf_9 (
    .A(FrameData[9]),
    .X(FrameData_i[9])
);

my_buf data_inbuf_10 (
    .A(FrameData[10]),
    .X(FrameData_i[10])
);

my_buf data_inbuf_11 (
    .A(FrameData[11]),
    .X(FrameData_i[11])
);

my_buf data_inbuf_12 (
    .A(FrameData[12]),
    .X(FrameData_i[12])
);

my_buf data_inbuf_13 (
    .A(FrameData[13]),
    .X(FrameData_i[13])
);

my_buf data_inbuf_14 (
    .A(FrameData[14]),
    .X(FrameData_i[14])
);

my_buf data_inbuf_15 (
    .A(FrameData[15]),
    .X(FrameData_i[15])
);

my_buf data_inbuf_16 (
    .A(FrameData[16]),
    .X(FrameData_i[16])
);

my_buf data_inbuf_17 (
    .A(FrameData[17]),
    .X(FrameData_i[17])
);

my_buf data_inbuf_18 (
    .A(FrameData[18]),
    .X(FrameData_i[18])
);

my_buf data_inbuf_19 (
    .A(FrameData[19]),
    .X(FrameData_i[19])
);

my_buf data_inbuf_20 (
    .A(FrameData[20]),
    .X(FrameData_i[20])
);

my_buf data_inbuf_21 (
    .A(FrameData[21]),
    .X(FrameData_i[21])
);

my_buf data_inbuf_22 (
    .A(FrameData[22]),
    .X(FrameData_i[22])
);

my_buf data_inbuf_23 (
    .A(FrameData[23]),
    .X(FrameData_i[23])
);

my_buf data_inbuf_24 (
    .A(FrameData[24]),
    .X(FrameData_i[24])
);

my_buf data_inbuf_25 (
    .A(FrameData[25]),
    .X(FrameData_i[25])
);

my_buf data_inbuf_26 (
    .A(FrameData[26]),
    .X(FrameData_i[26])
);

my_buf data_inbuf_27 (
    .A(FrameData[27]),
    .X(FrameData_i[27])
);

my_buf data_inbuf_28 (
    .A(FrameData[28]),
    .X(FrameData_i[28])
);

my_buf data_inbuf_29 (
    .A(FrameData[29]),
    .X(FrameData_i[29])
);

my_buf data_inbuf_30 (
    .A(FrameData[30]),
    .X(FrameData_i[30])
);

my_buf data_inbuf_31 (
    .A(FrameData[31]),
    .X(FrameData_i[31])
);

my_buf data_outbuf_0 (
    .A(FrameData_O_i[0]),
    .X(FrameData_O[0])
);

my_buf data_outbuf_1 (
    .A(FrameData_O_i[1]),
    .X(FrameData_O[1])
);

my_buf data_outbuf_2 (
    .A(FrameData_O_i[2]),
    .X(FrameData_O[2])
);

my_buf data_outbuf_3 (
    .A(FrameData_O_i[3]),
    .X(FrameData_O[3])
);

my_buf data_outbuf_4 (
    .A(FrameData_O_i[4]),
    .X(FrameData_O[4])
);

my_buf data_outbuf_5 (
    .A(FrameData_O_i[5]),
    .X(FrameData_O[5])
);

my_buf data_outbuf_6 (
    .A(FrameData_O_i[6]),
    .X(FrameData_O[6])
);

my_buf data_outbuf_7 (
    .A(FrameData_O_i[7]),
    .X(FrameData_O[7])
);

my_buf data_outbuf_8 (
    .A(FrameData_O_i[8]),
    .X(FrameData_O[8])
);

my_buf data_outbuf_9 (
    .A(FrameData_O_i[9]),
    .X(FrameData_O[9])
);

my_buf data_outbuf_10 (
    .A(FrameData_O_i[10]),
    .X(FrameData_O[10])
);

my_buf data_outbuf_11 (
    .A(FrameData_O_i[11]),
    .X(FrameData_O[11])
);

my_buf data_outbuf_12 (
    .A(FrameData_O_i[12]),
    .X(FrameData_O[12])
);

my_buf data_outbuf_13 (
    .A(FrameData_O_i[13]),
    .X(FrameData_O[13])
);

my_buf data_outbuf_14 (
    .A(FrameData_O_i[14]),
    .X(FrameData_O[14])
);

my_buf data_outbuf_15 (
    .A(FrameData_O_i[15]),
    .X(FrameData_O[15])
);

my_buf data_outbuf_16 (
    .A(FrameData_O_i[16]),
    .X(FrameData_O[16])
);

my_buf data_outbuf_17 (
    .A(FrameData_O_i[17]),
    .X(FrameData_O[17])
);

my_buf data_outbuf_18 (
    .A(FrameData_O_i[18]),
    .X(FrameData_O[18])
);

my_buf data_outbuf_19 (
    .A(FrameData_O_i[19]),
    .X(FrameData_O[19])
);

my_buf data_outbuf_20 (
    .A(FrameData_O_i[20]),
    .X(FrameData_O[20])
);

my_buf data_outbuf_21 (
    .A(FrameData_O_i[21]),
    .X(FrameData_O[21])
);

my_buf data_outbuf_22 (
    .A(FrameData_O_i[22]),
    .X(FrameData_O[22])
);

my_buf data_outbuf_23 (
    .A(FrameData_O_i[23]),
    .X(FrameData_O[23])
);

my_buf data_outbuf_24 (
    .A(FrameData_O_i[24]),
    .X(FrameData_O[24])
);

my_buf data_outbuf_25 (
    .A(FrameData_O_i[25]),
    .X(FrameData_O[25])
);

my_buf data_outbuf_26 (
    .A(FrameData_O_i[26]),
    .X(FrameData_O[26])
);

my_buf data_outbuf_27 (
    .A(FrameData_O_i[27]),
    .X(FrameData_O[27])
);

my_buf data_outbuf_28 (
    .A(FrameData_O_i[28]),
    .X(FrameData_O[28])
);

my_buf data_outbuf_29 (
    .A(FrameData_O_i[29]),
    .X(FrameData_O[29])
);

my_buf data_outbuf_30 (
    .A(FrameData_O_i[30]),
    .X(FrameData_O[30])
);

my_buf data_outbuf_31 (
    .A(FrameData_O_i[31]),
    .X(FrameData_O[31])
);

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

assign to_EG_i[7-4:0] = from_EG_i[7:4];

my_buf from_EG_inbuf_0 (
    .A(from_EG[4]),
    .X(from_EG_i[4])
);

my_buf from_EG_inbuf_1 (
    .A(from_EG[5]),
    .X(from_EG_i[5])
);

my_buf from_EG_inbuf_2 (
    .A(from_EG[6]),
    .X(from_EG_i[6])
);

my_buf from_EG_inbuf_3 (
    .A(from_EG[7]),
    .X(from_EG_i[7])
);

my_buf to_EG_outbuf_0 (
    .A(to_EG_i[0]),
    .X(to_EG[0])
);

my_buf to_EG_outbuf_1 (
    .A(to_EG_i[1]),
    .X(to_EG[1])
);

my_buf to_EG_outbuf_2 (
    .A(to_EG_i[2]),
    .X(to_EG[2])
);

my_buf to_EG_outbuf_3 (
    .A(to_EG_i[3]),
    .X(to_EG[3])
);

assign to_EH_i[7-4:0] = from_EH_i[7:4];

my_buf from_EH_inbuf_0 (
    .A(from_EH[4]),
    .X(from_EH_i[4])
);

my_buf from_EH_inbuf_1 (
    .A(from_EH[5]),
    .X(from_EH_i[5])
);

my_buf from_EH_inbuf_2 (
    .A(from_EH[6]),
    .X(from_EH_i[6])
);

my_buf from_EH_inbuf_3 (
    .A(from_EH[7]),
    .X(from_EH_i[7])
);

my_buf to_EH_outbuf_0 (
    .A(to_EH_i[0]),
    .X(to_EH[0])
);

my_buf to_EH_outbuf_1 (
    .A(to_EH_i[1]),
    .X(to_EH[1])
);

my_buf to_EH_outbuf_2 (
    .A(to_EH_i[2]),
    .X(to_EH[2])
);

my_buf to_EH_outbuf_3 (
    .A(to_EH_i[3]),
    .X(to_EH[3])
);

assign to_EI_i[11-4:0] = from_EI_i[11:4];

my_buf from_EI_inbuf_0 (
    .A(from_EI[4]),
    .X(from_EI_i[4])
);

my_buf from_EI_inbuf_1 (
    .A(from_EI[5]),
    .X(from_EI_i[5])
);

my_buf from_EI_inbuf_2 (
    .A(from_EI[6]),
    .X(from_EI_i[6])
);

my_buf from_EI_inbuf_3 (
    .A(from_EI[7]),
    .X(from_EI_i[7])
);

my_buf from_EI_inbuf_4 (
    .A(from_EI[8]),
    .X(from_EI_i[8])
);

my_buf from_EI_inbuf_5 (
    .A(from_EI[9]),
    .X(from_EI_i[9])
);

my_buf from_EI_inbuf_6 (
    .A(from_EI[10]),
    .X(from_EI_i[10])
);

my_buf from_EI_inbuf_7 (
    .A(from_EI[11]),
    .X(from_EI_i[11])
);

my_buf to_EI_outbuf_0 (
    .A(to_EI_i[0]),
    .X(to_EI[0])
);

my_buf to_EI_outbuf_1 (
    .A(to_EI_i[1]),
    .X(to_EI[1])
);

my_buf to_EI_outbuf_2 (
    .A(to_EI_i[2]),
    .X(to_EI[2])
);

my_buf to_EI_outbuf_3 (
    .A(to_EI_i[3]),
    .X(to_EI[3])
);

my_buf to_EI_outbuf_4 (
    .A(to_EI_i[4]),
    .X(to_EI[4])
);

my_buf to_EI_outbuf_5 (
    .A(to_EI_i[5]),
    .X(to_EI[5])
);

my_buf to_EI_outbuf_6 (
    .A(to_EI_i[6]),
    .X(to_EI[6])
);

my_buf to_EI_outbuf_7 (
    .A(to_EI_i[7]),
    .X(to_EI[7])
);

assign to_WG_i[7-4:0] = from_WG_i[7:4];

my_buf from_WG_inbuf_0 (
    .A(from_WG[4]),
    .X(from_WG_i[4])
);

my_buf from_WG_inbuf_1 (
    .A(from_WG[5]),
    .X(from_WG_i[5])
);

my_buf from_WG_inbuf_2 (
    .A(from_WG[6]),
    .X(from_WG_i[6])
);

my_buf from_WG_inbuf_3 (
    .A(from_WG[7]),
    .X(from_WG_i[7])
);

my_buf to_WG_outbuf_0 (
    .A(to_WG_i[0]),
    .X(to_WG[0])
);

my_buf to_WG_outbuf_1 (
    .A(to_WG_i[1]),
    .X(to_WG[1])
);

my_buf to_WG_outbuf_2 (
    .A(to_WG_i[2]),
    .X(to_WG[2])
);

my_buf to_WG_outbuf_3 (
    .A(to_WG_i[3]),
    .X(to_WG[3])
);

assign to_WH_i[7-4:0] = from_WH_i[7:4];

my_buf from_WH_inbuf_0 (
    .A(from_WH[4]),
    .X(from_WH_i[4])
);

my_buf from_WH_inbuf_1 (
    .A(from_WH[5]),
    .X(from_WH_i[5])
);

my_buf from_WH_inbuf_2 (
    .A(from_WH[6]),
    .X(from_WH_i[6])
);

my_buf from_WH_inbuf_3 (
    .A(from_WH[7]),
    .X(from_WH_i[7])
);

my_buf to_WH_outbuf_0 (
    .A(to_WH_i[0]),
    .X(to_WH[0])
);

my_buf to_WH_outbuf_1 (
    .A(to_WH_i[1]),
    .X(to_WH[1])
);

my_buf to_WH_outbuf_2 (
    .A(to_WH_i[2]),
    .X(to_WH[2])
);

my_buf to_WH_outbuf_3 (
    .A(to_WH_i[3]),
    .X(to_WH[3])
);

assign to_WI_i[11-4:0] = from_WI_i[11:4];

my_buf from_WI_inbuf_0 (
    .A(from_WI[4]),
    .X(from_WI_i[4])
);

my_buf from_WI_inbuf_1 (
    .A(from_WI[5]),
    .X(from_WI_i[5])
);

my_buf from_WI_inbuf_2 (
    .A(from_WI[6]),
    .X(from_WI_i[6])
);

my_buf from_WI_inbuf_3 (
    .A(from_WI[7]),
    .X(from_WI_i[7])
);

my_buf from_WI_inbuf_4 (
    .A(from_WI[8]),
    .X(from_WI_i[8])
);

my_buf from_WI_inbuf_5 (
    .A(from_WI[9]),
    .X(from_WI_i[9])
);

my_buf from_WI_inbuf_6 (
    .A(from_WI[10]),
    .X(from_WI_i[10])
);

my_buf from_WI_inbuf_7 (
    .A(from_WI[11]),
    .X(from_WI_i[11])
);

my_buf to_WI_outbuf_0 (
    .A(to_WI_i[0]),
    .X(to_WI[0])
);

my_buf to_WI_outbuf_1 (
    .A(to_WI_i[1]),
    .X(to_WI[1])
);

my_buf to_WI_outbuf_2 (
    .A(to_WI_i[2]),
    .X(to_WI[2])
);

my_buf to_WI_outbuf_3 (
    .A(to_WI_i[3]),
    .X(to_WI[3])
);

my_buf to_WI_outbuf_4 (
    .A(to_WI_i[4]),
    .X(to_WI[4])
);

my_buf to_WI_outbuf_5 (
    .A(to_WI_i[5]),
    .X(to_WI[5])
);

my_buf to_WI_outbuf_6 (
    .A(to_WI_i[6]),
    .X(to_WI[6])
);

my_buf to_WI_outbuf_7 (
    .A(to_WI_i[7]),
    .X(to_WI[7])
);

assign to_NG_i[7-4:0] = from_NG_i[7:4];

my_buf from_NG_inbuf_0 (
    .A(from_NG[4]),
    .X(from_NG_i[4])
);

my_buf from_NG_inbuf_1 (
    .A(from_NG[5]),
    .X(from_NG_i[5])
);

my_buf from_NG_inbuf_2 (
    .A(from_NG[6]),
    .X(from_NG_i[6])
);

my_buf from_NG_inbuf_3 (
    .A(from_NG[7]),
    .X(from_NG_i[7])
);

my_buf to_NG_outbuf_0 (
    .A(to_NG_i[0]),
    .X(to_NG[0])
);

my_buf to_NG_outbuf_1 (
    .A(to_NG_i[1]),
    .X(to_NG[1])
);

my_buf to_NG_outbuf_2 (
    .A(to_NG_i[2]),
    .X(to_NG[2])
);

my_buf to_NG_outbuf_3 (
    .A(to_NG_i[3]),
    .X(to_NG[3])
);

assign to_NH_i[7-4:0] = from_NH_i[7:4];

my_buf from_NH_inbuf_0 (
    .A(from_NH[4]),
    .X(from_NH_i[4])
);

my_buf from_NH_inbuf_1 (
    .A(from_NH[5]),
    .X(from_NH_i[5])
);

my_buf from_NH_inbuf_2 (
    .A(from_NH[6]),
    .X(from_NH_i[6])
);

my_buf from_NH_inbuf_3 (
    .A(from_NH[7]),
    .X(from_NH_i[7])
);

my_buf to_NH_outbuf_0 (
    .A(to_NH_i[0]),
    .X(to_NH[0])
);

my_buf to_NH_outbuf_1 (
    .A(to_NH_i[1]),
    .X(to_NH[1])
);

my_buf to_NH_outbuf_2 (
    .A(to_NH_i[2]),
    .X(to_NH[2])
);

my_buf to_NH_outbuf_3 (
    .A(to_NH_i[3]),
    .X(to_NH[3])
);

assign to_NI_i[11-4:0] = from_NI_i[11:4];

my_buf from_NI_inbuf_0 (
    .A(from_NI[4]),
    .X(from_NI_i[4])
);

my_buf from_NI_inbuf_1 (
    .A(from_NI[5]),
    .X(from_NI_i[5])
);

my_buf from_NI_inbuf_2 (
    .A(from_NI[6]),
    .X(from_NI_i[6])
);

my_buf from_NI_inbuf_3 (
    .A(from_NI[7]),
    .X(from_NI_i[7])
);

my_buf from_NI_inbuf_4 (
    .A(from_NI[8]),
    .X(from_NI_i[8])
);

my_buf from_NI_inbuf_5 (
    .A(from_NI[9]),
    .X(from_NI_i[9])
);

my_buf from_NI_inbuf_6 (
    .A(from_NI[10]),
    .X(from_NI_i[10])
);

my_buf from_NI_inbuf_7 (
    .A(from_NI[11]),
    .X(from_NI_i[11])
);

my_buf to_NI_outbuf_0 (
    .A(to_NI_i[0]),
    .X(to_NI[0])
);

my_buf to_NI_outbuf_1 (
    .A(to_NI_i[1]),
    .X(to_NI[1])
);

my_buf to_NI_outbuf_2 (
    .A(to_NI_i[2]),
    .X(to_NI[2])
);

my_buf to_NI_outbuf_3 (
    .A(to_NI_i[3]),
    .X(to_NI[3])
);

my_buf to_NI_outbuf_4 (
    .A(to_NI_i[4]),
    .X(to_NI[4])
);

my_buf to_NI_outbuf_5 (
    .A(to_NI_i[5]),
    .X(to_NI[5])
);

my_buf to_NI_outbuf_6 (
    .A(to_NI_i[6]),
    .X(to_NI[6])
);

my_buf to_NI_outbuf_7 (
    .A(to_NI_i[7]),
    .X(to_NI[7])
);

assign to_SG_i[7-4:0] = from_SG_i[7:4];

my_buf from_SG_inbuf_0 (
    .A(from_SG[4]),
    .X(from_SG_i[4])
);

my_buf from_SG_inbuf_1 (
    .A(from_SG[5]),
    .X(from_SG_i[5])
);

my_buf from_SG_inbuf_2 (
    .A(from_SG[6]),
    .X(from_SG_i[6])
);

my_buf from_SG_inbuf_3 (
    .A(from_SG[7]),
    .X(from_SG_i[7])
);

my_buf to_SG_outbuf_0 (
    .A(to_SG_i[0]),
    .X(to_SG[0])
);

my_buf to_SG_outbuf_1 (
    .A(to_SG_i[1]),
    .X(to_SG[1])
);

my_buf to_SG_outbuf_2 (
    .A(to_SG_i[2]),
    .X(to_SG[2])
);

my_buf to_SG_outbuf_3 (
    .A(to_SG_i[3]),
    .X(to_SG[3])
);

assign to_SH_i[7-4:0] = from_SH_i[7:4];

my_buf from_SH_inbuf_0 (
    .A(from_SH[4]),
    .X(from_SH_i[4])
);

my_buf from_SH_inbuf_1 (
    .A(from_SH[5]),
    .X(from_SH_i[5])
);

my_buf from_SH_inbuf_2 (
    .A(from_SH[6]),
    .X(from_SH_i[6])
);

my_buf from_SH_inbuf_3 (
    .A(from_SH[7]),
    .X(from_SH_i[7])
);

my_buf to_SH_outbuf_0 (
    .A(to_SH_i[0]),
    .X(to_SH[0])
);

my_buf to_SH_outbuf_1 (
    .A(to_SH_i[1]),
    .X(to_SH[1])
);

my_buf to_SH_outbuf_2 (
    .A(to_SH_i[2]),
    .X(to_SH[2])
);

my_buf to_SH_outbuf_3 (
    .A(to_SH_i[3]),
    .X(to_SH[3])
);

assign to_SI_i[11-4:0] = from_SI_i[11:4];

my_buf from_SI_inbuf_0 (
    .A(from_SI[4]),
    .X(from_SI_i[4])
);

my_buf from_SI_inbuf_1 (
    .A(from_SI[5]),
    .X(from_SI_i[5])
);

my_buf from_SI_inbuf_2 (
    .A(from_SI[6]),
    .X(from_SI_i[6])
);

my_buf from_SI_inbuf_3 (
    .A(from_SI[7]),
    .X(from_SI_i[7])
);

my_buf from_SI_inbuf_4 (
    .A(from_SI[8]),
    .X(from_SI_i[8])
);

my_buf from_SI_inbuf_5 (
    .A(from_SI[9]),
    .X(from_SI_i[9])
);

my_buf from_SI_inbuf_6 (
    .A(from_SI[10]),
    .X(from_SI_i[10])
);

my_buf from_SI_inbuf_7 (
    .A(from_SI[11]),
    .X(from_SI_i[11])
);

my_buf to_SI_outbuf_0 (
    .A(to_SI_i[0]),
    .X(to_SI[0])
);

my_buf to_SI_outbuf_1 (
    .A(to_SI_i[1]),
    .X(to_SI[1])
);

my_buf to_SI_outbuf_2 (
    .A(to_SI_i[2]),
    .X(to_SI[2])
);

my_buf to_SI_outbuf_3 (
    .A(to_SI_i[3]),
    .X(to_SI[3])
);

my_buf to_SI_outbuf_4 (
    .A(to_SI_i[4]),
    .X(to_SI[4])
);

my_buf to_SI_outbuf_5 (
    .A(to_SI_i[5]),
    .X(to_SI[5])
);

my_buf to_SI_outbuf_6 (
    .A(to_SI_i[6]),
    .X(to_SI[6])
);

my_buf to_SI_outbuf_7 (
    .A(to_SI_i[7]),
    .X(to_SI[7])
);

clk_buf inst_clk_buf (
    .A(UserCLK),
    .X(UserCLKo)
);

my_buf inst_rst_buf (
    .A(rst),
    .X(rsto)
);


 //configuration storage latches
nonlinear_LMDPL_ConfigMem
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Emulate_Bitstream)
    )
`endif
    Inst_nonlinear_LMDPL_ConfigMem
    (
    .FrameData(FrameData),
    .FrameStrobe(FrameStrobe),
    .ConfigBits(ConfigBits),
    .ConfigBits_N(ConfigBits_N)
);

 //BEL component instantiations
nonlinear_LMDPL_primitive Inst_nonlinear_LMDPL_primitive (
    .A0_t(A0_t),
    .B0_t(B0_t),
    .A0_f(A0_f),
    .B0_f(B0_f),
    .A1_t(A1_t),
    .B1_t(B1_t),
    .A1_f(A1_f),
    .B1_f(B1_f),
    .Z0_t(Z0_t),
    .Z0_f(Z0_f),
    .Z1_t(Z1_t),
    .Z1_f(Z1_f),
    .R_t(R_t),
    .R_f(R_f),
    .F_masked1(F_masked1),
    .F_masked2(F_masked2),
    .UserCLK(UserCLK),
    .rst(rst),
    .ConfigBits(ConfigBits[4-1:0])
);

nonlinear_LMDPL_switch_matrix Inst_nonlinear_LMDPL_switch_matrix (
    .from_EA0(from_EA[0]),
    .from_EA1(from_EA[1]),
    .from_EA2(from_EA[2]),
    .from_EA3(from_EA[3]),
    .from_EB0(from_EB[0]),
    .from_EB1(from_EB[1]),
    .from_EB2(from_EB[2]),
    .from_EB3(from_EB[3]),
    .from_EC0(from_EC[0]),
    .from_EC1(from_EC[1]),
    .from_EC2(from_EC[2]),
    .from_EC3(from_EC[3]),
    .from_ED0(from_ED[0]),
    .from_ED1(from_ED[1]),
    .from_ED2(from_ED[2]),
    .from_ED3(from_ED[3]),
    .from_EF0(from_EF[0]),
    .from_EF1(from_EF[1]),
    .from_EF2(from_EF[2]),
    .from_EF3(from_EF[3]),
    .from_EG0(from_EG[0]),
    .from_EG1(from_EG[1]),
    .from_EG2(from_EG[2]),
    .from_EG3(from_EG[3]),
    .from_EH0(from_EH[0]),
    .from_EH1(from_EH[1]),
    .from_EH2(from_EH[2]),
    .from_EH3(from_EH[3]),
    .from_EI0(from_EI[0]),
    .from_EI1(from_EI[1]),
    .from_EI2(from_EI[2]),
    .from_EI3(from_EI[3]),
    .from_WA0(from_WA[0]),
    .from_WA1(from_WA[1]),
    .from_WA2(from_WA[2]),
    .from_WA3(from_WA[3]),
    .from_WB0(from_WB[0]),
    .from_WB1(from_WB[1]),
    .from_WB2(from_WB[2]),
    .from_WB3(from_WB[3]),
    .from_WC0(from_WC[0]),
    .from_WC1(from_WC[1]),
    .from_WC2(from_WC[2]),
    .from_WC3(from_WC[3]),
    .from_WD0(from_WD[0]),
    .from_WD1(from_WD[1]),
    .from_WD2(from_WD[2]),
    .from_WD3(from_WD[3]),
    .from_WF0(from_WF[0]),
    .from_WF1(from_WF[1]),
    .from_WF2(from_WF[2]),
    .from_WF3(from_WF[3]),
    .from_WG0(from_WG[0]),
    .from_WG1(from_WG[1]),
    .from_WG2(from_WG[2]),
    .from_WG3(from_WG[3]),
    .from_WH0(from_WH[0]),
    .from_WH1(from_WH[1]),
    .from_WH2(from_WH[2]),
    .from_WH3(from_WH[3]),
    .from_WI0(from_WI[0]),
    .from_WI1(from_WI[1]),
    .from_WI2(from_WI[2]),
    .from_WI3(from_WI[3]),
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
    .from_NH0(from_NH[0]),
    .from_NH1(from_NH[1]),
    .from_NH2(from_NH[2]),
    .from_NH3(from_NH[3]),
    .from_NI0(from_NI[0]),
    .from_NI1(from_NI[1]),
    .from_NI2(from_NI[2]),
    .from_NI3(from_NI[3]),
    .from_SA0(from_SA[0]),
    .from_SA1(from_SA[1]),
    .from_SA2(from_SA[2]),
    .from_SA3(from_SA[3]),
    .from_SB0(from_SB[0]),
    .from_SB1(from_SB[1]),
    .from_SB2(from_SB[2]),
    .from_SB3(from_SB[3]),
    .from_SC0(from_SC[0]),
    .from_SC1(from_SC[1]),
    .from_SC2(from_SC[2]),
    .from_SC3(from_SC[3]),
    .from_SD0(from_SD[0]),
    .from_SD1(from_SD[1]),
    .from_SD2(from_SD[2]),
    .from_SD3(from_SD[3]),
    .from_SF0(from_SF[0]),
    .from_SF1(from_SF[1]),
    .from_SF2(from_SF[2]),
    .from_SF3(from_SF[3]),
    .from_SG0(from_SG[0]),
    .from_SG1(from_SG[1]),
    .from_SG2(from_SG[2]),
    .from_SG3(from_SG[3]),
    .from_SH0(from_SH[0]),
    .from_SH1(from_SH[1]),
    .from_SH2(from_SH[2]),
    .from_SH3(from_SH[3]),
    .from_SI0(from_SI[0]),
    .from_SI1(from_SI[1]),
    .from_SI2(from_SI[2]),
    .from_SI3(from_SI[3]),
    .Z0_t(Z0_t),
    .Z0_f(Z0_f),
    .Z1_t(Z1_t),
    .Z1_f(Z1_f),
    .from_J_I1A0(to_J_I1A[0]),
    .from_J_I1A1(to_J_I1A[1]),
    .from_J_I1A2(to_J_I1A[2]),
    .from_J_I1A3(to_J_I1A[3]),
    .from_J_I2A0(to_J_I2A[0]),
    .from_J_I2A1(to_J_I2A[1]),
    .from_J_I2A2(to_J_I2A[2]),
    .from_J_I2A3(to_J_I2A[3]),
    .from_J_I1B0(to_J_I1B[0]),
    .from_J_I1B1(to_J_I1B[1]),
    .from_J_I1B2(to_J_I1B[2]),
    .from_J_I1B3(to_J_I1B[3]),
    .from_J_I2B0(to_J_I2B[0]),
    .from_J_I2B1(to_J_I2B[1]),
    .from_J_I2B2(to_J_I2B[2]),
    .from_J_I2B3(to_J_I2B[3]),
    .to_EA0(to_EA[0]),
    .to_EA1(to_EA[1]),
    .to_EA2(to_EA[2]),
    .to_EA3(to_EA[3]),
    .to_EB0(to_EB[0]),
    .to_EB1(to_EB[1]),
    .to_EB2(to_EB[2]),
    .to_EB3(to_EB[3]),
    .to_EC0(to_EC[0]),
    .to_EC1(to_EC[1]),
    .to_EC2(to_EC[2]),
    .to_EC3(to_EC[3]),
    .to_ED0(to_ED[0]),
    .to_ED1(to_ED[1]),
    .to_ED2(to_ED[2]),
    .to_ED3(to_ED[3]),
    .to_EF0(to_EF[0]),
    .to_EF1(to_EF[1]),
    .to_EF2(to_EF[2]),
    .to_EF3(to_EF[3]),
    .to_EG0(to_EG[4]),
    .to_EG1(to_EG[5]),
    .to_EG2(to_EG[6]),
    .to_EG3(to_EG[7]),
    .to_EH0(to_EH[4]),
    .to_EH1(to_EH[5]),
    .to_EH2(to_EH[6]),
    .to_EH3(to_EH[7]),
    .to_EI0(to_EI[8]),
    .to_EI1(to_EI[9]),
    .to_EI2(to_EI[10]),
    .to_EI3(to_EI[11]),
    .to_WA0(to_WA[0]),
    .to_WA1(to_WA[1]),
    .to_WA2(to_WA[2]),
    .to_WA3(to_WA[3]),
    .to_WB0(to_WB[0]),
    .to_WB1(to_WB[1]),
    .to_WB2(to_WB[2]),
    .to_WB3(to_WB[3]),
    .to_WC0(to_WC[0]),
    .to_WC1(to_WC[1]),
    .to_WC2(to_WC[2]),
    .to_WC3(to_WC[3]),
    .to_WD0(to_WD[0]),
    .to_WD1(to_WD[1]),
    .to_WD2(to_WD[2]),
    .to_WD3(to_WD[3]),
    .to_WF0(to_WF[0]),
    .to_WF1(to_WF[1]),
    .to_WF2(to_WF[2]),
    .to_WF3(to_WF[3]),
    .to_WG0(to_WG[4]),
    .to_WG1(to_WG[5]),
    .to_WG2(to_WG[6]),
    .to_WG3(to_WG[7]),
    .to_WH0(to_WH[4]),
    .to_WH1(to_WH[5]),
    .to_WH2(to_WH[6]),
    .to_WH3(to_WH[7]),
    .to_WI0(to_WI[8]),
    .to_WI1(to_WI[9]),
    .to_WI2(to_WI[10]),
    .to_WI3(to_WI[11]),
    .to_NA0(to_NA[0]),
    .to_NA1(to_NA[1]),
    .to_NA2(to_NA[2]),
    .to_NA3(to_NA[3]),
    .to_NB0(to_NB[0]),
    .to_NB1(to_NB[1]),
    .to_NB2(to_NB[2]),
    .to_NB3(to_NB[3]),
    .to_NC0(to_NC[0]),
    .to_NC1(to_NC[1]),
    .to_NC2(to_NC[2]),
    .to_NC3(to_NC[3]),
    .to_ND0(to_ND[0]),
    .to_ND1(to_ND[1]),
    .to_ND2(to_ND[2]),
    .to_ND3(to_ND[3]),
    .to_NF0(to_NF[0]),
    .to_NF1(to_NF[1]),
    .to_NF2(to_NF[2]),
    .to_NF3(to_NF[3]),
    .to_NG0(to_NG[4]),
    .to_NG1(to_NG[5]),
    .to_NG2(to_NG[6]),
    .to_NG3(to_NG[7]),
    .to_NH0(to_NH[4]),
    .to_NH1(to_NH[5]),
    .to_NH2(to_NH[6]),
    .to_NH3(to_NH[7]),
    .to_NI0(to_NI[8]),
    .to_NI1(to_NI[9]),
    .to_NI2(to_NI[10]),
    .to_NI3(to_NI[11]),
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
    .to_SG0(to_SG[4]),
    .to_SG1(to_SG[5]),
    .to_SG2(to_SG[6]),
    .to_SG3(to_SG[7]),
    .to_SH0(to_SH[4]),
    .to_SH1(to_SH[5]),
    .to_SH2(to_SH[6]),
    .to_SH3(to_SH[7]),
    .to_SI0(to_SI[8]),
    .to_SI1(to_SI[9]),
    .to_SI2(to_SI[10]),
    .to_SI3(to_SI[11]),
    .A0_t(A0_t),
    .B0_t(B0_t),
    .A0_f(A0_f),
    .B0_f(B0_f),
    .A1_t(A1_t),
    .B1_t(B1_t),
    .A1_f(A1_f),
    .B1_f(B1_f),
    .to_J_I1A0(to_J_I1A[0]),
    .to_J_I1A1(to_J_I1A[1]),
    .to_J_I1A2(to_J_I1A[2]),
    .to_J_I1A3(to_J_I1A[3]),
    .to_J_I2A0(to_J_I2A[0]),
    .to_J_I2A1(to_J_I2A[1]),
    .to_J_I2A2(to_J_I2A[2]),
    .to_J_I2A3(to_J_I2A[3]),
    .to_J_I1B0(to_J_I1B[0]),
    .to_J_I1B1(to_J_I1B[1]),
    .to_J_I1B2(to_J_I1B[2]),
    .to_J_I1B3(to_J_I1B[3]),
    .to_J_I2B0(to_J_I2B[0]),
    .to_J_I2B1(to_J_I2B[1]),
    .to_J_I2B2(to_J_I2B[2]),
    .to_J_I2B3(to_J_I2B[3]),
    .ConfigBits(ConfigBits[340-1:4]),
    .ConfigBits_N(ConfigBits_N[340-1:4])
);

endmodule