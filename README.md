# Repository for project in the PhD course Tools for Scientific Software Development and Data Science
This repository include three small scripts to analyze data from different case files from the European Court of Human Rights.
These case files uses a kpthesaurus approach where each document/case is tagged with different ids correspondning to different keywords in a vocabularium. 
Only one script named analysis.sh needs to be executed to succesfully run the entire analysis.
This script will produce a file containing case numbers and their associated ids together with a distribution plot of the different ids.

The analysis.sh script needs to be located in the same directory as the two subscript print_kpthesaurus.py and analyse_and_print.r to run properly
The analysis.sh script additionally needs an argument specifying the path to the directory containing the case files in the format {casenumber.json}.

# Dependencies: python and Rscript
Can be installed with:
 
 sudo apt-get update
 
 sudo apt install pyhton3
 
 sudo apt install r-base-core

# Usage
Script for analyzing the distribution of different ids in in different cases from the European Court of Human Rights.

usage: bash analysis.sh [-d]

where:
	-d Directory containing the case files"
