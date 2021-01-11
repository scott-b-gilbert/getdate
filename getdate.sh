#!/bin/bash

# This script will convert a hexadecimal value representing 
# the unix epoch time to a human-readable format

# remove leading 0x if it's there
value=$(echo $1 | cut -d'x' -f 2)
# bc requires uppercase
value=$(echo ${value^^})
# convert via bc
decValue=`echo "obase=10; ibase=16; $value" | bc`
# output
date -d `echo @$decValue`
