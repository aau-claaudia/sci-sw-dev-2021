# sci-sw-dev-2021
Repository for projects in the PhD course Tools for Scientific Software Development and Data Science

Just a trick update to make things a little complicated.


1)
The bash script "script.sh" in sci-sw-dev-2021 can process the whole data by calling the Python and R scripts, 
and eventually plot a distribution in "data.pdf".


2)
The script first utilizes a for loop to traverse all the .json files.
In each loop, the filename is processed by cutting the upper folder path and the suffix, remaining the code part with only numbers.
Then it calls the Python script to extract the IDs, and combine the case ID with them using a semicolon.
Till now, one .json file is done processed, and the output is formed in line with the specific format to be processed by Rscript.
The output of each loop is written to "data.dat". 
In the end, when the loop is over, the Rscript read the .dat file and plot the distribution in "data.pdf".


3)
It's quite simple to run the code.
just change the directory to sci-sw-dev-2021, and type in "sh script.sh", and the files will generate automatically.
If you want to check the .dat file, please use "nano data.dat".
If you want to watch the plot, please open "data.pdf"
