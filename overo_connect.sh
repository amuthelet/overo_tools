#!/usr/bin/kermit +
kermit -l /dev/ttyUSB1 
set speed 115200
set reliable
fast
set carrier-watch off
set flow-control none 
set prefixing all
set file type bin
set rec pack 4096
set send pack 4096
set window 5
connect

