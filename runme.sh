#!/bin/bash
## runme.sh
# executes the sci-sw-dev project
# output is the pdf file ID_data.pdf illustrating the distribution of ID-apperances
#
# Needs:
# 	- data folder named 'data' with .json files
# 	- R-script 'analyse_and_visualize.r'
# 	- Python-script 'print_kpthesaurus.py'
#
# written by Mikkel van Binsbergen-Galán, mbg@energy.aau.dk
# free to use, modify and redistribute
#
# last update: 12/10-22 (mbg)



# create txt-file for storing data (if it doesn't already exist) and clear its contents
touch ID_data.txt 	# create file for storing ID's
> ID_data.txt 		# clear the file for any content

# loop through data-files
for path in data/*.json
do
	output=$((python print_kpthesaurus.py "$path") 2>&1) 	# run python script with input 'path' - find instances of ID's in xx.json file
	filename="${path##*/}"; filename="${filename%.*}" 	# extract pure filename from path (remove 'data/' and '.json')
	echo "$filename;$output" >> ID_data.txt 		# append filename and ID instances to ID_data.txt
done

# Run R-script with input ID_data.txt - counts instances of ID's and plots results to ID_data.pdf
Rscript analyse_and_visualize.r ID_data.txt


## END of runme.sh ##
