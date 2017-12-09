# Getting and Cleaning Data Course Project

This repository contains the code for the "Getting and Cleanding Data" course project.
It contains run_analysis.R, which will download a dataset about [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), cleans it up and will write out a new dataset in CSV format (result-summarized.csv), which contains the summarized data (means of each variable per subject and activity).

## Scipt in detail

The script is commented, but it basically performs the following steps:
1. Downloads the data and unzips it
2. It reads in all neccessary files into data frames
3. It renames all the columns in the dataframes to meaningful names
4. Then all columns not containing means or standard deviations are dropped
5. It then merges the training set and the data set 
6. The activitiy numbers are then replaced by the string versions
7. It then uses dplyr to group the data by subject and activity and calculates the means of these groups
8. Finally it writes out the data as CSV 