#! /bin/bash

## script for datamanagement in connection with assignment
## The script counts the number of Kptherasaurusses in the .json files
## Author: Lars Børty Nielsen
## Date: 20-10-2022

## to run the script type 
## chmod +x data_management.sh
## ./data_management.sh

for file in data/*.json
  do
      python3 print_kpthesaurus.py $file; # Loop through files and print the ID's of the kpthesaurus
  done > data_kpt.txt # Save to file

echo "success in processing, see data_kpt.txt"

find data/*.json | sed -r "s/.{5}//" | sed -r "s/.{5}$//" > IDs.txt # Remove the first and last 5 letters in the filenames

paste -d ";" IDs.txt data_kpt.txt > filename.dat # Combining it into a file

Rscript analyse_and_visualize.r filename.dat # Run the R script on the new file

echo "success in plotting, see filename.pdf"
