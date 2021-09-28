#README

## Written by Søren Strandskov Sørensen, soe@bio.aau.dk

Included in this project is a bash script (glue.sh) intended for coupling a python (print_kpthesaurus.py) and R (analyse_and_visualize.r) script with the overall intend to analyze the distribution of used IDs of the European Court of Human Rights (ECoHR).

The script is simply run by calling the following line in a bash shell:

bash glue.sh

This will output a file (plotinput.dat) with case numbers and associated IDs separated by a semicolon. This file is then taken as input to finally plot the distribution of IDs used by the ECoHR as plotinput.pdf.

The code is tested on a macOS Big Sur 2017 Macbook Pro. BASH version 3.2.57, Python version 2.7.16, and R version 4.1.1.
