#!/bin/bash
ps -Ao pid,stime | tail -n +2 | sort -r -k2 | head -9 | sort -k2 | head -1 | awk '{print $1}'
