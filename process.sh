data_files=$(ls ./data/*.json)

for file in $data_files; do
    name=$(echo "$file" | sed -E 's/\.\/data\/(.+).json/\1/')
    echo "'"$name"'"
done
