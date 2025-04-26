#!/bin/bash

clear
info="Wynik dzialania skryptu"
breakline="-------------------------------------"

while [ 1 ]; do
	ul=$(logname)
	echo "Opcje wyboru"
	echo "-------------------------------------"
	echo "1 Nazwa komputera"
	echo "2 Katalog roboczy"
	read -p "Wybierz opcje:" op
	case $op in
		"1")
			clear
			echo $info
			echo $breakline
			echo "Nazwa komputera" $(hostname) ;;
		"2")
			clear
			echo $info
			echo $breakline
			echo "Katalog roboczy" $(pwd) ;;
		"3")
			clear
			echo $info
			echo $breakline
			echo "PID" $$ ;;
		*)
			clear
			echo "Zla opcja, koniec" 
			break ;;				
	esac
done

