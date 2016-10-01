#!/bin/bash
restFile=/home/user/panyavin/lab5/$1
for i in $(grep -h $1 $HOME/trash.log)
do
glPath=$(echo $i | awk -F ":" '{print $1}')
trFile=$(echo $i | awk -F ":" '{print $2}') 


if [[ $restFile == $glPath ]]
then



rmFile=$HOME/.trash/$trFile

if [ $# -ne 1 ]; then
	echo "usage: `basename $0` file" 1>&2
	exit 1
fi

if [ -e $rmFile ];
then
echo "Do you want to restore file - $glPath ?"
read answer
if [[ $answer == "yes" ]]
then
	if [ -d $(dirname $glPath) ]
	then
		if [[ -e $glPath ]]
		then
			echo "Dublicate! Remove your file"
			read newName
			ln "$rmFile" "$(dirname $glPath)/$newName"
		else
			ln $rmFile $glPath
		fi
	else
		echo "$(dirname $glPath) has been removed!"
		ln $rmFile $HOME/$1
	fi
	rm $rmFile
	#cat $HOME/trash.log | sed -i "/$trFile/d" $HOME/trash.log
	grep -v $trFile $HOME/trash.log > $HOME/trash0.log
	mv $HOME/trash0.log $HOME/trash.log
fi
fi
fi
done
