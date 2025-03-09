#Module 8 Assignment - Input/Output, String Manipulation, plyr package

#Step 1
#Import Dataset into R
#install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
#install.packages("plyr")
library(data.table)
library(plyr)

#Reading the Data File
students <- read.table("C:/Users/rbhik/OneDrive/Documents/LIS4370/Assignment 6 Dataset.txt", header = TRUE, sep = ",")
students

#Student Average by Sex 
StudentAverage = ddply(students,"Sex",transform,Grade.Average=mean(Grade))
StudentAverage

#Step2
#Converting the Dataset 
write.table(StudentAverage, "Students_Gendered_Mean", sep = ",")
#Creating new data set with "i" students names
i_Student<- subset(students,grepl("[iI]",students$Name, ignore.case=T))
i_Student

#Step 3
#File seperated by commas
write.table(i_Student,"DataSubset",sep=",")

  
#Step 3
#Convert to csv File
write.table(i_Student,"DataSubset.csv",sep=",")
