# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview
Project Title: Data Analysis regarding human right death penalty importance

## Main researcher: 
Esther Hahyeon Kim 

## Research leader: 
Esther Hahyeon Kim

## Collaborators: 
Esther Hahyeon Kim, Hosung Yoon, Martijn Goorden, Shiraj Arora (The persons written here is working for same project with me) 

## Project contact: 
hki@cs.aau.dk 

## Related document(s):
As the participant of DIREC project,  the project will receive financial funding under the IA. 
The financial support under the funding granted by the Innovation Fund Denmark to the DIREC, said Project Partner shall enter into an Accession Agreement to the IA.

# Planning the project

## Purpose
This is for analysing the data from human right, especially regarding death penalty perspective. With the software, it will extract importance rankings from the whole json file folders, and will extract only id and importance rankings.

## Where will code exist during project?: 
*Can collaborators access code? How? Will there be backup?*
It will be uploaded at Git for collaborate working and reproductivity perspective. 

## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*
git provides code revision through new branching, therefore it could be possible without harm previous code history. I am intend to work using git. 

## Programming languages:
*Which languages will you use and why? Will you automate using scripts? Will you use Integrated Development Environments? To which extend will your toolchain be available to others and will it be free of cost? Literate programming? Is platform dependencies an issue? Coding style?*
I will use python language for this programming for its universal use and convenient characteristic of this language. 

## Methods: 
*Which statistical methods are used? To which extend do you need to develop your own methods? To which extend can you use off-the-shell methods?* 
not relevant. 

## Code Documentation: 
*How will the code be documented? A single README? Documentation level of individual functions and scripts? Will it be possible and useful to have automatic generation of documentation?*
A single README will be used for documentation. 

## Testing: 
*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?* 
As it is used through Python, automatic testing is possible for this. 

## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*
not relevant. 

## Code and data: 
*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system? Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical issues involved? What plan do you have for organization and naming ?*
not considered yet. I need to think about it follows by how the data extends. 

## Version control: 
*Manually or by a version control system? Which system and why?*
by a version control system - git kraken is used.

# Processing data

##  Will you processing include randomness?: 
*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*
It is OK to reproduce. If I change the field, then the result will be changed and it is based on operator's decision what to choose. 

## Cleaning of data: 
*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*
Now pre-processing data is not used. But according to which direction I want to extend, I could do pre-processing. 

## Multiple steps?: 
*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*
It is not necessary, but I proceed as "bash script" for proceed python code. And "python file" for extract from json files. 

# Sharing
## Will you share your code? 
*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do potential users have? What level of support do you offer? How do users now the level of support? Contact information? How will you measure	the level of usage? Should users cite a publication?*
Yes. as format of source code will be shared. 

## Which publication channel? 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*
github will be publication channel. 

## Who should have access and who will govern access?
*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion of project? Does the platform of choice allow for access governance?*
It will be publicated. 

## Documentation 
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*
Yes. It is sufficient documentation. 

## Dataset documentation and publication: 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*
not relevant . 

## Licensing 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*
The software is free for non-commercial applications for academic institutions that deliver academic degrees. As academic use, we consider only work performed by researchers or students at institutions delivering academic degrees. In addition, the work or the worker may not be contracted by any non-academic institution. Any other use requires a license.
