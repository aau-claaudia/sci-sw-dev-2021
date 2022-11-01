echo "\c" >data.dat
for filename in data/*.json
do
	f1=${filename#data/}
	f2=${f1%.json}
	f3=`python print_kpthesaurus.py $filename`
	f="$f2;$f3"
	echo $f >> data.dat
done

Rscript analyse_and_visualize.r data.dat
