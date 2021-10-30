#!/bin/bash
touch ./python_out.txt
for filename in ./data/*; do
 file=${filename##*/}
 output_python=$(python print_kpthesaurus.py data/$file 2>&1)
 echo $output_python >> python_out.txt
 done