#!/bin/bash
read -n 1 -p "Ты уверен, что хочешь запустить это дерьмо? (Y/[a]): " AMSURE
[ "$AMSURE" = "y" ] || exit
echo "" 1>&2


mail="[a-zA-Z0-9_.]+@[a-zA-Z0-9_]+(\\.[a-zA-Z]+)+"
grep -E -h -s -o -w $mail /etc/* | awk '{printf("%s, ",$1)}' | sed -E "s/$mail,\s$//g" > emails.lst
