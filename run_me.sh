#Script for generating distribution plot of unique ID counts from .json files in the folder data
#Auhtor: Markus Schaffer
#Version: 2022-10-20

#Create text file for the ID's 
touch id_distribution.dat 							
> id_distribution.dat 

#Define what should be executed in the for loop
task(){
	id=$(python print_kpthesaurus.py "$file")  #IDs - kpthesaurus number
	filename=$(basename $file .json)   #docid
	echo "$filename;$id" >> id_distribution.dat	 & #combine into one file
}

#Run python script on all files in the folder data in parallel
for file in data/*.json; do
  task "$file" &
done
echo "IDs successfully processed"

#Run R Script to obtain the plot as pdf file
Rscript analyse_and_visualize.r id_distribution.dat	
echo "IDs distribution successfully plotted"

# Remove the not longer needed .dat file
rm id_distribution.dat 
echo "The script has successfully ended"