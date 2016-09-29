#!/bin/bash

read -n 1 -p "Ты уверен, что хочешь запустить это дерьмо? (y/[a]): " AMSURE 
[ "$AMSURE" = "y" ] || exit
echo "" 1>&2

a=""
read b
a="$a$b"
while [[ "$b" != "q" ]]
do 
read b
a="$a$b"
if [[ "$b" == "q" ]]
then break
fi
done
echo "$a"
