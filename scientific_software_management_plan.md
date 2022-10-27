# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Data Analysis Related to the European Court of Human Rights

## Main researcher: 
Peng Wang

## Research leader: 
Peng Wang

## Collaborators: 
Peng Wang, Yubo Wang. 
Thanks Yubo Wang help for this project, including enhancing my understanding of Github and resolving minor issues in the code.

## Project contact: 
pengw@es.aau.dk Peng Wang

## Related document(s): 
not relevant I think

# Planning the project

## Purpose
*What is the purpose the scientific software? What scientific question are you trying to answer? What scientific methodology will be used?*

Scientific software is designed to carry out research in a more standardised and convincing way. Using open source python software to analyse the field source distribution of RF circuit hardware under different current excitations. The methods I use include circuit equivalence, AI combination, etc.

## Where will code exist during project?: 
*Can collaborators access code? How? Will there be backup?*

The code is on my local computer during the project. Collaborators can get it via Git, but we didn't fetch it together to do this together.



## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*

Complete software development with the help of Git. I think whether or not to follow a formal standard depends on the scale, and if it's a larger scale, there should be a formal standard. Of course, peer-review is good. peer-review is a good way to find bugs, and also debugging yourself is a strategy that includes running in multiple environments, etc. Simple examples can be used to run tests.



## Programming languages:
*Which languages will you use and why? Will you automate using scripts? Will you use Integrated Development Environments? To which extend will your toolchain be available to others and will it be free of cost? Literate programming? Is platform dependencies an issue? Coding style?*

The languages I use are python and matlab, which are very easy to get used to. I will use scripted automation, but of course, not particularly good at it. For python, the IDEs I like are spyder, vscode and pycharm. It is still more important to reduce the dependency on the platform. I like clean and clear code that I can see and understand quickly after a while.




## Methods: 
*Which statistical methods are used? To which extend do you need to develop your own methods? To which extend can you use off-the-shell methods?* 

Standardised statistical methods and some transformations of the data. At the moment I don't have much need to develop some methods myself.




## Code Documentation: 
*How will the code be documented? A single README? Documentation level of individual functions and scripts? Will it be possible and useful to have automatic generation of documentation?*

I usually comment in the code to make it look neat and tidy. I also use the read me file to note what each file does and which files are the main files.




## Testing: 
*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?* 

Testing software is often done through simple examples as well as extreme cases. No automated testing has been considered. python in a spyder environment, intermediate variables are easy to read. Of course vscode's debug mode is also possible. Comparisons will be made, if there is software that is close to it.






## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*

Verification requires multiple platforms or similar software as an aid. Comparison of results with multiple other software in the same situation, simulation of multiple situations, etc.I ensure that my results are credible by comparing them with other softwares.


## Code and data: 
*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system? Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical issues involved? What plan do you have for organization and naming ?*

It is of course important to normalise the data, which is not particularly voluminous and has no political, legal or ethical issues.



## Version control: 
*Manually or by a version control system? Which system and why?*

Usually manually, but sometimes I also use Git. Depending on whether I'm operating on a different platform.



# Processing data

##  Will you processing include randomness?: 
*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*

There is a certain amount of randomness. Complete replication may be difficult, but approximate replication is perfectly possible.





## Cleaning of data: 
*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*

Pre-processing of the data, including normalisation and standardisation, is required. I have written this part myself, but you can also import it from the library files, such as the MinMaxScaler function.






## Multiple steps?: 
*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*

It can be integrated through scripting, including directly in python or can use vb language etc.



# Sharing
## Will you share your code? 
*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do potential users have? What level of support do you offer? How do users now the level of support? Contact information? How will you measure	the level of usage? Should users cite a publication?*

Whether or not I share the code depends on the progress of my project. And whether there is a relevant property right under protection. What is shared is the source code and the potential user needs to have some knowledge of the hardware in question.




## Which publication channel? 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*

Generally supported by papers. DOI.




## Who should have access and who will govern access?
*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion of project? Does the platform of choice allow for access governance?*

Permissions can be opened after the papers are published. I am also happy to share my results and provide assistance to others after the papers have been published.



## Documentation 
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*

Usually based on models from the papers, which can be highly reproducible. This is also an example of the user getting to know the software, which can then be modified by the user as required.



## Dataset documentation and publication: 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*

Rarely, I guess. Unless it is relevant data mapped in a paper, it is difficult to decide to share data in some important studies.




## Licensing 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*

Generally speaking, sharing is non-commercial and unadulterated by purpose. However, it is hoped that it will increase the number of citations to the papers.

