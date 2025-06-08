#!/bin/bash
get_process(){
priorities=$(ps -eo pri | sort -hu | tail -n +2)
numerfin=0
namefin=0
for proces in $priorities
do
        numer1=$(ps -eo pri | grep $proces | wc -l)
        name1= $proces
        if (( $numer1 > $numerfin )); then
                        numefin=$name1
                        numerfin=$numer1
        fi
done
echo "Najwieksza liczba procesow o tym samym PRI:" + $numerfin
}

echo "Wynik dzialania"
get_process
