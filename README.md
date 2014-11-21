# README for Getting Data Course Project

## Used David's Project FAQ as reference.

## This gives instructions for running run_analysis.R.

* Assumes the working directory for the script includes the subdirectory- UCI_HAR_Dataset.
* Assumes the files are already unzipped and ready to go.
* Can be run from R as source("./run_analysis.R") or Rscript(/R CMD BATCH) run_analysis.R (on linux)

## Required contents (used in the script) of the UCI_HAR_DATASET directory are:
	1. activity_labels.txt
	2. features.txt
	3. test subdirectory
		+ subject_test.txt
		+ X_test.txt
		+ y_test.txt
	4. train subdirectory
		+ subject_train.txt
		+ X_train.txt
		+ y_train.txt

* Inputs are coded into the script as positioned in the directory above.
* Outputs are 2 text file (.txt) and are printed into the directory above UCI_HAR_DATASET (../):
	- totalSetTidy.txt - contains the full merged dataset with subject id, descriptive labels 
			     for the activities and features and the the raw readings for the mean()
			     and std() measurements in the feature_info set.
	- tidySummary.txt -  summarizes the total set with the mean of all the included measurements 
			     by activity and individual. The summary is in wide format.
* Sequence of actions for the script:
	+ Read in the X values for test and train
	+ Make X values one big set
	+ Read in features file, pull out logical vector with only those for mean() and std(), get rid
		of the parentheses in the labels and use the logical vector to subset both the feature
		set and the X values data set
	+ Read in the subjects test and train
	+ Read in and rename the activities for test and train
	+ Combine all the data frames together into one
	+ Give the activities descriptive values instead of numbers
	+ Write out tidy total data set
	+ Derive the summary table of means by subject and activity
	+ Write out the summary table
