# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Circle Bank

## Main researcher:

*Simon Bruhn*

## Research leader:

*Morten Birkved*

## Collaborators:

After the project closure, the company Circle Bank Nordic will be formed, and the code/data will be handed over to this organisation

## Project contact:

simb\@igt.sdu.dkmorb\@igt.sdu.dk

## Related document(s):

Project description and grant from Grand Solutions

# Planning the project

## Purpose

Quantify CO2 emission reduction from circular economy in building materials/components

## Where will code exist during project?:

*During the project, the code exists on the main researchers computer, as well as synchronized and backed up in onedrive. main deliveries are uploaded to the organisations MS teams*

## Software development:

*The software builds largely on the opensourve software of Brightway, Activity Browser, and PREMISE. Ad hoc programming according to the specific needs of Circle Bank are conducted by the main researcher*

## Programming languages:

*The beforementioned opensoruce software is based on python, and using sql databases. Deliveries can be in python, but is more likely to be in simple excel sheets to ensure that CircleBank Nordic can work with the data.*

## Methods:

*several distributions can be assigned for uncertain parameters, and then quantified via monte carlo simulation.*

## Code Documentation:

*code is documented via the inbuilt comment fields in the software. This can be exported to tables and shown in e.g. reports.*

## Testing:

*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?*

## Validation:

Validation by critical comparison of results with EPDs (environmental product declaration)

## Code and data:

*Only the results and the models are saved. The batabases that the model uses to calculate the results are protected by license.*

## Version control:

*The opensource software are available on github. The models themselves are not version controlled (apart from what is included in onedrive)*

# Processing data

## Will you processing include randomness?:

not relevant

## Cleaning of data:

*Data is qualitative and collected first-hand: no additional cleaning needed.*

## Multiple steps?:

*Modelling is done iteratively to identify possible calcualtion/modelling errors.*

# Sharing

## Will you share your code?

*The model code can be saved as a Brightway-package, which can be imported in the software.*

## Which publication channel?

*publication in reports form CricleBank. As well as scientific publication*

## Who should have access and who will govern access?

*acces to model for circlebank project team. No access to database, as it is SDU's license*

## Documentation

*PREMISE data transformation documented via jupyter notebook. Brightway and activity browser modelling documented via exporting the model to tables in a report. Explicit documentation of modelling assumptions.*

## Dataset documentation and publication:

*no publication due to license. But the transformations done to the database is documentined via PREMISE*

## Licensing

*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*
