# TU COS NIE DZIAŁA

#!/bin/bash

read mydir # wybrany folder
read extension # wybrane rozszerzenie

# tworzenie pliczku do ktorego wpisujemy zawartosc pozostalych pliczkow
echo >"${mydir}/all.${extension}"

# petla dla wszystkich pliczkow o wybranym rozszerzeniu
for name in ${mydir}/*.${extension}; do
	# wpisz zawartosc pliczku do all
	echo ""${name}":" >> "${mydir}"/all."${extension}"
	cat "$name" >> all."${extension}"
done

echo "All done!"