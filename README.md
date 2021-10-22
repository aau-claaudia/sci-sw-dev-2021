# Data processing of the European Court of Human Rights 

## Description

This repository provides several scripts in order to process data from the European Court of Human Rights.
Specifically, the scripts process a number of cases, and output a graph illustrating the distribution of IDs used.  
Those IDs represent different keywords used by the European Court of Human Rights.

## Requirements

* **Python 3**
* **R** with "tidyverse" package

## Usage

In order to process the data and output the distribution graph, run:
```bash
./process.sh some_name
```
The script take a single parameter, used to name the graph file.  
The script run the data processing and graph generation automatically.

