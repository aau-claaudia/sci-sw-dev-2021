# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title:

## Main researcher: 
*Pierre Jouannais*

## Research leader: 
**Pierre Jouannais*

## Collaborators: 
*Not relevant*

## Project contact: 
*pijo@plan.aau.dk*

## Related document(s): 

Are there requirements and policies from funding agency, collaborators or institute when conducting the research? 

# Planning the project

## Purpose
*I am trying to visualize the frequency of some legal IDs across some records from the European Court of Human Rights. To do so, we will combine a pytho ncode to extract IDs from the original files, and a R file to plot distributions after the processing by python.*

## Where will code exist during project?: 
*The data is hosted on a forked github repository and locally on the main researcher's hard drive.*

## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*

## Programming languages:
*Python will be used to extract IDs from case files and R to plot distributions from after ID extraction. A unique bash script will chain both processes to yield the figures.*

## Methods: 
*Not relevant* 

## Code Documentation: 
*All documentation will be provided in the README file.*

## Testing: 
*Not relevant* 

## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*

## Code and data: 
*The original data was provided by the European Court of Human Rights and is public. It is stored in the data folder and only requires minimal space (4,08 MB)*

## Version control: 
*GIT is used for version control*

# Processing data

##  Will you processing include randomness?: 
*The results can be reproduced by running the same scripts as there is no randomness.*

## Cleaning of data: 
*No cleaning is necessary*

## Multiple steps?: 
*The python and R processing are combined within the bash script.*

# Sharing
## Will you share your code? 
*The code is shared via the public github repository?*

## Which publication channel? 
*Not relevant.*

## Who should have access and who will govern access?
*The project is fully public.*

## Documentation 
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*

## Dataset documentation and publication: 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*

## Licensing 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*

