# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title:

## Main researcher: 
*Researcher in charge of producing the code*
Luca Maurizi
## Research leader: 
*Closest researcher leader overseeing the researcher. Could be the main researcher.*
Not relevant
## Collaborators: 
*Other researchers etc. that will have access and use the code*
Not relevant
## Project contact: 
*Email of main researcher and research leader. Should also include name and contact for a person in-charge after the project ends if relevant*
lucam@build.aau.dk
## Related document(s): 
README.md
Are there requirements and policies from funding agency, collaborators or institute when conducting the research? 

# Planning the project

## Purpose
*What is the purpose the scientific software? What scientific question are you trying to answer? What scientific methodology will be used?*
The purpose of the current scientific software is to investigate the frequency distribution of certain themes treated by the European Court of Human Rights. The software works on .json files representing legal issues and are associated with an unique ID; hence, the software plots distribution vs count of these IDs.
## Where will code exist during project?: 
*Can collaborators access code? How? Will there be backup?*
Aalborg University UCloud during code writing and testing, GitHub as final repository.
## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*
Guideline provided in form of project description. Peer-review is operated upon project correction by the lecturers.
## Programming languages:
*Which languages will you use and why? Will you automate using scripts? Will you use Integrated Development Environments? To which extend will your toolchain be available to others and will it be free of cost? Literate programming? Is platform dependencies an issue? Coding style?*
Python for IDs extraction (first sub-script), R for plotting (second script), Ubuntu for software.
## Methods: 
*Which statistical methods are used? To which extend do you need to develop your own methods? To which extend can you use off-the-shell methods?* 
Shell language is used only as "glue" to connect the two sub-scripts, so that the output of the first represents the input for the second.
## Code Documentation: 
*How will the code be documented? A single README? Documentation level of individual functions and scripts? Will it be possible and useful to have automatic generation of documentation?*
Single README.md. Automatic generation of a data.csv file and a data.pdf file.
## Testing: 
*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?* 
Automatic testing embedded in the R script: it checks if there is at least one argument in the input file.
## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*
Resulting plot can be compared with exisisting literature on the topic.
## Code and data: 
*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system? Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical issues involved? What plan do you have for organization and naming ?*
Data and codes can be stored together on the same repository (no database server needed)
## Version control: 
*Manually or by a version control system? Which system and why?*
GitHub, thank to its large diffusion among users.
# Processing data

##  Will you processing include randomness?: 
*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*
Not relevant
## Cleaning of data: 
*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*
No pre-processing needed
## Multiple steps?: 
*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*
Self-standing software with unique outpout (data.csv and data.pdf)
# Sharing
## Will you share your code? 
*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do potential users have? What level of support do you offer? How do users now the level of support? Contact information? How will you measure	the level of usage? Should users cite a publication?*
Free sofwtare on GitHub. Intended user supposed to have basic coding knowledge. For enquiries, please write to: lucam@build.aau.dk
## Which publication channel? 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*
Not relevant
## Who should have access and who will govern access?
*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion of project? Does the platform of choice allow for access governance?*
Course lecturers govern the access process
## Documentation 
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*
Not relevant
## Dataset documentation and publication: 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*
Dataset is public, as it is produced by the European Court of Human Rights
## Licensing 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*
CC license
