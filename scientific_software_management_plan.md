# Scientific Software Management Plan for my PhD Project

# Overview

**Project Title:** Exploiting Schemas for Efficient Query Processing over Knowledge Graphs

Department of Computer Science, Aalborg University, Denmark.

## Main researcher:

Kashif Rabbani

## Research leader:

- Matteo Lissandrini (Co-supervisor)
- Katja Hose (Supervisor)

## Collaborators:

Main researcher and research leaders (Supervisors). Possibly Prof. Angela Bonifati for prospective collaboration during
sturdy abroad.

## Project contact:

- Prof. Katja Hose 
- Kashif Rabbani 

## Related document(s):

All the requirements and policies from funding agency are available at https://relweb.cs.aau.dk/. Other details are
available in the PhD plans available in the shared DropBox repository (called Kashif).

# Planning the project

## Purpose

[//]: # (*What is the purpose the scientific software? What scientific question are you trying to answer? What scientific methodology will be used?*)

The purpose of the PhD project is to develop techniques for efficient query processing and schema extraction in
knowledge graphs. We are going to answer scientific questions like

- what are the factors effecting the performance of query processing in very large knowledge graphs?
- what are the existing challenges in query processing in graphs?
- what are existing research gaps in this area?
- what are existing shapes extraction approaches for very large knowledge graphs and how the community is extracting
  shapes?
- what are the challenges in hybrid query processing and how can we tackle these challenges?
- what are the possible solutions to all the challenges explored above.

We will follow the instructions from the PhD school and create a PhD plan in the first two months and later after an
year, 11 months plan and follow the best possible scientific methodologies, for example, proposing a problem statement,
creating a baseline, proposing an optimal solution to the problem statement better than the baseline, and analysing the
output.

## Where will code exist during project?:

[//]: # (*Can collaborators access code? How? Will there be backup?*)
Code will be accessible as open source (for most of the projects until or unless specified contrary) on GitHub.

- GitHub of the main researcher : https://github.com/kashif-rabbani
- GitHub of the DKW research group : https://github.com/dkw-aau/
- Project's website (as a backup) : https://relweb.cs.aau.dk/
- Additionally, in the backup archiving server.

## Software development:

[//]: # (*How will the software be developed? )

[//]: # (Following a formal guideline or ad-hoc? )

[//]: # (Will you receive peer-review of code? )

[//]: # (How will you track bugs and issues? )

[//]: # (How do you ensure your results are trustworthy?*)

The software will be developed in an agile way following standard programming practices.
There are no formal guidelines to follow (not-yet defined), however, the code written by the PhD student will receive
peer-review
from the co-supervisor. We will track bugs and issues via default issues functionality and on Notion.
We will perform hot and cold runs on server with different real and synthetic datasets to ensure that our results are
trustworthy.

## Programming languages:

- We will use Java and Python to develop the approaches.
- We will use shell scripts to automate experiments with different parameters and settings.
- We will use IntelliJ and PyCharm as IDE.
- We will make the code open source.

## Methods:

*Which statistical methods are used? To which extend do you need to develop your own methods? To which extend can you
use off-the-shell methods?*

## Code Documentation:

[//]: # (*How will the code be documented? A single README? )

[//]: # (Documentation level of individual functions and scripts? Will it be)

[//]: # (possible and useful to have automatic generation of documentation?*)

We will provide a detailed README file for every proposed approach explaining all the details starting from the basic
configuration
to detailed analysis.
Additionally, we will dockerize our solutions to enable running it on any machine regardless of the operating system or
config.
It can be useful to have automatic documentation generation. We will think about it.

## Testing:

[//]: # (*How will the software be tested? Will there be automatic testing? )

[//]: # (What can be tested? Systematic or ad-hoc testing? Can)

[//]: # (we test intermediate results and how? Can you compare with similar software?*)

We will test the software with various test cases via ad-hoc or systematic testing depending on the project and
timeline.

## Validation:

[//]: # (*To which extend is validation possible? From theory, do we know if some approaches are better/worse under a given)

[//]: # (metric and can we do the comparison?)

[//]: # (Is it possible to simulate following a specific model where known theoretical bounds must apply? Is it possible to)

[//]: # (simplify the model &#40;no noise, fewer parameters, etc.&#41; into a model where the expected result is more clear? In general,)

[//]: # (how do you ensure your results are trustworthy?*)

We will make sure our results are reproducible given the parameters and configurations used for our experiments.

## Code and data:

[//]: # (*How will code and data be structured in a filesystem? Are data too large to reside in e.g. a version control system?)

[//]: # (Are data so large it will reside on a different system, e.g. in a database server? Are there political, legal or ethical)

[//]: # (issues involved? What plan do you have for organization and naming ?*)

Code will always be on GitHub and data will reside on our servers as data files are very very large to be stored on a
versioning control system.
Servers are owned by the group and datasets are public datasets, therefore, fortunately, we don't have to deal with GDPR
and other issues involved.

## Version control:

[//]: # (*Manually or by a version control system? Which system and why?*)
Using GitHub versioning control system. As it is already used in our group.

# Processing data

## Will your processing include randomness?:

[//]: # (*Can your results be reproduced? Is it beneficial to save seed? Is it okay to approximately reproduce?*)
It may. In those cases, we will save the seed to make sure the results are reproducible.

## Cleaning of data:

[//]: # (*Is it necessary to pre-process data? Which methods are used? How are pre-processing documented? How do you ensure that the pre-processing is done in a transparent manner?*)
We will document the steps and scripts used for pre-processing the data in case it is required.

## Multiple steps?:

[//]: # (*Is it necessary to perform several steps to obtain the results? Is it possible to automate via scripting?*)
We will use scripts to automate multiple steps involved in experiments.

# Sharing

## Will you share your code?

[//]: # (*If so, in which format? Binary/bytecode and/or source? Who are the intended users? What are knowledge and skills do)

[//]: # (potential users have? What level of support do you offer? How do users now the level of support? Contact information?)

[//]: # (How will you measure the level of usage? Should users cite a publication?*)

We will share our code as open source by providing link to our GitHub repositories. We will provide our contact
details (emails) and users of our code can actually contact us in case they have questions. In case users are using our
approach, they should cite our work.

## Which publication channel?

[//]: # (*Publisher: home university platform &#40;AAU: e.g. vbn.aau.dk&#41;, publisher, or independent organization &#40;e.g. figshare,)

[//]: # (github,...&#41;? DOI? Link between article and code? Is the policies of digital repository acceptable? Is the longitude?)

[//]: # (Does the platform accommodate the size of you project? Fees?*)

The project's website and University's publishing platform, i.e., AAU VBN. Also in some cases we will use Zenodo.

## Who should have access and who will govern access?

*Should there be restricted access? Which criteria should be meet for sharing? Who will govern access after completion
of project? Does the platform of choice allow for access governance?*

## Documentation

[//]: # (*Is the paper/article sufficient documentation?)

[//]: # (Should dependencies to other programs and record and versions of these be documented?)

[//]: # (Is it documented how to produce every figure and statistics reported in the article? Should documentation include)

[//]: # (how-to-get-started? Example of how run all the program and scripts? Are examples useful?*)

A detailed explanation of the implemented approach will be documented in the paper and rest of the details will be in Readme and our website.

## Dataset documentation and publication:

[//]: # (*Will you publish any dataset? Is it necessary to document the dataset? Does it make sense to adapt the FAIR principles)

[//]: # (for your data &#40;benefits/&#41;?:*)
To be done if we plan to publish a dataset. My PhD plan does not include any plan to publish a dataset yet. But in case
we will have to, we will include proper documentation.

## Licensing

Open source License.
