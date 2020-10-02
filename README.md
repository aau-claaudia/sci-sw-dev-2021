# sci-sw-dev-2020
This repository is part of an exercise for the PhD course Tools for Scientific Software Development and Data Science (fall 2020)

# Goal
sci-dev-dev-2020 is a tool to extract keyword ID's from a kpthesaurus JSON database file, and afterwards plot the distribution of the number of occurences of each keyword.

# Usage
You can either run the two subscripts individually or use the wrapper BASH script to run both with one command.

## Step 1: Extract ID's (`print_kpthesaurus.py`)
To extract ID's and print to stdout run:
`$ python print_kpthesaurus.py path/to/file`

To save to a file instead of printing to stdout just pipe to the file, for example:
`$ python print_phthesaurus.py path/to/file > file.csv`

### Output
The `print_kpthesaurus.py` python script outputs to stdout.

## Step 2: Plot showing the distribution of all ID's in the file (`analyse_and_visualise.R`)
To generate a plot with the distribution of all ID's in the file run:
`$ Rscript analyse_and_visualize.R path/to/file.csv`

### Output
A PDF file with the same base filename as the input CSV file will be output to the current working folder. 

## Both step 1+2 at once
Simply run `$ bash script.sh -i path/to/file` to perform the above two steps in one command.
Run `$ bash script.sh -h` for help:
```
$ bash script.bash -h
Super awesome BASH script for the PhD course: Tools for Scientific Software Development and Data Science (fall 2020)
Version: 1.2
Options:
  -i    A single input JSON data file
  -h    Display this help text and exit.
  -v    Print version and exit.
```

### Output
A CSV and a PDF file with the same base filename as the input file.

# Requirements
 - A computer running Linux, preferably a Debian-based distribution like Ubuntu
 - python (2.7 or later)
 - R (4.0.2 or later) and the tidyverse package (https://tidyverse.org)

# Example data
The subfolder `data/` contains example data files from the European Court of Human Rights. The `example_output` contains example output files with `data/001-100865.json` file as input.

# Running through a docker container
For reproducibility, cross-platform compatibility, portability, and to save time (and pain) installing the required software and dependencies you can run the super awesome BASH script through a docker container as described in the following two steps.

## Building the docker image
You can either build the image locally from the `Dockerfile` by first cloning the repository and then run:
```
$ git clone https://github.com/KasperSkytte/sci-sw-dev-2020.git
$ cd sci-sw-dev-2020
$ sudo docker build -t sci-sw-dev-2020 .
```

or pull a prebuilt docker image from docker hub by running:
```
$ sudo docker pull kasperskytte/sci-sw-dev-2020:latest
```

## Running it
You can now run the super awesome overkill BASH script through a container:
```
$ sudo docker run -v ${PWD}:/home/pwd kasperskytte/sci-sw-dev-2020:latest -h
Super awesome BASH script for the PhD course: Tools for Scientific Software Development and Data Science (fall 2020)
Version: 1.2
Options:
  -i    A single input JSON data file
  -h    Display this help text and exit.
  -v    Print version and exit.
```

where the current working directory is mounted as `/home/pwd` inside the container. Note that the output files will be owned by root since docker must be run with elevated privileges. You can run `sudo chown $(id -u ${USER}):$(id -g ${USER}) file` to reacquire ownership. 

# License
MIT, read more in the `LICENSE.md` file.
