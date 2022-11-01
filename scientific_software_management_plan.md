# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Software for Graphical Interface in Human-Exoskeleton Interaction and Collaboration

## Main researcher: 
(Me)

## Research leader: 
(Me)

## Collaborators: 
(my supervisor and 3 of my colleagues)

## Project contact: 
mingyuanh@mp.aau.dk
Mingyuan He

## Related document(s): 
(Technical instructions and requirements of the companies whose sensors or actuators are used)

# Planning the project

## Purpose
To develop a set of software with graphical interface functions. And it can also be used to visualize motion trajectory, intention estimation and all kinds of data of both human and exoskeleton.

## Where will code exist during project?: 
Github repository and personal computers. Collaborators are able to make branches and merge. There should be backups after a breakthrough or for a stable version.

## Software development: 
The software would be divided into several parts according to functions. The final goal of the functions is discussed in advance. Each collaborator should be responsible for their own part, including development and maintenance. Checkpoints are required to report obvious development. When everyone makes some progress, a merged version will be tested by each other and be backed up.

## Programming languages:
(Actually MATLAB, for we need graphical interface. And it cannot be executed in shell.)

## Methods: 
not relevant

## Code Documentation: 
Every function should be noted with explainations, even better with examples.

## Testing: 
No automatic testing. Tests are carried by other collaborates with different scenarios. 

## Validation: 
not relevant

## Code and data: 
A folder for function and a folder for data. There is possibility of too large experiment data, but not code data.

## Version control: 
Git is quite appropriate.

# Processing data

##  Will you processing include randomness?: 
Not reproducible. The results are collected from experiments so we need to save them all.

## Cleaning of data: 
not relevant

## Multiple steps?: 
Multiple steps are expected, so there will be instructions when the software is running.

# Sharing
## Will you share your code? 
I think no, it's for personal research or just within the group.

## Which publication channel? 
not relevant

## Who should have access and who will govern access?
not relevant

## Documentation 
not relevant

## Dataset documentation and publication: 
Dataset is expected if we did many experiments.

## Licensing 
not relevant
