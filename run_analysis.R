##Getting and Cleaning Data Course Project
library(tidyr)
library(dplyr)
##0) Load files into R
#Load class names with activity names
activity_labels <- read.table("activity_labels.txt")
#Load features
features <- read.table("features.txt")
#Load test files
X_test <- read.table("./test/X_test.txt")
Y_test <- read.table("./test/Y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

#Load train files
X_train <- read.table("./train/X_train.txt")
Y_train <- read.table("./train/Y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

##1) Merges the training and the test sets to create one data set
#Add names
names(subject_test) <- "Subject"
names(subject_train) <- "Subject"
names(X_train) <- features$V2
names(X_test) <- features$V2
names(Y_train) <- "Activity_ID"
names(Y_test) <- "Activity_ID"
#Combine into one data set
Train <- cbind(subject_train, Y_train, X_train)
Test <- cbind(subject_test, Y_test, X_test)
Dataset <- rbind(Train, Test)

##2) Extracts only the measurements on the mean and standard deviation for each measurement
#Select columns with mean and std
Columns <- grep("[Mm]ean|[Ss]td", names(Dataset))
DataMeanStd <- Dataset[, Columns]
#Combine dataset with mean and std variable columns
DatasetMeanStd <- cbind(Dataset[, 1:2], DataMeanStd)

##3) Uses descriptive activity names to name the activities in the data set
#Add activity labels to the dataset
ActivityData <- merge(DatasetMeanStd, activity_labels, by.x = "Activity_ID", by.y = "V1")
#Re-order column to show activity labels in the second column
NColumn <- ncol(ActivityData)
lastcolumn <- NColumn - 1
ActivityData <- ActivityData[, c(1, NColumn, 2:lastcolumn)]

##4) Appropriately labels the data set with descriptive variable names
#Re-name activity label column and variable names
colnames(ActivityData) <- gsub("-|_", " ", colnames(ActivityData))
colnames(ActivityData) <- gsub("()","", colnames(ActivityData))
colnames(ActivityData) <- gsub("^t", "time ", colnames(ActivityData))
colnames(ActivityData) <- gsub("^f", "freq ", colnames(ActivityData))
colnames(ActivityData) <- sub("V2", "Activity Label", colnames(ActivityData))

##5) From the data set in step 4, creates a second, independent tidy data set 
##with the average of each variable for each activity and each subject
#Group data into subject and activity
GroupedData <- group_by(ActivityData, Subject, `Activity ID`, `Activity Label`)
#Summarize data by average of each
TidyData <- summarise_each(GroupedData, funs(mean))
#Save TidyData as a txt file
write.table(TidyData, "TidyData.txt", row.names=FALSE)
