#!/bin/bash
mail="[a-zA-Z0-9_.]+@[a-zA-Z0-9_]+(\\.[a-zA-Z]+)+"
grep -E -h -s -o -w $mail /etc/* | awk '{printf("%s, ",$1)}' | sed -E "s/$mail,\s$//g" > emails.lst
