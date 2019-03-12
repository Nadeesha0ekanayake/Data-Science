# Data-Science
Coursera Getting and Cleaning Data course project
One of the most exciting areas in all of data science right now is wearable computing - see for example this article. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.

In this project, data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone was retrieved, worked with, and cleaned, to prepare a tidy data that can be used for later analysis.

This repository contains the following files:

README.md, this file, provides an overview of the data set
tidy_data.txt,  contains the data set.
CodeBook.md, the code book, describes data, variables and transformations used to generate the data.
run_analysis.R, the R script that was used to create the data set (see the Creating the data set section below)
Study design


Training and test data were first merged together to create one data set,
then the measurements on the mean and standard deviation extracted for each measurement , and then the measurements were averaged for each subject and activity, giving in the final data set.

Creating the data set
The R script run_analysis.R has the all scripts which are helpful.
It retrieves the source data set and transforms it 


the main steps involved were ; 

Read data.
Merge the training and the test sets to create one data set.
Extract only the measurements on the mean and standard deviation for each measurement.
Use descriptive activity names to name the activities in the data set.
Appropriately label the data set with descriptive variable names.
Create a second, independent tidy set with the average of each variable for each activity and each subject.
Write the data set to the tidy_data.txt file.



© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
