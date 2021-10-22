# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: "TrieDF: Efficient In-memory Indexing for Metadata-augmented RDF"

## Main researcher: 
Olivier Pelgrin

## Research leader: 
Katja Hose

## Collaborators: 
Katja Hose, Luis Galárraga

## Project contact: 
olivier@cs.aau.dk  
khose@cs.aau.dk

## Related document(s): 

Not relevant 

# Planning the project

## Purpose
This software aim at providing a research prototype for a an internal representation of [RDF](https://www.w3.org/RDF/) with additional metadata like versioning and provenance.

## Where will code exist during project?: 
The code is located in a private gitlab repository during development of the project. All collaborator have access to the repository.   
After publication, a public repository is made available.

## Software development: 
The code will be developed solely by the main researcher. Being a prototype for a research problem, the development will be ad-hoc as features will be added or removed according to the on-going theoretical work.

The core is reviewed by the collaborators of the project. 

A mix of testing and reference benchmarks is used to ensure that the results are trustworthy.

## Programming languages:
The code is written C++ because of performance constraints. Building of the code is done thanks to the [Meson](https://mesonbuild.com/index.html) build system (and a C++17 compatible compiler).  
Any IDE with C++ support can be used to browse and edit the code.  
The C++ code is platform agnostic and can be compiled on both Linux and Windows. The code cannot be compiled on MacOS due to "mixed" support of OpenMP.

## Methods: 
No statistical methods are used.  
However, the project includes original algorithms and data structure.

## Code Documentation: 
A readme is provided guiding the user on how to compile and use the software.  
Important functions of the code are documented. Tools such as [Doxygen](https://www.doxygen.nl) can be used to generate the ducumentation.  

## Testing: 
Unit testing is used for critical parts of the code, as well as some ad-hoc testing.  
Reference datasets and benchmarks with known results sets are used to validate the results of the method.  

## Validation: 
The software is validated on standard benchmarks and datasets. And is compared against other comparable software.  
The metrics used to evaluate are the speed of data processing and exactness of the results.

## Code and data: 
The code will reside in a version control system.  
The data is from publicly available sources and can be found freely on internet.  
The exact data used for evaluation is made available for convenience on an AAU server managed by the Research Leader.

There is no political, legal or ethical issues involved.

## Version control: 
Version control is done with Git, and the code stored on a Gitlab repository.  
Git is chosen for it is the standard for version control of software. 

# Processing data

##  Will you processing include randomness?: 
Not relevant.

## Cleaning of data: 
Not relevant.

## Multiple steps?: 
Scripts are used to automate the steps as much as possible.

# Sharing
## Will you share your code? 
The code is shared as source. Users are other members of the research community. Support is limited, but everyone is welcome to open an issue on Gitlab or contact authors via email.  
Users are expected to cite the publication if they include the method in another research work.  

## Which publication channel? 
The publication will be made available through vbn.aau.dk when published, and will also be available on the publisher's platform. The publication include a link to the code and data.  


## Who should have access and who will govern access?
Not relevant.

## Documentation 
The article and code documentation should be enough to understand and use the project.  
Readme explain how to use the code, and detail the list of dependencies. Additionally, a Dockerfile will be made available in the near future to help reproducability.  
Scripts exist to run the code and produce the figures included in the paper. Each script is documented on its inputs and outputs.

## Dataset documentation and publication: 
Not relevant.

## Licensing 
The code is licensed according to the [MIT License](https://en.wikipedia.org/wiki/MIT_License).
