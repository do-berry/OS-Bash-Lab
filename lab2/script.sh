#!/bin/bash

# dla kazdego pliczku tworzenie lacza symbolicznego
# chyba, ze jest, to nie

echo "$(pwd)"                                         # tak dla pewnosci zeby wiedziec
                                                      # skad wgl zaczynam

for nazwa in $1*; do                                  # dla kazdego pliczku w folderze
  if [[ -L "$nazwa" ]]; then                          # sprawdza czy jest laczem symbolicznym
      echo "Symlink dla $nazwa juz istnieje"
  else                                                # jesli nie
    ln -s $nazwa $2/"$2.txt"                          # tworzy lacze symboliczne
  fi
done
