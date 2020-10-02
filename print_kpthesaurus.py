"""
This will parse a single ECHR json file and extract one field.

"""

import argparse
import json


def process(filename, pfield='kpthesaurus'):
    with open(filename, 'r') as f:
        jsondata = json.load(f)
        print(jsondata[pfield])

    
if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Process a single ECHR file.')
    parser.add_argument('filename', type=str,
                    help='filename')

    args = parser.parse_args()

    process(args.filename)
