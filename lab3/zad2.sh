#!/bin/bash

# kopiowanie
cp ~/bash/lab3/D/E/link_plik10 ~/bash/lab3/A/plik                    # jako pliczek
cp -l ~/bash/lab3/D/E/link_plik10 ~/bash/lab3/A/link                 # jako hard link

# wyswietlenie linkow do plik10 jako kanoniczne
for i in `tree -if`; do
  if [ -L $i ] && [[ `readlink -f $i` = `realpath ~/bash/lab3/A/B/plik10` ]];        # f odpowiada za kanoniczne
  then
    echo "Znaleziono link: $i"
    echo "Wskazuje na: `readlink -f $i`"
  fi
done
