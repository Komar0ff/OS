#!/bin/bash
read -n 1 -p "Ты уверен, что хочешь запустить это дерьмо (y/[a]): " AMSURE 
[ "$AMSURE" = "y" ] || exit
echo "" 1>&2

a=5
b=2
if  [[ "$a" = "$b" ]]
then echo "a = b"
else echo "a <> b"
fi
