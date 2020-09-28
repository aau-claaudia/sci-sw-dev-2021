#!/bin/bash

#Make a list case numbers for every file in data
ls data | sed -e 's/\.json$//' > case_number.txt

#Loop
for i in data/*.json; do python3 print_kpthesaurus.py $i; done > id_list.txt

#Merge list to associate case numbers and ids
paste -d ";" case_number.txt id_list.txt > analysis.dat

#Run Rscript to visualize distribution
Rscript analyse_and_visualize.r analysis.dat
