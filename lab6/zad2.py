#!/usr/bin/python3

import sys
import glob
import os

# zad 1
dir = sys.argv[1]

for file in glob.glob(dir + "/*.old"):
    os.remove(file)

allFiles = glob.glob(dir + "/*")

for file in allFiles:
    if (os.stat(file)):
        os.rename(file, file + ".old")
