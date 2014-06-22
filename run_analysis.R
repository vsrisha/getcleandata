#Read data from .txt files into R
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#Combine to get training and test data sets
train <- cbind(X_train, y_train, subject_train)
test <- cbind(X_test, y_test, subject_test)

dim(train) #7352 563
dim(test) #2947 563

#Merge training and test sets to get one data set
Z <- rbind(train, test)
dim(Z)  #10299 563
#head(Z)
#Z[1,]

#Extract measurements on the mean and standard deviation for each measurement
features <- read.table("./UCI HAR Dataset/features.txt")
dim(features)  #561 2
#head(features)
#tail(features)

colnames <- features[,2]
head(colnames)
numcols <- length(colnames)

names(Z) <- colnames
names(Z)[numcols+1] <- "Activity"
names(Z)[numcols+2] <- "Subject_ID"

meas <- grepl('mean\\(\\)|std\\(\\)|Activity|Subject_ID', names(Z), ignore.case = FALSE)
newZ <- Z[, meas]   
dim(newZ)   #10299 68
#head(newZ)

#Use descriptive activity names to name the activities in the data set
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

match.idx <- match(newZ$Activity, activity_labels$V1)
newZ$Activity <- activity_labels$V2[match.idx]
#head(newZ)

#Appropriately labels the data set with descriptive variable names. 
names(newZ) <- gsub("\\(\\)", "", names(newZ))
names(newZ) <- gsub("BodyBody", "Body", names(newZ))
names(newZ) <- gsub("^t", "Time-", names(newZ))
names(newZ) <- gsub("^f", "Freq-", names(newZ))
names(newZ) <- gsub("-", "_", names(newZ))

#names(newZ)
      
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject
head(newZ)

install.packages("doBy")
library(doBy)
tidyZ <- summaryBy(.~Activity+Subject_ID, data=tidyZ, FUN=mean)
dim(tidyZ) #180 68

tidyZ <- aggregate(.~Activity+Subject_ID, data=newZ, FUN=mean)
dim(tidyZ) #180 68
#head(tidyZ)
#tail(tidyZ)

#Write the final tidy data into a text file
write.table(tidyZ, file="tidyData.txt", eol = "\n", row.names=FALSE, col.names=TRUE)





