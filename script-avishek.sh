!/bin/bash
# Set the first Variable FOR DAT FILE
DATFILE=RDATAFILE.dat
# Set the second variable FOR TXT FILE
TXTFILE=numbers.txt
# If the files exists already then delete them first to get exact number of lines required as we are appending lines
if test -f "$DATFILE"; then
        $(rm RDATAFILE.dat)
fi
if test -f "$TXTFILE"; then
        $(rm numbers.txt)
fi

for  file in "$@"
do
        # Prepare the filename format. Extract the name without the path and extension
        filename=${file:5:-5}
        # Extract the data from the file by running the python file
        extractedData=$(python3 print_kpthesaurus.py $file)
        # Create a separator. In this case a Semicolon
        separator=";"
        # Create an output string to be shown and stored
        outputString="${filename}${separator}${extractedData}"
        # Show the output string in the terminal just to make sure
        echo $outputString
        # Save the string in a textfile. >> is used to append each line to its last line ( this is for user to see a simple text file)
        echo $outputString >> numbers.txt
        # Save the lines in a DAT file to be processed with R
        echo $outputString >> RDATAFILE.dat
done
echo "================================DATA EXTRACTION DONE================================"
# Run R Script
runRscript=$(Rscript analyse_and_visualize.r RDATAFILE.dat)
echo "================================VISUALIZATION DONE================================"
echo "PROCESSING DONE================================================================================================================>>>>>>>>"

