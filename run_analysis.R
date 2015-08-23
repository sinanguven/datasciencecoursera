## This script groups the answers for the question in the Getting and Cleaning Data course
## To address the first question, we'll start with assembling the test data and 
## naming the columns a, b and c. 
table_test <- read.csv("ProgAssignment/test/subject_test.txt", header=FALSE)
table_test <- cbind(table_test, read.csv("ProgAssignment/test/X_test.txt", header=FALSE))
table_test <- cbind(table_test, read.csv("ProgAssignment/test/y_test.txt", header=FALSE))
names(table_test) <- c("a", "b", "c")

## We will continue by doing the same for the training data. We use the same column names.
table_train <- read.csv("ProgAssignment/train/subject_train.txt", header=FALSE)
table_train <- cbind(table_train, read.csv("ProgAssignment/train/X_train.txt", header=FALSE))
table_train <- cbind(table_train, read.csv("ProgAssignment/train/y_train.txt", header=FALSE))
names(table_train) <- c("a", "b", "c")

## table1 is the answer for Step 1
## we merge the test and traing data using rbind
table1 <- table_test
table1 <- rbind(table1, table_train)

## table2 is the answer for Step 2
## we list the mean and standard deviation measurements, measurements 1 to 6, by using the 
## less than or equal to logical operator on column a
table2 <- table1[table1$a<=6,]

## table3 is the answer for Step 3
## For this answer, we read the activity labels and name the two columns as c and d. c is being
## reused because this data existed before and now will help us with a join.
activity_labels <- read.csv("ProgAssignment/activity_labels.txt", header=FALSE, sep=" ")
names(activity_labels) <- c("c", "d")
table3 <- merge(table2, activity_labels, by.x="c", by.y="c", all=TRUE)

## table4 is the answer for Step 4
## Similar to the previous answer, we read features and use the merge function to join two tables,
## this time on column a
desc_vars <- read.csv("ProgAssignment/features.txt", header=FALSE, sep=" ")
names(desc_vars) <- c("a", "e")
table4 <- merge(table3, desc_vars, by.x="a", by.y="a", all=FALSE)
table4
