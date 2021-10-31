# sci-sw-dev-2021
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science.

This repository contains code to analyse data from the European Court of Human Rights. The system uses an approach where each document/case is tagged with some IDs that correspond to different keywords in a vocabularium, e.g., ID “2” corresponds to ’(P6-1) Abolition of the death
penalty’. We are interested in looking at the distribution, or maybe more accurately, how often different IDs are mentioned.

The folder /data has a number of cases and some information associated to each docid (document ID) as a JSON ﬁle, e.g., 001-100865.json.

There are two tools:

1. A python script that can extract the IDs of each case and print the IDs to standard output.

Example run:
*$ python print_kpthesaurus.py data/001-100865.json
448;30;481;343;216*

where the ID numbers then are 448, 30, 481, 343, and 216.

2. An R script that can take a semicolon-separated ﬁle with lines in the form
...
001-124818;448;18;220;451;216
001-124819;445;76;180;181;406;448;227;216
...
and produce a plot of the distribution/count of different IDs in a sorted form. The R script
can be executed using e.g.

*Rscript analyse_and_print.r filename.dat*

and produces a plot of the distribution in “ﬁlename.pdf”.

Both of these scripts can be run with a single bash file called 'generate_distribution_plot.sh'. If there are path related errors while executing this script, it needs to be made sure that this bash file needs to be stored and run from the same directory as the data folder.
Running the bash script produces two files - a text file called 'distribution.txt' and a plot of the data in the txt file as 'distribution.pdf'
