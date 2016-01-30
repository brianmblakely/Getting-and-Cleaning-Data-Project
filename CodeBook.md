CodeBook
This codebook describes the variables, the data, and the transformations performed to clean up the data.  Please note: this codebook liberally makes use of information available on the website with the original dataset description, which is referenced below.

The data source

Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Original dataset description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The data

The dataset includes the following files:

'README.txt'
'features_info.txt': a file that shows information about the variables used on the feature vector.
'features.txt': a file that contains a list of all features.
'activity_labels.txt': a file that links the class labels with their activity name.
'train/X_train.txt': a file that includes the Training set.
'train/y_train.txt': a file that contains the Training labels.
'test/X_test.txt': a file that contains the Test set.
'test/y_test.txt': a file that contains the Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. The range is from 1 to 30.

'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.


Feature Selection (from the "features_info.txt" file) 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The full list of variables in the final TidyData includes the following listed below.  All variables are the mean of a measurement for each subject and activity. This is indicated by the initial Mean in the variable name. All values are floating point numbers.
 [1] "subject" -  the integer subject ID.                                   
 [2] "activityName" - the string activity name                                  
 [3] "activityNum" - the string activity number                                  
 [4] "timeBodyAccelerometer-MEAN()-X" (see above for the rest of the descriptions)               
 [5] "timeBodyAccelerometer-MEAN()-Y"                
 [6] "timeBodyAccelerometer-MEAN()-Z"                
 [7] "timeBodyAccelerometer-SD()-X"                  
 [8] "timeBodyAccelerometer-SD()-Y"                  
 [9] "timeBodyAccelerometer-SD()-Z"                  
[10] "timeGravityAccelerometer-MEAN()-X"             
[11] "timeGravityAccelerometer-MEAN()-Y"             
[12] "timeGravityAccelerometer-MEAN()-Z"             
[13] "timeGravityAccelerometer-SD()-X"               
[14] "timeGravityAccelerometer-SD()-Y"               
[15] "timeGravityAccelerometer-SD()-Z"               
[16] "timeBodyAccelerometerJerk-MEAN()-X"            
[17] "timeBodyAccelerometerJerk-MEAN()-Y"            
[18] "timeBodyAccelerometerJerk-MEAN()-Z"            
[19] "timeBodyAccelerometerJerk-SD()-X"              
[20] "timeBodyAccelerometerJerk-SD()-Y"              
[21] "timeBodyAccelerometerJerk-SD()-Z"              
[22] "timeBodyGyroscope-MEAN()-X"                    
[23] "timeBodyGyroscope-MEAN()-Y"                    
[24] "timeBodyGyroscope-MEAN()-Z"                    
[25] "timeBodyGyroscope-SD()-X"                      
[26] "timeBodyGyroscope-SD()-Y"                      
[27] "timeBodyGyroscope-SD()-Z"                      
[28] "timeBodyGyroscopeJerk-MEAN()-X"                
[29] "timeBodyGyroscopeJerk-MEAN()-Y"                
[30] "timeBodyGyroscopeJerk-MEAN()-Z"                
[31] "timeBodyGyroscopeJerk-SD()-X"                  
[32] "timeBodyGyroscopeJerk-SD()-Y"                  
[33] "timeBodyGyroscopeJerk-SD()-Z"                  
[34] "timeBodyAccelerometerMagnitude-MEAN()"         
[35] "timeBodyAccelerometerMagnitude-SD()"           
[36] "timeGravityAccelerometerMagnitude-MEAN()"      
[37] "timeGravityAccelerometerMagnitude-SD()"        
[38] "timeBodyAccelerometerJerkMagnitude-MEAN()"     
[39] "timeBodyAccelerometerJerkMagnitude-SD()"       
[40] "timeBodyGyroscopeMagnitude-MEAN()"             
[41] "timeBodyGyroscopeMagnitude-SD()"               
[42] "timeBodyGyroscopeJerkMagnitude-MEAN()"         
[43] "timeBodyGyroscopeJerkMagnitude-SD()"           
[44] "frequencyBodyAccelerometer-MEAN()-X"           
[45] "frequencyBodyAccelerometer-MEAN()-Y"           
[46] "frequencyBodyAccelerometer-MEAN()-Z"           
[47] "frequencyBodyAccelerometer-SD()-X"             
[48] "frequencyBodyAccelerometer-SD()-Y"             
[49] "frequencyBodyAccelerometer-SD()-Z"             
[50] "frequencyBodyAccelerometerJerk-MEAN()-X"       
[51] "frequencyBodyAccelerometerJerk-MEAN()-Y"       
[52] "frequencyBodyAccelerometerJerk-MEAN()-Z"       
[53] "frequencyBodyAccelerometerJerk-SD()-X"         
[54] "frequencyBodyAccelerometerJerk-SD()-Y"         
[55] "frequencyBodyAccelerometerJerk-SD()-Z"         
[56] "frequencyBodyGyroscope-MEAN()-X"               
[57] "frequencyBodyGyroscope-MEAN()-Y"               
[58] "frequencyBodyGyroscope-MEAN()-Z"               
[59] "frequencyBodyGyroscope-SD()-X"                 
[60] "frequencyBodyGyroscope-SD()-Y"                 
[61] "frequencyBodyGyroscope-SD()-Z"                 
[62] "frequencyBodyAccelerometerMagnitude-MEAN()"    
[63] "frequencyBodyAccelerometerMagnitude-SD()"      
[64] "frequencyBodyAccelerometerJerkMagnitude-MEAN()"
[65] "frequencyBodyAccelerometerJerkMagnitude-SD()"  
[66] "frequencyBodyGyroscopeMagnitude-MEAN()"        
[67] "frequencyBodyGyroscopeMagnitude-SD()"          
[68] "frequencyBodyGyroscopeJerkMagnitude-MEAN()"    
[69] "frequencyBodyGyroscopeJerkMagnitude-SD()" 


Transformation details

There are 5 parts to the transformation required for this data processing:
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive activity names.
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

The script "run_analysis.R" implements the above steps in the following manner:
- Requires dplyr, data.table, and tidyr libraries
- Loads all the data: both the test and train data sets then loads the features and activity labels.
- Merge data files and rename columns more descriptively from feature and activity label files
- Use subset function to extract only the mean and standard deviation data
- Rename the activity names in the merged dataset.
- Apply more user-friendly data names to the merged data set
- Create a second data set that only includes the average of each variable for each activity and each subject.