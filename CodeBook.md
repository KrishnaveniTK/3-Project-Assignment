CodeBook for features
=====================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. Acceleration signals are subdivided into body and gravity acceleration(tBodyAcc**XYZ** and tGravityAcc**XYZ**). Prefix **'t'** denotes time.

Body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk**XYZ** and tBodyGyroJerk**XYZ**). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,tBodyGyroJerkMag). 

Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc**XYZ**, fBodyAccJerk**XYZ**, fBodyGyro**XYZ**, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag. Prefix **'f'** denotes frequency domain signals. 

More details on the orignial dataset can be obtained from [**original dataset**](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Description of variables in the tidy data set
---------------------------------------------
The 86 variables are the average of feature variables with **Mean** and **Standard deviation** as defined below:

'**XYZ**' is used to denote 3-axial signals in the **X, Y and Z** directions.

- tBodyAccMean**XYZ** = Time Body Accelaration Mean
- tBodyAccStdev**XYZ** = Time Body Accelaration Standard deviation
- tGravityAccMean**XYZ** = Time Gravity Accelaration Mean
- tGravityAccStdev**XYZ** = Time Gravity Accelaration Standard deviation
- tBodyAccJerkMean**XYZ** = Time Gravity Accelaration Jerk Mean  
- tBodyAccJerkStdev**XYZ** = Time Gravity Accelaration Jerk Standard deviation                      
- tBodyGyroMean**XYZ** = Time Body Gyro Mean
- tBodyGyroStdev**XYZ** = Time Body Gyro Standard deviation
- tBodyGyroJerkMean**XYZ** = Time Body Gyro Jerk Mean
- tBodyGyroJerkStdev**XYZ** = Time Body Gyro Jerk Standard deviation

- tBodyAccMagMean = Time Body Accelaration Magnitude Mean
- tBodyAccMagStdev = Time Body Accelaration Magnitude Standard deviation
- tGravityAccMagMean = Time Gravity Accelaration Magnitude Mean
- tGravityAccMagStdev = Time Gravity Accelaration Magnitude Mean
- tBodyAccJerkMagMean = Time Body Accelatation Jerk Magnitude Mean
- tBodyAccJerkMagStdev = Time Body Accelatation Jerk Magnitude Standard deviation
- tBodyGyroMagMean  = Time Body Gyro Magnitude Mean
- tBodyGyroMagStdev  = Time Body Gyro Magnitude Standard deviation
- tBodyGyroJerkMagMean = Time Body Gyro Jerk Magnitude Mean
- tBodyGyroJerkMagStdev = Time Body Gyro Jerk Magnitude Standard deviation


- fBodyAccMean**XYZ** = Frequency Body Accelaration Mean 
- fBodyAccStdev**XYZ** = Frequency Body Standard deviation
- fBodyAccMeanFreq**XYZ** = Frequency Body Accelaration Mean frequency
- fBodyAccJerkMean**XYZ** = Frequency Body Accelaration Jerk Mean                 
- fBodyAccJerkStdev**XYZ** = Frequency Body Accelaration Jerk Standard deviation
- fBodyAccJerkMeanFreq**XYZ** = Frequency Body Accelaration Jerk Mean frequency         
- fBodyGyroMean**XYZ** = Frequency Body Gyro Mean
- fBodyGyroStdev**XYZ** = Frequency Body Gyro Standard deviation    
- fBodyGyroMeanFreq**XYZ** = Frequency Body Gyro Mean frequency 
- fBodyAccMagMean = Frequency Body Accelaration Magnitude Mean              
- fBodyAccMagStdev = Frequency Body Accelaration Magnitude Standard deviation
- fBodyAccMagMeanFreq  = Frequency Body Accelaration Magnitude Mean frequency
- fBodyBodyAccJerkMagMean = Frequency Body Accelaration Jerk Magnitude Mean
- fBodyBodyAccJerkMagStdev = Frequency Body Accelaration Jerk Magnitude Standard deviation
- fBodyBodyAccJerkMagMeanFreq  = Frequency Body Accelaration Jerk Magnitude Mean frequency
- fBodyBodyGyroMagMean = Frequency Body Gyro Magnitude Mean
- fBodyBodyGyroMagStdev = Frequency Body Gyro Magnitude Standard deviation
- fBodyBodyGyroMagMeanFreq = Frequency Body Gyro Magnitude Mean frequency
- fBodyBodyGyroJerkMagMean = Frequency Body Gyro Jerk Magnitude Mean
- fBodyBodyGyroJerkMagStdev = Frequency Body Gyro Jerk Magnitude Standard deviation
- fBodyBodyGyroJerkMagMeanFreq = Frequency Body Gyro Jerk Magnitude Mean frequency

Angle variables are defined as below:

- angletBodyAccMeangravity = Angle Time Body Accelarator Mean gravity
- angletBodyAccJerkMeangravityMean = Angle Time Body Accelarator Jerk Mean gravity mean
- angletBodyGyroMeangravityMean = Angle Time Body Gyro Mean gravity mean
- angletBodyGyroJerkMeangravityMean = Angle Time Body Gyro Jerk Mean gravity mean
- angle**XYZ**gravityMean = Angle gravity Mean


