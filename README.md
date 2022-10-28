# sci-sw-dev-2021
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

This script analyse the data from the European Court of Human Rights. The documents are tagged with some IDs that correspond to different keywords in a vocabularium. We are interested in looking at the distribution and how often
different IDs are mentioned.

The goal of this project is to count the occurence of each different IDs and plot the distribution and top 30 IDs with their frequencies.

# Structure of the program
The pogram is structured as follows:

\sci-sw-dev-2021
- \data # json files containing all the information
	- *.json # ECHR json file of each case
- \figures # export results
	- fig_kpthesaurus_distribution.pdf # figure from Process.py
	- fig_kpthesaurus_top30.pdf # figure from Process.py
- SelectFile.sh # Select the files of interest and run print_kpthesaurus.py for each file to generate an output.txt file with IDs of selected files.
- print_kpthesaurus.py # read out the IDs of a single json file
- Process.py # count the frequency of different IDs and plot bar figures of the ditribution of IDs as well as the top 30 ones.

# How to use
- First, modyfy the files of interest in SelectFile.sh (default: all .json files)
- Then use command '**bash SelectFile.sh**' in command prompt to generate an **output.txt** file with all IDs. A script is run thereafter to analyse the data and export bar figures of distribution and top 30 occurence of different IDs to current directory.

> Note: To use the script, make sure python is installed, as well as the following packages: numpy, matplotlib
