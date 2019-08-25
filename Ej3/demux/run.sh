#!/bin/bash

iverilog demux_tb.v
vvp a.out
rm a.out