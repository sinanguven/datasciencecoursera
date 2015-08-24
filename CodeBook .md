# datasciencecoursera
## Getting And Cleaning Data Programming Assignment

##As instructed, I created the run_analysis.R script that answers the assignment questions 1to4. All of the answers are in this file.

##The first is answer is saved in the table1 variable, the second is in table2, the third in table3 and finally the fourth is table4.

## The script groups the answers for the question in the Getting and Cleaning Data course
## To address the first question, I started with assembling the test data. I created a variable named table_test. As first column, I read the subject_text.txt file, as 2nd column, using cbind, I read the X_test.txt file and as third column the y_test.txt file is read. Finally, I named the columns a, b and c. 

## We will continue by doing the same for the training data. I created a table named table_train. As first column, I read subject_train.txt file, then X_train and y_train files as 2nd and 3rd columns. I named the columns as a, b and c again. 

## I created table1 to serve as the answer for Step 1. For this, I first copied the table_train to table1 and then using rbind I merged table_train to table 1.

## table2 is the answer for Step 2:
## we list the mean and standard deviation measurements, measurements 1 to 6, by using the less than or equal to logical operator on column a.

## table3 is the answer for Step 3:
## For this answer, we read the activity labels to a table named activity_labels with two columns. These columns are named as c and d. The column name c is being reused, because this data existed before, which we use this time in the merge function to join table2, which was created in the previous question, and activity_labels tables.

## table4 is the answer for Step 4:
## Similar to the previous answer, I read features to a table named desc_vars with two columns, named a and e. I reused column a because this data existed in my data set as a. Finally I use the merge finction to join table3, which was created in the previous question, and desc_vars table, this time using column a.

