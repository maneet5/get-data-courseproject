#Codebook
##Description
This is a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data, resulting in the file averaged.txt.

##Data
###Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

###Study Information

(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

###Original Data Set

(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Transformations (and assumptions)
The follow actions were data was unzipped before performing any transformation. 
- Imported both the train (X_test.txt) and tidy (X_train.txt) datasets and added variable names from features.txt (Lines 15-25).
- Add the activity labels, descriptive names for the activities, and subject IDs to each dataset (Lines 27-45).
- Merge the train and test datasets to merged.txt (Lines 48-49).
- Extract only the measures of mean and standard deviation for each variable with the activity and subject ID columns to subset.txt. It was assumed that any variable with "mean" or "std" in it was a measure of mean and standard deviation (Lines 53-56).
- Melt and dcast the subset.txt dataset to calculate average of each variable for each activity for each subject to averaged.txt (Lines 60-64)


##Variables
These are the variables in the averaged.txt dataset.

|    | Variable Name                   |   Description                                                                    |
|----|---------------------------------|----------------------------------------------------------------------------------|
| 1  | activity                        | The type of activity performed by subject                                        |
| 2  | subject                         | The ID of the subject.                                                           |
| 3  | tBodyAcc-mean()-X               | Mean time for body acceleration in X direction.                                  |
| 4  | tBodyAcc-mean()-Y               | Mean time for body acceleration in Y direction.                                  |
| 5  | tBodyAcc-mean()-Z               | Mean time for body acceleration in Z direction.                                  |
| 6  | tBodyAcc-std()-X                | Standard deviation of time for body acceleration in Z direction.                 |
| 7  | tBodyAcc-std()-Y                | Standard deviation of time for body acceleration in Z direction.                 |
| 8  | tBodyAcc-std()-Z                | Standard deviation of time for body acceleration in Z direction.                 |
| 9  | tGravityAcc-mean()-X            | Mean time for gravity acceleration in X direction.                               |
| 10 | tGravityAcc-mean()-Y            | Mean time for gravity acceleration in Y direction.                               |
| 11 | tGravityAcc-mean()-Z            | Mean time for gravity acceleration in Z direction.                               |
| 12 | tGravityAcc-std()-X             | Standard deviation of time for gravity acceleration in X direction.              |
| 13 | tGravityAcc-std()-Y             | Standard deviation of time for gravity acceleration in Y direction.              |
| 14 | tGravityAcc-std()-Z             | Standard deviation of time for gravity acceleration in Z direction.              |
| 15 | tBodyAccJerk-mean()-X           | Mean time for body acceleration jerk signal in X direction.                      |
| 16 | tBodyAccJerk-mean()-Y           | Mean time for body acceleration jerk signal in Y direction.                      |
| 17 | tBodyAccJerk-mean()-Z           | Mean time for body acceleration jerk signal in Z direction.                      |
| 18 | tBodyAccJerk-std()-X            | Standard deviation of time for body acceleration jerk signal in X direction.     |
| 19 | tBodyAccJerk-std()-Y            | Standard deviation of time for body acceleration jerk signal in Y direction.     |
| 20 | tBodyAccJerk-std()-Z            | Standard deviation of time for body acceleration jerk signal in Z direction.     |
| 21 | tBodyGyro-mean()-X              | Mean body gyroscope measurement in X direction.                                  |
| 22 | tBodyGyro-mean()-Y              | Mean body gyroscope measurement in Y direction.                                  |
| 23 | tBodyGyro-mean()-Z              | Mean body gyroscope measurement in Z direction.                                  |
| 24 | tBodyGyro-std()-X               | Standard deviation of body gyroscope measurement in X direction.                 |
| 25 | tBodyGyro-std()-Y               | Standard deviation of body gyroscope measurement in Y direction.                 |
| 26 | tBodyGyro-std()-Z               | Standard deviation of body gyroscope measurement in Z direction.                 |
| 27 | tBodyGyroJerk-mean()-X          | Mean jerk signal body gyroscope measurement in X direction.                      |
| 28 | tBodyGyroJerk-mean()-Y          | Mean jerk signal body gyroscope measurement in Y direction.                      |
| 29 | tBodyGyroJerk-mean()-Z          | Mean jerk signal body gyroscope measurement in Z direction.                      |
| 30 | tBodyGyroJerk-std()-X           | Standard deviation of jerk signal for body gyroscope measurement in X direction. |
| 31 | tBodyGyroJerk-std()-Y           | Standard deviation of jerk signal for body gyroscope measurement in Y direction. |
| 32 | tBodyGyroJerk-std()-Z           | Standard deviation of jerk signal for body gyroscope measurement in Z direction. |
| 33 | tBodyAccMag-mean()              | Mean magnitude of body acceleration.                                             |
| 34 | tBodyAccMag-std()               | Standard deviation of magnitude of body acceleration.                            |
| 35 | tGravityAccMag-mean()           | Mean magnitude of gravity acceleration.                                          |
| 36 | tGravityAccMag-std()            | Standard deviation of magnitude of gravity acceleration.                         |
| 37 | tBodyAccJerkMag-mean()          | Mean magnitude of body jerk acceleration.                                        |
| 38 | tBodyAccJerkMag-std()           | Standard deviation of magnitude of body jerk acceleration.                       |
| 39 | tBodyGyroMag-mean()             | Mean magnitude of body gyroscrope measurement.                                   |
| 40 | tBodyGyroMag-std()              | Standard deviation of magnitude of body gyroscope measurement.                   |
| 41 | tBodyGyroJerkMag-mean()         | Mean magnitude of body jerk gyroscope measurement.                               |
| 42 | tBodyGyroJerkMag-std()          | Standard deviation of magnitude of body jerk gyroscope measurement.              |
| 43 | fBodyAcc-mean()-X               | Mean frequency of body acceleration in X direction.                              |
| 44 | fBodyAcc-mean()-Y               | Mean frequency of body acceleration in Y direction.                              |
| 45 | fBodyAcc-mean()-Z               | Mean frequency of body acceleration in Z direction.                              |
| 46 | fBodyAcc-std()-X                | Standard deviation of frequency of body acceleration for X direction.            |
| 47 | fBodyAcc-std()-Y                | Standard deviation of frequency of body acceleration for Y direction.            |
| 48 | fBodyAcc-std()-Z                | Standard deviation of frequency of body acceleration for Z direction.            |
| 49 | fBodyAcc-meanFreq()-X           | Mean of mean frequency of body acceleration in X direction.                      |
| 50 | fBodyAcc-meanFreq()-Y           | Mean of mean frequency of body acceleration in Y direction.                      |
| 51 | fBodyAcc-meanFreq()-Z           | Mean of mean frequency of body acceleration in Z direction.                      |
| 52 | fBodyAccJerk-mean()-X           | Mean frequency of body accerlation jerk for X direction.                         |
| 53 | fBodyAccJerk-mean()-Y           | Mean frequency of body accerlation jerk for Y direction.                         |
| 54 | fBodyAccJerk-mean()-Z           | Mean frequency of body accerlation jerk for Z direction.                         |
| 55 | fBodyAccJerk-std()-X            | Standard deviation frequency of body accerlation jerk for X direction.           |
| 56 | fBodyAccJerk-std()-Y            | Standard deviation frequency of body accerlation jerk for Y direction.           |
| 57 | fBodyAccJerk-std()-Z            | Standard deviation frequency of body accerlation jerk for Z direction.           |
| 58 | fBodyAccJerk-meanFreq()-X       | Mean of mean frequency of body accerlation jerk for X direction.                 |
| 59 | fBodyAccJerk-meanFreq()-Y       | Mean of mean frequency of body accerlation jerk for Y direction.                 |
| 60 | fBodyAccJerk-meanFreq()-Z       | Mean of mean frequency of body accerlation jerk for Z direction.                 |
| 61 | fBodyGyro-mean()-X              | Mean frequency of body gyroscope measurement for X direction.                    |
| 62 | fBodyGyro-mean()-Y              | Mean frequency of body gyroscope measurement for Y direction.                    |
| 63 | fBodyGyro-mean()-Z              | Mean frequency of body gyroscope measurement for Z direction.                    |
| 64 | fBodyGyro-std()-X               | Standard deviation frequency of body gyroscope measurement for X direction.      |
| 65 | fBodyGyro-std()-Y               | Standard deviation frequency of body gyroscope measurement for Y direction.      |
| 66 | fBodyGyro-std()-Z               | Standard deviation frequency of body gyroscope measurement for Z direction.      |
| 67 | fBodyGyro-meanFreq()-X          | Mean of mean frequency of body gyroscope measurement for X direction.            |
| 68 | fBodyGyro-meanFreq()-Y          | Mean of mean frequency of body gyroscope measurement for Y direction.            |
| 69 | fBodyGyro-meanFreq()-Z          | Mean of mean frequency of body gyroscope measurement for Z direction.            |
| 70 | fBodyAccMag-mean()              | Mean frequency of body acceleration magnitude.                                   |
| 71 | fBodyAccMag-std()               | Standard deviation of frequency of body acceleration magnitude.                  |
| 72 | fBodyAccMag-meanFreq()          | Mean of mean frequency of body acceleration magnitude.                           |
| 73 | fBodyBodyAccJerkMag-mean()      | Mean frequency of body acceleration jerk magnitude.                              |
| 74 | fBodyBodyAccJerkMag-std()       | Standard deviation of frequency of body acceleration jerk magnitude.             |
| 75 | fBodyBodyAccJerkMag-meanFreq()  | Mean of mean frequency of body acceleration jerk magnitude.                      |
| 76 | fBodyBodyGyroMag-mean()         | Mean frequency of magnitude of body gyroscope measurement.                       |
| 77 | fBodyBodyGyroMag-std()          | Standard deviation of frequency of magnitude of body gyroscope measurement.      |
| 78 | fBodyBodyGyroMag-meanFreq()     | Mean of mean frequency of magnitude of body gyroscope measurement.               |
| 79 | fBodyBodyGyroJerkMag-mean()     | Mean frequency of magnitude of body gyroscope jerk measurement.                  |
| 80 | fBodyBodyGyroJerkMag-std()      | Standard deviation of frequency of magnitude of body gyroscope jerk measurement. |
| 81 | fBodyBodyGyroJerkMag-meanFreq() | Mean of mean frequency of magnitude of body gyroscope jerk measurement.          |