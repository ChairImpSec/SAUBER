#!/usr/bin/env bash
set -ex
#DESIGN=AGEMA_design_2_fatwire2
DESIGN=AGEMA_design_2
BITSTREAM=/home/sergej/FABulous/FABulousFPGA/FABulous/23x7_SAUBER/AGEMA_Tests/test_design/tmp/AGEMA_design_2_fatwire_1bit.bin
VERILOG=../../fabric_generator/verilog_output
MAX_BITBYTES=21140

rm -rf tmp
mkdir tmp
for i in $(find ../Tile -type f -name "*.v") $(find ../Fabric -type f -name "*.v")
do 
    cp $i tmp/
done

iverilog -s fab_tb -o fab_tb.vvp tmp/* fabulous_tb2.v 
python3 makehex.py $BITSTREAM $MAX_BITBYTES bitstream.hex
vvp fab_tb.vvp -fst