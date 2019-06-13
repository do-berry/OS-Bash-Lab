#!/bin/bash

# 0. utworzyc link do ~/A/B/test10 i wrzucić do ~/D/E
# 1. do ~/A kopia ~/D/E/link_plik10
# 1.1 jako link
# 1.2 jako plik

# 0.
if [[ ! -e ../basze/D/E/link_test10 ]]; then                                    # jesli link do pliczku nie istnieje
  ln -s ../basze/A/B/test10 ../basze/D/E/link_test10                            # tworzymy link : sciezka wzgledna
  ln -s `realpath ../basze/A/B/test10` ../basze/D/E/link_test10_bez             # tworzymy link : sciezka bezwzgledna
fi

# 1.
if [[ ! -e ../basze/A/link_test10 ]]; then
  cp -L ~/basze/D/E/link_test10_bez ~/basze/A                                   # kopiuje jako pliczek : 1.1
  cp -d ~/basze/D/E/link_test10 ~/basze/A                                       # kopiuje symlink jako dowiazanie symboliczne : 1.2
fi
