# project
# In part (1):
train data for Subject, Actitivity type and all features in X are read and combined into three data frames:
"Subject", "y", and "X" by a function called "rbind" which stacks one set of data onto another.
And by merging them together into one data set, a data frame is created named "data" with order of variables "Subject","activity lable" and "X".

# In part (2):
By using "grep" function, index of columns whose variable name contains "mean" is saved and later on subsetting the complete data set gives the result, and is saved in data frame "mean.result".

By using "grep" function, index of columns whose variable name contains "std" is saved and later on subsetting the complete data set gives the result, and is saved in data frame "std.result".

# In part (3):
My target is to replace numeric values on activity label variable and replace it according to the description in "activity_labels.txt". First read the file into "name". With the help of "sapply" function on activity label variable and by using a function I defined named"replace", all the numeric values in activity label variable are switched to their corresponding descriptive activity names.
 
# In part (4):
names for X data frame is read into vector "feature" from file "features.txt". And names of the complete data set created in part (1) will be in the or "Subject", "Activity_label" and the ones for X matrix since that's the order how I combined them into the complete dataframe.

# In part (5):
"dplyr" package have nice functions like "group_by" and "summarise_each" to help achieve our goal. I used piping in "dplyr", which is a very neat feature of "dplyr" for doing calculations.

Average of the features in each group of "Activity_label" is saved in matrix named "result.activity" and a txt file for that named " group mean by activity.txt".

Average of the features in each group of "Activity_label" is saved in matrix named "result.subject" and a txt file for that named " group mean by subject.txt".
