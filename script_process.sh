if [ -f output_readable_for_R.json] && [ -s output_readable_for_R.json ]  #If the file with pre-processed data already exists and is not empty

    then  # We visualize directly the content
    echo "Data has already been pre-processed"
    Rscript analyse_and_print.r  output_readable_for_R.json 
    
    else # We pre-process the data with the python script and visualize it afterwards
	
	echo "Data is being processed"

        touch output_readable_for_R.json 	
	> output_readable_for_R.json


	for file in ./data/*.json

	do
        	docid=${file##*/}
       	        docid=${docid%.*}
        	legal_ID=$(python print_kpthesaurus.py $file)
       		echo -e "${docid};${legal_ID}" >> output_readable_for_R.json
	done

	Rscript analyse_and_print.r  output_readable_for_R.json
   

 fi




