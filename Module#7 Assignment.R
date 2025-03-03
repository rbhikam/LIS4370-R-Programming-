#Module 7 Assignment
#Dataset MtCars
data(mtcars)
head(mtcars, 6)

#Generic function for dataset
summary(mtcars)
plot(mtcars)

#S3 and S4
#Checking the class of the dataset
class(mtcars)
isS4(mtcars)

#S3 object
s3 <- list(make = "Toyota", year = 2015, mpg = 30)
class(s3) <- "car"
s3

#S4 class and object
# Define an S4 class
setClass("Car",
         slots = list(make = "character", year = "numeric", mpg = "numeric"))

s4 <- new("Car", make = "Honda", year = 2022, mpg = 35)
s4
