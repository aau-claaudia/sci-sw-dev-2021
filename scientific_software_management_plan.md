# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title:

Detection and Control of Harmful Vibrations in Wind Turbines
## Main researcher: 
*Researcher in charge of producing the code*

Chandramouli Santhanam , PhD student, Department of electronic systems, Aalborg University
## Research leader: 
*Closest researcher leader overseeing the researcher. Could be the main researcher.*

Torben Knudsen, Associate Professor, Department of electronic systems, Aalborg University
## Collaborators: 
*Other researchers etc. that will have access and use the code*

Riccardo Riva, Researcher, Department of Wind Energy, Technical University of Denmark
## Project contact: 
*Email of main researcher and research leader. Should also include name and contact for a person in-charge after the project ends if relevant*

Chandramouli Santhanam - chsa@es.aau.dk
Torben Knudsen - tk@es.aau.dk
Other contacts - N/A
## Related document(s): 

Are there requirements and policies from funding agency, collaborators or institute when conducting the research? 
There is a data confidentiality condition that restricts the data sharing to project collaborators only. 
 
# Planning the project

## Purpose
*What is the purpose of the scientific software? What scientific question are you trying to answer? What scientific methodology will be used?*

The software is just a collection of ad-hoc python scripts that will be used to analyse data from the results of wind turbine simulations.
The codes as such do not have a single scientific question that is being tried to answer but answer a broad range of questions related to wind turbine stability.  
The methodologies used are related to concepts of system identification, machine learning and time series analysis. 

## Where will code exist during project?: 
*Can collaborators access code? How? Will there be backup?*

Yes. The code is maintained in a GitLab repository.
Backup is maintained in the repository.
 
## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*

The codes will be developed ad-hoc based on the analysis that needs to be done for the tasks. 
Peer review of code will be available for selected codes where the PhD student needs help.
Trustworthiness of results is ensured by implementing sanity checks in the process by including simple test cases.
 
## Programming languages:
*Which languages will you use and why? Will you automate using scripts? Will you use Integrated Development Environments? To which extend will your toolchain be available to others and will it be free of cost? Literate programming? Is platform dependencies an issue? Coding style?*

Python will be the predominant programming language. However some scripts will be written in MATLAB.
The other questions are N/A. 

## Methods: 
*Which statistical methods are used? To which extend do you need to develop your own methods? To which extend can you use off-the-shell methods?* 

Statistical methods used are the ones commonly used in system identification and time series analysis. 
Most methods used are available in existing libraries and hence can be used off-the-shell. 

## Code Documentation: 
*How will the code be documented? A single README? Documentation level of individual functions and scripts? Will it be possible and useful to have automatic generation of documentation?*

Code will be documented with docstrings and inline comments.
Since the ocde is used in ad-hoc basis, generating regular documentation is not benficial.  

## Testing: 
*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?* 

There will be simple test cases included for critical / complex pieces of codes. 
The testing is not automatic and will be ad-hoc. There is no comparison software because the methods developed are unique to this project. 

## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*

Validation is performed using test cases with no noise and simple inputs. 
The results returned by the code for these simple inputs must match the known text-book performance of the system.

## Code and data: 
*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system? Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical issues involved? What plan do you have for organization and naming ?*

Code will be structured in the GitLab repository. Data is too large to reside in a version control system and hence will be maintained with the PhD student. Relevant data will be shared via OneDrive.
There are no political , legal or ethical issues involved as the data is shared only within the project partners.
 
## Version control: 
*Manually or by a version control system? Which system and why?*

Version control is done using Git. Because the project collaborators are familiar with the system and facilitates easy collbaoration. 

# Processing data

##  Will you processing include randomness?: 
*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*

To the current knowledge, the processing will not include randomness, but there will be randomness in the input data. 
The data for each simulation with the random input will be saved and be available with the PhD student but not shared in the repository due to size limitations.
But the seed information and the results of the processing of the different realizations will be saved and available in the repository.
The results need to be exactly reproduced, so saving the seed information helps.  

## Cleaning of data: 
*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*

Pre-processing is necessary. The python and matlab scripts for pre-processing are available in a seperate GitLab repository, written by researchers from DTU Wind Energy who 
have developed the simulation software that will be used in this project. (This simulation software is not developed in this project, it has already been developed at DTU)
The documentation and test cases of the pre-processing scripts are available in the GitLab repository maintained by the researchers.

## Multiple steps?: 
*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*

Sometimes it is necessary to perform multiple steps to obtain the results. But the manual intervention is aimed to be kept to a minimum.
Automation is planned wherever possible, via the python library OpenMDAO.

# Sharing
## Will you share your code? 
*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do potential users have? What level of support do you offer? How do users now the level of support? Contact information? How will you measure	the level of usage? Should users cite a publication?*

Apart from the sharing within the project partners previously mentiond, the codes used in particular publications will be hosted in a seperate GitLab repository and shared 
with the public. The intended users are the general readers of the research article - students, researchers and professors. 
The users are expected to have a basic knowledge in statistical processes and data handling using python. 
Support will be offered to relevant questions related to the implementation of algorithms, and not for basic programming or statistics. 
The level of usage can be measured from the GitLab statistics. Users should cite the publication that accompanies the code.

## Which publication channel? 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*

GitLab is the planned channel to host the code. 

## Who should have access and who will govern access?
*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion of project? Does the platform of choice allow for access governance?*

Editing is restricted to the PhD student, supervisor and other collaborators. 

## Documentation 
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*

the paper should be sufficient documentation. 
Other context relevant documentation will be available in the readme file or in the docstrings and inline comments.

## Dataset documentation and publication: 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*

The dataset cannot be published because of the confidentiality agreement as some of the data might include some sensitive information related to specific wind turbine designs.

## Licensing 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*

The users will have the right to copy, modify, distribute and use te codes in their propreitary software. 
