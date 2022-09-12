#! /bin/bash


## bash script for coupling python and R script together

for j in data/*
 do
     j2=${j::${#j}-5} 				#Remove the last five symbols of the filenames, i.e. the ".json" extension
     j2=${j2:5} 					#Remove all text preeceding the case number, i.e. data/
     j3=$(python print_kpthesaurus.py ./$j) 	#Get the associated ID of case $j
     totline="${j2};${j3}" 			#Combine the case number and IDs in a string and o by a semicolon
     echo $totline >> plotinput.dat		#Write output of python script to a new file (plotinput.dat)
 done

Rscript analyse_and_visualize.r plotinput.dat  # this will run the plotter using the plotinput.dat

