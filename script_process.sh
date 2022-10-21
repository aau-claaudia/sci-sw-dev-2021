  

total_output=$(
for file in ./data/*.json

do	
        docid=${file##*/}
        docid=${docid%.*}
        
	legal_ID= python print_kpthesaurus.py $file
	
	
	echo ${docid}$";"${legal_ID} 
	
done)

echo $total_output > output_readable_for_R.json
