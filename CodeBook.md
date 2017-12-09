# Codebook for the output data of the run_analysis.R script

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The dataset contains the means and the means of the standard deviation of the signals, grouped for each subject and activity:

* subject
* activity
* tBodyAcc-mean-X
* tBodyAcc-mean-Y
* tBodyAcc-mean-Z
* tBodyAcc-stdMean-X
* tBodyAcc-stdMean-Y
* tBodyAcc-stdMean-Z
* tGravityAcc-mean-X
* tGravityAcc-mean-Y
* tGravityAcc-mean-Z
* tGravityAcc-stdMean-X
* tGravityAcc-stdMean-Y
* tGravityAcc-stdMean-Z
* tBodyAccJerk-mean-X
* tBodyAccJerk-mean-Y
* tBodyAccJerk-mean-Z
* tBodyAccJerk-stdMean-X
* tBodyAccJerk-stdMean-Y
* tBodyAccJerk-stdMean-Z
* tBodyGyro-mean-X
* tBodyGyro-mean-Y
* tBodyGyro-mean-Z
* tBodyGyro-stdMean-X
* tBodyGyro-stdMean-Y
* tBodyGyro-stdMean-Z
* tBodyGyroJerk-mean-X
* tBodyGyroJerk-mean-Y
* tBodyGyroJerk-mean-Z
* tBodyGyroJerk-stdMean-X
* tBodyGyroJerk-stdMean-Y
* tBodyGyroJerk-stdMean-Z
* tBodyAccMag-mean
* tBodyAccMag-stdMean
* tGravityAccMag-mean
* tGravityAccMag-stdMean
* tBodyAccJerkMag-mean
* tBodyAccJerkMag-stdMean
* tBodyGyroMag-mean
* tBodyGyroMag-stdMean
* tBodyGyroJerkMag-mean
* tBodyGyroJerkMag-stdMean
* fBodyAcc-mean-X
* fBodyAcc-mean-Y
* fBodyAcc-mean-Z
* fBodyAcc-stdMean-X
* fBodyAcc-stdMean-Y
* fBodyAcc-stdMean-Z
* fBodyAccJerk-mean-X
* fBodyAccJerk-mean-Y
* fBodyAccJerk-mean-Z
* fBodyAccJerk-stdMean-X
* fBodyAccJerk-stdMean-Y
* fBodyAccJerk-stdMean-Z
* fBodyGyro-mean-X
* fBodyGyro-mean-Y
* fBodyGyro-mean-Z
* fBodyGyro-stdMean-X
* fBodyGyro-stdMean-Y
* fBodyGyro-stdMean-Z
* fBodyAccMag-mean
* fBodyAccMag-stdMean
* fBodyBodyAccJerkMag-mean
* fBodyBodyAccJerkMag-stdMean
* fBodyBodyGyroMag-mean
* fBodyBodyGyroMag-stdMean
* fBodyBodyGyroJerkMag-mean
* fBodyBodyGyroJerkMag-stdMean