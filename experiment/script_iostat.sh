#!/bin/bash

device=$1

iostat -cd -k -t -h /dev/$device -x 3 33
