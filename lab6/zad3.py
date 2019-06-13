#!/usr/bin/python3

import os
import sys
import glob
#zad 8

dir = sys.argv[1]
counter = 0

for root,dirs,files in os.walk(dir):
    if counter > 2:
        break
    print(root)
    if dir:
        counter += 1
