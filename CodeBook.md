# Code Book

## Identifiers
* "Subject" : Test subject
* "Activity ID": ID of the type of activity performed
* "Activity Label": Name of the activity performed

## Description of variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Additional vectors obtained by averaging the signals in a signal window sample.

Variables from the TidyData is as follows:

* "time BodyAcc mean() X"
* "time BodyAcc mean() Y"
* "time BodyAcc mean() Z"
* "time BodyAcc std() X"
* "time BodyAcc std() Y"
* "time BodyAcc std() Z"
* "time GravityAcc mean() X"
* "time GravityAcc mean() Y"
* "time GravityAcc mean() Z"
* "time GravityAcc std() X"
* "time GravityAcc std() Y"
* "time GravityAcc std() Z"
* "time BodyAccJerk mean() X"
* "time BodyAccJerk mean() Y"
* "time BodyAccJerk mean() Z"
* "time BodyAccJerk std() X"
* "time BodyAccJerk std() Y"
* "time BodyAccJerk std() Z"
* "time BodyGyro mean() X"
* "time BodyGyro mean() Y"
* "time BodyGyro mean() Z"
* "time BodyGyro std() X"
* "time BodyGyro std() Y"
* "time BodyGyro std() Z"
* "time BodyGyroJerk mean() X"
* "time BodyGyroJerk mean() Y"
* "time BodyGyroJerk mean() Z"
* "time BodyGyroJerk std() X"
* "time BodyGyroJerk std() Y"
* "time BodyGyroJerk std() Z"
* "time BodyAccMag mean()"
* "time BodyAccMag std()"
* "time GravityAccMag mean()"
* "time GravityAccMag std()"
* "time BodyAccJerkMag mean()"
* "time BodyAccJerkMag std()"
* "time BodyGyroMag mean()"
* "time BodyGyroMag std()"
* "time BodyGyroJerkMag mean()"
* "time BodyGyroJerkMag std()"
* "freq BodyAcc mean() X"
* "freq BodyAcc mean() Y"
* "freq BodyAcc mean() Z"
* "freq BodyAcc std() X"
* "freq BodyAcc std() Y"
* "freq BodyAcc std() Z"
* "freq BodyAcc meanFreq() X"
* "freq BodyAcc meanFreq() Y"
* "freq BodyAcc meanFreq() Z"
* "freq BodyAccJerk mean() X"
* "freq BodyAccJerk mean() Y"
* "freq BodyAccJerk mean() Z"
* "freq BodyAccJerk std() X"
* "freq BodyAccJerk std() Y"
* "freq BodyAccJerk std() Z"
* "freq BodyAccJerk meanFreq() X"
* "freq BodyAccJerk meanFreq() Y"
* "freq BodyAccJerk meanFreq() Z"
* "freq BodyGyro mean() X"
* "freq BodyGyro mean() Y"
* "freq BodyGyro mean() Z"
* "freq BodyGyro std() X"
* "freq BodyGyro std() Y"
* "freq BodyGyro std() Z"
* "freq BodyGyro meanFreq() X"
* "freq BodyGyro meanFreq() Y"
* "freq BodyGyro meanFreq() Z"
* "freq BodyAccMag mean()"
* "freq BodyAccMag std()"
* "freq BodyAccMag meanFreq()"
* "freq BodyBodyAccJerkMag mean()"
* "freq BodyBodyAccJerkMag std()"
* "freq BodyBodyAccJerkMag meanFreq()"
* "freq BodyBodyGyroMag mean()"
* "freq BodyBodyGyroMag std()"
* "freq BodyBodyGyroMag meanFreq()"
* "freq BodyBodyGyroJerkMag mean()"
* "freq BodyBodyGyroJerkMag std()"
* "freq BodyBodyGyroJerkMag meanFreq()"
* "angle(tBodyAccMean,gravity)"
* "angle(tBodyAccJerkMean),gravityMean)"
* "angle(tBodyGyroMean,gravityMean)"
* "angle(tBodyGyroJerkMean,gravityMean)"
* "angle(X,gravityMean)"
* "angle(Y,gravityMean)"
* "angle(Z,gravityMean)"
