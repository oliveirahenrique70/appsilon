# Arctoris R Pipelines

## Table of contents
* [Introduction](#introduction)
* [Features](#features)
  * [fast_XC50_analysis](#fast_XC50_analysis)
  * [longitudinal_biochemqc](#longitudinal_biochemqc)
  * [pCRC](#pCRC)
* [Tecnology](#tecnology)
* [Contact](#contact)

## Introduction

This repository project contain the Arctoris R pipelines used for the analysis of chemical experiments data that aims to measure drug's efficacy. 

## Features

All project R pipelines are in the ```src``` folder of the repository, with the following pipelines:

*  ### ```fast_XC50_analysis``` <a name="fast_XC50_analysis"></a>

The pipeline perform the data anlysis for the **BiochemQC** and **MPro** experiments, the main objective of the experiment is to obtain the half-maximal inhibitory concentration (IC50) which is the most widely used and informative measure of a drug's efficacy. The IC50 is obtain by constructing a dose-response curve and examining the robust inhibition of different concentrations and compounds. 

It´s important to highligth that these experiments can be developed using two types of plate format single or multiplate. It is use as input the data obtained by two different equipments, the BMG and D300. After imported the data is organized according to compounds and controls. The controls are used for to fit the robust inhibition and normalize it´s values. 

Following the data manipulation is is applyed a predictve model using the compounds concentration and robust inhibition with some initial estimates (max and min asymptote and hill slope), the output of this predictive model is the predicted IC50. Beyond that, the pipeline also produces as output plots containing the 11 points curve for each compound illustrating the concentration vs robust inhibition. 

* #### ```longitudinal_biochemqc``` <a name="longitudinal_biochemqc"></a>

The pipeline is used on to create a logitudinal analysis of **BiochemQC** experiments devoloped during time. As input this pipeline uses the output data from all BiochemQC experiments to create plots that illustrates how the data behaviour over time.

The pipeline data analysis envolves the compounds used in the BiochemQc experiment, therefore this pipeline produces as output plots for each compounds and also plots with an overall analysis of all compounds. Furthermore, the pipeline also calcuates confidence intervall that represents range of values associated with different confidence levels.

As output the pipeline generates static plots (PDF) and also dynamic plots (HTML).

* ```pCRC``` <a name="pCRC"></a>



Beyond that, the repository also contains tests, created in Python, with the objectove of making sure the R pipelines are been correctly build. These test are on the code called ```test_biochemqc.py```

## Tecnology

The following tools were used to develop the project:

* R
* Python
* Docker

## Contact

For more information contact us trougth:

* Website - [arctoris.com](https://www.arctoris.com/)
* Email - welcome@arctoris.com
* Phone -


-----------------------------------------------------------------------------












- **Bold**
- _italics_
- ~~Strike through~~

## General info
This project is simple Lorem ipsum dolor generator.

## Technologies

asdasda

## um test

asdasd

### Testtt:

#### agagav

This project is part of the recruitment for the Appsilon Shiny Developer job position.

This repository contains the files used to create the Marine Shiny App. The App illustrates the longest distance between two consecutive observations for multiple ships.

Furthermore, this repository has the R code used to refine the raw dataset provided "ships.csv" and create the clean dataset "ShipsAppData.csv" used in the App. Furthermore, this repository also contains the image used in the App and the R code that reproduces the report.

You can access the Marine Shiny App using the following link: 

https://henrique-meira-de-oliveira.shinyapps.io/MarineApp/
