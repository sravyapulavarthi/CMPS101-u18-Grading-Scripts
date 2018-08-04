#!/bin/bash
# CMPS101-u18-Grading-Scripts
# usage: pa5.sh
# (run within your pa5 directory to test your code)

SRCDIR=https://raw.githubusercontent.com/sravyapulavarthi/CMPS101-u18-Grading-Scripts/master/pa5

EXE_ALL=( pa5-func-check.sh pa5-lunit-check.sh pa5-gunit-check.sh pa5-make-check.sh )
EXE_RANGE=$((${#EXE_ALL[*]} - 1))
echo $EXE_RANGE
for i in $(seq 0 $EXE_RANGE); do
  curl $SRCDIR/${EXE_ALL[i]} > ${EXE_ALL[i]}
  chmod +x ${EXE_ALL[i]}
  ./${EXE_ALL[i]}
  rm -f ${EXE_ALL[i]}
done
