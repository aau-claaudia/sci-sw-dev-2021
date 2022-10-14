# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: DCCN_OFDM_master

## Main researcher: 
*Researcher in charge of producing the code*
* Martin Hedegaard Nielsen

## Research leader: 
*Closest researcher leader overseeing the researcher. Could be the main researcher.*
* Martin Hedegaard Nielsen
* Ming Shen 
## Collaborators: 
*Other researchers etc. that will have access and use the code*

## Project contact: 
*Email of main researcher and research leader. Should also include name and contact for a person in-charge after the project ends if relevant*
* mhni@es.aau.dk
* mish@es.aau.dk
## Related document(s): 
# Paper 
M. H. Nielsen, E. de Carvalho, M. Shen (2022). “A Two-stage Deep Learning Receiver for High Throughput Power Efficient LEO Satellite System with Varied Operation Status” IEEE Access 2022. 
```
@ARTICLE{martin2021DCCN,
 author={Nielsen, Martin H. and De Carvalho, Elisabeth and Shen, Ming},
  journal={IEEE Access}, 
  title={A Two-Stage Deep Learning Receiver for High Throughput Power Efficient LEO Satellite System With Varied Operation Status}, 
  year={2022},
  volume={10},
  number={},
  pages={60904-60913},
  doi={10.1109/ACCESS.2022.3180055}}

}
```
* "A Two-order Deep Learning Receiver for High Throughput Power Efficient LEO Satellite System with Varied Power Operation Status” IEEE ACCESS

# Planning the project

## Purpose
*What is the purpose the scientific software? What scientific question are you trying to answer? What scientific methodology will be used?*
* to develop a OFDM end-to-end deep learning frame work that can be used for training different network types and benchmark their performance against regular OFDM decoders. 
## Where will code exist during project?: 
*Can collaborators access code? How? Will there be backup?*
* The code has been developed in github and is maintained in github 
## Software development: 
*How will the software be developed? Following a formal guideline or ad-hoc? Will you receive peer-review of code? How will you track bugs and issues? How do you ensure your results are trustworthy?*

## Programming languages:
+ Matlab R2020b, R2021a 
+ Docker installed on computer with CUDA enabled for best and fastets training. 
+ Python3 compatiable
+ TensorFlow 1.x: `tensorflow-gpu==1.15`, docker tensorflow image [1.15.5-gpu-jupyter](https://hub.docker.com/layers/tensorflow/tensorflow/1.15.5-gpu-jupyter/images/sha256-5f2338b5816cd73ea82233e2dd1ee0d8e2ebf539e1e8b5741641c1e082897521?context=explore
) is highly recommended if you just want a quick tryout. If your GPU is not supported by that docker image, checkout latest docker images with tag `[year.month]-tf1-py3` on [Nvidia NGC](https://ngc.nvidia.com/catalog/containers/nvidia:tensorflow/tags).
+ **Note:** newer versions of Matlab and Tensorflow are possible, but require quite some work on the code (read [here](#for-newer-versions-of-matlab-and-tensorflow)). 

## Methods: 
* The code has been updated using github and will be maintained through github. For difficulties with code being buggy a bug report can be submitted and the authors will look into it 
## Code Documentation: 
*How will the code be documented? A single README? Documentation level of individual functions and scripts? Will it be possible and useful to have automatic generation of documentation?*
* Readme and comments through out the code is given. 
## Testing: 
*How will the software be tested? Will there be automatic testing? What can be tested? Systematic or ad-hoc testing? Can we test intermediate results and how? Can you compare with similar software?* 

## Validation: 
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison?
Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*

## Code and data: 
*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system? Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical issues involved? What plan do you have for organization and naming ?*
```bash
.
├── dev # latest working source code
├── test_v1 # archived for old version https://arxiv.org/abs/1810.07181v3
├── README.md 
└── LICENSE
```
## Version control: 
*Manually or by a version control system? Which system and why?*
* Guthub since it provides easy flexibility and is integrated directly into our IDE of choice. 
# Processing data

##  Will you processing include randomness?: 
*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*
* There is randomness and there is used a seed for the generation of randomness to make reproducibility possible. 
* PA model, channel models .etc are all given in the github repo. If wanted to change the given model please contact the author for file access to change PA models. 
* there has been given in the dev folder for matlab a script to make your own PA models given input output IQ data captured following the specification given in the paper. 
## Cleaning of data: 
*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*
* All data has been pre-processed for training. However for benchmarks it is needed to follow the usage section 
## Multiple steps?: 
*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*
1. Run `script_rayleigh` in Matlab for benchmarks
2. Run `python3 run_local_ofdm.py --awgn=True` in terminal for training and testing results. 

# Sharing
## Will you share your code? 
*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do potential users have? What level of support do you offer? How do users now the level of support? Contact information? How will you measure	the level of usage? Should users cite a publication?*
* Once all articles are published using the framework the code will be published by making the github non private. 
## Which publication channel? 
*Publisher: home university platform (AAU: e.g. vbn.aau.dk), publisher, or independent organization (e.g. figshare, github,...)? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude? Does the platform accommodate the size of you project? Fees?*
* Github and code ocean 
## Who should have access and who will govern access?
*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion of project? Does the platform of choice allow for access governance?*
* Any one can download the project but only authorized people can update the github repo. 
## Documentation 
*Is the paper/article sufficient documentation? Should dependencies to other programs and record and versions of these be documented? Is it documented how to produce every figure and statistics reported in the article? Should documentation include how-to-get-started? Example of how run all the program and scripts? Are examples useful?*
* There are to be made at least 2 papers on the framework that details the processes and background math about the neural network used. There is also provided in the readme how to make the scripts run for a benchmark only and how to change settings in the individual scripts for more concrete results. 
## Dataset documentation and publication: 
*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles for your data (benefits/)?:*
* No data sets will be published but can be requested from the authors if the models given in the repo are not satisfactory. 
## Licensing 
*Should be clearly stated at the top of all relevant files. Right to copy? Right to modify? Right to distribute? Right to usage in proprietary and commercial software?*
The software is distributed under the GNU-GPLv3 software license. 