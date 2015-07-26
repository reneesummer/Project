# codebook
# part (1)
X.test     : save test data from file "X_test.txt"
y.test      : save test data from file "y_test.txt"
subject.test: save test data from file "subject_test.txt"

X.train      : save train data from file "X_train.txt"
y.train      : save train data from file "y_train.txt"
subject.train: save train data from file "subject_train.txt"

X        : combine test and train data on measurements together as "X"
y        : combine test and train data on activity lable together as "y"
subject  : combine test and train data on subject together as "subject"

data       : a complete data set with order of "Subject","activity lable" and "X"


# part (2)
mean.result  : save subdet of data whose variable name contains charachtor "mean"
std.result   : save subdet of data whose variable name contains charachtor "std"


# part (3)
name         : save feature names read from file "activity_labels.txt"
replace      : a function to replace values 1 to 6 with correspoding names read from activity lable text file

 
# part (4)
feature         : save variable names from file "features.txt"

# In part (5)
result.activity : save average of the features in each group of "Activity_label"
result.subject  : save average of the features in each group of "Subject"

