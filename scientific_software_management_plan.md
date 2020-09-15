# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: AI-Box

## Main researcher: 
Emil Blixt Hansen

## Research leader: 
*Not relevant*

## Collaborators: 
My Supervisor - Simon Bøgh

## Project contact: 
Main researcher and main contact: 
* Emil Blixt Hansen - [ebh@mp.aau.dk](mailto:ebh@mp.aau.dk)

Collaborator:
* Simon Bøgh - [sb@mp.aau.dk](mailto:sb@mp.aau.dk)

## Related document(s): 
There are no external institution/organisation/etc. that have influence on the work and the results.

# Planning the project

## Purpose
The software program AI-Box aims to bring some Industry 4.0 technologies down the Small and Medium-sized Enterprises (SMEs). 
The main technologies is Machine Learning and IoT focused on image data and time-series data.
Currently the main research of these technologies in Industrial context is focused on the larger enterprises with the resources and knowledge to invest in it.
Therefore, this research is conducted on how to make the technologies more available to the SMEs without them needing software engineers and data scientist to utilise them.

## Where will code exist during project?: 
The code is currently stored on [BitBucket](https://bitbucket.org/) through git version control.

## Software development: 
The software is mostly developed ad-hoc, based on the what is discovered in the literature and interviews with relevant SMES.
Since this is a signal man PhD study, the main code is developed by me and thus resources are limited. 
However, everytime an issue is discovered an issue is created at BitBucket and is managed through it. 
With every generated result the results is carefully reviewed by myself and if I discover something I will being in my supervisor. 

## Programming languages:
The program is mainly written in python 3.6 for the quick prototyping and development along with all the data science modules.
The program is a fairly large Django webapp project with certain dependencies, therefore a installation bash script has been created to install the requirements and setup the environment.
Since it is written in Python the code styling is following the PEP8 syntax, with much help from PyCharm built in checker.

## Methods: 
The methods is neural networks and is mainly custom implementation based on well known networks.

## Code Documentation: 
A single README is present with covers the main aspect of the program. Moreover, every method and class in the project as a docstring description.
It would be possible to automate a reference documentation site, since all the docstrings are following the standards.

## Testing: 
A testing plan is in place which is a unit test with pytest. Currently the coverage is only on 29%. 
However, everytime a push is made to the development and master branch an automated test is generated. 
Which also generates a coverage file and badge.  

## Validation: 
It is given that validation of the model is needed. Since the models are custom implementation trying to reduce the amount of parameters and size, it needs to be validated.
Validation is following the norm of machine leaning with a testing set that the mode has never seen before.

## Code and data: 
All the large files such as pretrained models weights (which can exceed 100MB) and testing images are stored in Git Large File Storage (LFS).
Moreover, runtime generated data such as log files, temporary files and database instances is excluded from Git through .gitignore.

## Version control: 
As stated it is version controlled through git with BitBucket. The reason behind BitBucket is that our research group (at the time) pro license for private repositories; 
However, with the reason changes to GitHub this is no longer a requirement to use BitBucket.  

# Processing data

##  Will you processing include randomness?: 
Since I work with neural networks and with small amount of data randomness is a requirement for augmentation of data and model initialisation.
However, all randomness function is being seeded and inorder to compare models and changes to models.

## Cleaning of data: 
Currently only image data is being used, and thus the main preprocessing is converting it to a ndarray and normalise the images between 0-1.
Moreover, augmentation to the data is also performed (e.g. blur, zoom, crop). This is done to enforce the learning and is documented both in a paper and in code.

## Multiple steps?: 
No, only the installation as mentioned

# Sharing
## Will you share your code? 
Currently it is in a private repository, so no.

## Which publication channel? 
Currently there is no direct hyperlink between the published articles and the BitBucket repository, mainly because it is private.

## Who should have access and who will govern access?
Only relevant parties should have access and it is governed by me.

## Documentation 
More documentation besides the README, articles and docstring is very beneficial, sadly time is a constrain hence little effort is put into expanding the decimation.

## Dataset documentation and publication: 
There is a plan to publish a dataset of machine data from an industrial partner company and FAIR is defiantly being investigated to be used for it to make it more available to other researches.

## Licensing 
Currently the license is distributed by me since it is a closed project therefore there is only license to use and modify on a per user basis.
