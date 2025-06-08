#!/bin/bash
clear
rm log-users
infoSkrypt=$(echo "Wyniki dziłania skryptu 4c3.sh")
linieOddz=$(echo "------------------------------------------------------------------------")
echo $linieOddz
echo $infoSkrypt
echo $linieOddz
#Polecenie who biezacy  uniq
lz=$(who | cut -d ' ' -f 1 | sort | uniq | wc -l)
echo "Liczba zalogowaych użytkowników:" $lz
echo "Lista zalogowaych użytkowników:"
who | cut -d ' ' -f 1 | sort | uniq | nl 
uzal= $(who | cut -d ' ' -f 1 | sort| uniq )
echo $linieOddz
if (( $lz == 1 ))
then
  uz=$(who | cut -d ' ' -f 1 |  sort | uniq)  
  echo "Godzian logowania użytkownika $uz:"  $(who | tr -s ' ' | cut -f 4  -d ' ' | sort -r | head -n 1) 
  echo "Data i godzina ostatniego logowania użytkownika $uz:"  $(last $uz | tr -s ' '  | cut -f 5-7  -d ' '  | head -n 1) 
  echo "Numer ip komputera ostatniego logowania użytkownika $uz:"  $(last $uz | tr -s ' ' | cut -f 3  -d ' '  | head -n 1) 
echo $linieOddz
else
  echo "Listę zalogowanych użytkowników zapisno do pliku: log-users" 
for $i  in  $uzal 
do
  echo $linieOddz >> log-users;
  echo "Dane dla użyktownika: $i" >> log-users
  echo "Data i godzina ostatniego logowania użytkownika $i :" `last $i | tr -s ' '  | cut -f 5-7  -d ' '  | head -n 1` >> log-users 
  echo "Numer ip komputera ostatniego logowania użytkownika $i :" `last $i | tr -s ' ' | cut -f 3  -d ' '  | head -n 1`  >> log-users
done
echo $linieOddz >> log-users
echo "Zawatość pliku: log-users"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
cat log-users
fi
