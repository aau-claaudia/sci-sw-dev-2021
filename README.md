# sci-sw-dev-2020
The repository reads the human rights data from the [European Court](https://hudoc.echr.coe.int/)
and plots the distribution of the associated data based on a kpthesaurus approach.

## Installation

### Prerequisites 

The following programs is required for the program to execute:

* Python 3
* R
* R package: [tidyverse](https://www.tidyverse.org/)


### Installing
To use install the repo just clone it:

```
$ git clone https://github.com/CLAAUDIA-teaching/sci-sw-dev-2020.git
``` 

## Usage

To generate the plots of the data located in the [data folder](/data) run the bash script
```
bash run.sh
```

And the data file ***datafile.dat*** and the plot pdf ***datafile.pdf*** is generated. 

The python script [print_kpthesaurus.py](print_kpthesaurus.py) is the file which extract the data from
the json files. The [analyse_and_visualize.r](analyse_and_visualize.r) plots the data extracted from the 
python script. 