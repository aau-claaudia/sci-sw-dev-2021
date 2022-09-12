base='data' # Specify directory containing data files
data_files=($(ls $base)) # Save all the file names as array

# Iterate over each file

for file in $data_files
do
  file_path="${base}/$file"
  output=$(python3 print_kpthesaurus.py "$file_path") # Run python script with file address and store output
  file_prefix="${file%%.*}" # trim .json from the file name

  # skip empty output and store the result in a .dat file
  if [ ! -z "$output" ]
  then print "${file_prefix};$output" >> distribution_data.dat
  fi
done

# Run R script with newly created distribution_data.dat file
Rscript analyse_and_visualize.r distribution_data.dat



