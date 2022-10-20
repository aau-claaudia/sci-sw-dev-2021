dataout=data_for_r.dat
#empty file if it already exists (from previous run)
truncate -s 0 $dataout

for file in ./data/*.json
do
#sed is used for searchd and replace. syntax is: sed -e 's/SEARCH/REPLACE/g'    remember to sue escape \ for other characters than lettes and numbers
#the folder path and file extension is removed
#writes filename without path and extension and adds semicolon
echo -n $file | sed -e 's/\.\/data\///g' -e 's/\.json/;/g' >>$dataout
#writes data points to same line
python3 print_kpthesaurus.py $file >>$dataout
echo $file loaded

done

echo running R script ...
#run the r script for data visualization
Rscript analyse_and_visualize.r $dataout
