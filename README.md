# 3-Project-Assignment
Getting and Cleaning Data - Project Assignment
#Introduction
This programming assignment is to collect, work with and clean a data set. 

Data for the project is obtained from the [**original dataset**](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Details of the data set can be found in the README.txt of this data set.

This assignment delivers 3 artefacts

1. **run_analysis.R** - R script that does the following. 

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the dataset created above, creates a independent tidy data set called **Tidyset.txt** with the average of each variable for each activity and each subject.
* There are 86 feature variables, 2 variables(Subject, Activity)

2. **README.md**
* Details the purpose of the assignment, how to perform the steps and detailed information of the variables in the codebook.

3. **CodeBook.md**
* Gives details of the variables in the tidy dataset **Tidyset.txt**



Steps to tidy the data
----------------------
1. Unzip the files from the link and store them in your working directory.
2. Read the *test/train* data sets by reading the *x_test,y_test,subject_test,x_train,y_train,subject_train,* files.
3. Merge the coresponding test and train data sets using rbind.
4. Read the *features.txt*. Pick up indices of the features that have "mean,Mean,std" in their names. 
5. Pick up variables from "x" that have "mean,Mean,std" in their labels,using the indices obtained in step4.
6. Make one dataset *tt*, combining subject,y,x data sets. 
7. Read the *activities.txt* file. Replace the activity numbers with activity lables by doing an *inner_join* of dataset *tt* and *activities* and store it in *tt_tbl*
8. Now rename the variable names in *tt_tbl* with appropriate names. Details of the names are provided in **CodeBook.md**.
9. Get the average for each variable,for each acitvity and each subject and write to a file **Tidyset.txt**.


