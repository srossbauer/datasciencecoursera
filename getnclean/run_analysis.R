library(dplyr)
library(stringr)

## read names of variables
features <- read.table("UCI HAR Dataset\\features.txt")
cleanFeatures <- str_replace_all(features$V2, "[^[:alnum:]]", "")

## read activity labels
actlab <- read.table("UCI HAR Dataset\\activity_labels.txt")

## Read the test and train data set
## combine variables into one test data set
tests <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
names(tests) <- "Testperson"
testx <- read.table("UCI HAR Dataset\\test\\X_test.txt")
names(testx) <- cleanFeatures
testy <- read.table("UCI HAR Dataset\\test\\y_test.txt")
names(testy) <- "Activity"

test <- bind_cols(tests,testx,testy)
rm("tests","testy","testx")

trains <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
names(trains) <- "Testperson"
trainx <- read.table("UCI HAR Dataset\\train\\X_train.txt")
names(trainx) <- cleanFeatures
trainy <- read.table("UCI HAR Dataset\\train\\y_train.txt")
names(trainy) <- "Activity"

train <- bind_cols(trains,trainx,trainy)
rm("trains","trainy","trainx")

## bind test and train sets together
data <- rbind(test,train)
rm("test","train")

## introducing activity labels
data$ActivityL <- "ActivityL"
data$ActivityL[data$Activity == actlab[1,1]] <- as.character(actlab[1,2])
data$ActivityL[data$Activity == actlab[2,1]] <- as.character(actlab[2,2])
data$ActivityL[data$Activity == actlab[3,1]] <- as.character(actlab[3,2])
data$ActivityL[data$Activity == actlab[4,1]] <- as.character(actlab[4,2])
data$ActivityL[data$Activity == actlab[5,1]] <- as.character(actlab[5,2])
data$ActivityL[data$Activity == actlab[6,1]] <- as.character(actlab[6,2])




## index of columns containing means and standtard errors + 1 as
## subject column is preceding x variables
means <- grep("mean", features$V2)+1
stds <- grep("std", features$V2)+1
## keep columns with means, stds and subject number and activity labels
keepI <- sort(c(1,stds,means,563,564))
dm <- data[,keepI]
rm("data")

## create tidy dataset with means of all columns grouped by activty
## and testperson
dmf <- tbl_df(dm)
tidyd <- dmf %>% group_by(ActivityL,Testperson) %>% summarise_each(funs(mean))

write.table(tidyd, "output.txt")