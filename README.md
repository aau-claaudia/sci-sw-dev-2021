# sci-sw-dev
This is the repository for projects in the PhD course Tools for Scientific Software Development and Data Science by Zhichen Lai.
This repository is for analysing some data from the European Court of Human Rights.

The system employs a method where each document or case is marked with a number of IDs that match to various keywords in a vocabularies https://hudoc.echr.coe.int. We are interested in examining the distribution, or maybe more precisely, the frequency with which certain IDs are cited.

#How to run the code

##Step 1
Run the script to generate the pre-processed data for the R script
   ```setup
python script1.sh
   ```
##Step 2
After Step 1, a data file "pythondat.dat" will be generated in the working directory, and then we should call the Rscript to produce a plot of the distribution.
   ```setup
python script2.sh
   ```
##Step 3
Now, you can check the plot of the distribution in 'pythondat.pdf'