#  Readme File for analyzing some data from the European Court of Human Rights
Hallo and welcome to this readme file which will provide information about this analysis of data from the European Court of Human Rights. 

## What this can be used for?

This data processing pipeline can be used to analyze some data from the European Court of Human Rights, where each document/case is tagged with some ids that corresponds to different keywords. The data processing pipeline will be looking at the distribution (how often different ids are mentioned) by two scripts. A python script that can extract the ids of each case and print the ids to stdout.

## How this is accomplished? / How to run the code? 

The scripts can be cloned into your terminal (fx Ubuntu to use Linux on a windows computer). This process is described in detail here: https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/cloning-a-repository

Both the python and R script can be run through the bash script. 

- The python script can extract the ids of each case and prints them to stdout.

  This can be done with the following code: 
   
  $ python print_kpthesaurus.py data/001-100865.json
  

- The R script can be run with the code mentioned below, and produce a plot of the distribution in filename.pdf: 

  Rscript analyse_and_print.r filename.dat

  It can be nessesary to install the r-base-core which include the Rscript command. This can be done with the following code: 

  sudo apt install r-base-core



Changes in the scripts are documented with comments made continuously.
