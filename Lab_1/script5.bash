#!/bin/bash
echo "Vyberite deystvie:"
echo "1 = nano"
echo "2 = vi"
echo "3 = links"
echo "4 = exit"
read a
case $a in
1 )
/usr/bin/nano
;;
2 )
echo "zashli v 2"
/usr/bin/vim
;;
3 )
/usr/bin/links
;;
4 )
echo "Goodbye"
exit 0
;;
esac
