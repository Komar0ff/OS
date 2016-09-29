#!/bin/bash
if [[ "$HOME" == "$PWD" ]]
then echo "$HOME"
exit 0
fi
if [[ "$HOME" != "$PWD" ]]
then echo "ERROR"
exit 1
fi
