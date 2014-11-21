#-- the working directory must include the subdirectory - UCI_HAR_Dataset
setwd("./UCI_HAR_Dataset")

#-- read in the X values for test and train

xtest <- read.table("./test/X_test.txt", header = FALSE)
xtrain <- read.table("./train/X_train.txt", header = FALSE)

#-- make X values one big set
df <- rbind(xtest, xtrain)

#-- read in features, pull out logical vector with only those
#-- for mean() and std(), use to subset the feature set and 
#-- X values data set
feat <- read.table("./features.txt", header = FALSE, colClasses = c("numeric", "character"))
ss <- grepl("mean|std[[:punct:]]", feat$V2)
feat <- feat[ss,2]
feat <- gsub("[[:punct:]]", "", feat)
df <- df[,ss]
names(df) <- feat

#-- clean up the original big X values sets
rm(xtest, xtrain)

#-- read in the subjects test and train
stest <- read.table("./test/subject_test.txt", header = FALSE)
strain <- read.table("./train/subject_train.txt", header = FALSE)
subj <- rbind(stest, strain)
names(subj) <- "Subject"

#-- read in and rename the activities for test and train
ytest <- read.table("./test/y_test.txt", header = FALSE)
ytrain <- read.table("./train/y_train.txt", header = FALSE)
act <- rbind(ytest, ytrain)
names(act) <- "Activity"

#-- put all the data frames together into one
dff <- cbind(subj, act, df)

#-- give the activities descriptive values instead of numbers
alab <- read.table("activity_labels.txt", header = FALSE, stringsAsFactors = FALSE)
dff$Activity <- factor(dff$Activity, labels = c(alab$V2))

#-- write out tidy total data set
write.table(dff, file = "../totalSetTidy.txt", sep = ",", row.names = FALSE)

library(dplyr)

#-- derive the summary table of means by subject and activity
sdf <- 	dff %>%
	group_by(Subject, Activity) %>%
	summarise_each(funs(mean))

#-- write out the summary table
write.table(sdf, file = "../tidySummary.txt", sep = "\t", row.names = FALSE)
