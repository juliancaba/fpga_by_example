#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/julian/workspace/devel/fpga_by_example/zedboard/DPR/src/IPs/zipFactory/src/hls/prj.hlsObj/solution/.autopilot/db/a.g.bc ${1+"$@"}