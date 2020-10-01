#!/bin/bash 
# Author Celine Petersen 
# Version 1.0 
# Date 09-24-2020

# Extract ids from every file in the directory data/
for file in data/*.json; \
	do python3 print_kpthesaurus.py $file; \
done > id_from_python.txt

# Get filenames from every file in the directory data/. 
# The first part of the pipeline lists the filenames of each file in data/.
# The second part of the pipeline removes the.jason extension of the filenames
ls data/ | sed 's/.json$//' > filename.txt  

# Combine the two txt files
pr -mtJS';' filename.txt id_from_python.txt > data_analyse.dat

# Run the data analysis 
Rscript analyse_and_visualize.r data_analyse.dat
