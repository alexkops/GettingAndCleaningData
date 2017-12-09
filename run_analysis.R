library(dplyr)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "dataset.zip")
unzip("dataset.zip")
file.remove("dataset.zip")
datadir <- "UCI HAR Dataset"

# Read all the relevant files into data frames
features <- read.table(file.path(datadir, "features.txt"))
activities <- read.table(file.path(datadir, "activity_labels.txt"))
testActivities <- read.table(file.path(datadir, "test" ,"y_test.txt"))
testFeatures <- read.table(file.path(datadir, "test" , "X_test.txt"))
testSubjects <- read.table(file.path(datadir, "test" , "subject_test.txt"))
trainActivities <- read.table(file.path(datadir, "train", "y_train.txt"))
trainFeatures <- read.table(file.path(datadir, "train", "X_train.txt"))
trainSubjects <- read.table(file.path(datadir, "train", "subject_train.txt"))

# Rename columns
names(trainFeatures) <- features$V2
names(trainActivities) <- "activity"
names(trainSubjects) <- "subject"
names(testFeatures) <- features$V2
names(testActivities) <- "activity"
names(testSubjects) <- "subject"

# Drop all colums that don't contain mean or std deviations
trainFeatures <- trainFeatures[, grep("*.mean()*. | *.std()*.", colnames(trainFeatures))]
testFeatures <- testFeatures[, grep("*.mean()*. | *.std()*.", colnames(testFeatures))]

# Remove the parentheses from the column names 
colnames(trainFeatures) <- gsub('()', '', colnames(trainFeatures), fixed=TRUE)
colnames(testFeatures) <- gsub('()', '', colnames(testFeatures), fixed=TRUE)

# Bind the colums of the training and test sets together from the individual files
trainingSet <- cbind(trainSubjects, trainActivities, trainFeatures)
testSet <- cbind(trainSubjects, trainActivities, trainFeatures)

# Bind the rows from the test- and training set together and replace the numeric
# activities with the textual
completeSet <- rbind(trainingSet, testSet)
complete <- tbl_df(completeSet) %>%
  mutate(activity = activities$V2[activity])

# Create a new set that contains the mean of the set grouped by subject and activity
# and write it to a file
newSet <- group_by(complete, subject, activity) %>% 
  summarise_all(mean) %>% write.csv(., file = "result-summarized.csv")
