## Project 4 Report - Heart Disease Analysis and Prediction.

## Overview.
### The purpose of this analysis was to use our knowledge of supervised machine learning to create a binary classifier that can predict the chance of heart disease.

## Acknowledgments

**Data sourced from Kaggle.**
https://www.kaggle.com/datasets/rashikrahmanpritom/heart-attack-analysis-prediction-dataset?select=heart.csv

 - `Age`        Age of the patient
 - `Sex`        Sex of the patient (1 = male, 0 = female)
 - `cp`         Chest Pain type (0: typical angina, 1: atypical angina, 2: non-anginal pain, 3: asymptomatic)
 - `trtbps`     Resting blood pressure (in mm Hg) on admission to hospital
 - `chol`       Serum cholestoral in mg/dl fetched via BMI sensor
 - `fbs`        Fasting blood sugar > 120 mg/dl (1 = true, 0 = false)
 - `rest_ecg`   Resting electrocardiographic results (0: normal, 1: having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV), 2: showing probable or definite left ventricular hypertrophy)
 - `thalach`    Maximum heart rate achieved
 - `exang`      Exercise induced angina (1 = yes, 0 = no)
 - `old peak`   ST depression induced by exercise relative to rest
 - `slp`        The slope of the peak exercise ST segment (0 = unsloping, 1 = flat, 2 = downsloping)
 - `ca`         Number of major vessels (0-4) colored by flourosopy
 - `thall`      Thalassemia (0 = null, 1 = fixed defect, 2 = normal, 3 = reversable defect)
 - `output`     Diagnosis of heart disease (angiographic disease status)(0: < 50% diameter narrowing. less chance of heart disease, 1: > 50% diameter narrowing. more chance of heart disease)

## Data Preprocessing
 - The <heart.csv> was loaded in as a Pandas DataFrame called heart_df.
 - Cleaning data, no nulls.

 ### Visualisations
 - Histograms and a pair plot for continuous data e.g. `age`, `trtbps`,`chol`, `thalach` and `oldpeak`. Looked at value-counts, min/max, mean/median values.
 - Pie and bar charts for grouped/categorical data e.g. `sex`, `cp`, `fbs`, `restecg`, `exng`, `slp`, `caa` and `thall`. Looked at value-counts for each group.
 - Correlation Matrix.
 - Tableau VIZ created with one dashboard for each feature, filtered on value-counts of y target variable binary labels.
 https://public.tableau.com/app/profile/sandra.botica   Heart_Disease viz

 - Splitting data into subsets for training and testing the model (train-test-split)
### What variable(s) are the target(s) for your model?
 - The "output" column, was the y target variable for the model. 
 - There are 165 `1` More chance of heart disease > 50% diameter narrowing and 138 `0` Less chance of heart disease < 50% diameter narrowing. This indicated a fairly well-balanced column of data as the target variable.
### What variable(s) are the features for your model?
 - All other columns are the X variable or features for the model.

 - The data was normalised using the StandardScaler() module from scikit-learn and a DataFrame called heart_df_scaled, was created with the scaled data. 

 - The scaled data was reduced to 2 principal components with a Principal Component Analysis.
## Data Model Implementation.
### Compiling, Training, and Evaluating the Model.
#### Did we achieve the target model performance of 75% classification accuracy or 0.8 R-squared?
Yes we did.
Initially the X variable or features included all columns and an accuracy of 79% was achieved.
### Data Model Optimisation. What steps we took to increase model performance?
#### Feature selection
 - Experimenting with binning features so as to have more columns in the DataFrame.
 - Removing columns.
#### Hyperparameters
 - Changing the train_test_split with test-size = 0.2 and then 0.3, rather than the deafult setting of 0.25, was also tried, but this did not help the model accuracy.
## Results
The logistic regression model was better at predicting the `1` (More chance of heart disease > 50% diameter narrowing) label then the `0` (Less chance of heart disease < 50% diameter narrowing) labels. This may be due to the bias of data having 41 `1`s and only 35 `0`s. 

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

### Ufuoma and Sandra