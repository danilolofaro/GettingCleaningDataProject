## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Human Activity Recognition Using Smartphones 
Data Set " available on
the web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">UCI HAR Dataset</a> [61Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.

The following descriptions of the Dataset is taken from the
<a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

#### Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


#### Attribute Information
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 


## Data Selection
The files used for this project are:

* <b>'train/X_train.txt'</b>: Training set of 7352 rows (representing experiments) and 561 columns (representing features measured) 

* <b>'train/y_train.txt'</b>: 7351 activity labels relative to the training experiments.

* <b>'test/X_test.txt'</b>: Test set of 2947 experiments (x 561 col).

* <b>'test/y_test.txt'</b>: 2947 test activity labels.

* <b>'train/subject_train.txt'</b>: 7351 subjects performing the training experiments.

* <b>'test/subject_test.txt'</b>: 2947 subjects performing the training experiments.

* <b>'features.txt'</b>: List of all 561 measured features.

* <b>'activity_labels.txt'</b>: List of the activity labels with their activity name (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

