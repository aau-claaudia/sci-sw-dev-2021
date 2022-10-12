#!/bin/bash
touch ID_data.txt 	# create file for storing ID's
> ID_data.txt 		# clear the file for any content

#python print_kpthesaurus.py data/001-100865.json >> ID_data.txt
output=$((python print_kpthesaurus.py data/001-100865.json) 2>&1)
filename="001-100865;"
echo "$filename$output" >> ID_data.txt
echo "$filename$output" >> ID_data.txt

Rscript analyse_and_visualize.r ID_data.txt
