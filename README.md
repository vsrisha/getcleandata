<<<<<<< HEAD
==============================

Prepare tidy data for analysis
Version 1.0

==============================

Assumptions:
------------
The working directory was set to the required destination location. The entire .zip file was downloaded and unzipped into this destination location.

After unzipping, the data for training and test sets was read into R using read.table(). The disparate data sources such as X, y and subject files were combined into one data frame. Then the training and test data sets were merged to create one data set.

R script run_analysis.R details:
--------------------------------
An R script called run_analysis.R was created that does the following:

1. Merges the training and the test sets to create one data set - this was done using rbind()

2. Extracts only the measurements on the mean and standard deviation for each measurement - first the column names was assigned to the merged data set using features.txt file data; then only mean and standard deviation measurements were extracted for each variable using grepl()

3. Uses descriptive activity names to name the activities in the data set - first the activity_labels file data was read into a table; then match() was used to assign decritive activity names instead of using the activity numbers

4. Appropriately labels the data set with descriptive variable names - gsub() was used in a few different ways to label the column names for preparation of the tidy data set

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject - finally the tidy data set was created by using summaryBy and aggregate functions.

tidyData.txt details
---------------------
This is a clean, independant data set that contains a top header row followed by average data of each variable, for each activity and subject combination. This data set contains 180 rows and 68 columns, out of which 66 are for each feature variable and remaining 2 to indicate the activity and subject.

The "tidyData.txt" can be read by using read.table().

Codebook.md
-----------
The code book describes the variables, data sources, and any transformations performed to clean up the data.

License:
--------
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

VS, June 2014
=======
------------
>>>>>>> 6b691983b1871dfefbdcb2339ea25376ee4fe4cb
