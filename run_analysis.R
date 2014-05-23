#This R script imports the train and test data sets, apply column names, activity labels, 
#and subject IDs to tidy both data sets. It them merges the 2 datasets and saves it as a new
#file. Then it extracts only measures of mean and standard deviation and saves it as a new
#tidy data set file. Finally, it calculates the averages for each subject and acvitity for
#each variable of that second tidy data set and saves it as a new file. It follows this order:

#(parts 3-4 are performed first)
#(3)Uses descriptive activity names to name the activities in the data set
#(4)Appropriately labels the data set with descriptive activity names. 
#(1)Merges the training and the test sets to create one data set.
#(2)Extracts only the measurements on the mean and standard deviation for each measurement. 
#(5)Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


#import test dataset
setwd("C:/Users/Maneet/Dropbox/1 - Coursera/Getting and Cleaning Data/Course Project")
features <- read.table("./UCI HAR Dataset/features.txt")
testdata <- read.table("./UCI HAR Dataset/test/X_test.txt")
#give variable names
colnames(testdata) <- features[,2] #give variable names

#import training dataset
traindata <- read.table("./UCI HAR Dataset/train/X_train.txt")
#give variable names
colnames(traindata) <- features[,2] 

####(3-4)ADDS DESCRIPTIVE ACTIVITY NAMES####
testlabels <- read.table("./UCI HAR Dataset/test/Y_test.txt") 
testlabels[,1] <- as.factor(testlabels[,1]) 
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
testdata$activity <- testlabels[,1] 
levels(testdata$activity) <- activitylabels[,2] #add column of activities as factors

####(3-4)ADDS DESCRIPTIVE ACTIVITY NAMES####
trainlabels <- read.table("./UCI HAR Dataset/train/Y_train.txt")
trainlabels[,1] <- as.factor(trainlabels[,1]) 
traindata$activity <- trainlabels[,1] 
levels(traindata$activity) <- activitylabels[,2] 

#add subjects
testsubj <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testdata$subject <- testsubj[,1]
#add subjects
trainsubj <- read.table("./UCI HAR Dataset/train/subject_train.txt")
traindata$subject <- trainsubj[,1]

####(1)MERGE DATASETS####
merged <- rbind(testdata, traindata)
write.table(merged, "./mergedtidy.txt", sep="\t") 

####(2)EXTRACT ONLY MEASURES OF MEAN & STD FOR EACH MEASUREMENT####
#extract <- cbind(merged[,1:6], merged[,41:46], merged[,81:86], merged[,121:126], merged[,161:166], merged[,201:202], merged[,214:215], merged[,227:228], merged[,240:241], merged[,253:254], merged[,266:271], merged[,345:350], merged[,373:375], merged[,424:429], merged[,452:454], merged[,503:504], merged[,516:517], merged[,529:530], merged[,542:543], merged[,552], merged[,555:563])
subsetvar <- as.character(features[,2][grep("mean|std", features[,2])])
        #capital Means ignored
subset <- merged[, c("activity", "subject", subsetvar)]
write.table(subset, "./subset.txt", sep="\t") 


####(5)CALCULATES AVERAGE OF EACH VARIABLE FOR EACH SUBJECT AND ACTIVITY####
library(reshape2)
variables <- colnames(subset)[3:81]
melted <- melt(subset, id=c("activity", "subject"), measure.vars=variables)
averaged <- dcast(melted, activity + subject ~ variable, mean)
write.table(averaged, "./averaged.txt", sep="\t") 

#Creating codebook variables
listOfVariables <- data.frame(names(averaged))
write.csv(listOfVariables,"listOfVariables.csv")

