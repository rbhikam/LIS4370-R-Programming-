#The Dataset
Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)  
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1) 
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1) 

#The dataFrame
hospital_data <- data.frame(Frequency, BP, First, Second, FinalDecision)

#DataFrame Results
print(hospital_data)

# Boxplot of Blood Pressure First Doctor
boxplot(BP ~ First, data = hospital_data, 
        main = "Blood Pressure by First Doctor's Assessment",
        col = c("lightblue", "pink"))

# Boxplot of Blood Pressure based on Second Doctor's Assessment
boxplot(BP ~ Second, data = hospital_data, 
        main = "Blood Pressure by Second Doctor's Assessment",
        col = c("lightgreen", "orange"))

# Histogram of Blood Pressure
hist(hospital_data$BP, 
     main = "Histogram of Blood Pressure", 
     xlab = "Blood Pressure", 
     col = "gray", 
     border = "black")

