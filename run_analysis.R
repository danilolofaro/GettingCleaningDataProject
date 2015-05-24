
## Read files
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./Wearable.zip")
unzip(zipfile = "./Wearable.zip")

features<- read.table("./Wearable/UCI HAR Dataset/features.txt") 
# Change features col names 
names(features) <- c("ID","features") 

activity<- read.table("./Wearable/UCI HAR Dataset/activity_labels.txt")
# Change activity col names
names(activity) <- c("ID","activity_label")

X_train <- read.table("./Wearable/UCI HAR Dataset/train/X_train.txt")
# Change Test set col names assigning descriptive names taken from the features dataframe
names(X_train) <- features$features 

y_train <- read.table("./Wearable/UCI HAR Dataset/train/y_train.txt")
# Change train activity label col name
names(y_train) <- "activity" 
# Transform train activity label in a factor var
y_train$activity<- factor(y_train$activity) 
subject_train <- read.table("./Wearable/UCI HAR Dataset/train/subject_train.txt")
# Change train subjects col name
names(subject_train) <- "subject" 

X_test <- read.table("./Wearable/UCI HAR Dataset/test/X_test.txt")
# Change Train set col names assigning descriptive names taken from the features dataframe
names(X_test) <- features$features 

y_test <- read.table("./Wearable/UCI HAR Dataset/test/y_test.txt")
# Change test activity label col name
names(y_test) <- "activity" 
# Transform test activity label in a factor var
y_test$activity<- factor(y_test$activity) 

subject_test <- read.table("./Wearable/UCI HAR Dataset/test/subject_test.txt")
# Change train subjects col name
names(subject_test) <- "subject" 

# bind subjects at train set
X_train <- cbind(subject_train,X_train) 
# bind subjects at test set
X_test <- cbind(subject_test,X_test) 

# Bind train and test set with their activity labels
dataMerged <- rbind(cbind(X_train,y_train),cbind(X_test,y_test)) 

# Find the indexes of the features containing mean and standard deviation
MeanStdIndex <- sort(c(grep("mean()", features$features, fixed = T),grep("std()", features$features, fixed = T))+1)
# Select mean/std vars
dataMerged <- dataMerged[,c(1,MeanStdIndex,NCOL(dataMerged))]

# Include activity names instead of activity labels
dataMerged <- merge(dataMerged,activity,by.x = "activity",by.y = "ID")
dataMerged <- dataMerged[,2:NCOL(dataMerged)]

library(dplyr)
# Find mean of each var by subject and activity
dataMergedAveraged <- dataMerged %>% group_by(subject,activity_label) %>% summarise_each(funs(mean))

# Save Dataframe file
write.table(x = dataMerged, file="dataMerged.txt", row.names = F)
write.table(x = dataMergedAveraged, file="dataMergedAveraged.txt", row.names = F)

