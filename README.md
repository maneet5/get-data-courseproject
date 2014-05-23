#README

##Description

The purpose of this project was to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. The requirements are:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive activity names. 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

##Files
There are 4 files in this repo that meet the requirements of the above. 

- run_analysis.R: the R script to perform the above functions. Requires unzipping the folder and redesignating the working director. This script will also export the 3 datasets described below.
- merged.txt: the train and test merged dataset (10299 obs. of 563 variables)
- subset.txt: the extracted dataset for the measurements on the mean and standard deviation for each measurement (10299 obs. of 81 variables)
- averaged.txt: the second tidy data set with the averages for each variable for each activity and subject (180 obs. of 81 variables)


