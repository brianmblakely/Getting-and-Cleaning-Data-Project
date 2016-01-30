# O. Download the data and analyze it
library(dplyr)
library(data.table)
library(tidyr)

# Download the data. Save it. Unzip the file.
 if(!file.exists("./projectdata")){dir.create("./projectdata")}
 fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
 download.file(fileUrl,destfile="./projectdata/Dataset.zip")
 unzip(zipfile="./projectdata/Dataset.zip",exdir="./projectdata")

# Read data from the required files into R variables
directorypath <- file.path("./projectdata" , "UCI HAR Dataset")
data_ytest  <- read.table(file.path(directorypath, "test" , "Y_test.txt" ),header = FALSE)
data_ytrain <- read.table(file.path(directorypath, "train", "Y_train.txt"),header = FALSE)
data_subjecttrain <- read.table(file.path(directorypath, "train", "subject_train.txt"),header = FALSE)
data_subjecttest  <- read.table(file.path(directorypath, "test" , "subject_test.txt"),header = FALSE)
data_xtest  <- read.table(file.path(directorypath, "test" , "X_test.txt" ),header = FALSE)
data_xtrain <- read.table(file.path(directorypath, "train", "X_train.txt"),header = FALSE)

##1  Merge the training and the test sets to create one data set

# Concatenate the data
mergedSubject <- rbind(data_subjecttrain, data_subjecttest)
setnames(mergedSubject, "V1", "subject")
mergedActivity<- rbind(data_ytest, data_ytrain)
setnames(mergedActivity, "V1", "activityNum")
mergedData<- rbind(data_xtrain, data_xtest)

# Apply names of features
dataFeatures <- tbl_df(read.table(file.path(directorypath, "features.txt")))
setnames(dataFeatures, names(dataFeatures), c("featureNum", "featureName")) 
colnames(mergedData) <- dataFeatures$featureName

# Apply names of activities
activityLabelNames<- tbl_df(read.table(file.path(directorypath, "activity_labels.txt")))
setnames(activityLabelNames, names(activityLabelNames), c("activityNum","activityName"))

# Merge the data
mergedSubjectActivity<- cbind(mergedSubject, mergedActivity)
mergedData <- cbind(mergedSubjectActivity, mergedData)

#2 Extracts only the measurements on the mean and standard deviation for each measurement.

#Subset the data on Mean and Std
dataFeaturesMeanStd <- grep("mean\\(\\)|std\\(\\)",dataFeatures$featureName,value=TRUE) #var name
dataFeaturesMeanStd <- union(c("subject","activityNum"), dataFeaturesMeanStd)
mergedData<- subset(mergedData,select=dataFeaturesMeanStd)

#3 Uses descriptive activity names to name the activities in the data set

# Load activity numbers
mergedData <- merge(activityLabelNames, mergedData , by="activityNum", all.x=TRUE)
mergedData$activityName <- as.character(mergedData$activityName)

# Load variables by subject and activity
mergedData$activityName <- as.character(mergedData$activityName)
dataAggregated<- aggregate(. ~ subject - activityName, data = mergedData, mean)
mergedData<- tbl_df(arrange(dataAggregated,subject,activityName))

#4 Appropriately labels the data set with descriptive variable names.
names(mergedData)<-gsub("std()", "SD", names(mergedData))
names(mergedData)<-gsub("mean()", "MEAN", names(mergedData))
names(mergedData)<-gsub("^t", "time", names(mergedData))
names(mergedData)<-gsub("^f", "frequency", names(mergedData))
names(mergedData)<-gsub("Acc", "Accelerometer", names(mergedData))
names(mergedData)<-gsub("Gyro", "Gyroscope", names(mergedData))
names(mergedData)<-gsub("Mag", "Magnitude", names(mergedData))
names(mergedData)<-gsub("BodyBody", "Body", names(mergedData))

#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

mergedData2<-aggregate(. ~subject + activityName, mergedData, mean)
mergedData2<-mergedData2[order(mergedData2$subject,mergedData2$activityName),]
write.table(mergedData2, file = "tidydata.txt",row.name=FALSE)


