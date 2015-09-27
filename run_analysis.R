mergeDataSets <- function()
{
  library(data.table);
  library(dplyr);
  features <- read.table("features.txt", sep = "", header = FALSE);
  featureVector <- as.vector(features[,2]);
  testMeasurements <- read.table("test\\X_test.txt", sep = "", header = FALSE);
  activities <- read.table("activity_labels.txt", sep = "", header = FALSE);
  names(activities) <- c("ActivityLabel", "ActivityName");
  testActivityMeasure <- read.table("test\\y_test.txt", sep = "", header = FALSE);
  names(testActivityMeasure) <- c("ActivityLabel");
  testActivityMeasureLabeled <- left_join(testActivityMeasure, activities, by="ActivityLabel");
  testMeasurements<- cbind(testActivityMeasureLabeled[,2], testMeasurements);
  subjects <- read.table("test\\subject_test.txt", sep = "", header = FALSE);
  testMeasurements<- cbind(subjects, testMeasurements);
  featureVector <- c("Subject_ID","ActivityName", featureVector)
  names(testMeasurements) <- featureVector;
  
  trainMeasurements <- read.table("train\\X_train.txt", sep = "", header = FALSE);
  trainActivityMeasure <- read.table("train\\y_train.txt", sep = "", header = FALSE);
  names(trainActivityMeasure) <- c("ActivityLabel");
  trainActivityMeasureLabeled <- left_join(trainActivityMeasure, activities, by="ActivityLabel");
  trainMeasurements<- cbind(trainActivityMeasureLabeled[,2], trainMeasurements);
  trainSubjects <- read.table("train\\subject_train.txt", sep = "", header = FALSE);
  trainMeasurements<- cbind(trainSubjects, trainMeasurements);
  names(trainMeasurements) <- featureVector;
  
  allMeasurements <- rbind(testMeasurements, trainMeasurements);
  requiredColumns <- c("Subject_ID","ActivityName",
                       "tBodyAcc-mean()-X","tBodyAcc-mean()-Y","tBodyAcc-mean()-Z","tBodyAcc-std()-X","tBodyAcc-std()-Y",
                       "tBodyAcc-std()-Z","tGravityAcc-mean()-X","tGravityAcc-mean()-Y","tGravityAcc-mean()-Z","tGravityAcc-std()-X",
                       "tGravityAcc-std()-Y","tGravityAcc-std()-Z","tBodyAccJerk-mean()-X","tBodyAccJerk-mean()-Y",
                       "tBodyAccJerk-mean()-Z","tBodyAccJerk-std()-X","tBodyAccJerk-std()-Y","tBodyAccJerk-std()-Z",
                       "tBodyGyro-mean()-X","tBodyGyro-mean()-Y","tBodyGyro-mean()-Z","tBodyGyro-std()-X","tBodyGyro-std()-Y",
                       "tBodyGyro-std()-Z","tBodyGyroJerk-mean()-X","tBodyGyroJerk-mean()-Y","tBodyGyroJerk-mean()-Z",
                       "tBodyGyroJerk-std()-X","tBodyGyroJerk-std()-Y","tBodyGyroJerk-std()-Z","tBodyAccMag-mean()",
                       "tBodyAccMag-std()","tGravityAccMag-mean()","tGravityAccMag-std()","tBodyAccJerkMag-mean()",
                       "tBodyAccJerkMag-std()","tBodyGyroMag-std()","tBodyGyroMag-mad()","tBodyGyroJerkMag-mean()",
                       "tBodyGyroJerkMag-std()","fBodyAcc-mean()-X","fBodyAcc-mean()-Y","fBodyAcc-mean()-Z","fBodyAcc-std()-X",
                       "fBodyAcc-std()-Y","fBodyAcc-std()-Z","fBodyAccJerk-mean()-X","fBodyAccJerk-mean()-Y","fBodyAccJerk-mean()-Z",
                       "fBodyAccJerk-std()-X","fBodyAccJerk-std()-Y","fBodyAccJerk-std()-Z","fBodyGyro-mean()-X",
                       "fBodyGyro-mean()-Y","fBodyGyro-mean()-Z","fBodyGyro-std()-X","fBodyGyro-std()-Y","fBodyGyro-std()-Z",
                       "fBodyAccMag-mean()","fBodyAccMag-std()","fBodyBodyAccJerkMag-mean()","fBodyBodyAccJerkMag-std()",
                       "fBodyBodyGyroMag-mean()","fBodyBodyGyroMag-std()","fBodyBodyGyroJerkMag-mean()","fBodyBodyGyroJerkMag-std()");
  allMeasurements <- allMeasurements[ , which(names(allMeasurements) %in% requiredColumns)]
  allMeasurements;
}

getTidyDataset <- function(){
  allMeasurements <- mergeDataSets();
  tidyData <- allMeasurements %>% group_by(Subject_ID, ActivityName) %>% summarise_each(funs(mean));
  tidyData;
}