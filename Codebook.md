Source data
------------
Original data was obtained from the following location:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data for the project was downloaded from the following location:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Dataset files in the source
-------------------------------
- 'features.txt': List of all features or variables
- 'activity_labels.txt': Links the class labels with their activity name
- 'train/X_train.txt': Training set
- 'train/y_train.txt': Training labels
- 'test/X_test.txt': Test set
- 'test/y_test.txt': Test labels
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Variable names of tidyData.txt
-------------------------------
Descriptive variable names were provided to transform original data into a tidy data set, for example: 't' was replaced by Time and 'f' by Freq (to indicate frequency), duplicate occurences of 'Body' were removed, hyphen was replaced with an underscore, and the last 2 columns were named appropriately to indicate 'Activity' and 'Subject_ID' values.

"Time_BodyAcc_mean_X"       "Time_BodyAcc_mean_Y"       "Time_BodyAcc_mean_Z"      
"Time_BodyAcc_std_X"        "Time_BodyAcc_std_Y"        "Time_BodyAcc_std_Z"       
"Time_GravityAcc_mean_X"    "Time_GravityAcc_mean_Y"    "Time_GravityAcc_mean_Z"   
"Time_GravityAcc_std_X"     "Time_GravityAcc_std_Y"     "Time_GravityAcc_std_Z"    
"Time_BodyAccJerk_mean_X"   "Time_BodyAccJerk_mean_Y"   "Time_BodyAccJerk_mean_Z"  
"Time_BodyAccJerk_std_X"    "Time_BodyAccJerk_std_Y"    "Time_BodyAccJerk_std_Z"   
"Time_BodyGyro_mean_X"      "Time_BodyGyro_mean_Y"      "Time_BodyGyro_mean_Z"     
"Time_BodyGyro_std_X"       "Time_BodyGyro_std_Y"       "Time_BodyGyro_std_Z"      
"Time_BodyGyroJerk_mean_X"  "Time_BodyGyroJerk_mean_Y"  "Time_BodyGyroJerk_mean_Z" 
"Time_BodyGyroJerk_std_X"   "Time_BodyGyroJerk_std_Y"   "Time_BodyGyroJerk_std_Z"  
"Time_BodyAccMag_mean"      "Time_BodyAccMag_std"       "Time_GravityAccMag_mean"  
"Time_GravityAccMag_std"    "Time_BodyAccJerkMag_mean"  "Time_BodyAccJerkMag_std"  
"Time_BodyGyroMag_mean"     "Time_BodyGyroMag_std"      "Time_BodyGyroJerkMag_mean"
"Time_BodyGyroJerkMag_std"  "Freq_BodyAcc_mean_X"       "Freq_BodyAcc_mean_Y"      
"Freq_BodyAcc_mean_Z"       "Freq_BodyAcc_std_X"        "Freq_BodyAcc_std_Y"       
"Freq_BodyAcc_std_Z"        "Freq_BodyAccJerk_mean_X"   "Freq_BodyAccJerk_mean_Y"  
"Freq_BodyAccJerk_mean_Z"   "Freq_BodyAccJerk_std_X"    "Freq_BodyAccJerk_std_Y"   
"Freq_BodyAccJerk_std_Z"    "Freq_BodyGyro_mean_X"      "Freq_BodyGyro_mean_Y"     
"Freq_BodyGyro_mean_Z"      "Freq_BodyGyro_std_X"       "Freq_BodyGyro_std_Y"      
"Freq_BodyGyro_std_Z"       "Freq_BodyAccMag_mean"      "Freq_BodyAccMag_std"      
"Freq_BodyAccJerkMag_mean"  "Freq_BodyAccJerkMag_std"   "Freq_BodyGyroMag_mean"    
"Freq_BodyGyroMag_std"      "Freq_BodyGyroJerkMag_mean" "Freq_BodyGyroJerkMag_std" 
"Activity"                  "Subject_ID"    

