# Scientific software development
This is an updated repository for the final project of the Ph.D. course Tools for Scientific Software Development and Data Science

## Indented aim
The aim is to plot the distribution/count of different IDs representing different keywords in a dictionary from the European Court of Human Rights (https://hudoc.echr.coe.int/). 

## Indented use
To obtain the distribution plots of the IDs, execute the Bash script run_me.sh”, which will, by default, generate a plot based on all data in the data folder and save it as a pdf file. 

## Processing steps
The Bash script “run_me.sh” shall be executed to obtain the ID distribution. By default, all files on the folder data are processed. The Bash script first executes the Python script “print_kpthesaurus.py” to obtain the IDs from the .json files in the data folder. All obtained IDs are saved in the file ids.dat. After that, the Rscript “analyse_and_visualize.r” is executed, which generates a distribution plot and saves it as a pdf file. 




