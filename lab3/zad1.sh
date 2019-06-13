#!/bin/bash

# tworzenie folderow
mkdir lab3
mkdir lab3/A
mkdir lab3/A/B
mkdir lab3/A/B/C
mkdir lab3/D
mkdir lab3/D/E

# tworzenie pliczkow
touch lab3/A/plik1
echo "test1" > lab3/A/plik1
for i in {10..20}; do
  touch lab3/A/B/plik$i
  echo "test$i" > lab3/A/B/plik$i
done
touch lab3/D/plik30
echo "plik30" > lab3/D/plik30
touch lab3/D/E/plik40
echo "plik40" > lab3/D/E/plik40

# tworzenie linkow bezwzglednych
ln -s ~/bash/lab3/A/B/plik10 ~/bash/lab3/D/E/link_plik10_bez
ln -s ~/bash/lab3/A/B/C ~/bash/lab3/D/E/link_ABC_bez

# tworzenie linkow wzglednych
ln -s ../../A/plik1 ~/bash/lab3/D/E/link_plik1
ln -s ../../A/B/plik10 ~/bash/lab3/D/E/link_plik10
for i in {10..20}; do
  ln -s ../plik$i ~/bash/lab3/A/B/C/link_plik$i
done
