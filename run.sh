#!/usr/bin/env bash

for i in data/*; do
  out=$(python3 print_kpthesaurus.py "$i")
  b=$(basename "$i")
  out="${b::-5};${out}" #>> datafile.dat
  echo "$out" >> datafile.dat
done

Rscript analyse_and_visualize.r datafile.dat
