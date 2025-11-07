# 5(a) Create a matrix taking a given vector as input and define column and row names. Display the matrix
vec <- 1:12
m <- matrix(vec, nrow = 3, ncol = 4, byrow = TRUE)
rownames(m) <- c('R1','R2','R3')
colnames(m) <- c('C1','C2','C3','C4')
print(m)

# 5(b) Create two 2x3 matrices and add, subtract, multiply and divide the matrices
A <- matrix(c(1,2,3,4,5,6), nrow = 2, byrow = TRUE)
B <- matrix(c(6,5,4,3,2,1), nrow = 2, byrow = TRUE)
addAB <- A + B
subAB <- A - B
# element-wise multiplication and division
mulAB <- A * B
divAB <- A / B
cat("A:\n"); print(A)
cat("B:\n"); print(B)
cat("A+B:\n"); print(addAB)
cat("A-B:\n"); print(subAB)
cat("A*B (element-wise):\n"); print(mulAB)
cat("A/B (element-wise):\n"); print(divAB)

# 5(c) Create a matrix from a list of given vectors
v1 <- c(1,2,3)
v2 <- c(4,5,6)
mat_from_list <- do.call(cbind, list(v1, v2))
print(mat_from_list)

# 5(d) Convert a given matrix to a list of column-vectors
m <- matrix(1:9, nrow=3)
list_cols <- as.list(as.data.frame(m))
print(list_cols)

