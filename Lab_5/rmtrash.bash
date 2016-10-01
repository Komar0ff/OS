#!/bin/bash

scriptName=$1
homeTrash=$HOME/.trash
homeLog=$HOME/trash.log

if [ $# -ne 1 ]; then
	exit 1
fi

if [ -d $homeTrash ]; then :
else
	mkdir $homeTrash
fi
currentTrashFile=$(date +%s)
ln $scriptName "$homeTrash/$currentTrashFile"
rm $scriptName
if [ -e $homeLog ];
then :
else
	touch $homeLog
fi
echo "$PWD/$scriptName:$currentTrashFile" >> $homeLog
