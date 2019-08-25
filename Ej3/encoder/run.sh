#!/bin/bash

iverilog encoder_tb.v
vvp a.out
rm a.out