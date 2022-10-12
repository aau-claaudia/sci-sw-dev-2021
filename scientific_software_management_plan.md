# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: mbgalan/sci-sw-dev-2022

## Main researcher: 
*Researcher in charge of producing the code*
Mikkel van Binsbergen-Galán

## Research leader: 
*Closest researcher leader overseeing the researcher. Could be the main researcher.*
same as main

## Collaborators: 
*Other researchers etc. that will have access and use the code*
no


## Project contact: 
*Email of main researcher and research leader. Should also include name and contact for a person in-charge after the project ends if relevant*
mbg@energy.aau.dk


## Related document(s): 
*Are there requirements and policies from funding agency, collaborators or institute when conducting the research?*
"not relevant"

# Planning the project

## Purpose
*What is the purpose the scientific software? What scientific question are you trying to answer? What scientific methodology will be used?*
Practice using propor scientific methods for software development, uncluding:
	- structuring of code into folders and scripts
	- version control with git
	- easy execution of programme with UNIX based shell script


## Where will code exist during project?: 
*Can collaborators access code? How? Will there be backup?*
The project template exists on public [GitHub repo](https://github.com/CLAAUDIA-teaching/sci-sw-dev-2021)
This project has been forked to a personal github repo and subsecuently cloned for development on a UCloud virtual machine.


## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*
Software is developed ad-hoc with continuous peer reviewing. Each feature is tested before the change is saved and commited to git. 


## Programming languages:
*Which languages will you use and why? Will you automate using scripts? Will you use Integrated Development Environments? To which extend will your toolchain be available to others and will it be free of cost? Literate programming? Is platform dependencies an issue? Coding style?*
Development is performed through the command line interface and editing of scripts in the 'nano' editor.


## Methods: 
*Which statistical methods are used? To which extend do you need to develop your own methods? To which extend can you use off-the-shell methods?* 
"not relevant"


## Code Documentation: 
*How will the code be documented? A single README? Documentation level of individual functions and scripts? Will it be possible and useful to have automatic generation of documentation?*
Code documentation is performed both with a README.md file and with comments in relevant scripts. 


## Testing: 
*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?* 
Testing is performed manually and ad-hoc. Only small changes are made at once before the code is tested and small test scipts are used to test functions before they are implemented into the main scripts. 


## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*
Validation through project submission. 

## Code and data: 
*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system? Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical issues involved? What plan do you have for organization and naming ?*
The project contains only few files and the /data folder contains text files (.json) which are not too large nor too numerous for git to handle.


## Version control: 
*Manually or by a version control system? Which system and why?*
Version control with git, with master repo on github.


# Processing data

##  Will you processing include randomness?: 
*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*
Results are deterministic - unless files in /data folder are change/added/deleted.

## Cleaning of data: 
*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*
Data is processed internally through a python script.

## Multiple steps?: 
*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*
The whole project may be run be executing the fil runme.sh.


# Sharing
## Will you share your code? 
*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do potential users have? What level of support do you offer? How do users now the level of support? Contact information? How will you measure	the level of usage? Should users cite a publication?*
The (git) project is submitted in the form of a pull request back to the origin template project. 

## Which publication channel? 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*
"not relevant"

## Who should have access and who will govern access?
*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion of project? Does the platform of choice allow for access governance?*
(if other contributers join) Project lead should be the only one to accept pull requests to the master branch.

## Documentation 
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*
Documentation is performed in readme file as well as thorugh commentating thorughout scripts. 

## Dataset documentation and publication: 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*
Data is already public. 

## Licensing 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*
for more info see: [Creative Commons website](https://creativecommons.org/licenses/by/4.0/)
License: CC BY 4.0
