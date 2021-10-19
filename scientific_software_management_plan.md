# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

## Project Title:
The mechanical and thermal properties of oxide and hybrid glass systems.

## Main researcher: 
Søren Strandskov Sørensen, soe@bio.aau.dk

## Research leader: 
Morten M. Smedskjær, mos@bio.aau.dk

## Collaborators: 
Other Graduates, PhDs, and PostDocs of the Oxide glass research group at Aalborg University, including:
	- Johan F. S. Christensen
	- Rasmus Christensen
	- Elsebeth Pedersen
	- Tao Du
	- Theany To

External collaborators from University of California, Los Angeles in the ParisLAB group led by Mathieu Bauchy 

## Project contact: 
Morten M. Smedskjær, mos@bio.aau.dk

## Related document(s): 
None

# Planning the project

## Purpose
The intend of the written scripts are multisided:
	1) To produce input atomic structures for use in atomistic simulations 
	2) Make input scripts for running atomistic simulations using open source software (LAMMPS or CP2K)
	3) To analyze output of atomistic simulations
The majority of code will be related to 3), but will be adapted to each specific usecase with the overall goal to obtain a deeper understanding of the dynamical and mechanical properties of the studied glassy systems.

## Where will code exist during project?: 
Code will reside locally on users computers. Backups will primarily be done through cloud-services. For highly collaborative projects, cloud-services will provide sharing of scripts. Considerations of exchanging for git repo is to be considered, but may be difficult as users are not all experienced with git.

## Software development: 
The software will be developed ad-hoc and extended as needed. Use cases are often highly individual and require some adaption for each specific case. Because of this, we develop base scripts for the most fundamental analysis which we trust and modify as needed. Issues and bugs will be sought to be identified early, by running simple test of systems of well-known behaviour.

## Programming languages:
Languages for producing input and analysing output data is usually either matlab or python. This is intended to make the code accessible and minimise platform dependencies which may be hard to overcome. Example scripts will usually be provided when publishing. Input scripts for LAMMPS will be written with a special LAMMPS syntax. 

## Methods: 
Only standardised statistical methods are used, yet methods of analyses will be developed on a per-need basis and will be largely configured for each specific system. Large parts of the code will rely on well-described mathematical methods of linear algebra. 

## Code Documentation: 
Documentation will usually rely on in-line commenting for highlighting variables of interest (which will often need adjustment). Parts of code will be introduced by in-line comments to make the code accessible to others. 

## Testing: 
Testing will primarily rely on well-known structures/systems of well-known dynamics. Testing will be performed ad-hoc and when relevant be compared with software of other authors. 

## Validation: 
Validation will usually rely on heavy ensemble averaging by running over large time frames and multiple independent simulation from which properties will be extracted.

## Code and data: 
Code will usually reside locally and sometimes externally. Raw data, on the other hand, will usually reside on external servers and not be followed by version control due to size constraints. No legal/ethical issues may be encountered for the studied systems (glasses of various kind). 

## Version control: 
Usually manually, but the goal is to implement git for some common scripts to keep track of adaptions for specific systems and their differences.

# Processing data

##  Will you processing include randomness?: 
Seeds will used in the initiation of simulations. Seeds will be saved in log files for easy reproduction of previous data.

## Cleaning of data: 
The majority of data does not need preprocessing. 

## Multiple steps?: 
Many cases require multiple steps of data processing. This is exactly why scripting is heavily employed for nearly all tasks.

# Sharing
## Will you share your code? 
We have previously shared example scripts of simulations with relevant commenting. For more, we offer highly detailed descriptions of simulations in published papers (in contrast to many others). Our potential users should be experienced in general simulation techniques and scripting languages (Matlab/Python). Contact information is usually given as the Corresponding Author who will be contacted first. The connection of scripts with papers also provide relations of code with papers.

## Which publication channel? 
Usually Supporting Information alongside papers. We strongly consider using github more actively. 

## Who should have access and who will govern access?
When published, access is generally unrestricted and we are highly willing to share. 

## Documentation 
We generally focus on providing highly reproducible descriptions in text of our procedures for inclusions in papers. When sharing, we usually, provide specific ready-to-use scripts for easy modification of the user. 

## Dataset documentation and publication: 
Only rarely, actual datasets are published, except for what is plotted in figures in published papers. Rather, scripts are provided for reproduction of data.

## Licensing 
Generally we provide our code for free modification and distribution for all non-commercial users. 

