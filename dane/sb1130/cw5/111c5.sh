!#/bin/bash
clear

echo "Wykoanie skryptu 091c5.sh"

a=$(free -h  | tr -s ' '  | cut -d ' ' -f3)

echo "a) Rozmiar używanej pamięci fizycznej" $a
b=$( du -k $(which bash))

echo "b) Rozmiar pliku wykonywalnego bash w kB" $b
c=$(pmap  $$ | tail -1 | tr -s ' '| cut -d ' ' -f3)

echo "c) Rozmiar procesu bash użytkownika w pamięci w kB" $c
d=$(pmap -d $$ | tail -1 | tr -s ' '| cut -d ' ' -f6)

echo "d) Rozmiar pamięci dzielonej przez proces bash użytkownika" $d
e=$(pmap -d $$ | grep stack |  tr -s ' '| cut -d ' ' -f2)

echo "e) Rozmiar pamięci używanej przez stos procesu bash użytkownika" $e

echo "f) Stosunek rozmiaru pamięci procesu bash do rozmiaru pliku wykonywalnego bash" $f
g=$(lsblk -l | grep part | tr -s ' ' | cut -d ' ' -f1) 

echo "g) Nazwy i liczbę partycji na dysku" $g
h=$( cat /sys/block/sda/queue/scheduler )
echo "h) Używany w systemie algorytm szeregowania dyskowych operacji" $h
i=$(vmstat -d | grep sda | tr -s  ' ' | cut -d ' ' -f2)
echo "i) Liczbę odczytów z dysk"
j=$(vmstat -d | grep sda | tr -s  ' ' | cut -d ' ' -f6)

echo "j) Liczbę zapisów na dysk"

