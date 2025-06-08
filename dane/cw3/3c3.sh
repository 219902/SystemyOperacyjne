#!/bin/bash
clear
infoSkrypt=$(echo "Wyniki dziłania skryptu 3c3.sh")
linieOddz=$(echo "-----------------------------------------")

while  [ 1 ]
 do
ul=$(logname)
echo $linieOddz
  echo "Opcje wyboru"
echo $linieOddz
  echo "1 Nazwa komputera" 
  echo "2 Katalog roboczy"
  echo "3 Numer procesu powłoki bash"
  echo "0 Zakończy działanie skryptu" 
echo $linieOddz
read -p "Wbierz opcję:" op 
case op in

  "1")clear 
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:1"
      echo "Nazwa komputera:" `hostname`;;
  "2")clear 
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:2"
      echo "Katalog roboczy:" `pwd`;;
  "3")clear 
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:3"
      echo "Numer procesu powłoki:" $$;;
  "0") clear 
      echo "Wybrano opcję:0 Wyjście"
	break ;;
  *) clear 
      echo "Ta opcjae nie występuje" ;;
esac 







