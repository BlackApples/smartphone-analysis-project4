
#Load required libraries
library(data.table)
library(dplyr)
library(plyr)


#Download all the data and unzip into folder "Dataset"
if (!file.exists("Dataset.zip")){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","Dataset.zip")
}
if (!file.exists("Dataset")){
  unzip("Dataset.zip",exdir="Dataset")
}

# Import all data into R. This includes the "subject" "y" and "x" tables for
# both the training and testing datasets.
# Subject is an identifier for each subject in the experiment (1-30)
# y is an identifier for the type of activity the subject is doing (1-6)
# x is a 561 column table with the actual data obtained for each variable
test_x = tbl_df(fread("/DataSet/UCI\ HAR\ Dataset/test/X_test.txt",sep=" "))
test_subject = tbl_df(fread("/DataSet/UCI\ HAR\ Dataset/test/subject_test.txt",sep=" "))
test_y = tbl_df(fread("/DataSet/UCI\ HAR\ Dataset/test/y_test.txt",sep=" "))
train_x = tbl_df(fread("/DataSet/UCI\ HAR\ Dataset/train/X_train.txt",sep=" "))
train_subject = tbl_df(fread("/DataSet/UCI\ HAR\ Dataset/train/subject_train.txt",sep=" "))
train_y = tbl_df(fread("/DataSet/UCI\ HAR\ Dataset/train/y_train.txt",sep=" "))

# The 561 variables are labeled in "features.txt"
# The 6 activites are labeled in "activity_labels.txt"
# Importing the labels so we can rename the columns of the dataset and
# the activities appropriately.
col_labels = fread("/DataSet/UCI\ HAR\ Dataset/features.txt",sep=" ")
activity_labels = tbl_df(fread("/DataSet/UCI\ HAR\ Dataset/activity_labels.txt",sep=" "))

#There are some duplicate entires in "features.txt".
#This is because some are missing x,y,and z designations. 
#(according to forum post: https://www.coursera.org/learn/data-cleaning/peer
#/FIZtT/getting-and-cleaning-data-course-project/discussions/threads
#/bKHyuc93EeeeDgqph8eWrA)
#
#Fix by taking col_labels and attaching an X,Y,Z to all duplicated entries.
#(Note: this is not, strickly speaking, necessary, since we're removing all
#variables other than "means" and "stds" eventually. But I spent a lot
#of time annoyed by this, so I'm keeping it.)
col_labels=as.character(as.matrix(col_labels[,2]))
duplicated_names=unique(col_labels[duplicated(col_labels)])
for (d in duplicated_names){
  col_labels[col_labels==d]<-paste(d,c("_X","_Y","_Z"),sep="")
}

#Adding "subject_id" and "activity" to col_labels, because eventually, dataset
#will contain 2 additional columns from the subject and y files, representing
#the subject id and activity, respectively.
col_labels=c("subject_id","activity",col_labels)

#Removing parenthesis and commas from col_labels, to make it easier to read.
#Also renaming t->time and f->fft as per the description in features_info.txt
col_labels=gsub("\\(","",col_labels)
col_labels=gsub("\\)","",col_labels)
col_labels=gsub(",","-",col_labels)
col_labels=gsub("-","_",col_labels)
col_labels=gsub("^t","time",col_labels)
col_labels=gsub("^f","fft",col_labels)

#Replacing the integer representations for the activites (1-6) with descripttive
#labels from activity_labels.txt. (WALKING,WALKING_UPSTAIRS...)
test_y=join(test_y,activity_labels,by="V1")
train_y=join(train_y,activity_labels,by="V1")
test_y=test_y[,2]
train_y=train_y[,2]

#Combining all 6 pieces together in one dataset:
#test_subject, test_y, test_x, and train_subject, train_y, train_x
#The variable "data" will now contain the entire set, in case it
#is needed in the future.
#For example:
# subject_id  activity  1st variable  2nd variable ...... 561th variable
# __________  ________  ____________  ____________        ______________
#          1  WALKING            xxx           xxx                   xxx
#          1  WALKING            xxx           xxx                   xxx
#          2  SITTING            xxx           xxx                   xxx
data = rbind(cbind(s=test_subject,y=test_y,test_x),cbind(s=train_subject,y=train_y,train_x))
names(data)<-col_labels
data=arrange(data,subject_id,activity)



#We are only interested in extracting "only the measurements on the mean and
#standard deviation". Identify the variables with "mean" or "std" in the name
#and remove all other columns from the datset.
mean_std_labels = names(data)[grepl("mean|std",names(data))]
tidy_data = subset(data,select=c("subject_id","activity",mean_std_labels))

#Now, we are going to calculate the mean of each remaining column ("the average
#of each variable for each activity and each subject") according to subject and
#activity. The result is 180 rows (30 subjects X 6 activites) and 79 variables
#For example:
# subject_id  activity  1st variable  2nd variable ...... 561th variable
# __________  ________  ____________  ____________        ______________
#          1  LAYING             xxx           xxx                   xxx
#          1  SITTING            xxx           xxx                   xxx
#          1  STANDING           xxx           xxx                   xxx
tidy_data=ddply(tidy_data,.(subject_id,activity),summarize_at,mean_std_labels,mean)

#Write the final tidy_data to "averages_for_smartphone_movement.txt"
write.table(tidy_data,file="averages_for_smartphone_movement.txt",row.names=FALSE)


