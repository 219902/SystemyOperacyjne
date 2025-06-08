#!/bin/bash
# 
#
clear 
#
lp =(ls -l /etc | grep ^- | wc -l ) 
#
echo $lp
#
lk= (ls -l /etc | grep ^d | wc -l) 
#
echo lk
#
lpk=($lp + $lk)
#
echo $lpk
#
lpp=(ls -l /etc | grep ^- | grep ^-rw-r--r-- | wc -l) 
#
echo lpp

