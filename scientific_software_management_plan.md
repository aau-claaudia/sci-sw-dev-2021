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
Collaboraters will be involved if issue occure in the code and are to help troubleshoote and resolve problems. They will look through the code to check for errors and make sure information/explanations in the code are sufficient.  

## Programming languages:
The programming language used will mainly be R. 
This is the most used software in my the department and often used in this scientific field. 

If the project leads to publication of results in articles will the scipts be avalible on git free of cost. 

## Methods: 
The basic data analysis will build on methods which has been used previusly. For more advanced or in depth analysis inspiration to methods will be found i newer (less than 3 years old) articles and modified to the data. 

Methods used will among others be: Heatmap, boxplots, PCA plot, Timeserie visualisation (abundance vs time), P-values, correlation investigations etc.. 

## Code Documentation: 
The code will be documented in a Readme file and with explanatory comments in the code. 

## Testing: 
The "testthat" package for R can help catching errors and issues (https://testthat.r-lib.org/). 
I have not yet used this package and need to find out how to implement it. The hope is that this pakage can help find code parts not working and save time trouble shooting the code.  

## Validation:
- Not relevant
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*

## Code and data: 
The code would probably be divieded in two files. One for the bacteria and one for the archaea, bacause these have induvidual big dataset, and the software can be slower and the code chaotic if there is to much data and different datasets. 
Due to naming everything refering to bacteria will be marked with a "B" and all refering to archaea will be marked with an "A". 

## Version control: 
Version control in git gives a very nice overview of the process. You can both make you code directly or upload the file to git. This way it is also possible for collaborators to follow you work and constibute to it. If errors occur or old code are needed, it is easy to go back to previously versions and gab the needed parts. 
You files are also stored online which makes it easy to find no matter where you are and which computer you use. This is also a safety if your computer break down. 

# Processing data

##  Will you processing include randomness?: 
The statistics and figures would be reproduceble because no randomness is used in the dataanalyses. 

## Cleaning of data: 
Samples with less than 2000 reads are removed from the dataset as a quality control. This is done as the first step after data are loaded into the script. These samples are removed because they cannot be trusted to show a reliable picture of the microbial community. 

## Multiple steps?: 
If the needed data are avaible and correct loaded in the software/script it should be possible to run the whole code and get the desired results and figures. 

# Sharing
## Will you share your code? 
If the article made from the data is avalible as open acess, is it relevant to share the code for analysis aswell. This would be done as R-markdown files in a git repositorie. The intended users are those interested in the article or those also working with investigation of microbial communitues in closed systems. The potential users would need a basic knowledge to R and coding in R to use the code avalible. No level of support would be offered, which is why the comments and explanations in the code should be sufficient. The article should be cited if the code or part of the code is uded directly. Contact information would be given in hte article for which the code belongs. 

## Which publication channel? 
The article schould be avaible at AAU platform (vbn.aau.dk) and be publiched in relevant open acess journals. The article will include a refence to the github where code would be avalible. The article should when publisehed have a DOI to make easy acesseble, findable, and refereble.  

## Who should have access and who will govern access?
The raw data should have restricted access and only be shared if the person requenting acess meet specific criteria such as collaboration with the AAU and maybe even collatoration with EB group on AAU. It should not be possible to use the dataset for own reseach without the AAU accept. The code should be avalible so people can midify it to their own data as long as the authors are credited.  

## Documentation 
The Readme file for the code should include information on the software used and version, aswell as the packages needed to run the code and the version of these. 

## Dataset documentation and publication: 
The raw dataset should not be public avalible, but it would be possible to contact the project responsible person and ask for permission to see and use the dataset under the CC-BY license. The data, metadata, and scipts should follow the Fair principles to some extent. It should be tidy and easy to use for both collaborators, colleagause, future you etc., but not everything should be acceseble without permission.

## Licensing 
All files and data avalible should be protected by the CC-BY license. 
