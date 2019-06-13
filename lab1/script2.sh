#!/bin/bash

# docelowy katalog do tworzenia nowych plikow
read mydir
# nazwa pliku z lista nowych plikow
read myfile

# petla odczytujaca nazwy
# dopoki sie pliczek nie skonczy
while read line; do
	# jesli podpliczek nie istnieje
	if [ ! -f "${mydir}/$line" ]; then	 
		# tworzymy nowy podpliczek w zadanym folderze
		echo >${mydir}/$line
	# w przeciwnym razie
	else
		# usuwamy utworzony podpliczek
		rm "${mydir}/$line"
	fi
	# inkrementacja
	n=$((n+1))
done < $myfile

echo "All done!"