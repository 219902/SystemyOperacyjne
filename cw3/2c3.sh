#!/bin/bash
# 
#
clear 
#
lp=$(ls -l /etc | grep ^- | wc -l)
#
echo "Files in /etc:" $lp
#
lk=$(ls -l /etc | grep ^d | wc -l)
#
echo "Directories in /etc:" $lk
#
lpk=$(($lp + $lk))
#
echo "Objects in /etc:" $lpk
#
lpp=$(ls -l /etc | grep ^- | grep ^-rw-r--r-- | wc -l)
#
echo "Files with write only for owner in /etc:" $lpp

