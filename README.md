# Arctoris R Pipelines

## Table of contents
* [Introduction](#introduction)
* [Features](#features)
  * [fast_XC50_analysis](#fast_XC50_analysis)
  * [longitudinal_biochemqc](#longitudinal_biochemqc)
  * [pCRC](#pCRC)
  * [test_biochemqc](#test_biochemqc)
* [Tecnology](#tecnology)
* [Contact](#contact)

## Introduction

This repository project contain the Arctoris R pipelines used for the analysis of chemical experiments data that aims to measure drug's efficacy. 

## Features

All project R pipelines are in the ```src``` folder of the repository. The project have the following R pipelines:

*  ### ```fast_XC50_analysis``` <a name="fast_XC50_analysis"></a>

The R pipeline performs the data analysis for the **BiochemQC** and **MPro** experiments. The objective of the experiment is to obtain the half-maximal inhibitory concentration (IC50), which is the most widely used and informative measure of drug efficacy. The IC50 is obtained by constructing a dose-response curve and examining the robust inhibition of different concentrations and compounds. 

It´s important to highlight that these experiments can be reproduced using two types of plate format, single or multiplate. It is used as input the data obtained by two different types of equipment, the BMG and D300. After being imported, the data is organized according to compounds and controls. The controls are used to fit the robust inhibition and normalize its values. 

Following the data manipulation, it is applied a predictive model using as input the compound concentrations and robust inhibition with some initial estimates (max and min asymptote and hill slope), the output of this predictive model is the predicted IC50 value of each compound. Beyond that, the pipeline also produces output plots containing the 11 points curve for each compound illustrating the concentration vs robust inhibition. 

* ### ```longitudinal_biochemqc``` <a name="longitudinal_biochemqc"></a>

The R pipeline is used to create a longitudinal analysis of **BiochemQC** experiments developed over time. As input, this pipeline uses the output data from all BiochemQC experiments to develop plots that illustrate how all experiments data behaviour over time.

This pipeline data analysis involves the compounds used in the BiochemQc experiment. Therefore, this pipeline data analysis produces output plots for each experiment compound and also plots with an overall examination containing all experiments compounds. Furthermore, the pipeline also calculates confidence intervals that represent the range of values associated with different confidence levels.

As output, the *longitudinal_biochemqc* pipeline generates static plots (PDF) and dynamic plots (HTML).

* ### ```pCRC``` <a name="pCRC"></a>

The R pipeline performs the data analysis for the **pCRC** experiments. This pipeline is similar to the *fast_XC50_analysis* but with some differences regarding the compounds format on the plate and the number of different concentrations tested for each compound. Beyond that, for now, this pipeline uses only the single plate format.

The input data for this pipeline is obtained with the same types of equipment of *fast_XC50_analysis*, the BMG and D300. After imported the data is organized according to compounds and controls.

Following the data manipulation, it is applied a predictive model using the compounds concentration and robust inhibition with some initial estimates (max and min asymptote and hill slope). To define these initial estimates it is implemented some logical gates to facilitate the model to fit the data. 

The output of the data analysis is the predicted IC50. Beyond that, the pipeline also produces output plots containing the 3 points curve for each compound illustrating the concentration vs robust inhibition. Furthermore, is also generated a table with the output data and another plot showing the robust inhibition of the compounds according to the compound concentrations.

* ### ```test_biochemqc``` <a name="test_biochemqc"></a>

Beyond the R pipelines described, the repository also contains tests created in Python, intending to make sure the R pipelines are been correctly build. This test has the objective of checking the overall format of the input and output data, also the functionality present on the R pipeline.

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
