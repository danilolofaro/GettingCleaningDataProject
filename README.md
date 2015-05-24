## File Download

#### Step 1

Download and unzip the file from the UCI repository at <a>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a> using `download.file()` and `unzip()` and then assigne the name "Wearable" to the relative folder.


#### Step 2

Create data frames from the txt files in the Wearable folder with `read.table()`. After the creation of the dataframes, variable names are transformed in desciptive names. Data frames created are:

* <b>features</b>: List of all 561 measured features. Var names are `ID`, `features`

* <b>activity</b>: List of the activity labels with their activity name. Var names are `ID`, `activity_labels`

* <b>X_train</b>: Training set. For training set var names are created using values in `features$features`

* <b>y_train</b>: Train activity labels. Var name is `activity`

* <b>subject_train</b>: Train subjects. Var name is `subject`

* <b>X_test</b>: Test set. Also for test set var names are created using values in `features$features`

* <b>y_test</b>: Test activity labels. Var name is `activity`

* <b>subject_test</b>: Test subjects. Var name is `subject`


#### Step 3

Bind subjects IDs to Train/Test set using `cbind()`



### Assignment 1

Create the dataframe <b>dataMerged</b> binding by rows (using `rbind()`) the Train and Test set respectively "binded" (using `cbind()`) to the activity labels.


### Assignment 2

* Find the indexes (`MeanStdIndex`) of the features containing mean and standard deviation, using `grep("mean())` and `grep("std())` on `features$features` (adding 1 because `subject` is the first var in <b>dataMerged</b>).

* Select only the vars of <b>dataMerged</b> in `MeanStdIndex` together with the `subject` and the `activity` values.


### Assignment 3

Merge the dataframes <b>dataMerged</b> and <b>activity</b> using `merge(dataMerged,activity,by.x = "activity",by.y = "ID")` and removing the activity label var.


### Assignment 4

Having changed the names in "Step 2", at this point vars are already labelled with descriptive names.


### Assignment 5

Using the package `dplyr`, create the dataframe <b>dataMergedAveraged</b> using the chain operator `%>%` by grouping <b>dataMerged</b> by `subject` and `activity_label` using `group_by()`, and then summarize all the remained vars in the data using `summarise_each(funs(mean))`.