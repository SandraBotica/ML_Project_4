## Project 4 Report - Heart Disease Analysis and Prediction.

## Overview.
### The purpose of this analysis was to use our knowledge of machine learning to create a binary classifier that can predict the chance of a heart disease.

You are very welcome to have a look at our presentation slide deck and Tableau for deeper insight into our story on Heart Disease Analysis and Prediction.

**Heart Disease Analysis and Predictions.pptx**

https://public.tableau.com/app/profile/sandra.botica


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
 - Seaborn
 - Sklearn
 - QuickDBD
 - PostgreSQL
 - pgAdmin4
 - Tableau
## Data Preprocessing
 - Cleaning data
 - Splitting data into subsets for training and testing the model (train-test-split)
### What variable(s) are the target(s) for your model?
 - The "output" column, was the y target variable for the model. 
 - There are 165 `1` More chance of heart disease > 50% diameter narrowing and 138 `0` Less chance of heart disease < 50% diameter narrowing. This indicated a fairly well-balanced column of data as the target variable.
### What variable(s) are the features for your model?
 - All other columns are the X variable or features for the model.

# Data Model Implementation.
## Compiling, Training, and Evaluating the Model.
Initially the X variable or features included all columns and an accuracy of 79% was achieved.
### Did we achieve the target model performance of 75% classification accuracy or 0.8 R-squared?
Yes we did.

# Data Model Optimisation.
### What steps we took to increase model performance?
#### Feature selection
 - Experimenting with binning features so as to have more columns in the DataFrame.
 - Removing columns.
#### Hyperparameters
 - Changing the train_test_split with train-size = 0.2, rather than the deafult setting of 0.25, was also tried, but this did not help the model accuracy.
 - Solver = 'lbfgs'

## Results

**Question:** How well does the logistic regression model predict both the `0` (< 50% diameter narrowing. less chance of heart disease) and `1` (> 50% diameter narrowing. more chance of heart disease) labels?

**Answer:** The logistic regression model was better at predicting the `1` label then the `0` labels. This may be due to the bias of data having 41 `1`s and only 35 `0`s. 

A balanced_accuracy_score of 82% makes one think that this is a good prediction model, as does the 83% accuracy score in the classification report.

Based on the confusion matrix.
 - Total predictions = 76
 - Correct predictions = 63 (26 `0`s TN, 37 `1`s TP)
 - Incorrect predictions = 13 (9 `0`s FP, 4 `1`s at FN)

Based on the classification report.
 - Precision: 20% of the time (0.80 precision score) the model predicted a false positive (predicted a `1` but was actually a `0`), hence 9 people (from the confusion matrix) were identified as more chance of heart disease when they were less chance of heart disease, predicting a FALSE ALARM (Type 1 error).
 - Recall: 10% of the time (0.90 recall score) the model predicted a false negative (predicted a `0` but was actually a `1`), hence 4 people (from the confusion matrix) who had more chance of heart disease have been MISSED in the prediction (Type 2 error).

We managed to achieve an improvement of accuracy from 79% to 83% in the Logistic Regression Model by dropping the following columns as features from the X variable: `cp`, `trtbps`, `chol`, `restecg`, in addition to output, which was the y target variable.

We would recommend obtaining a new dataset with the same features to make predictions on new data and compare the accuracy of this model.
## Summary.

We are 83% sure that the model can actually predict the chance of heart disease.

Without 100% accuracy in a clinical healthcare prediction such as the chance of heart disease, one may not be comfortable giving the diagnosis of heart disease based on this models predictions.

It mat be best used as a screening tool and indicate to individuals to have further screening if positive.

9/76 people were predicted as a false positive, and these people would be sent for further testing and then hopefully found to be not at risk of heart disease.

The issue is the 4/76 false negatives predicted by the model, which is the worse case scenario as these people who are at risk of heart disease have not been identified.


### Enjoy exploring our tableau and notebook!
### Ufuoma and Sandra