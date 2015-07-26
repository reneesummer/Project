# part (1)
X.test=read.table("~/Desktop/data/X_test.txt");             dim(X.test)
y.test=read.table("~/Desktop/data/y_test.txt");             dim(y.test)
subject.test=read.table("~/Desktop/data/subject_test.txt"); dim(subject.test)

X.train=read.table("~/Desktop/data/X_train.txt");             dim(X.train)
y.train=read.table("~/Desktop/data/y_train.txt");             dim(y.train)
subject.train=read.table("~/Desktop/data/subject_train.txt"); dim(subject.train)

X=rbind(X.test,X.train); dim(X) # combine test and train data on measurements together as "X"
y=rbind(y.test,y.train); dim(y) # combine test and train data on activity lable together as "y"
subject=rbind(subject.test,subject.train); dim(subject) # combine test and train data on subject together as "subject"

# create a complete data set with order of "Subject","activity lable" and "X"
data=data.frame(subject,y,X)  

# part (2)
mean.result=apply(data,2,mean) ; mean.result
std.result=apply(data,2,std) ; std.result

  # some calculation I am playing with
  # which gives the mean of first variable in X based on its acativity lable
  tapply(data[,3],data[,2],mean)


# part (3)
  name = read.table("~/Desktop/data/activity_labels.txt")[,2]
    # a function to replace values 1 to 6 with correspoding names read from activity lable text file
    replace=function(test) { 
            if(test==1) {test = name[1]
      }else if(test==2) {test = name[2]
      }else if(test==3) {test = name[3]
      }else if(test==4) {test = name[4]
      }else if(test==5) {test = name[5]
      }else if(test==6) {test = name[6]
      }else {cat("Activity type unidentified")}
  }
  
data[,2]=sapply(data[,2],replace) # by using sapply, each element in "Activity label" variable are now descriptive charactors 
table(data[2]) # display counts for each activity level
 
 
# part (4)
feature=read.table("~/Desktop/data/features.txt") ; feature=feature[,2]
names(X)=feature
names(data)=c("Subject","Activity_label",names(X))

# part (5)
install.packages("dplyr"); library(dplyr)
data$Activity_label=as.factor(data$Activity_label)
data$Subject=as.factor(data$Subject)

result.activity=data[,2:563]%>% group_by(Activity_label)%>%summarise_each(funs(mean))
result.subject=data[,1:563]%>% group_by(Subject)%>%summarise_each(funs(mean))

write.table(result.activity,file="group mean by activity.txt",row.names = FALSE)
write.table(result.subject,file="group mean by subject.txt",row.names = FALSE)

