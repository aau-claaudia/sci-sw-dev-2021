#!/bin/bash

#DESCRIPTION
#Script for analyzing the distribution of different ids in different cases from the European Court of Human Rights.
#The system uses a kpthesaurus approach, where each case is tagged with ids taht corresponds to different keywords in a vocabularium.
#The script will produce a .dat file containing case numbers with their associated ids and a distribution plot. 
#The script depends on two subscripts to work: print_kpthesaurus.py and analyse_and_visualize.r
#The script expects a directory of data with case files in the format {casenumber.json}

#IMPLEMENTATION 
#	author Emil Sørensen (easo@bio.aau.dk)
#	       Tobias Jensen (tlj@its.aau.dk)
#	       Thomas Aarildsen (tari@its.aau.dk)


#TO DO

###Usage 
USAGE="bash analysis.sh

Script for analyzing the distribution of different ids in in different cases from the European Court of Human Rights.

usage: bash analysis.sh [-d]

where:
	-d Directory containing the case files"


### Check if subscripts are available
SUBSCRIPT1=print_kpthesaurus.py
SUBSCRIPT2=analyse_and_visualize.r
MISSING="is missing but required. Exiting." 
if [ ! -f $SUBSCRIPT1 ]; then 
	echo $SUBSCRIPT1 $MISSING; exit
fi
if [ ! -f $SUBSCRIPT2 ]; then 
	echo $SUBSCRIPT2 $MISSING; exit
fi

### Terminal Arguments
#IMPORT USER ARUGMENTS
while getopts :d: OPTION; do 
	case $OPTION in
	d) data=$OPTARG;;
	esac
done
echo "directory containing case files: $data";

#Checking missing arguments
if [ -z ${data+x} ]; then 
	echo "-d $MISSING"; 
	echo "$USAGE"; exit
 fi

### Analysis
#Make a list case numbers for every file in data
ls $data | sed -e 's/\.json$//' > case_number.txt

#Make a list of id's from each case file
for i in $data/*.json; do python3 print_kpthesaurus.py $i; done > id_list.txt

# Merge list to associate case numbers and ids
analysis=$(paste -d ";" case_number.txt id_list.txt)
echo "$analysis" > analysis.dat

rm case_number.txt
rm id_list.txt

#Visualize distribution
Rscript analyse_and_visualize.r analysis.dat

