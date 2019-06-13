#!/usr/bin/python3

import sys
import os

# zad: 2
dir = sys.argv[1]
file = sys.argv[2]
files = []

with open("plik.txt", "r") as fd:
    for line in fd:
        line = line.replace('\n','')
        files.append(line)

for file in files:
    exists = os.path.isfile(dir + "/" + file)
    if exists:
        os.remove(dir + "/" + file)
    else:
        fd = open(dir + "/" + file, "w")
        fd.close()
