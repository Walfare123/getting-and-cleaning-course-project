The purpose of this file is to explain the workings behind the run_analysis file and the data's variables, data, and transformations! Enjoy and learn!
##Variables
- Subject : This is the assigned number of each subject ranging from 1 to 30.
- Activity : The kind of activity they are doing which mainly consists of 6 activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying)
All other measurements are floating-points values, normalised and bounded within [-1,1]. The measurements are classified in two domains:
- Time-domain signals (variables prefixed by timeDomain), resulting from the capture of acceloremeter and gyroscope raw signals.
- Frequency-domain signals (variables prefixed by frequencyDomain), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.
###Time-domain signals
- Average time-domain body acceleration in the X, Y and Z directions:
-- timeDomainBodyAccelerometerMeanX
-- timeDomainBodyAccelerometerMeanY

timeDomainBodyAccelerometerMeanZ
Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

timeDomainBodyAccelerometerStandardDeviationX
timeDomainBodyAccelerometerStandardDeviationY
timeDomainBodyAccelerometerStandardDeviationZ
Average time-domain gravity acceleration in the X, Y and Z directions:

timeDomainGravityAccelerometerMeanX
timeDomainGravityAccelerometerMeanY
timeDomainGravityAccelerometerMeanZ
Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

timeDomainGravityAccelerometerStandardDeviationX
timeDomainGravityAccelerometerStandardDeviationY
timeDomainGravityAccelerometerStandardDeviationZ
Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

timeDomainBodyAccelerometerJerkMeanX
timeDomainBodyAccelerometerJerkMeanY
timeDomainBodyAccelerometerJerkMeanZ
Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

timeDomainBodyAccelerometerJerkStandardDeviationX
timeDomainBodyAccelerometerJerkStandardDeviationY
timeDomainBodyAccelerometerJerkStandardDeviationZ
Average time-domain body angular velocity in the X, Y and Z directions:

timeDomainBodyGyroscopeMeanX
timeDomainBodyGyroscopeMeanY
timeDomainBodyGyroscopeMeanZ
Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

timeDomainBodyGyroscopeStandardDeviationX
timeDomainBodyGyroscopeStandardDeviationY
timeDomainBodyGyroscopeStandardDeviationZ
Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

timeDomainBodyGyroscopeJerkMeanX
timeDomainBodyGyroscopeJerkMeanY
timeDomainBodyGyroscopeJerkMeanZ
Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

timeDomainBodyGyroscopeJerkStandardDeviationX
timeDomainBodyGyroscopeJerkStandardDeviationY
timeDomainBodyGyroscopeJerkStandardDeviationZ
Average and standard deviation of the time-domain magnitude of body acceleration:

timeDomainBodyAccelerometerMagnitudeMean
timeDomainBodyAccelerometerMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of gravity acceleration:

timeDomainGravityAccelerometerMagnitudeMean
timeDomainGravityAccelerometerMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

timeDomainBodyAccelerometerJerkMagnitudeMean
timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body angular velocity:

timeDomainBodyGyroscopeMagnitudeMean
timeDomainBodyGyroscopeMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

timeDomainBodyGyroscopeJerkMagnitudeMean
timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

