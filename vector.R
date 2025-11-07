# sum_mean_product
vec <- c(2, 4, 6, 8, 10)
sum_vec <- sum(vec)
mean_vec <- mean(vec)
prod_vec <- prod(vec)
cat("Vector elements: ", vec, "\n")
cat("Sum of vector elements: ", sum_vec, "\n")
cat("Mean of vector elements: ", mean_vec, "\n")
cat("Product of vector elements: ", prod_vec, "\n")

# ascendingdescending 
x = c(10, 20, 30, 25, 9, 26)
print(x)
print(sort(x))
print(sort(x, decreasing=TRUE))

# additionsubstraction
# 2(c). Create two vectors of different lengths,
# convert them to matrices and perform addition & subtraction
vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c(6, 7, 8)
# Convert vectors to matrices
matrix1 <- matrix(vector1, nrow = 5, ncol = 1, byrow = TRUE)
matrix2 <- matrix(vector2, nrow = 3, ncol = 1, byrow = TRUE)
cat("\nMatrix 1 (from vector1):\n")
print(matrix1)
cat("\nMatrix 2 (from vector2):\n")
print(matrix2)
# Reshape matrix2 to match matrix1 dimensions
matrix2_reshaped <- matrix(rep(vector2, length.out = length(vector1)), nrow = 5, ncol = 1)
cat("\nReshaped Matrix 2 to match Matrix 1 dimensions:\n")
print(matrix2_reshaped)
# Addition
addition_result <- matrix1 + matrix2_reshaped
cat("\nAddition of Matrices:\n")
print(addition_result)
# Subtraction
subtraction_result <- matrix1 - matrix2_reshaped
cat("\nSubtraction of Matrices:\n")
print(subtraction_result)

# englishletter
letters_lower <- letters # builtin: 'a' to 'z'
first10_lower <- letters_lower[1:10]
letters_upper <- LETTERS
last10_upper <- letters_upper[(length(letters_upper)-9):length(letters_upper)]
# extract letters 22 to 24 and convert to upper
letters_22_24_upper <- toupper(letters_lower[22:24])
cat("First 10 lowercase:", first10_lower, "\n")
cat("Last 10 uppercase:", last10_upper, "\n")
cat("Letters 22-24 in uppercase:", letters_22_24_upper, "\n")