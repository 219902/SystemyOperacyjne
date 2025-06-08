#!/bin/bash
clear
infoSkrypt=$(echo "Wyniki dziłania skryptu 1c4.sh")
linieOddz=$(echo "-----------------------------------------")

while  [ 1 ]
 do
ul=$(logname)
echo $linieOddz
  echo "Opcje wyboru"
echo $linieOddz
  echo "1 Liczba procesow w systemie" 
  echo "2 Nazawy procesow o najwyszym PRI"
  echo "3 Najwieksza liczna procesow o tym samym PRI"
  echo "0 Zakończy dzialanie skryptu" 
echo $linieOddz
read -p "Wbierz opcję:" op 
case $op in

  "1")clear 
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:1"
      echo "Liczba procesow w sytemie:" `ps -el --no-headers | wc -l`;;
  "2")clear 
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:2"
      echo "Nazwy procesow o najwyzszym PRI:" `ps -eo pri,pid,comm|tail -n +2| sort -hr |head -2`
;;
  "3")clear 
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:3:" `ps -el | tail -n +2|tr -s ' ' |cut -d ' ' -f 7|sort|uniq -c |sort -nr|head -1`
	;;
  "0") clear 
      echo "Wybrano opcję:0 Wyjście"
	break ;;
  *) clear 
      echo "Ta opcjA nie występuje" ;;
esac 
done






