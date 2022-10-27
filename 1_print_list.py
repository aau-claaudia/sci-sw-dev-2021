# -*- coding: utf-8 -*-
"""
Created on Wed Oct 25 15:28:31 2022
Spyder Ide Environment

@author: pengw
"""
import sys
import os
import json
from print_kpthesaurus import process

print("os.path.abspath(__file__) = ", os.path.abspath(__file__))

filepath = 'data' # location of the data
file_names = os.listdir(filepath)   # Read all data files.
print(file_names) 


if __name__ == '__main__':   
    for i in file_names:
        process(filepath + "/"+ i)

#filepath = './'

#filepath = os.path.abspath(__file__)
# change txt file to dat file
#txt_dat(filepath,'print_result')



