## Project 4 Report - Heart Disease Analysis and Prediction.

## Overview.
### The purpose of this analysis was to use our knowledge of machine learning to create a binary classifier that can predict the chance of a heart disease.

You are very welcome to have a look at our presentation slide deck for deeper insight into our story on Heart Disease Analysis and Prediction.

**Project4SlideDeck.ppt**

## Contributing Members 

Ufuoma Atakere & Sandra Botica

Students @ UWA 6 month Data Analytics Bootcamp November 2022- June 2023

## Acknowledgments

**Data sourced from Kaggle.**
https://www.kaggle.com/datasets/rashikrahmanpritom/heart-attack-analysis-prediction-dataset?select=heart.csv

 - Age : Age of the patient
 - Sex : Sex of the patient (1 = male, 0 = female)
 - cp : Chest Pain type (0: typical angina, 1: atypical angina, 2: non-anginal pain, 3: asymptomatic)
 - trtbps : resting blood pressure (in mm Hg) on admission to hospital
 - chol : serum cholestoral in mg/dl fetched via BMI sensor
 - fbs : fasting blood sugar > 120 mg/dl (1 = true, 0 = false)
 - rest_ecg : resting electrocardiographic results (0: normal, 1: having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV), 2: showing probable or definite left ventricular hypertrophy)
 - thalach : maximum heart rate achieved
 - exang: exercise induced angina (1 = yes, 0 = no)
 - old peak: ST depression induced by exercise relative to rest
 - slp: the slope of the peak exercise ST segment (0 = unsloping, 1 = flat, 2 = downsloping)
 - ca: number of major vessels (0-4) colored by flourosopy
 - thall : thalassemia (0 = null, 1 = fixed defect, 2 = normal, 3 = reversable defect)
 - output: diagnosis of heart disease (angiographic disease status)(0: < 50% diameter narrowing. less chance of heart disease, 1: > 50% diameter narrowing. more chance of heart disease)

## Technologies used
 - Python notebook
 - Matplotlib
 - QuickDBD
 - PostgreSQL
 - pgAdmin4
 - Tableau
## Data Preprocessing

### What variable(s) are the target(s) for your model?
 - The "output" column, was the y target variable for the model. 
 - There are 165 `1` More chance of heart disease > 50% diameter narrowing and 138 `0` Less chance of heart disease < 50% diameter narrowing. This indicated a fairly well-balanced column of data as the target variable.
### What variable(s) are the features for your model?
 - All other columns are the X variable or features for the model.
### What variable(s) should be removed from the input data because they are neither targets nor features?

# Data Model Implementation.
## Compiling, Training, and Evaluating the Model.

### Did I achieve the target model performance of 75% classification accuracy or 0.8 R-squared?

# Data Model Optimisation.
### What steps I took to increase model performance?


## Results
## Summary.

We would recommend 
