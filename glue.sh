#! /bin/bash

## BASH SCRIPT FOR COUPLING PYTHON AND R SCRIPT ##

for j in data/* #Loop over all file names in data folder
do
    j2=${j::${#j}-5} 				#Remove the last five symbols of the filenames, i.e. the ".json" extension
    j2=${j2:5} 					#Remove all text preeceding the case number, i.e. data/
    j3=$(python print_kpthesaurus.py ./$j) 	#Get the associated ID of case $j
    totline="${j2};${j3}" 			#Combine the case number and IDs in a string and separated by a semicolon
    echo $totline >> plotinput.dat		#Write output of python script to a new file (plotinput.dat)
done 

Rscript analyse_and_visualize.r plotinput.dat 	#Run R script with the freshly generated plotinput.dat
