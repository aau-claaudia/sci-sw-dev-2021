#!/bin/bash
touch ./python_out.txt
for filename in ./data/*; do
 file=${filename##*/}
 output_python=$(python print_kpthesaurus.py data/$file 2>&1)
 concat="${file%%.*};${output_python}"
 echo $concat >> python_out.txt
 done