# sci-sw-dev-2020
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

This repository contains tools that can be used to investigate to what extent different violations to the Human Rights that have been committed during different cases in the European Court of Human Rights. 
The data folder contains json files, each representing a different case from the European Court of Human Rights. Each file contains different information about the given case for example kpthesaurus IDs. These ID numbers represent different keywords in a vocabulary for example ID “2” corresponds to ’(P6-1) Abolition of the death penalty’. It is these ID numbers that we are interested in, in order to investigate the different violations in the different Human Rights cases. 
The bash script makes it possible to analyze the json files and produce a plot that shows the distribution of the different violations to the Human Rights in the different cases included in the analysis. First, it uses the python script, print_kpthesaurus.py, to create a single file containing all the kpthesaurus IDs from the different json files. Then is creates a file containing all the docids from the json files. After this, the two files are combined into one, which is used as input file to the R script, analyse_and_visualize.r. This R script is used to create the plot showing the distribution of the different violations during each court case. 
Before running the bash script there are some requirements that have to be meet. These are described below.
For all inexperienced users of github and linux systems (as myself) I am going to first show you how to clone the files from github into you linux system.
Prerequisite: a GitHub account, linux system, and Git.
Step 1: Configuring Git per user
             This is important when making commitments to git. 
             Commands:
	$ git config --global user.name “Your_Name”
	$ git config --global user-email “email_address@domain.com”

Step 2: Create a directory 
Create a directory where your clone your github repository into. Afterwards we move into the      directory using the cd command:
	$ mkdir git_environment 
	$ cd git_environment 

Step 3: Copy your GitHub URL
Within the GitHub repository that you wish to clone there is a green button writing “Code”. If you click on that, a HTTPS link will show. Copy this GitHub link. 

Step 4: Clone your repository 
              Use the following command to clone your Github repository to your linux system.
	$ git clone https://github.com/username/name_of_repository.git 
	
To verify that the cloning worked type ls to see all the files within the cloned repository. 
	$ ls

If you have not installed R do this before running the R script:
$ sudo apt install r-base-core 
Install the tidyverse packages
Open R in the linux console: $ sudo -i R 
Write: install.packages(“tidyverse”) 
Quit R by writing: quit()
If you are using a linux system on a windows machine you can view the files by typing 
$ explorer.exe .
and then open the pdf file. This command is included in the end of the bash script. 
