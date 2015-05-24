library(data.table)
library(dplyr)
library(plyr)
library(stringi)

#Step1- Merge the training and test data sets to create one data set
#Step2- Extract only measurements on mean and std for each measurement

#read the test set
x_test<-read.table("test/X_test.txt",header=FALSE)
y_test<-read.table("test/y_test.txt",header=FALSE)
subject_test<-read.table("test/subject_test.txt",header=FALSE)

#read the training set
x_train<-read.table("train/X_train.txt",header=FALSE)
y_train<-read.table("train/y_train.txt",header=FALSE)
subject_train<-read.table("train/subject_train.txt",header=FALSE)

# merge the test and train data sets
xx<-rbind(x_test,x_train)
yy<-rbind(y_test,y_train)
subject<-rbind(subject_test,subject_train)

## clear workspace
# rm("x_train")
# rm("y_train")
# rm("x_test")
# rm("y_test")
# rm("subject_train")
# rm("subject_test")

# read features.txt
features<-read.table("features.txt",header=FALSE)

# pick column numbers of variables that have mean,Mean or std in their labels
# gpat holds the column indices
pat<-"mean|Mean|std"
gpat<-grep(pat,features[,2])

#get their labels
heading<-as.character(features[gpat,2])

#pick up required columns that have mean,std in their description
# gpat has the column indices.
xx1<-xx[,gpat]

#prepare one dataset from x, y and subject datasets
tt<-data.table(subject,yy,xx1)


# Step3 Use descriptive activity names to name the activities in the data set
# Step4 Appropriate labels to the data set with descriptive variable names

# read activity_labels.txt
activities<-read.table("activity_labels.txt",header=FALSE)
activities<-setDT(activities)
setnames(activities,1:2,c("ActNum","Activity"))

setnames(tt,1:2,c("Subject","ActNum"))

#replace activity with the labels
tt_tbl<-inner_join(activities,tt,by ="ActNum")

#setting the label names- using the original data set variable names since the
# detailed description of each is avaialble in the codebook
i<-0
heading1<-vector(mode="character",length=length(tt_tbl)-3)
library(stringi)
patterns<-c("-mean()-","-mean()","-meanFreq()-","-meanFreq()","-std()-",
            "-std()","(",")",",")
replacements<-c(rep("Mean",2),rep("MeanFreq",2),rep("Stdev",2),rep("",3))

for (i in 1 : (length(tt_tbl)-3)){
heading1[i]<-stri_replace_all_fixed(heading[i],patterns,replacements,vectorize_all=FALSE)
}


final<-tt_tbl%>%
  select(2:length(names(tt_tbl)))

## set the lables, details of the labels in the CookBook.md
setnames(final,3:length(final),heading1)

#Step5 - Independent tidy data set with
#average of each variable, for each activity and each subject
newDT<-final%>%
  group_by(Activity,Subject)%>%
  summarise_each(funs(mean))%>%
  arrange(Activity,Subject)

## write the clean data set into file called "Tidyset.txt"
write.table(newDT, file = "Tidyset.txt",
            row.names=FALSE, quote= TRUE) 


