#!/bin/bash
a=$1
b=$2
c=$3
if [[ "$b" -gt "$a" ]]
then a=$b
fi
if [[ "c" -gt "$a" ]]
then a=$c
fi
echo "$a"
