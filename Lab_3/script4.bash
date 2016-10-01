#!/bin/bash
ps -A -o pid | tail -n +2 | gawk '{file1="/proc/"$1"/statm"; getline f<file1; close (file1); split(f, a); print $1, ":", a[2]-a[3]}' | tr -d " " | sort -r -n -t ":" -k2 > ans4.tmp
