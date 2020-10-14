#  Readme File for analyzing some data from the European Court of Human Rights
Hallo and welcome to this readme file which will provide information about this analysis of data from the European Court of Human Rights. 

## What this can be used for?

This data processing pipeline can be used to analyze data from the European Court of Human Rights, where each document/case is tagged with ids that corresponds to different keywords. The data processing pipeline will be looking at the distribution (how often different ids are mentioned) by two scripts: A python script that can extract the ids of each case and print the ids to stdout. A R script that plot the distribution/count of different ids in a sorted form.

## How this is accomplished? / How to run the code? 
Clone the repository into your terminal (fx Ubuntu to use Linux on a windows computer). This process is described in detail here: https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/cloning-a-repository .

Run the bash script and the result will be made for you. 

Remember to have R and tidyverse installed. 
Useful links:    https://linuxize.com/post/how-to-install-r-on-ubuntu-20-04/
                  https://fahim-sikder.github.io/post/how-to-install-r-ubuntu-20/


To get a better understanding of the different steps, read the comments in the bash.sh file. 
Changes to the script and software will be documented on git continuously.
