#!/bin/bash

read mydir
counter=0 # count files with execute extension

for name in ${mydir}/*; do
	if [[ -x ${name} ]]; then
		let "counter++"
	fi
done

echo ${counter}
echo "All done!"