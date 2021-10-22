if [ -z "$1" ]; then
    echo "Usage $0 output_filename"
    exit
fi

data_files=$(ls ./data/*.json)

for file in $data_files; do
    ids=$(python3 ./print_kpthesaurus.py $file)
    name=$(echo "$file" | sed -E 's/\.\/data\/(.+).json/\1/')
    echo "$name;$ids" >> "$1.dat"
done
