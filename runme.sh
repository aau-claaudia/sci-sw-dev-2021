#!/bin/bash

touch ID_data.txt 	# create file for storing ID's
> ID_data.txt 		# clear the file for any content

for path in data/*.json
do
	output=$((python print_kpthesaurus.py "$path") 2>&1)
	filename="${path##*/}"; filename="${filename%.*}"
	echo "$filename$output" >> ID_data.txt
#	echo "$filename;$output"
done

Rscript analyse_and_visualize.r ID_data.txt
