#!/bin/bash
# CMPS101-u18-Grading-Scripts
# usage: pa2.sh
# (run within your pa2 directory to test your code)

SRCDIR=https://raw.githubusercontent.com/sravyapulavarthi/CMPS101-u18-Grading-Scripts/master/pa2

EXE_ALL=( pa2-func-check.sh pa2-unit-check.sh pa2-make-check.sh )
EXE_RANGE=$((${#EXE_ALL[*]} - 1))
echo $EXE_RANGE
for i in $(seq 0 $EXE_RANGE); do
  curl $SRCDIR/${EXE_ALL[i]} > ${EXE_ALL[i]}
  chmod +x ${EXE_ALL[i]}
  ./${EXE_ALL[i]}
  rm -f ${EXE_ALL[i]}
done
