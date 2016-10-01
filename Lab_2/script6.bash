#!/bin/bash
read -n 1 -p "Ты уверен, что хочешь запустить это дерьмо? (Y/[a]): " AMSURE
[ "$AMSURE" = "y" ] || exit
echo "" 1>&2


cat /var/log/*.log | wc -l
