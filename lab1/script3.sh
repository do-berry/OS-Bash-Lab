#!/bin/bash

# docelowy katalog gdzie beda kasowane pliczki
read mydir

# petla for dla wszystkich plikow w folderze
for name in ${mydir}/*; do
	# jesli plik nie jest executable
	if [[ -x ${name} ]]; then
		rm "$name"
	fi
done

echo "All done!"