# sci-sw-dev-2022
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

## What is this
This project analyses the instances of specific ID's in a number of .json files stored in /data/ and produces a graph that illustrates the number of instances. 

## How it works
A python script is able to search thorugh a .json file and identify IDs. 
These results are stored in a txt file which can be interpreted by an R-script to count the instances and plot the results. 
Read the contents of the runme-file for more details. 

## How to use
The programme should be executed from a UNIX shell (or sim.). 
Set the current directory to the sci-sw-dev-2022 folder (using command 'cd').
Execute the runme file as:
	$ ./runme.sh
