# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: High accuracy long-read amplicon characterization of microbial rRNA operon genes

## Main researcher: 
Emil Aarre Sørensen

## Research leader: 
Mads Albertsen and Søren Karst

## Collaborators: 
Søren Karst

## Project contact: 
Main researcher: easo@bio.aau.dk
Research leader: ma@bio.aau.dk, smk@bio.aau.dk

## Related document(s): 
None

# Planning the project

## Purpose
Modifying, using and maintaining the longread_umi software by smk for alternative UMI-labeling approaches, allowing for less biased amplicon generation. 
The main goal of the project is to develop an approach for unbiased amplification of rRNA genes in prokaryotes and eukaryotes while utilizing unique molecular identifiers to drastically increase the quality of the sequenced reads. 

## Where will code exist during project?: 
On local servers and git.hub

## Software development: 
The software will most likely be developed ad-hoc with in house quality check as the protocol develops. When the protocol is finalized a more formal addition to the software is planned. The software will be validated on well known data originating from a bacterial mock community with the ground truth already being known. 

## Programming languages:
From an application perspective simple scripting with common bash languages utlizing the developed pipeline to treat data from thousands of samples.
In development likewise common unix/shell langauges for bash scripting e.g. gawk, sed, etc. Potentially also python but only to a lesser extend, as the ground work already have been developed. Dependencies should not be an issue, at least for the moment but need to controlled regularly. 

## Methods: 
I will mainly be using already developed methods, modifying these to my needs. 

## Code Documentation: 
Well documented in a README, but also documentation of individual script. Likewise, there will be example data and examples on how to utilize the software.

## Testing: 
The software will be tested on both old and new sequencing data of ensuring any modifications in either the laboratory protocol or the software does not comprimise the results. This will have to be done manually/ad-hoc as the protocols changes. Quality controls steps are already included in the software ensuring the results have biological meaning. E.g. identifying issuses as tandem reads and strand bias together with stringent filtering. 

## Validation: 
We have a seperate qc-pipeline to investigate/validate the results, such as error-rate, UMI-coverage and how large a fraction of the input data is utilized. Furthermore, quality controls steps are already included in the software ensuring the results have biological meaning. E.g. identifying issuses as tandem reads and strand bias together with stringent filtering. Continuous validation and testing is nescassary as the software stil can be optimized increaseing the yield compared to the input, as well as speeding up the process. Furthermore, changes in basecalling and/or flowcell type for Nanopore data can have drastical effects of the results. At the moment this influences parameters that needs to be determined emperically, with guidelines/defaults being specified in the software based on our experience. 

## Code and data: 
The current version of the code are structued and available via git with continous development on local servers is a somewhat structured filesystem. New addition to the code that have not been fully investigated are available via git as a development version to be used at own risk. The software is meant to process large amount of sequencing data stored in database servers. A smaller example dataset is available on git together with the software enabling users to validate their usage of the software. 

## Version control: 
Version control via git, for easy open-acces sharing of the software. Additionally git is commenly used in our research area making it easier for other researchers to utilize. 
The open source code in git likewise make it easy for fellow researchers to comment, request and understand the code.  

# Processing data

##  Will you processing include randomness?: 
The results can not be be reproduced (unless using the exact same version of the software and the exact same input data), as biological differences and laboratory obstacles in producing the data makes it impossible for two datasets to produce the exact same result.

## Cleaning of data: 
Data does not need to be pre-processed, however, the user have to pay attention to the type of sequencing data that should be processed (e.g. PacBio data, Nanopore data, basecall version). If not specified in the software this can drastical effects on the results and is also warned when utilizing the software. 

## Multiple steps?: 
The main process (generating UMI-consensus sequenses) is fully automated, with additional obtions being available in different scripts/commands such as demultiplexing. 

# Sharing
## Will you share your code? 
The software is shared via git and the intended users are fellow researchers working with bioinformatics and DNA sequencing. Support is offered via mail. 
The software has been developed by Søren Karst and include a reference for a publication for users to cite. 

## Which publication channel? 
-

## Who should have access and who will govern access?
No restrictions.

## Documentation 
The software includes thorough documentation and example usage with example data.

## Dataset documentation and publication: 
A larger dataset is available through the publication associated with the software development.

## Licensing 
GNU General Public License.
