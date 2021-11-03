# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)


# Overview
Project Title: Speech prediction...(simplified due to confidentiality)

## Main researcher: 
Yurii Iotov

## Research leader: 
Mads...(simplified due to confidentiality)

## Collaborators:
Mads...(simplified due to confidentiality)

## Project contact: 
"not relevant"

## Related document(s): 
Study Plan, employment contract

# Planning the project

## Purpose
The MATLAB script is used to carry out several experiments related to linear prediction of speech signals. The output of the script is different plots visualizing prediction performance of different prediction schemes. The main performance metric is the prediction gain.

## Where will code exist during project?: 
The code exists on the main researcher's work computer and automatically back-up with OneDrive, providing also file's history. The git system will be used for the future scripts as well to secure the scripts and organize collaboration in a better way.

## Software development: 
The codes will be developed in a simple structure incl different functions for better debug, and providing comments for better understanding. The code will be tested, providing the inputs and comparing to the expected outputs. Collaborators will be involved in checking the code if issue occur.

## Programming languages:
The codes will be developed in Matlab, since it is the most convenient software with built-in functions to use in our scientific field. Due to sensitive data, it might not be or available to others, except internally.

## Methods: 
Time and frequency domain analysis of speech signals. Currently, there is no need to develop the own methods.

## Code Documentation: 
It is expected that the final version of the code will be documented in a README file as well. Currently, the code is commented.

## Testing: 
- Not relevant

## Validation: 
It will be possible to simulate a specific model and compare to the expected results shown in the literature. 

## Code and data:
- Not relevant

## Version control: 
Version control provided by git can will used. With useful comments when commit, it gives quite good structure and overview, as well as simplifies collaborative work. Automatic sync by OneDerive can also provide version control, but it is limited in terms of missing comments.

# Processing data

##  Will you processing include randomness?: 
Providing necessary simulation details and conditions, results are reproducible.

## Cleaning of data: 
- Not relevant

## Multiple steps?: 
The script contains several functions, it is automated, so one run is enough to get the results.

# Sharing
## Will you share your code? 
Only internal sharing is allowed due to confidentiality of the project.

## Which publication channel? 
- Not relevant

## Who should have access and who will govern access?
- Not relevant

## Documentation 
Basic documentation will be provided with the scripts.

## Dataset documentation and publication: 
- Not relevant

## Licensing 
- Not relevant
