module combined_WDDL
    #(
`ifdef EMULATION
        parameter [639:0] Emulate_Bitstream=640'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32,
        parameter NoConfigBits=89
    )
    (
 //Side.NORTH
        output [0:0] to_NA_1s,        //Port(Name=to_NA_1s, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [0:0] to_NB_1s,        //Port(Name=to_NB_1s, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [0:0] to_NC_1s,        //Port(Name=to_NC_1s, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [0:0] to_ND_1s,        //Port(Name=to_ND_1s, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [0:0] to_NF_1s,        //Port(Name=to_NF_1s, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [0:0] to_NG_1s,        //Port(Name=to_NG_1s, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [0:0] to_NH_1s,        //Port(Name=to_NH_1s, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [0:0] to_NI_1s,        //Port(Name=to_NI_1s, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        input [0:0] from_SA_1s,        //Port(Name=from_SA_1s, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [0:0] from_SB_1s,        //Port(Name=from_SB_1s, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [0:0] from_SC_1s,        //Port(Name=from_SC_1s, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [0:0] from_SD_1s,        //Port(Name=from_SD_1s, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [0:0] from_SF_1s,        //Port(Name=from_SF_1s, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [0:0] from_SG_1s,        //Port(Name=from_SG_1s, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [0:0] from_SH_1s,        //Port(Name=from_SH_1s, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [0:0] from_SI_1s,        //Port(Name=from_SI_1s, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
 //Side.EAST
        output [0:0] to_EA_1s,        //Port(Name=to_EA_1s, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=1, Side=EAST)
        output [0:0] to_EB_1s,        //Port(Name=to_EB_1s, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=1, Side=EAST)
        output [0:0] to_EC_1s,        //Port(Name=to_EC_1s, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=1, Side=EAST)
        output [0:0] to_ED_1s,        //Port(Name=to_ED_1s, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=1, Side=EAST)
        output [0:0] to_EF_1s,        //Port(Name=to_EF_1s, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=1, Side=EAST)
        output [0:0] to_EG_1s,        //Port(Name=to_EG_1s, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=1, Side=EAST)
        output [0:0] to_EH_1s,        //Port(Name=to_EH_1s, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=1, Side=EAST)
        output [0:0] to_EI_1s,        //Port(Name=to_EI_1s, IO=OUTPUT, XOffset=1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WA_1s,        //Port(Name=from_WA_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WB_1s,        //Port(Name=from_WB_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WC_1s,        //Port(Name=from_WC_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WD_1s,        //Port(Name=from_WD_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WF_1s,        //Port(Name=from_WF_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WG_1s,        //Port(Name=from_WG_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WH_1s,        //Port(Name=from_WH_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WI_1s,        //Port(Name=from_WI_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
 //Side.WEST
        input [0:0] from_EA_1s,        //Port(Name=from_EA_1s, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [0:0] from_EB_1s,        //Port(Name=from_EB_1s, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [0:0] from_EC_1s,        //Port(Name=from_EC_1s, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [0:0] from_ED_1s,        //Port(Name=from_ED_1s, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [0:0] from_EF_1s,        //Port(Name=from_EF_1s, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [0:0] from_EG_1s,        //Port(Name=from_EG_1s, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [0:0] from_EH_1s,        //Port(Name=from_EH_1s, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [0:0] from_EI_1s,        //Port(Name=from_EI_1s, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WA_1s,        //Port(Name=to_WA_1s, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WB_1s,        //Port(Name=to_WB_1s, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WC_1s,        //Port(Name=to_WC_1s, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WD_1s,        //Port(Name=to_WD_1s, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WF_1s,        //Port(Name=to_WF_1s, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WG_1s,        //Port(Name=to_WG_1s, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WH_1s,        //Port(Name=to_WH_1s, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WI_1s,        //Port(Name=to_WI_1s, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
 //Side.SOUTH
        input [0:0] from_NA_1s,        //Port(Name=from_NA_1s, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [0:0] from_NB_1s,        //Port(Name=from_NB_1s, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [0:0] from_NC_1s,        //Port(Name=from_NC_1s, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [0:0] from_ND_1s,        //Port(Name=from_ND_1s, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [0:0] from_NF_1s,        //Port(Name=from_NF_1s, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [0:0] from_NG_1s,        //Port(Name=from_NG_1s, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [0:0] from_NH_1s,        //Port(Name=from_NH_1s, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [0:0] from_NI_1s,        //Port(Name=from_NI_1s, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        output [0:0] to_SA_1s,        //Port(Name=to_SA_1s, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [0:0] to_SB_1s,        //Port(Name=to_SB_1s, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [0:0] to_SC_1s,        //Port(Name=to_SC_1s, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [0:0] to_SD_1s,        //Port(Name=to_SD_1s, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [0:0] to_SF_1s,        //Port(Name=to_SF_1s, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [0:0] to_SG_1s,        //Port(Name=to_SG_1s, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [0:0] to_SH_1s,        //Port(Name=to_SH_1s, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [0:0] to_SI_1s,        //Port(Name=to_SI_1s, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output F_ctrl,
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
wire Z0_t;
wire Z0_f;
 //Jump wires
wire[1-1:0] to_J_IA1_1s;
wire[1-1:0] to_J_IA2_1s;
wire[1-1:0] to_J_IB1_1s;
wire[1-1:0] to_J_IB2_1s;
 //internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)
wire[NoConfigBits-1:0] ConfigBits;
wire[NoConfigBits-1:0] ConfigBits_N;

 //Connection for outgoing wires
wire[FrameBitsPerRow-1:0] FrameData_i;
wire[FrameBitsPerRow-1:0] FrameData_O_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_O_i;

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

clk_buf inst_clk_buf (
    .A(UserCLK),
    .X(UserCLKo)
);

my_buf inst_rst_buf (
    .A(rst),
    .X(rsto)
);


 //configuration storage latches
combined_WDDL_ConfigMem
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Emulate_Bitstream)
    )
`endif
    Inst_combined_WDDL_ConfigMem
    (
    .FrameData(FrameData),
    .FrameStrobe(FrameStrobe),
    .ConfigBits(ConfigBits),
    .ConfigBits_N(ConfigBits_N)
);

 //BEL component instantiations
