# Scientific Software Management Plan for **ccostr** an R package found on CRAN

This plan is inspired by the following [Data Management Plan](https://healthsciences.ku.dk/research/responsible-conduct-of-research/SUND_Data_Management_Plan_Template_Final.docx/SUND_Data_Management_Plan_Template_Final.docx) and [Software Management Plan](https://doi.org/10.5281/zenodo.2159713)

***

# Overview

Project Title: ccostr - censored cost estimation using R

## Main researcher: 
The code is developed and maintained by Lars Børty Nielsen lars.borty@gmail.com

## Research leader: 
The work that lead to the development of the package was lead by Martin Bøgsted (mail)

## Collaborators: 
The package was developed in collaboration with Rasmus Brøndum (mail)


## Related document(s): 

The package was published along with an article in [The Journal of Open Source Software](https://joss.theoj.org/papers/10.21105/joss.01593)

and can be cited as:

```
@article{Børty2019, 
  doi = {10.21105/joss.01593}, 
  url = {https://doi.org/10.21105/joss.01593}, 
  year = {2019}, 
  publisher = {The Open Journal}, 
  volume = {4}, number = {41}, 
  pages = {1593}, 
  author = {Lars Børty and Rasmus Brøndum and Martin Bøgsted}, 
  title = {ccostr: An R package for estimating mean costs with censored data}, 
  journal = {Journal of Open Source Software} 
  }
```

***

# Planning the project

## Purpose
The purpose of the package is to implement 3 different estimators of mean costs given censored data. These estimators are implemented in SAS and Stata, but had before this package not been implemented in R.

## Where will code exist during project?: 
All code is freely available in the github repository, where all development is also happening. As these estimators are primarily used for sensitive data a test dataset is provided along with the package.

## Software development: 
The package was develpoed ad-hoc, and errors/problems can be adressed through github. There is an attatched code of conduct in the repository that covers all participating in the project. 

- Anyone is allowed to make pull-requests, but only maintainer/developers have permission to accept requests.

- The code includes unit tests to verity basic properties along with agreement with the previous published implementations in SAS/Stata. although notice that a few tests return different results. This is due to differences in implementation, but we suspect that there is a problem in the SAS version of the implementation.  

## Programming languages:

The package is developed in R, using `data.table` for some heavy computations. For future versions these should be developed in Rcpp (c++) but otherwise no other languages make sense in the project.

There is a little automated testing of the package included using Travis-CI for build passing.

## Methods: 
Several methods for estimating mean costs when working with censored data have been developed. Of note is the work by (Lin et al, 1997), who proposed three different estimators. Later (Bang and Tsiatis, 2000) proposed another method based on inverse probability weighting, where complete (fully observed) cases are weighted with the probability of being censored at their event time. (Zhao and Tian, 2001) proposed an extension of the (BT) estimator, (ZT), which includes cost history from both censored and fully observed cases.

## Code Documentation: 
Documentation is generated using `Roxygen`. This means that each R script has a special roxygen notes that will have to pass the tests. Here all functions, arguments, and data is documented. This is practical as it carries over in the R documentation. 

There is included vignette for examples of using the function.

## Testing: 

Some unit testing are indluded using `testthat`

## Validation: 

The results are validated using a included function that simulates cost data. This code is included but is not necessary for normal use, except people interested in efficiency of the estimators, and comparison to alternative estimators (e.g. using cost history)

## Code and data: 

It would be nice to include more test data, but the challenge is that it's almost never possible given the nature of the data. In general the data used with the function is not very large and therefore does not warrant any special thoughts.

## Version control: 

Git is used to manage versions

***

# Processing data

##  Will you processing include randomness?: 

When running the code for validating some randomness is included when generating data. Therefore in the included vigniette a seed is set which makes replication possible. But as we show the estimators to be unbiased this is not that necessary as all seeds should show the same pattern.


## Cleaning of data: 

On the github readme there is an explanain of what type of data the function needs. This can include both cost history, and no cost history. A few messages has been included in the function if data is wrong format.


## Multiple steps?: 

not relevant

***

# Sharing
## Will you share your code? 

the package can be found in binary format on cran, but is also available by source on github.

Use of the package is restricted in any way, but citation is encouraged (also original developers of the estimators). The article can be cited, and this is included in the R package description.


## Which publication channel? 

The package has an DOI though the article, but also a DOI for the source code of version 1.0 on Zenodo.

The latest version is available on github, while a stable version is uploaded to CRAN

## Who should have access and who will govern access?

no limits in access

## Documentation 

yes, this is available in the vigniette

## Dataset documentation and publication: 

Datasets where the estimators are used will not be published, only toy examples.

## Licensing 

There is a license file included in the github repository, the MIT license is used.

