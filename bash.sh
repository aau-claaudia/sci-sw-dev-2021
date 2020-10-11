#!/bin/bash

#For loop creating a file containing all the kpthesaurus ID from all the json files

for kpthesaurus in data/* 
do python3 print_kpthesaurus.py $kpthesaurus
done > Merged_kpthesaurus.txt
 
#Creating a file containg the itemid from all the json files 
find data/*.json > Merged_itemid.txt

# Revoming the first five characters from each row in the file containing the itemids 
sed -r 's/.{5}//' Merged_itemid.txt > tmpfile
mv tmpfile Merged_itemid.txt

# Revoming the last five characters from each row in the file containing the itemids 
sed -r 's/.{5}$//' Merged_itemid.txt > tmpfile
mv tmpfile Merged_itemid.txt

#Combining the file containing the kpthesaurus IDs and the file containing the itemids. Thereby making the input file for the R script 
paste -d ';' Merged_itemid.txt Merged_kpthesaurus.txt > filename.dat

#Run the R script and make the plot of the distribution of the different kpthesaurus IDs
Rscript analyse_and_visualize.r filename.dat

#Open the folder where the plot file have been saved 
explorer.exe .
