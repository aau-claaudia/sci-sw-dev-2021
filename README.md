# Analysis of cases from the European Court of Human Rights

Main author: Pierre Jouannais
pijo@plan.aau.dk

This repository contains the the scripts and the data to visualize the frequencies of the different legal IDs in recorded cases from the European Court of Human Rights.




## Content of the repository


+ **_Data_**: A folder containing the json files corresponding to the legal cases to process.

+ **_print_kpthesaurus.py_**: A python script which pre-processes the data by extracting the legal ID from a json file (a legal case).
 
+ **_analyse_and_visualize.r_**: A R script which takes as input a json file containing the result of the python script iterated over all the cases. 


+ **_script_process.sh_** A bash script which iterates the python script over the cases, creates a json file with the extracted results and feed it as input to the R script.

+ **_output_frequency.json_**: An intermediary output file ready to be fed to **_analyse_and_visualize.r_** to plot and save a pdf.

+ **_output_frequency.pdf_**: The final pdf resulting from the process on which can be seen the frequencies.

## Requirements
+ R and python functioning versions. (R>4.1.3) (python > 3.4)
+ R added to the PATH so that the command Rscript can be called from the folder.
+Tidyverse package installed for R.


## Processing and visualizing results

Executing **_script_process.sh_** &#128680;**from the folder**&#128680; will:

+ *If the data has never been processed*:
  - Create an intermediary output json file       **_output_distributions.json_** in the folder. 
  - Feed this input to the R script and saves the output under **_output_distributions.pdf_**.

+ *If the data has previously been processed and the intermediary json file is full*: 
  - Simply save the the final output under **_output_distributions.pdf_**.
