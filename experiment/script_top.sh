#!/bin/bash

process=$1

pid=`ps -ef | grep -e "-name $process" | grep -v grep | awk '{print $2}'`

top -b -d 3 -n 33 -p $pid | grep qemu
