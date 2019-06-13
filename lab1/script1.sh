#!/bin/bash

# docelowy katalog gdzie zmieniamy nazwy plikow
read mydir

# petla for dla wszystkich plikow w folderze z .old
for name in ${mydir}/*; do
	# jesli plik jest .old to usun
	if [ ${name: -4} == ".old" ]; then
		rm "$name"
	fi
done

# petla for dla wszystkich plikow w folderze bez .old
for name in  ${mydir}/*; do
	# jesli jest ustawione prawo zapisu
	if [[ -r ${name} ]]; then
		# dopisujemy czlon .old
 		mv "$name" "$name.old"		
	fi
done

echo "All done!"