touch output_readable_for_R.json
> output_readable_for_R.json 


for file in ./data/*.json

do	
        docid=${file##*/}
        docid=${docid%.*}
	legal_ID=$(python print_kpthesaurus.py $file)    
	echo -e "${docid};${legal_ID}" >> output_readable_for_R.json
done


