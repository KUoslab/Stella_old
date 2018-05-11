#!/bin/bash

name=$1
dev=$2
p_name=$3

./script_iostat.sh $2 > $1_host_io.txt & ./script_top.sh $3 > $1_host_cpu.txt &
