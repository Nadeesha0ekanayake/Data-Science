
##Q1 )  Merging the two data sets 

install.packages("plyr")

library(plyr)



x_train_TEMP <- read.table("C:/Users/nadeesha_05026/Desktop/Cousera/Getting and Cleaning Data/UCI HAR Dataset/train/X_train.txt")


y_train_TEMP <- read.table("C:/Users/nadeesha_05026/Desktop/Cousera/Getting and Cleaning Data/UCI HAR Dataset/train/y_train.txt")

subject_train_TEMP <- read.table("C:/Users/nadeesha_05026/Desktop/Cousera/Getting and Cleaning Data/UCI HAR Dataset/train/subject_train.txt")



x_test <- read.table("C:/Users/nadeesha_05026/Desktop/Cousera/Getting and Cleaning Data/UCI HAR Dataset/test/X_test.txt")

y_test <- read.table("C:/Users/nadeesha_05026/Desktop/Cousera/Getting and Cleaning Data/UCI HAR Dataset/test/y_test.txt")


subject_test <- read.table("C:/Users/nadeesha_05026/Desktop/Cousera/Getting and Cleaning Data/UCI HAR Dataset/test/subject_test.txt")


X_data <- rbind(x_train_TEMP, x_test)	




y_data <- rbind(y_train_TEMP, y_test)	


subject_data <- rbind(subject_train_TEMP, subject_test)	

##Q2)  Finding the Mean and standard deviation

features <- read.table("C:/Users/nadeesha_05026/Desktop/Cousera/Getting and Cleaning Data/UCI HAR Dataset/features.txt")
MandSF <- grep("-(mean|std)\\(\\)", features[, 2])
x_data <- x_data[, MandSF]

names(x_data) <- features[MandSF, 2]

##Q3) Assigning the descriptive names 

activities <- read.table("C:/Users/nadeesha_05026/Desktop/Cousera/Getting and Cleaning Data/UCI HAR Dataset/activity_labels.txt")


y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"

##Q4) Labeling the data set 

names(subject_data) <- "subject"
all_data <- cbind(x_data, y_data, subject_data)

##Q5) Creating Tidy data set

averages_data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(averages_data, "averages_data.txt", row.name=FALSE)
