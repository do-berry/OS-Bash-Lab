#!/bin/bash

#a
ps aux | awk \
'{
  print "User " $1 " - proces " $11 " (CPU = " $3 ", MEM = " $4 ")";
}'

#b
ps aux | awk \
'{
  n = split($11, array, "/");
  print "User " $1 " - proces " array[n] " (CPU = " $3 ", MEM = " $4 ")"
}'

#c
ps aux | awk \
'{
  cpu += $3;
  mem += $4;
}
END \
{
  print "CPU = " cpu ", MEM = " mem
}
'

#d
ps aux | awk \
'{
  mem[$1] += $4
  cpu[$1] += $3
}
END \
{
    for (var in mem) {
      print "User " var ": CPU = " cpu[var] ", MEM = " mem[var];
    }
}'

echo "e)"
ps aux | awk \
'{
  mem[$1] += $4;
  cpu[$1] += $3;
}
END \
{
  maxmem = 0;
  maxcpu = 0;
  maxmemuser;
  maxcpuuser;
  for (var in mem) {
    if (mem[var] > maxmem) {
      maxmem = mem[var]
      maxmemuser = var
    }
  }
  for (var in cpu) {
    if (cpu[var] > maxcpu) {
      maxcpu = cpu[var]
      maxcpuuser = var
    }
  }
  print "CPU: " maxcpuuser ", MEM: " maxmemuser
}'
