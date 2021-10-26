# Data processing of the European Court of Human Rights 

## Description

This repository provides several scripts in order to process data from the European Court of Human Rights.
Specifically, the scripts process a number of cases, and output a graph illustrating the distribution of IDs used.  
Those IDs represent different keywords used by the European Court of Human Rights.

## How it works

This project contains two scripts to process the data, and one script to automate everythin.
* "print_kpthesaurus.py": process json files and extract ids
* "analyse_and_visualize.r": process the output of the previous script and make a graph.

The script "process.sh" automate the processing by listing the files to process and get their names.
For each files, the first script is run and outputted in a new "dat" file.
Then the R script is called to generate the graph. Finally, the intermediary "dat" file is removed.

## Requirements

* **Python 3** (3.7 or more)
* **R** with "tidyverse" package

## Usage

In order to process the data and output the distribution graph, run:
```bash
./process.sh some_name
```
The script take a single parameter, used to name the graph file.  
The script run the data processing and graph generation automatically.

