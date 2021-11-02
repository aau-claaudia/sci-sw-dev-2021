#!/bin/bash

# Printing in the terminal and asking the user to input a file name which will be read by the "read" function and stored in the "IDfilename" variable.
echo "Please, enter filename where ID data will be extracted"
read IDfilename

# Rewriting "IDfilename" variable by adding exstention to the filename ".dat" in the end.
IDfilename=$IDfilename.dat

# Telling the user the output files with data by the bash script.
echo "The data will be extracted to $IDfilename and ploted in ${IDfilename%%.*}.pdf"

if [ -f "$IDfilename" ]; then # Checking if the "IDfilename.dat" file already exists in the current folder by specifiying the -f option (True if FILE exists and is a regular file).

        while true; do # Nested while loop: continue execution until forcibly interrupted.
		# The while loop is used to retry if the invalid input (other than Yy or Nn) is given below, otherwise "break" interrupting or exiting the loop...

				# Asking the user to overwrite the existing files with y/n answer stored in the "yn" variable. Another way to read the user input (contrary to the above).
                read -p "The files $IDfilename and ${IDfilename%%.*}.pdf already exist in the current folder, Do you wish to overwrite them (y/n)?" yn

                        case $yn in  # switching cases in the "yn" variable.
                                [Yy]* ) echo -n "" > "$IDfilename"; break;; # if the answer is "yes", overwriting the "IDfilename" file by writing into it an empty string.
								# ... The option -n in echo do not append a newline. Then exiting the while loop.

								# if the answer is "no", reading the new filename and adding ."dat" extension to it in the similar way to the above. Then exiting the while loop.
                                [Nn]* ) echo "Please, enter another filename where ID data will be extracted"; \
                                        read IDfilename; IDfilename=$IDfilename.dat; \
                                        echo "The data will be extracted to $IDfilename and ploted in ${IDfilename%%.*}.pdf" ; break;;

                                * ) echo "Please answer yes or no."; # continually asking for an input untill Yy or Nn is entered by the user.
                        esac # exiting the switching cases loop.

        done # exiting the while loop.

fi # exiting the if condition.

echo "Processing..."

for JSONfilename in data/*.json; do # for all the ".json" files in the "data" folder.

	# ( ) combines the outputs of the several commands splited by the ";" and append combined outputs to the file "IDfilename".
	# ... So in each iteration the new data is appended to the next line in the file "IDfilename".
	( echo -n $(basename --  ${JSONfilename%%.*}) ; echo -n ";" ; python print_kpthesaurus.py $JSONfilename ) >> "$IDfilename"

	# The first command is printing the name of the file without extension and the path. basename - strip directory and suffix from filenames.
	# ... The option -n in echo do not append a newline; so the next function output is on the same line.
	# Then ";" is printed with the same -n option to not append a newline; By this time the output looks like "xxx-xxxxxx;".
	# The last command inside the ( ) is the data processing script, extracting and output IDs separated by the ";".
	# The combination of these tree commands looks like "xxx-xxxxxx;xxx;xxx;xxx", which is appended to the "IDfilename".

done # exiting the for loop.


# Running the R-script to plot the distribution of the all IDs stored in the file "IDfilename", which is the input to the R-script.
Rscript analyse_and_visualize.r "$IDfilename"
