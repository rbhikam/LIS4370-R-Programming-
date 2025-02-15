#Matrices
A<- matrix(1:100, nrow=10)
B<- matrix(1:1000, nrow=10)

#Transpose A and B
t(A)
t(B)

#A and B vectors
a<-c(1:10)
b<-c(11:20)

#Multiplying matrices by vectors
A%*%a
B%*%b

#Reassigning the vectors
a<-c(1:10)
b<-c(1:100)

#Multiply the matrix by a matrix
A_small<-matrix(1:4, nrow=2)
B_small<-matrix(5:8, nrow=2)
A_small %*% B_small

#Inverse a Matrix
S<-matrix(2:5, nrow=2)
solve(S)

#Chech det
det(S)
