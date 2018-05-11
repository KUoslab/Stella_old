#!/bin/bash

name=$1

for i in `seq 0 31`
do
	sleep 3s
	cat /proc/gos_vm_info >> $1_sla.txt
done
