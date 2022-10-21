# sci-sw-dev-2021
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science


This repositry contains the the scripts and the data to visualize the distributions of ..... data provided by XXX

The repositroy contains :

 a folder "data" containing the json files corresponding to the legal cases to process.

 A python script print_kpthesaurus which extracts the legal ID from a json file (a legal case)
 
 A R script analyse_and_visualize which takes as input a json file containig the result of the python script itterated voer all the cases. This json file is therefore of type: 
 "case_ID;legal_ID;legal_ID ..."
 "case_ID;legal_ID;legal_ID ..."
 
 . . .
0 0 1 ???1 2 4 8 1 8 ; 4 4 8 ; 1 8 ; 2 2 0 ; 4 5 1 ; 2 1 6
0 0 1 ???1 2 4 8 1 9 ; 4 4 5 ; 7 6 ; 1 8 0 ; 1 8 1 ; 4 0 6 ; 4 4 8 ; 2 2 7 ; 2 1 6
. . .

 A bash script which iterates the python script over the cases, creates a json file with the extracted reusls and feed it as inpuit to the R script. Execute the bash script to process, analyze and visualize the results.
 Exectuing the bash script will generate a pdf file " distributions.pdf" in the folder.