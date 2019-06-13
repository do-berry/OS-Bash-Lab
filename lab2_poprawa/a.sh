mkdir A/D
mkdir A/B/C
mkdir A/D/E

# tworzenie pliczkow
for i in {1..10}; do
  touch ./A/B/plik$i
  echo "test$i" > ./A/B/plik$i
done

# linki do pliczkow p1-5 wzgl
for i in {1..5}; do
  ln -s ../plik$i ./A/B/C/link_p$i
done

# p6-10 bezwzgl
for i in {6..10}; do
  ln -s `realpath ./A/B/plik$i` ./A/B/C/link_p"$i"_bez
done

# linki do linku
ln -s `realpath ./A/B/C/link_p10_bez` ./A/D/E/link_link_p10_bez
ln -s ../../B/C/link_p1 ./A/D/E/link_link_p1
"~/bash/zad1.sh" 28L, 502C                                    28,1          Bot
