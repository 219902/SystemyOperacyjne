#!/bin/bash
#czyszczenie ekranu
clear
echo "Wyniki wykonania skryptu c5z3.sh"
echo "-----------------------------------------------------------------------"
#wpisanie rozmiaru i nazwy najwiekszego pliku do zmiennej pmax
pmax=$(ls -l /etc | grep ^- | tr -s " " | cut -d " " -f5,9 | sort  -n | tail -1) 
#wyswietlenie rozmiaru i nazwy pliku
echo "Rozmiar i nazwa najwiekszego pliku w katalogu /etc:" $pmax
#wpisanie nazwy pliku do zmiennej
pnaz=$(echo $pmax | cut -d " " -f2) 
#wpisanie liczby znakow do zmiennej 
plz=$(wc -m `locate $pnaz` | cut -d " " -f1)
#wpisanie liczby bajtow do zmiennej 
plb=$(wc -c `locate $pnaz` | cut -d " " -f1)
#wyzncznie i wyswieltnie roznic miedzy liczba bajtow a znakow pliku  
echo "Roznica miedzy liczba bajtow i znakow pliku" $pnaz: $(($plb-$plz))
echo "-----------------------------------------------------------------------"
