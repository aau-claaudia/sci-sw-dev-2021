## Introduction 
Analysis of data from the European Court of Human Right where a kpthesaurus approach is used. Each case has an id that is corresponding to a different keyword in a vocabularium. The output of the analysis is a plot, in the format .dat, showing the distribution of how often ids are mentioned.  

## Installation 
Python3 and r-cran-tidyverse must be installed before running the bash script. 

## Usage 
The analysis can be performed by running the bash script as following: 
*bash combine_python_and_rscript.sh*
As the name indicates the bash script first runs a python script that extract ids of each case and then a R script that produces the output plot. The bash script uses python3 and the R package tidyverse to analyze the input file .json files. The .json files must be located in a subdirectory called data/.  
