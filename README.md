Getting and Cleaning Data: Course Project

This repository holds an R script to process the required data files called "run_analysis.R", a code boke called "CodeBook.md" that describes the data and how it is processed, and this readme file which is called "README.md"

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The submission for this project includes: 1) a tidy data set as described below, 2) a link to a Github repository with my script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. 

The original data for the project are located on the following website:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The "run_analysis.R" script performs the following tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

