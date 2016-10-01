#!/bin/bash
read -n 1 -p "Ты уверен, что хочешь запустить это дерьмо? (Y/[a]): " AMSURE
[ "$AMSURE" = "y" ] || exit
echo "" 1>&2


grep -E -r -h "^ACPI.*" /var/log/ > errors.log
grep -E -r -h "^.*[[:alnum:]]\.[[:alpha:]]" #Укажи путь где создавать errors.log

