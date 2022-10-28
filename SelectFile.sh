for filename in data/001-*.json
do
    python print_kpthesaurus.py $filename >> output.txt
done

python Process.py output.txt