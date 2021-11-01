#!/bin/bash
rm IDs.dat
for filename in data/*.json; do
	( echo $(basename --  ${filename%%.*}) | tr -d '\n' ; echo ";" | tr -d '\n' ; python print_kpthesaurus.py $filename ) >> IDs.dat
done

Rscript analyse_and_visualize.r IDs.dat
