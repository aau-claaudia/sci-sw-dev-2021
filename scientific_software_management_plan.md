# Scientific Software Management Plan

A Scientific Software Management Plan (SSMP) is a tool for researchers to help them plan a research project involving software as a part of research work. See this as a dynamic document you can work on an adapt over time as you work on the software. It is not a design document but more a document to clarify your thought and the consequences of different choices. If it helps you in your work you are free to use it in the future. If its just another layer of administrative work then think about why this is so and possible adapt or fully abandon the concept of a SSMP.

The texts in italic is inserted to provide guidance. Some parts may not be valid for your particular research and should then just be filled with "not relevant".

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

# Overview

Project Title: Creative Robotics & GH_Sense

This project creates a Add-on to Rhino's computational design plug-in to crate majorly 2 set of tools. One, to create a set of Computer vision based tools to interface with Intel RealSense D435i to get realtime pointcloud and color data. Two, some tools to interface with Industrial Robotic arms like UR10 and LBR iiwa14. Namely, state machines, plane handlers and IO state handling.

## Main researcher:
Avishek Das<br/>
PhD Fellow, Department of Architecture,Design and Media Technology<br/>
Aalborg University

## Research leader:
Mads Brath Jensen<br/>
PhD Fellow, Department of Architecture, Design and Media Technology<br/>
Aalborg University

## Collaborators:
*Not Relevant*

## Project contact:
Avishek Das (adas@create.aau.dk)<br/>
Mads Brath Jensen(mbje@create.aau.dk)<br/>
After the project ends, contact is Mads Brath Jensen.


## Related document(s):

*Not Relevant*

# Planning the project

## Purpose

The purpose of the software is to interface between a stereo depth camera and a set of robots with a CAD platform Rhino and its computational design tool Grasshopper in order to achieve better human robot collaboration.
It will employ finite state machines, pinhole camera principles and various computer vision methodology like grabcut, color filter and gaussian blur.

## Where will code exist during project?:

The collaborators can access code through private repository in GitHub. The backups are at collaborators local computers and OneDrive.

## Software development:
To develop a Grasshopper plug-in there is a [formal guideline](https://developer.rhino3d.com/guides/grasshopper/simple-geometry-component/) by McNeel Associates. A [Visual Studio template](https://marketplace.visualstudio.com/items?itemName=McNeel.Rhino7Templates) is also available to start with as a boilerplate template for the code. This template exposes the necessary classes needed for the development. <br/>
At this moment we are not receiving peer-review of the code as the code is still in its development and not released yet. We are tracking the issues internally at GitHub through issue tracker. We are verifying the point cloud obtained from code with Intel's own software and calibration tools to ensure the trustworthiness.

## Programming languages:
[Grasshopper](https://www.grasshopper3d.com/) is a visual programming tool embedded in Rhino developed in DotNET framework for Windows and Mac. For the development of this tool we are using **C#** as our primary programming language. We are using Visual Studio Community 2019 as our main IDE. We can debug and compile the plugin with the licensed Rhino Installation through Visual Studio Community. <br/>
We have planned to release the total toolchain to available to the AEC community at free of cost when we think the code is bugfree (almost) to use and not necessarily crash any systems. At present we do not plan to implement Literate programming as we are planning to release a Wiki and detailed documentation. Platform dependencies is a issue here as the key DLL file is compiled for Windows in x86 and x64 format.
Hungarian Notation format is used in this tool for all naming conventions.

## Methods:
*Not Relevant*

## Code Documentation:
The  code will have a single README file for the overview, installation and usage of the plugin. There will be another GitBook or Github Wiki depending on the final level of complexity of the plugin and number of component. To our knowledge it is not advisable to have a automatic generation of the documentation.

## Testing:
Data exchange between robot and system and camera and system can be tested. The pointcloud data can be tested against latency and accuracy where as the communication between the robot and computer can be tested against latency.
We can compare the similar results by latency and accuracy.

## Validation:
*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given metric and can we do the comparison? Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to simplify the model (no noise, fewer parameters, etc.) into a model where the expected result is more clear? In general, how do you ensure your results are trustworthy?*

*Not Relevant*

## Code and data:
The code is already structured as a Visual Studio Solution and as a C# Project. The classes are organized in a folder name *Core*. The components that use the class has a prefix of *GHC* followed by the initial of the researcher responsible for the particular components like *AD* or *MBJE* followed by the component name. The code is light enough to keep in the GitHub.


## Version control:
In the project we are using Git as version control system and GitHub to host files and folder.

# Processing data

##  Will you processing include randomness?:
*Not Relevant*

## Cleaning of data:
*Not Relevant*

## Multiple steps?:
It is imperative to perform several steps to obtain the result. For the same purpose we have an automated pipeline ready which is triggered when the code is being run for an automatic robotic fabrication. It has been done with Finite State Machines and several boolean triggers in a grasshopper code.
# Sharing
## Will you share your code?
We will share the compiled Binary a first and after incorporating most of the bugs and suggestions we aim for releasing the source code. We as designers offer almost no support except bug fixing form our end as this tool was Initially designed for internal use. The users should cite a publication which is planned in the Q1 of 2022.

## Which publication channel?
At first we are publishing the usage of the tool as a project in a publication in [TAD Journal](https://tadjournal.org/) and a conference proceeding in [eCAADe 2022](https://kuleuven.ecaade2022.be/). These will be linked in AAU VBN. The link between code and the publication will be through Github and [Food4Rhino](https://www.food4rhino.com/), a plugin sharing portal of McNeel Associates. The project will always be free.

## Who should have access and who will govern access?
Once the plugin is released, it will always be opensourced in GitHub. Initially in the restricted access only the people associated with the project will be granted access to the GitHub repository. Lead researcher will govern the access as GitHub allows for access restriction.
## Documentation
The journal paper will be sufficient to demonstrate the utility of the software but it is not enough to get started in that tool. For that, users will need to see the Wiki and the provided example files. The code in itself is commented enough in order to understand the utility of the code.

## Dataset documentation and publication:
*Not Relevant*

## Licensing
We are using an MIT license for the tool for distribution and release.
