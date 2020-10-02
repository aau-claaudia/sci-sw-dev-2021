# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: kpthesaurus keyword ID scanner

## Main researcher: 
Kasper Skytte Andersen 

## Research leader: 
Per Halkjær Nielsen

## Collaborators: 
Kasper Skytte Andersen

## Project contact: 
ksa@bio.aau.dk or phn@bio.aau.dk

## Related document(s): 
None.

# Planning the project

## Purpose
The purpose of this project is to demonstrate fulfillment of the learning objectives for the super awesome PhD course "Tools for Scientific Software Development and Data Science"

## Where will code exist during project?: 
On GitHub as a private repositiory. Any collaborators (internal or external) must be invited to the repository to be able to contribute.

## Software development: 
The guidelines explained in this paper https://arxiv.org/abs/1609.00037 will be followed to ensure proper software development

## Programming languages:
BASH to wrap Python and R scripts. Docker to administrate containers to ensure reproducibility and compatibility. Docker hub integrated with GitHub repository to keep it up to date. The software will be free of charge and used for anything as long as it is cited (MIT license).

## Methods: 
Bayesian statistics are always good.

## Code Documentation: 
pkgdown is a great R package to generate a static HTML documentation webpage with documentation of the R scripts used

## Testing: 
Could use BATS suite for testing the BASH script like with AutoTax. https://github.com/bats-core/bats-core

## Validation: 
Output data must be identical to that in the example_output folder. 

## Code and data: 
Data is small enough to fit in a GitHub repository. Files will be named accoring to entry in the European Court of Human Rights database. 

## Version control: 
Always. And always git.

# Processing data

##  Will you processing include randomness?: 
Always a good idea to set the seed. I like 42.

## Cleaning of data: 
None.

## Multiple steps?: 
Two step process. One to extract ID's, the next to plot the distribution. Two different scripts for each wrapped in a convenient and user friendly BASH script.

# Sharing
## Will you share your code? 
Citing is a must. When development is done it will be public and free to use under the MIT license. Users must have basic Linux skill and the intented audience is researchers in academia. Issues and usage level will not be tracked.

## Which publication channel? 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*

## Who should have access and who will govern access?
Only the main researcher will administrate access of others. Private repository until development is finished. Open source code but no contributors other than those invited.

## Documentation 
See the readme. Perhaps also https://github.com/KasperSkytte/AutoTax 

## Dataset documentation and publication: 
Example data will be provided under the MIT license. CLAAUDIA for data storage with DOI link would be awesome in the future!

## Licensing 
MIT license
