## Getting And Cleaning Data Programming Assignment

##As instructed, I created the run_analysis.R script that answers the assignment questions 1to4. 
##All of the answers are in this file.

##The first is answer is saved in the table1 variable, the second is in table2, the third in 
## table3 and finally the fourth is table4.

## This script groups the answers for the question in the Getting and Cleaning Data course
## To address the first question, we'll start with assembling the test data and 
## naming the columns a, b and c. 

## We will continue by doing the same for the training data. We use the same column names
## table1 is the answer for Step 1
## for this we merge the test and traing data using rbind

## table2 is the answer for Step 2
## we list the mean and standard deviation measurements, measurements 1 to 6, by using the 
## less than or equal to logical operator on column a

## table3 is the answer for Step 3
## For this answer, we read the activity labels and name the two columns as c and d. c is being
## reused because this data existed before and now will help us with a join.

## table4 is the answer for Step 4
## Similar to the previous answer, we read features and use the merge function to join two 
## tables, this time on column a
