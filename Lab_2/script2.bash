#!/bin/bash
read -n 1 -p "Ты уверен, что хочешь запустить это дерьмо? (Y/[a]): " AMSURE
[ "$AMSURE" = "y" ] || exit
echo "" 1>&2

inf="\\(II\\)"
war="\\(WW\\)"
grep -E -h -s $war /var/log/Xorg.0.log | sed -E "s/$war/Warning: /" > full.log
grep -E -h -s $inf /var/log/Xorg.0.log | sed -E "s/$inf/Information: /" >> full.log
