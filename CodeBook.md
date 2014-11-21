# Code Book for Getting Data Nov 2014

## Description of the data included for the course project
## Follows recommendations from David's Course Project FAQ
## Includes the original features_info.txt file below under Feature Selection.
## Includes the final form of the features used in the tidy summary data set.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The Features in the final tidy data set and summary file
========================================================

The complete list of variables of each feature vector is available in 'features.txt'

These are the features which remain from the original set, in the final form
as included in the tidy data set.  All punctutation characters (-,(,)) have been
removed from the labels as they can interfere with further processing. The numbers
are those from the original dataset.

1 tBodyAccmeanX
2 tBodyAccmeanY
3 tBodyAccmeanZ
4 tBodyAccstdX
5 tBodyAccstdY
6 tBodyAccstdZ
41 tGravityAccmeanX
42 tGravityAccmeanY
43 tGravityAccmeanZ
44 tGravityAccstdX
45 tGravityAccstdY
46 tGravityAccstdZ
81 tBodyAccJerkmeanX
82 tBodyAccJerkmeanY
83 tBodyAccJerkmeanZ
84 tBodyAccJerkstdX
85 tBodyAccJerkstdY
86 tBodyAccJerkstdZ
121 tBodyGyromeanX
122 tBodyGyromeanY
123 tBodyGyromeanZ
124 tBodyGyrostdX
125 tBodyGyrostdY
126 tBodyGyrostdZ
161 tBodyGyroJerkmeanX
162 tBodyGyroJerkmeanY
163 tBodyGyroJerkmeanZ
164 tBodyGyroJerkstdX
165 tBodyGyroJerkstdY
166 tBodyGyroJerkstdZ
201 tBodyAccMagmean
202 tBodyAccMagstd
214 tGravityAccMagmean
215 tGravityAccMagstd
227 tBodyAccJerkMagmean
228 tBodyAccJerkMagstd
240 tBodyGyroMagmean
241 tBodyGyroMagstd
253 tBodyGyroJerkMagmean
254 tBodyGyroJerkMagstd
266 fBodyAccmeanX
267 fBodyAccmeanY
268 fBodyAccmeanZ
269 fBodyAccstdX
270 fBodyAccstdY
271 fBodyAccstdZ
294 fBodyAccmeanFreqX
295 fBodyAccmeanFreqY
296 fBodyAccmeanFreqZ
345 fBodyAccJerkmeanX
346 fBodyAccJerkmeanY
347 fBodyAccJerkmeanZ
348 fBodyAccJerkstdX
349 fBodyAccJerkstdY
350 fBodyAccJerkstdZ
373 fBodyAccJerkmeanFreqX
374 fBodyAccJerkmeanFreqY
375 fBodyAccJerkmeanFreqZ
424 fBodyGyromeanX
425 fBodyGyromeanY
426 fBodyGyromeanZ
427 fBodyGyrostdX
428 fBodyGyrostdY
429 fBodyGyrostdZ
452 fBodyGyromeanFreqX
453 fBodyGyromeanFreqY
454 fBodyGyromeanFreqZ
503 fBodyAccMagmean
504 fBodyAccMagstd
513 fBodyAccMagmeanFreq
516 fBodyBodyAccJerkMagmean
517 fBodyBodyAccJerkMagstd
526 fBodyBodyAccJerkMagmeanFreq
529 fBodyBodyGyroMagmean
530 fBodyBodyGyroMagstd
539 fBodyBodyGyroMagmeanFreq
542 fBodyBodyGyroJerkMagmean
543 fBodyBodyGyroJerkMagstd
552 fBodyBodyGyroJerkMagmeanFreq
