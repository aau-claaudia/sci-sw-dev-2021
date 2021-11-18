import os
import argparse
import json
import sys


file_names = os.listdir('./data')   # Read all files from /data folder.
print(file_names)                   # Return







def process(filename, pfield='kpthesaurus', pfield2='itemid'):
    with open(filename, 'r') as f:
        jsondata = json.load(f)
        print(jsondata[pfield2], end=";")
        print(jsondata[pfield])


if __name__ == '__main__':
    #parser = argparse.ArgumentParser(description='Process a single ECHR file.')
    #parser.add_argument('filename', type=str,
    #                    help='filename')

    #args = parser.parse_args()

    for i in file_names:
        process("data/"+ i)