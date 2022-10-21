  

total_output=$(
for file in ./data/*.json

do	
        docid=${file##*/}
        docid=${docid%.*}
        
	legal_ID= python print_kpthesaurus.py $file
	var_toprint ="${docid};${legal_ID}" 
	
	echo ${var_toprint// /}
	
done)

echo $total_output > output_readable_for_R.json
