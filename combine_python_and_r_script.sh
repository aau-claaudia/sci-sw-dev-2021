#!/bin/bash 
# Author Celine Petersen 
# Version 1.0 
# Date 09-24-2020

for file in data/*.json; \
	do python3 print_kpthesaurus.py $file; \
done > id_from_python.txt

ls data/ | sed 's/.json$//' > filename.txt  

pr -mtJS';' filename.txt id_from_python.txt > data_analyse.dat

Rscript analyse_and_visualize.r data_analyse.dat
