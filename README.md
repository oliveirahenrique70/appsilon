# Arctoris R Pipelines

## Table of contents
* [Introduction](#introduction)
* [Features](#features)
* [Tecnology](#tecnology)
* [Contact](#contact)

## Introduction

This repository project contain the Arctoris R pipelines used for the analysis of chemical experiments data. 

## Features

All R pipelines are in the ```src``` folder of the repository, the repository pipelines are the following:

*  ### ```fast_XC50_analysis.R```

The pipeline perform the data anlysis for the **BiochemQC** and **MPro** experiments, it´s important to highligth that these experiments can be developed usiong two types of format single plate or multiplate. 

The code uses as input data an Excel and XML files obtained using two different equipments, the BMG and D300 were used tp get the respective input data. After imported the input data is organized according to compounds and controls.      

Following the data manipulation is is applyed a predictve model on the data to obtain the predicted ic50

* #### ```longitudinal_biochemqc.R``` 

The pipeline is used on to create a logitudinal analysis of BiochemQC experiments devoloped during time. As input this pipeline uses the output data from all BiochemQC experiments to create plots that illustrates how the experiment behaviour over time.

The data analoysis envolves the three compounds used in the BiochemQc experiment

As output of this pipeline it is generated 4 static plots (PDF) and 4 dynamic plots (HTML)

* ```pCRC.R``` : 

Beyond that, the repository also contains tests, created in Python, with the objectove of making sure the R pipelines are been correctly build. These test are on the code called ```test_biochemqc.py```

## Tecnology

The following tools were used to develop the project:

* R
* Python
* Docker

## Contact

For more information contact us trougth
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
