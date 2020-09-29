# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview
Project Title: Start-up of new Anaerobic Digester at Mariagerfjord Vand A/S

## Main researcher: 
Anne-Kirstine Corfitz Petersen (akc@bio.aau.dk)

## Research leader: 
Per Halkjær Nielsen (phn@bio.aau.dk)

## Collaborators: 
Chenjing Jiang (chj@bio.aau.dk)

Miriam Peces Gomez (mpg@bio.aau.dk)

Marta Anna Nierychlo (mni@bio.aau.dk)

## Project contact: 
Main contactperson: Per Halkjær Nielsen (phn@bio.aau.dk)

Contactperson: Anne-Kirstine Corfitz Petersen (akc@bio.aau.dk)

Contactperson in-charge after the project ends: Marta Anna Nierychlo (mni@bio.aau.dk)

## Related document(s): 
Are there requirements and policies from funding agency, collaborators or institute when conducting the research? 
- Not relevant

# Planning the project

## Purpose
R and R-studio will be used to visulise the changes/variations in the microbial community doing the start-up of a nye anaerobic digester. 
The digester wil have a known starter culture tranferred from the old digester into the new digester and as a new substrate primary sludge will be added together with activated sludge. 
Bioinformatic will in the software be used to investigate correlation between forinstance substrate change and shifts in the microbial commmunity. 

## Where will code exist during project?: 
The code will exist on a locale computer and back-up will frequently be made to the online AAU cloud or OneDrive, depending on the content. 
Also the code will be uploaded to a private git resporatory and collaborates can get acess, after request, to look/edit (due to purpose).  

## Software/script development: 
Scripts are made in R-markdown making it possible to have explanations in the code. 
Collaboraters will look through the code to find errors and 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*

## Programming languages:
*Which languages will you use and why? Will you automate using scripts? Will you use Integrated Development Environments? To which extend will your toolchain be available to others and will it be free of cost? Literate programming? Is platform dependencies an issue? Coding style?*

## Methods: 
*Which statistical methods are used? To which extend do you need to develop your own methods? To which extend can you use off-the-shell methods?* 

## Code Documentation: 
*How will the code be documented? A single README? Documentation level of individual functions and scripts? Will it be possible and useful to have automatic generation of documentation?*

## Testing: 
*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?* 

## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*

## Code and data: 
*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system? Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical issues involved? What plan do you have for organization and naming ?*

## Version control: 
*Manually or by a version control system? Which system and why?*

# Processing data

##  Will you processing include randomness?: 
*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*

## Cleaning of data: 
*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*

## Multiple steps?: 
*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*

# Sharing
## Will you share your code? 
*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do potential users have? What level of support do you offer? How do users now the level of support? Contact information? How will you measure	the level of usage? Should users cite a publication?*

## Which publication channel? 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*

## Who should have access and who will govern access?
*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion of project? Does the platform of choice allow for access governance?*

## Documentation 
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*

## Dataset documentation and publication: 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*

## Licensing 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*

