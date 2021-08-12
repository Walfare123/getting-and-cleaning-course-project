library(dplyr)

# STEP 1 - Get data


# download zip file containing data if it hasn't already been downloaded
dataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataFile <- "UCI HAR Dataset.zip"

if (!file.exists(dataFile)) {
        download.file(dataUrl, dataFile, mode = "wb")
}

# unzip zip file containing data if data directory doesn't already exist
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
        unzip(zipFile)
}


# STEP 2 - Read data

# read training data
trainID <- read.table(file.path(dataPath, "train", "subject_train.txt"))
trainValues <- read.table(file.path(dataPath, "train", "X_train.txt"))
trainActivity <- read.table(file.path(dataPath, "train", "y_train.txt"))

# read test data
testID <- read.table(file.path(dataPath, "test", "subject_test.txt"))
testValues <- read.table(file.path(dataPath, "test", "X_test.txt"))
testActivity <- read.table(file.path(dataPath, "test", "y_test.txt"))

# read features, don't convert text labels to factors
features <- read.table(file.path(dataPath, "features.txt"), as.is = TRUE)
## note: feature names (in features[, 2]) are not unique
##       e.g. fBodyAcc-bandsEnergy()-1,8

# read activity labels
activities <- read.table(file.path(dataPath, "activity_labels.txt"))
colnames(activities) <- c("ActivityID", "ActivityLabel")


# Step 3 - Merge the training and the test sets to create one data set

# concatenate individual data tables to make single data table
humanActivity <- rbind(
        cbind(trainID, trainValues, trainActivity),
        cbind(testID, testValues, testActivity)
)

# remove individual data tables to save memory
rm(trainID, trainValues, trainActivity, 
   testID, testValues, testActivity)

# assign column names
colnames(humanActivity) <- c("Subject", features[, 2], "Activity")


# Step 4 - Extract only the measurements on the mean and standard deviation
#          for each measurement

# determine columns of data set to keep based on column name...
columnsToKeep <- grepl("Subject|Activity|mean|std", colnames(humanActivity))

# ... and keep data in these columns only
humanActivity <- humanActivity[, columnsToKeep]


# Step 5 - Use descriptive activity names to name the activities in the data
#          set

# replace activity values with named factor levels
humanActivity$Activity <- factor(humanActivity$Activity, 
                                 levels = activities[, 1], labels = activities[, 2])


# Step 6 - Appropriately label the data set with descriptive variable names

# get column names
humanActivityCols <- colnames(humanActivity)

# remove special characters
humanActivityCols <- gsub("[\\(\\)-]", "", humanActivityCols)

# expand abbreviations and clean up names
humanActivityCols <- gsub("^f", "frequencyDomain", humanActivityCols)
humanActivityCols <- gsub("^t", "timeDomain", humanActivityCols)
humanActivityCols <- gsub("Acc", "Accelerometer", humanActivityCols)
humanActivityCols <- gsub("Gyro", "Gyroscope", humanActivityCols)
humanActivityCols <- gsub("Mag", "Magnitude", humanActivityCols)
humanActivityCols <- gsub("Freq", "Frequency", humanActivityCols)
humanActivityCols <- gsub("mean", "Mean", humanActivityCols)
humanActivityCols <- gsub("std", "StandardDeviation", humanActivityCols)

# correct typo
humanActivityCols <- gsub("BodyBody", "Body", humanActivityCols)

# use new labels as column names
colnames(humanActivity) <- humanActivityCols


# Step 7 - Create a second, independent tidy set with the average of each
#          variable for each activity and each subject

# group by subject and activity and summarise using mean
humanActivityMeans <- humanActivity %>% 
        group_by(Subject, Activity) %>%
        summarise_each(funs(mean))

# output to file "tidy_data.txt"
write.table(humanActivityMeans, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)
