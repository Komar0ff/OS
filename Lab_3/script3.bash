#!/bin/bash
for i in $(ls /proc/ | grep "[0-9]\+") 
do 
echo $i | readlink /proc/$i/exe | grep "/sbin" | echo $i >> ans3.tmp 
done
