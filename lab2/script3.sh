#!/bin/bash

# wyswietlic wszystkie linki do pliczku
# test10 jako kanoniczne

for var in `tree -if`
do
    #echo $var
    #realpath $var
    if [ -L $var ] && [[ `readlink -f $var` = `realpath ../basze/A/B/test10` ]]
    then
        echo "Znaleziono link : $var"
        echo "Wskazuje na: `readlink -f $var`"
    fi
done
