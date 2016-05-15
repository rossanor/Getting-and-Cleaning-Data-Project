# Getting-and-Cleaning-Data-Project
## Final Project - Getting and Cleaning Data - Coursera

This REPO contains the Final Project of "Getting and Cleaning Data" course. 

## This REPO contains 4 files:
- 'run_analysis.R': the R script that have produced the tidy data from another data avaiable on "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip". Id downloads the original dataset and process the files.
- 'tidy_data.txt': the data organized and ready to be used in other analysis
- 'CODEBOOK.md': a reference to the variables presents on the 'tidy_data.txt'
- 'README.md': this file. Explain this REPO and files presents, how they are connected and how to use it.

The original data description may be founded in this url:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This original dataset contains two set of information (trainnig an test) an it is processed by the file 'run_analysis.R' to achieve the following objectives:

1) Merges the training and the test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement.

3) Uses descriptive activity names to name the activities in the data set

4) Appropriately labels the data set with descriptive variable names.

5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
