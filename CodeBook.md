The purpose of this file is to explain the workings behind the run_analysis file and the data's variables, data, and transformations! Enjoy and learn!
## Data
After running the run_analysis.R script, the tidy dataset in tidy_data.txt file is the result.

About the data before the script is shown on README.md, read the README.md file for preunderstanding of the repository.
## Variables
- Subject : This is the assigned number of each subject ranging from 1 to 30.
- Activity : The kind of activity they are doing which mainly consists of 6 activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying)
All other measurements are floating-points values, normalised and bounded within [-1,1]. The measurements are classified in two domains:
- Time-domain signals (variables prefixed by timeDomain), resulting from the capture of acceloremeter and gyroscope raw signals.
- Frequency-domain signals (variables prefixed by frequencyDomain), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.
### Time-Domain Signals
* Average time-domain body acceleration in the X, Y and Z directions:
  - timeDomainBodyAccelerometerMeanX
  - timeDomainBodyAccelerometerMeanY
  - timeDomainBodyAccelerometerMeanZ
* Standard deviation of the time-domain body acceleration in the X, Y and Z directions:
  - timeDomainBodyAccelerometerStandardDeviationX
  - timeDomainBodyAccelerometerStandardDeviationY
  - timeDomainBodyAccelerometerStandardDeviationZ
* Average time-domain gravity acceleration in the X, Y and Z directions:
  - timeDomainGravityAccelerometerMeanX
  - timeDomainGravityAccelerometerMeanY
  - timeDomainGravityAccelerometerMeanZ
* Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
  - timeDomainGravityAccelerometerStandardDeviationX
  - timeDomainGravityAccelerometerStandardDeviationY
  - timeDomainGravityAccelerometerStandardDeviationZ
* Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  - timeDomainBodyAccelerometerJerkMeanX
  - timeDomainBodyAccelerometerJerkMeanY
  - timeDomainBodyAccelerometerJerkMeanZ
* Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  - timeDomainBodyAccelerometerJerkStandardDeviationX
  - timeDomainBodyAccelerometerJerkStandardDeviationY
  - timeDomainBodyAccelerometerJerkStandardDeviationZ
* Average time-domain body angular velocity in the X, Y and Z directions:
  - timeDomainBodyGyroscopeMeanX
  - timeDomainBodyGyroscopeMeanY
  - timeDomainBodyGyroscopeMeanZ
* Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:
  - timeDomainBodyGyroscopeStandardDeviationX
  - timeDomainBodyGyroscopeStandardDeviationY
  - timeDomainBodyGyroscopeStandardDeviationZ
* Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
  - timeDomainBodyGyroscopeJerkMeanX
  - timeDomainBodyGyroscopeJerkMeanY
  - timeDomainBodyGyroscopeJerkMeanZ
* Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
  - timeDomainBodyGyroscopeJerkStandardDeviationX
  - timeDomainBodyGyroscopeJerkStandardDeviationY
  - timeDomainBodyGyroscopeJerkStandardDeviationZ
* Average and standard deviation of the time-domain magnitude of body acceleration:
  - timeDomainBodyAccelerometerMagnitudeMean
  - timeDomainBodyAccelerometerMagnitudeStandardDeviation
* Average and standard deviation of the time-domain magnitude of gravity acceleration:
  - timeDomainGravityAccelerometerMagnitudeMean
  - timeDomainGravityAccelerometerMagnitudeStandardDeviation
* Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
  - timeDomainBodyAccelerometerJerkMagnitudeMean
  - timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
* Average and standard deviation of the time-domain magnitude of body angular velocity:
  - timeDomainBodyGyroscopeMagnitudeMean
  - timeDomainBodyGyroscopeMagnitudeStandardDeviation
* Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
  - timeDomainBodyGyroscopeJerkMagnitudeMean
  - timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
### Frequence-Domain Signals
* Average frequency-domain body acceleration in the X, Y and Z directions:
  - frequencyDomainBodyAccelerometerMeanX
  - frequencyDomainBodyAccelerometerMeanY
  - frequencyDomainBodyAccelerometerMeanZ
* Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
  - frequencyDomainBodyAccelerometerStandardDeviationX
  - frequencyDomainBodyAccelerometerStandardDeviationY
  - frequencyDomainBodyAccelerometerStandardDeviationZ
* Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:
  - frequencyDomainBodyAccelerometerMeanFrequencyX
  - frequencyDomainBodyAccelerometerMeanFrequencyY
  - frequencyDomainBodyAccelerometerMeanFrequencyZ
* Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  - frequencyDomainBodyAccelerometerJerkMeanX
  - frequencyDomainBodyAccelerometerJerkMeanY
  - frequencyDomainBodyAccelerometerJerkMeanZ
* Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  - frequencyDomainBodyAccelerometerJerkStandardDeviationX
  - frequencyDomainBodyAccelerometerJerkStandardDeviationY
  - frequencyDomainBodyAccelerometerJerkStandardDeviationZ
* Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  - frequencyDomainBodyAccelerometerJerkMeanFrequencyX
  - frequencyDomainBodyAccelerometerJerkMeanFrequencyY
  - frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
* Average frequency-domain body angular velocity in the X, Y and Z directions:
  - frequencyDomainBodyGyroscopeMeanX
  - frequencyDomainBodyGyroscopeMeanY
  - frequencyDomainBodyGyroscopeMeanZ
* Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
  - frequencyDomainBodyGyroscopeStandardDeviationX
  - frequencyDomainBodyGyroscopeStandardDeviationY
  - frequencyDomainBodyGyroscopeStandardDeviationZ
* Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
  - frequencyDomainBodyGyroscopeMeanFrequencyX
  - frequencyDomainBodyGyroscopeMeanFrequencyY
  - frequencyDomainBodyGyroscopeMeanFrequencyZ
* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
  - frequencyDomainBodyAccelerometerMagnitudeMean
  - frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
  - frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
  - frequencyDomainBodyAccelerometerJerkMagnitudeMean
  - frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
  - frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
  - frequencyDomainBodyGyroscopeMagnitudeMean
  - frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
  - frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
  - frequencyDomainBodyGyroscopeJerkMagnitudeMean
  - frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
  - frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency
## Transformations
This is the link of the collected dataset: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
The run_analysis.R script does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. Fromm the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
