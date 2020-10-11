# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Evaluation of ecosystem-specific 16S rRNA gene database 

## Main researcher: 
Christina Karmisholt Overgaard 

## Research leader: 
Morten Simonsen Dueholm

## Collaborators: 
Maybe our collaborators at Aarhus University 

## Project contact: 
Main researcher and contact person: Christina Karmisholt Overgaard, mail: cko@bio.aau.dk
Research leader: Morten Simonsen Dueholm, mail: md@bio.aau.dk 

## Related document(s): 
Not relevant  

# Planning the project

## Purpose
The purpose of these R scripts is to evaluate both novelty within our ecosystem-specific soil database and the performance of our database in regards to coverage and taxonomic classification of amplicon datasets. For our analyses we are using amplicon data that is obtained using the V57 primer which is highly used when investigating this specific environment and therefor highly representative of the datasets used in this research field.  

## Where will code exist during project?: 
During the project the code will  be available only on my computer and as it will only be me who is going to do the analyses and working on the code. In regards to back up, I have an external hard disc that I save my work on once a week of more if necessary and also all my files are backed up on the university OneDrive. 

## Software development: 
Most of the R scripts that I am using in this project have been developed by my supervisor and then I make small changes so it fits my data. Some of the R scripts and analyses have been used in another article by my supervisor and made public available using github making it possible for reviewers to test the R scripts. If I am going to delevop R scripts using packages that I am not very familiar with I will try to get my supervisor to peer-review the code. 
As for tracking bugs and issues, I will not be doing anything else than what R is doing if some of the code is written wrong. 
To ensure my results are trustworthy, I will use my knowlegde of the data am working with as well as my supervisor to discuss the outcome of my analyses, what it means and if it was as expected. If some results comes out unexpected then a more deeper investigation of the data using different methods sould be performed to ensure that the results are correct and not an error in the code. 

## Programming languages:
I will be using R studio which is an open-source integrated development environment for R. The reason this language is used is because it is highly used in our research group and during my education so I am very familiar with it as well as my colleagues. It is also choosen because it is open-source and very well used in our researh field outside our group. There are many online environments for support and teaching of this language. There are many packages developed for analysing out type of data. I will be using packages that are highly used such as Tidyverse and data.table as well as a package developed by people from our group, Ampvis2. Documentation for all the packages used is available online.    

## Methods: 
So far no statistical methods have been use, however, it will be relevant at a later time point of my PhD.  

## Code Documentation: 
There will be comments within the R script that will explain each step of the code and where the user should be aware of manual changes. There will also be a README file which explain each R scripts 

## Testing: 
Not relevant 

## Validation: 
Not relevant. I am not using any models or systems. 

## Code and data: 
Each R script will be made in according to the analyses and figure number within the article. There will also be references to the R script within the method section of the article. 

## Version control: 
I will be using manual version control as it will only be me who is working on the scripts so I have made my only version control system.

# Processing data

##  Will you processing include randomness?: 
All results can be reproduced based on the method section within the article, the public avaible R scripts and datasets. No seed is necessary. 

## Cleaning of data: 
As I am working with sequencing data, this have to be processed before the analyses can be made. We use Usearch which is a software used in linux command lines. I am using the recommended denoising pipeline and a README file is manually created with processing of each dataset where each command is documented as well as each result from the command. The processing will likewise be documented within the article so each step can be reproduced. 

## Multiple steps?: 
Most parts of the R scripts are automated, however, in the beginning of each script there are some manual steps so ensure that the right datasets have been imported. 

# Sharing
## Will you share your code? 
The code will be made public available. 
The intended users are researchers within the field of microbiology, esperically ecology and the study of microorganisms and their taxonomic classification. 
The users have to have knowlegde about taxonomic classification and how databases work in general. They have to have knowledge about the universal databases and their contents in order to evaluate the results. They also have to have a certain understading of R and the packages we use (tidyverse, data.table, Ampvis2 ect.) in order to understand the process despite of explaining text. 
I would offer support in that extend that the researcher using the R scripts would be able to contact me with question or comments and I would be given feedback in order to solve the problem or discuss any comments. This will be stated in the README files for the R scripts as well as in the article. This will ensure use of my work as well as fixing of potential errors or problems not found be my, my supervisor or reviewers. 
The contact information will be given at the top of the article. 
The users of the R scripts will be expected to cite the article. 

## Which publication channel? 
Github will be use to share all code used in this project. There will be a system to link each R script to the figures in the article. 
The raw sequencing data will be made available at Sequence Read Archive (SRA).

## Who should have access and who will govern access?
The R scripts will be made public avaible for all to use in the future. 

## Documentation 
All documentation of each analysis will be made under the method section of the article and ensure transparancy and reproducability of every analysis made in the project. 

## Dataset documentation and publication: 
All raw sequencing data sets will be made avaiable at Sequence Read Archive (SRA). This ensures reproducability of all analyses within the article as well as public use of other research within their studies. It will be made clear that with any use of the datasets a reference has to be made to the article. 

## Licensing 
It will be stated in each R script as well as the README file and article that any use of software produced in this project should be credited to the author of the codes. 

