#matrix A
A <- matrix(c(2, 0, 1, 3), ncol = 2)

#matrix B
B <- matrix(c(5, 2, 4, -1), ncol = 2)

#A+B
A_plus_B <- A+B

#A-B
subtraction<- A - B
print(subtraction)print(A_plus_B)

#4x4 diagonal matrix with values 4, 1, 2, 3
diag_matrix <- diag(c(4, 1, 2, 3))
print(diag_matrix)


#Question3
Matrix <- diag(3, 5, 5)
Matrix[-1, 1] <- 2
Matrix[1, -1] <- 1

# Print the result
print("Generated Matrix =")
print(Matrix)
