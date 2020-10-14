# Tells us that we write the script in Bash language. 

#!/bin/bash


# A for loop is needed to collect all kpthesaurus values from each .json file in one merged file. 
# The Python script extract the kpthesaurus values and they are then saved in the "All_kpthesaurus.txt". 

for kpthesaurus in data/*
do python3 print_kpthesaurus.py $kpthesaurus
done > All_kpthesaurus.txt


# Collects all itemid's from the .json files and collect them in the "All_itemid.txt".

find data/*.json > All_itemid.txt


# We only need the ID numbers, so the first 5 characters (data/) are removed and make a tempfile with the result.

sed -r 's/.{5}//' All_itemid.txt > tmpfile


# Overwrite the old "All_itemid.txt" and removes the temfile.

mv tmpfile All_itemid.txt


# The last 5 characters (.json) are removed and a tempfile with the result are made.

sed -r 's/.{5}$//' All_itemid.txt > tmpfile


# Overwrite the old "All_itemid.txt" and removes the temfile.

mv tmpfile All_itemid.txt


# The two txt files are merged with the itemids for the corresponding kpthesaurus values. This file is needed for the R script.

paste -d ';' All_itemid.txt All_kpthesaurus.txt > filename.dat


# Run the R script to produce a plot of the distribution in a PDF

Rscript analyse_and_visualize.r filename.dat


# Opens the PDF to show the plot. 

xdg-open filename.pdf
