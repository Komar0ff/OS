#!/bin/bash
status=""
for pid in $(ps -A -o pid | tail -n +2) 
do
file="/proc/"$pid"/status"
file1="/proc/"$pid"/sched"
ppid=$(grep -E -h -s -i "ppid:\s(.+)" $file | grep -o "[0-9]\+")
sleepavg=$(grep -E -h -s -i "avg_atom(.+)" $file1 | grep -o "[0-9.]\+")
if [[ -z $sleepavg ]]
then sleepavg=0
fi
if [[ $ppid != "" ]]
then status=$status"ProcessID="$pid" : Parent_ProcessID="$ppid" : Average_Sleeping_Time="$sleepavg$'\n'
fi
done
echo "$status" | sort -t " " -k2 > ans5.tmp