combined_WDDL_primitive Inst_combined_WDDL_primitive (
    .A0_t(A0_t),
    .B0_t(B0_t),
    .A0_f(A0_f),
    .B0_f(B0_f),
    .Z0_t(Z0_t),
    .Z0_f(Z0_f),
    .F_ctrl(F_ctrl),
    .UserCLK(UserCLK),
    .rst(rst),
    .ConfigBits(ConfigBits[5-1:0])
);

combined_WDDL_switch_matrix Inst_combined_WDDL_switch_matrix (
    .from_EA_1s0(from_EA_1s[0]),
    .from_EB_1s0(from_EB_1s[0]),
    .from_EC_1s0(from_EC_1s[0]),
    .from_ED_1s0(from_ED_1s[0]),
    .from_EF_1s0(from_EF_1s[0]),
    .from_EG_1s0(from_EG_1s[0]),
    .from_EH_1s0(from_EH_1s[0]),
    .from_EI_1s0(from_EI_1s[0]),
    .from_WA_1s0(from_WA_1s[0]),
    .from_WB_1s0(from_WB_1s[0]),
    .from_WC_1s0(from_WC_1s[0]),
    .from_WD_1s0(from_WD_1s[0]),
    .from_WF_1s0(from_WF_1s[0]),
    .from_WG_1s0(from_WG_1s[0]),
    .from_WH_1s0(from_WH_1s[0]),
    .from_WI_1s0(from_WI_1s[0]),
    .from_NA_1s0(from_NA_1s[0]),
    .from_NB_1s0(from_NB_1s[0]),
    .from_NC_1s0(from_NC_1s[0]),
    .from_ND_1s0(from_ND_1s[0]),
    .from_NF_1s0(from_NF_1s[0]),
    .from_NG_1s0(from_NG_1s[0]),
    .from_NH_1s0(from_NH_1s[0]),
    .from_NI_1s0(from_NI_1s[0]),
    .from_SA_1s0(from_SA_1s[0]),
    .from_SB_1s0(from_SB_1s[0]),
    .from_SC_1s0(from_SC_1s[0]),
    .from_SD_1s0(from_SD_1s[0]),
    .from_SF_1s0(from_SF_1s[0]),
    .from_SG_1s0(from_SG_1s[0]),
    .from_SH_1s0(from_SH_1s[0]),
    .from_SI_1s0(from_SI_1s[0]),
    .Z0_t(Z0_t),
    .Z0_f(Z0_f),
    .from_J_IA1_1s0(to_J_IA1_1s[0]),
    .from_J_IA2_1s0(to_J_IA2_1s[0]),
    .from_J_IB1_1s0(to_J_IB1_1s[0]),
    .from_J_IB2_1s0(to_J_IB2_1s[0]),
    .to_EA_1s0(to_EA_1s[0]),
    .to_EB_1s0(to_EB_1s[0]),
    .to_EC_1s0(to_EC_1s[0]),
    .to_ED_1s0(to_ED_1s[0]),
    .to_EF_1s0(to_EF_1s[0]),
    .to_EG_1s0(to_EG_1s[0]),
    .to_EH_1s0(to_EH_1s[0]),
    .to_EI_1s0(to_EI_1s[0]),
    .to_WA_1s0(to_WA_1s[0]),
    .to_WB_1s0(to_WB_1s[0]),
    .to_WC_1s0(to_WC_1s[0]),
    .to_WD_1s0(to_WD_1s[0]),
    .to_WF_1s0(to_WF_1s[0]),
    .to_WG_1s0(to_WG_1s[0]),
    .to_WH_1s0(to_WH_1s[0]),
    .to_WI_1s0(to_WI_1s[0]),
    .to_NA_1s0(to_NA_1s[0]),
    .to_NB_1s0(to_NB_1s[0]),
    .to_NC_1s0(to_NC_1s[0]),
    .to_ND_1s0(to_ND_1s[0]),
    .to_NF_1s0(to_NF_1s[0]),
    .to_NG_1s0(to_NG_1s[0]),
    .to_NH_1s0(to_NH_1s[0]),
    .to_NI_1s0(to_NI_1s[0]),
    .to_SA_1s0(to_SA_1s[0]),
    .to_SB_1s0(to_SB_1s[0]),
    .to_SC_1s0(to_SC_1s[0]),
    .to_SD_1s0(to_SD_1s[0]),
    .to_SF_1s0(to_SF_1s[0]),
    .to_SG_1s0(to_SG_1s[0]),
    .to_SH_1s0(to_SH_1s[0]),
    .to_SI_1s0(to_SI_1s[0]),
    .A0_t(A0_t),
    .B0_t(B0_t),
    .A0_f(A0_f),
    .B0_f(B0_f),
    .to_J_IA1_1s0(to_J_IA1_1s[0]),
    .to_J_IA2_1s0(to_J_IA2_1s[0]),
    .to_J_IB1_1s0(to_J_IB1_1s[0]),
    .to_J_IB2_1s0(to_J_IB2_1s[0]),
    .ConfigBits(ConfigBits[89-1:5]),
    .ConfigBits_N(ConfigBits_N[89-1:5])
);

endmodule