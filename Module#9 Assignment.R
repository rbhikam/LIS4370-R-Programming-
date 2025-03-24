#Module 9 Assignment 
#mtcars Dataset
data(mtcars)
head(mtcars)


#Visualization 1 Base R
hist(mtcars$hp,
     main = "Distribution of Horsepower",
     xlab = "Horsepower",
     col = "lightblue",
     border = "white")

#Visualization 2 Boxplot
library(lattice)
mtcars$weight_class <- ifelse(mtcars$wt < 3, "Light", "Heavy")
bwplot(hp ~ weight_class, data = mtcars,
       main = "Horsepower by Weight",
       xlab = "Weight",
       ylab = "Horsepower",
       col = "lightblue")

#Visualization 3 ggplot2
library(ggplot2)
ggplot(mtcars, aes(x = wt, y = hp)) +
  geom_point(color = "darkgreen", size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "black", linetype = "dashed") +
  ggtitle("ggplot2: Horsepower vs Weight with Regression Line") +
  xlab("Weight (1000 lbs)") +
  ylab("Horsepower") +
  theme_minimal()
