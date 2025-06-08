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
  echo "4 Liczba wątków w systemie"
  echo "5 Liczba wątków procesu, który posiada największą liczbę wątków"
  echo "6 Nazwa procesu, który posiada największą liczbę wątków"
 echo "0 Zakończy dzialanie skryptu" 
echo $linieOddz
read -p "Wbierz opcję:" op 
case op in

  "1")clear 
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:1"
      echo "Liczba procesow w sytemie:" `ps -el | wc -le`;;
      ps -el | wc -l -1
  "2")clear 
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:2"
      echo "Nazwy procesow o najwyzszym PRI" `ps -el | head -2`;;
  "3")clear 
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:3";;
  "4")clear
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:4"
      ps -eLf | wc -1;;
  "5")clear
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:5"
      ps -eLf | tr -s ' ' | cut -d ' ' -f6,13 | sort -n | tail -1 | cut -d ' ' -f1;;
  "6")clear
      echo $infoSkrypt
      echo $linieOddz
      echo "Wybrano opcję:6"
      ps -eLf | tr -s ' ' | cut -d ' ' -f6,13 | sort -n | tail -1 | cut -d ' ' -f2;;
  "0") clear 
      echo "Wybrano opcję:0 Wyjście"
	break ;;
  *) clear 
      echo "Ta opcjA nie występuje" ;;
esac 
done







