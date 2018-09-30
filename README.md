==================================================================

Human Activity Recognition Using Smartphones Dataset V1.0 Analysis

==================================================================

Analysis by:
BlackApples

==================================================================

Original data was obtained from
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

==================================================================

A decription of the experiment adapted from the original 
README file:

  The experiments have been carried out with a group of 30 volunteers within an 
  age bracket of 19-48 years. Each person performed six activities (WALKING, 
  WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
  smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer
  and gyroscope, we captured 3-axial linear acceleration and 3-axial angular 
  velocity at a constant rate of 50Hz. The experiments have been video-recorded
  to label the data manually. The obtained dataset has been randomly partitioned 
  into two sets, where 70% of the volunteers was selected for generating the 
  training data and 30% the test data. 
  
  The sensor signals (accelerometer and gyroscope) were pre-processed by applying
  noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 
  50% overlap (128 readings/window). The sensor acceleration signal, which has 
  gravitational and body motion components, was separated using a Butterworth 
  low-pass filter into body acceleration and gravity. The gravitational force is 
  assumed to have only low frequency components, therefore a filter with 0.3 Hz 
  cutoff frequency was used. From each window, a vector of features was obtained 
  by calculating variables from the time and frequency domain. 
  
  For each record it is provided:
  
  - Triaxial acceleration from the accelerometer (total acceleration) and the 
    estimated body acceleration.
  - Triaxial Angular velocity from the gyroscope. 
  - A 561-feature vector with time and frequency domain variables. 
  - Its activity label. 
  - An identifier of the subject who carried out the experiment.
  
  - Features are normalized and bounded within [-1,1].

==================================================================

This repo contains the following:

run_analysis.R

  When run, this automatically downloads the data and creates a dataset called
  "averages_for_smartphone_movement.txt" which contains a table of the means for
  each variable outlined in Codebook.md, by subject and by activity.

  The script works by first loading the "training" and "test" original datasets
  and combining them. Then, it removes all measurements other than means and 
  standard deviations.Finally, it calculates the averages of those measurements,
  separated by subject and activity.

Codebook.md:

  A description of the variables included in "averages_for_smartphone_movement.txt".
  
averages_for_smartphone_movement.txt

  Dataset of the average for each measurement outlined in Codebook.md, separated
  by subject and activity.
  
  
  
  
=================================================================

Project description:

The purpose of this project is to demonstrate your ability to collect, work
with, and clean a data set.

Review criteria

1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks
with the data to indicate all the variables and summaries calculated, along with
units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted
it.

Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate your ability to collect, work
with, and clean a data set. The goal is to prepare tidy data that can be used
for later analysis. You will be graded by your peers on a series of yes/no
questions related to the project. You will be required to submit:
  1) a tidy dataset as described below,
  2) a link to a Github repository with your script for performing the analysis,
  and
  3) a code book that describes the variables, the data, and any transformations
  or work that you performed to clean up the data called CodeBook.md. You should
  also include a README.md in the repo with your scripts. This repo explains how
  all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable
computing - see for example this article . Companies like Fitbit, Nike, and
Jawbone Up are racing to develop the most advanced algorithms to attract new
users. The data linked to from the course website represent data collected from
the accelerometers from the Samsung Galaxy S smartphone. A full description is
available at the site where the data was obtained:

  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smart
phones

Here are the data for the project:

  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20
Dataset.zip

You should create one R script called run_analysis.R that does the following.

1 Merges the training and the test sets to create one data set.
2 Extracts only the measurements on the mean and standard deviation for each
measurement.
3 Uses descriptive activity names to name the activities in the data set
4 Appropriately col_labels the data set with descriptive variable names.
5 From the data set in step 4, creates a second, independent tidy data set
with the average of each variable for each activity and each subject.

Good luck!