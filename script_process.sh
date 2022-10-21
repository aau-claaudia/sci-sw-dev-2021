if [ -f output_frequency.json ] && [ -s output_frequency.json ]  #If the file with pre-processed data already exists and is not empty

    then  # We visualize directly
    echo "Data has already been pre-processed, directly plotting..."
    Rscript analyse_and_visualize.r  output_frequency.json 
    
    else # We pre-process the data with the python script and visualize it afterwards
	
	echo "Data is being processed before plotting..."



	for file in ./data/*.json

	do
        	docid=${file##*/}
       	        docid=${docid%.*}
        	legal_ID=$(python print_kpthesaurus.py $file)
       		echo -e "${docid};${legal_ID}" >> output_frequency.json
	done

	Rscript analyse_and_visualize.r  output_frequency.json
   

 fi




