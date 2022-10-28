# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Analysis of ECHR IDs with python

## Main researcher: 
Yang Cai

## Research leader: 
Yang Cai

## Collaborators: 
Thomas Arildsen

## Project contact: 
yangc@es.aau.dk

## Related document(s): 
not relevant

# Planning the project

## Purpose
This project is aimed at analysing the data from the European Court of Human Rights to get some intuitive results. 

## Where will code exist during project?: 
The code could be found at [github](https://github.com/Sinticy/sci-sw-dev-2021). It is open source so that everyone could clone it.

## Software development: 
This project is developed ad-hoc. There's no reviews from peers but from community on github instead. Everyone can clone and test the project. Pull-requests are allowed but administrator's permission is needed. 

## Programming languages:
Bash and Python are used in this project.

## Methods: 
Some statistical methods will be involved. By analysing the phenomenon, we try to extract some interesting facts.

## Code Documentation:
A README file with overview and instruction of the usage, as well as three individual scripts will be documented.

## Testing: 
The code could be test using pytest package based on different sets of data.

## Validation: 
The software will be evaluated on test dataset.

## Code and data: 
The data is gathered from the European Court of Human Rights as json files containing all the information. The data used in this project could be found at [github](https://github.com/Sinticy/sci-sw-dev-2021).

## Version control: 
Version control is carried through github, where everyone can track the history of changes and create a copy of their own.

# Processing data

## Cleaning of data: 
Yes, according to the aspects of insterest, different fields of the data may be needed. One can pre-process the data to extract the necessary information out of the raw data.

## Multiple steps?: 
There are two steps to get the final results and the scripts are running one by one automatically. The first step is to extract all desired information from the raw data. The second step is to analyse the extracted data.

# Sharing

## Which publication channel? 
The project is published on github.

## Who should have access and who will govern access?
The project is open access and managed through github.

## Documentation 
All the data could be found at github repository [here](https://github.com/Sinticy/sci-sw-dev-2021/tree/master/data)

## Dataset documentation and publication: 
not relevant

## Licensing 
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files, to deal
in the Software without restriction.
