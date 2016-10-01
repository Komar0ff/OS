#!/bin/bash
read -n 1 -p "Ты уверен, что хочешь запустить это дерьмо? (Y/[a]): " AMSURE
[ "$AMSURE" = "y" ] || exit
echo "" 1>&2

man bash | grep -o -i "[a-zA-Z]\{4,\}" | tr "[:upper:]" "[:lower:]" | sort | uniq -c | sort -r -n | head -3
