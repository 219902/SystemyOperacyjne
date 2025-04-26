#!/bin/bash

l=`who | tr -s ' ' | cut -d ' ' -f1 | sort | uniq | wc -l`
echo "Logged users count: $l"

echo "PID (\$):" $$
echo "EUID: " $EUID
echo "PWD: " $PWD
