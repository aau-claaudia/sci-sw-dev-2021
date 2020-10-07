# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Model for gene prediction using AI

## Main researcher: 
Celine Petersen

## Research leader: 
Kåre Lehmann Nielsen 

## Collaborators: 
Trine Sørensen 

## Project contact: 
Main researcher: cepe@bio.aau.dk
Researcher leader: kln@bio.aau.dk

## Related document(s): 
Not relevant

# Planning the project

## Purpose
The idea is to create a gene model that predicts a group of compounds/enzymes in filamentous fungi with for example AI or machine learning. The compounds/enzymes are not determined yet but it could be quinones or hydrolases. This can be used for high throughput screening of fungal genomes to assess whether a fungus is capable of producing the compounds/enzymes of interest and hopefully ease novel compound/enzyme discoveries if the gene is very similar to something in the database in the program.  

## Where will code exist during project?: 
The code will be stored on local bioservers and github where collaborators can access the code at any time.

## Software development: 
The development of the software will be ad-hoc and it will be going through in-house quality check along the way to fix bugs and issues. Validation is performed with well-known data containing genomes with known compounds/enzymes. 

## Programming languages:
The software will most likely consists of different python and bash scripts to analyze the given genomes. Dependencies will be controlled regularly. 

## Methods: 
The exact statistical model used for the software has not been determined yet, but it will most likely use existing methods and then modification of these to my own needs. This part of the Scientific Software Management Plan will be revised at a later point when more of the groundwork of the software has been formulated.  

## Code Documentation: 
The code will be documented comprehensively in the README with for example introduction to the software, features, installation, usage, example data, acknowledgements, license and so on. Furthermore, individual scripts will include documentations of their function and usage in case an individual script is used only.   

## Testing: 
The software will be initially fitted on a training dataset and then the fitted model is used in prediction of the observations in a validation dataset to obtain an unbiased assessment of the model. If sign of overfitting is being observed, e.g. increasement of error on the validation dataset, regularization ad-hoc can be made. Subsequently a test dataset is used to evaluate the final model. The software will in the end be compared to similar gene predictors such as antiSMASH.    

## Validation: 
The software will be evaluated on both validation and test dataset as mentioned above. Further validation will be consider at a later stage. 

## Code and data: 
The code will be structured and available in git and further development take place on local bioserver with a structured filesystem and then later commited to git at appropriate stages. Genes that are confirmed linked to sequences encoding the compounds/enzymes will be made as a database and depending on the size of the database it may be necessary to locate it on database server.  

## Version control: 
Version control with git will be used for simple sharing and correction of the software. With git several collaborators can work at the same time with different tasks and then afterwards combine the work easily. Additionally, git is well used among fellow researcher due to the open source code. Comments and requests are straightforward.

# Processing data

##  Will you processing include randomness?: 
The results should be somewhat reproducible when redoing the analysis on the same genome hence the same compounds/enzymes are predicted each time. To which extent will be evaluated on a later stage. However, the model will must likely contain random variation.

## Cleaning of data: 
The software should be user-friendly which means no pre-process of data. The input file should therefore only be the genome in .fasta format and if the gene prediction should be for a subgroup or all compounds/enzymes.

## Multiple steps?: 
The software will most likely contain several scripts for different tasks and then an overall script controlling the other script hence the process will be fully automated. 

# Sharing
## Will you share your code? 
The software will be shared on github hence all interested users can benefit from it. The intended users are mainly fellow researcher working within the fields of bioinformatics, genetics, and DNA sequencing, but also newbies to bioinformatics such as molecular biologists that are interested in knowing if their organism produce some compounds/enzymes and their location to ease genetic engineering. Hence the code must be user-friendly so only simple commands should be execute by the user. Support will be offered by mail. Usage of the software requires citation.      

## Which publication channel? 
The software and an article showing the features and results of the software will be published in a suitable journal. Afterwards the article will be linked to pure and software will get public on github. 

## Who should have access and who will govern access?
No restricted access. 

## Documentation 
The software will be documented in the article, README file in github as well as documentation in individual script also stored in github. In these, software dependencies and their versions will be stated. The article and supplementary note will describe every outcome of the software and statistics. The article will link to the github, which describe the usage and include a data example to ease startup.      

## Dataset documentation and publication: 
All training, validation, and test datasets associated with the software development as well as an example dataset will be available thus fellow researchers can assess them if needed. The FAIR principles will be applied easing the process for fellow researchers. The used datasets are either already documented or will be documented before publication. 

## Licensing 
The licensing should follow the GNU General Public License.

