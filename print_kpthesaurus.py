"""
This will parse a single ECHR json file and extract one field.

"""

import argparse
import json
import pandas as pd


# def process(filename, pfield='kpthesaurus'):
#     with open(filename, 'r') as f:
#         jsondata = json.load(f)
#         print(jsondata[pfield])


def process(filename, pfield='kpthesaurus', pfield2='itemid'):
    with open(filename, 'r') as f:
        jsondata = json.load(f)
        print(jsondata[pfield2], end=";")   # For Rscript required format.
        print(jsondata[pfield])
        #fw = open("./results/print_result.txt", 'a') # location to store txt file
        fw = open("./print_result.txt", 'a')  # location to store txt file
        a= str(jsondata[pfield2])+ ";"+ str(jsondata[pfield])
        fw.write( a )         
        fw.write("\n") 



if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Process a single ECHR file.')
    parser.add_argument('filename', type=str,
                    help='filename')
    args = parser.parse_args()
    process(args.filename)

    
# change .txt file to .dat file 
# def txt_dat(filepath,name1):
#     input_df = pd.read_table( filepath+ name1 +'.txt')
#     input_df.to_csv(filepath+ name1 +'.dat',index=False)   
#     return

