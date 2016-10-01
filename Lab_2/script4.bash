#!/bin/bash
read -n 1 -p "Ты уверен, что хочешь запустить это дерьмо? (Y/[a]): " AMSURE
[ "$AMSURE" = "y" ] || exit
echo "" 1>&2


p="*.bash"
grep -E -o -h -s "^#!\s*/\S+$" $p | sed -E "s/^#!\s*(\/\S+)$/\1/" | awk '{w=tolower($1); a[w]++} END {for (k in a) {print k, a[k]}}' | sort -n -r -k 2 | sed 1q | tr -d "[0-9]$"
