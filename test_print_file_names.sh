#!/bin/bash
touch ./python_out.txt
for filename in ./data/*; do
 #output=echo "${filename##*/}"
 file=${filename##*/}
 echo $file >> python_out.txt
 done