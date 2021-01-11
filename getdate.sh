#!/bin/bash

# This script will convert a hexadecimal value representing 
# the unix epoch time to a human-readable format

value=$(echo $1 | cut -d'x' -f 2)
value=$(echo ${value^^})
decValue=`echo "obase=10; ibase=16; $value" | bc`
date -d `echo @$decValue`
