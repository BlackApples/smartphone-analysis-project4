
No. Column name 
1	  subject_id	Numerical identifier for each of the 30 subjects.
2	  activity	Descriptive identifier for each activity: WALKING,
                    WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and
                    LAYING
                    
  A description of the remaining columns is adapted from the original
  features_info.txt:

  The features selected for this database come from the accelerometer and 
  gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. These time domain signals 
  (prefix 'time') were captured at a constant rate of 50 Hz. Then 
  they were filtered using a median filter and a 3rd order low pass Butterworth 
  filter with a corner frequency of 20 Hz to remove noise. Similarly, the 
  acceleration signal was then separated into body and gravity acceleration 
  signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth 
  filter with a corner frequency of 0.3 Hz. 
  
  Subsequently, the body linear acceleration and angular velocity were derived in 
  time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the 
  magnitude of these three-dimensional signals were calculated using the Euclidean
  norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, 
  timeBodyGyroJerkMag). 
  
  Finally a Fast Fourier Transform (FFT) was applied to some of these signals 
  producing fftBodyAcc-XYZ, fftBodyAccJerk-XYZ, fftBodyGyro-XYZ, fftBodyAccJerkMag,
  fftBodyGyroMag, fftBodyGyroJerkMag. (Note the 'fft' to indicate frequency domain
  signals). 
  
  These signals were used to estimate variables of the feature vector for each pattern:  
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


3 	timeBodyAcc_mean_X
4 	timeBodyAcc_mean_Y
5 	timeBodyAcc_mean_Z
6 	timeBodyAcc_std_X
7 	timeBodyAcc_std_Y
8 	timeBodyAcc_std_Z
9 	timeGravityAcc_mean_X
10	timeGravityAcc_mean_Y
11	timeGravityAcc_mean_Z
12	timeGravityAcc_std_X
13	timeGravityAcc_std_Y
14	timeGravityAcc_std_Z
15	timeBodyAccJerk_mean_X
16	timeBodyAccJerk_mean_Y
17	timeBodyAccJerk_mean_Z
18	timeBodyAccJerk_std_X
19	timeBodyAccJerk_std_Y
20	timeBodyAccJerk_std_Z
21	timeBodyGyro_mean_X
22	timeBodyGyro_mean_Y
23	timeBodyGyro_mean_Z
24	timeBodyGyro_std_X
25	timeBodyGyro_std_Y
26	timeBodyGyro_std_Z
27	timeBodyGyroJerk_mean_X
28	timeBodyGyroJerk_mean_Y
29	timeBodyGyroJerk_mean_Z
30	timeBodyGyroJerk_std_X
31	timeBodyGyroJerk_std_Y
32	timeBodyGyroJerk_std_Z
33	timeBodyAccMag_mean
34	timeBodyAccMag_std
35	timeGravityAccMag_mean
36	timeGravityAccMag_std
37	timeBodyAccJerkMag_mean
38	timeBodyAccJerkMag_std
39	timeBodyGyroMag_mean
40	timeBodyGyroMag_std
41	timeBodyGyroJerkMag_mean
42	timeBodyGyroJerkMag_std
43	fftBodyAcc_mean_X
44	fftBodyAcc_mean_Y
45	fftBodyAcc_mean_Z
46	fftBodyAcc_std_X
47	fftBodyAcc_std_Y
48	fftBodyAcc_std_Z
49	fftBodyAcc_meanFreq_X
50	fftBodyAcc_meanFreq_Y
51	fftBodyAcc_meanFreq_Z
52	fftBodyAccJerk_mean_X
53	fftBodyAccJerk_mean_Y
54	fftBodyAccJerk_mean_Z
55	fftBodyAccJerk_std_X
56	fftBodyAccJerk_std_Y
57	fftBodyAccJerk_std_Z
58	fftBodyAccJerk_meanFreq_X
59	fftBodyAccJerk_meanFreq_Y
60	fftBodyAccJerk_meanFreq_Z
61	fftBodyGyro_mean_X
62	fftBodyGyro_mean_Y
63	fftBodyGyro_mean_Z
64	fftBodyGyro_std_X
65	fftBodyGyro_std_Y
66	fftBodyGyro_std_Z
67	fftBodyGyro_meanFreq_X
68	fftBodyGyro_meanFreq_Y
69	fftBodyGyro_meanFreq_Z
70	fftBodyAccMag_mean
71	fftBodyAccMag_std
72	fftBodyAccMag_meanFreq
73	fftBodyBodyAccJerkMag_mean
74	fftBodyBodyAccJerkMag_std
75	fftBodyBodyAccJerkMag_meanFreq
76	fftBodyBodyGyroMag_mean
77	fftBodyBodyGyroMag_std
78	fftBodyBodyGyroMag_meanFreq
79	fftBodyBodyGyroJerkMag_mean
80	fftBodyBodyGyroJerkMag_std
81	fftBodyBodyGyroJerkMag_meanFreq
