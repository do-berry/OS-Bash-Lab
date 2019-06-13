# TO DO

#!/bin/bash

# katalog docelowy
read mydir
array=()

# petla po katalogach w pliku
for name in ${mydir}/*; do
	# sprawdzamy czy jest ustawione prawo do wykonywania: execute
	if [[ -x ${name} ]]; then
		# jesli tak, dodajemy do listy
		array+="$name"
	fi
done

# segregowanie elementow wg rozmiaru
# array=($(sort <<<"${array[*]}"))
[ -S sort by file size ]


echo "All done!"