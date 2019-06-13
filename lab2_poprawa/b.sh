#!/bin/bash

# kopia linku p10 do A
cp -l ./A/B/C/link_p10_bez ./A

# usunac pliczek na ktory wskazuje p1
rm $(readlink -f A/B/C/link_p1)