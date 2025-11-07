# 3(a). Write an R program to sort a list of 10 strings in ascending and descending order
strs <- as.list(c("Delhi","Mumbai","Pune","Kolkata","Chennai","Bengaluru","Hyderabad","Jaipur","Surat","Lucknow"))
# Sorting: convert to vector, sort, then back to list (if needed)
asc <- as.list(sort(unlist(strs), decreasing = FALSE))
desc <- as.list(sort(unlist(strs), decreasing = TRUE))
cat("Ascending list:\n")
print(asc)
cat("Descending list:\n")
print(desc)

# 3(b). Create a list of cities and perform operations: name elements, add, remove last, update 3rd 
cities <- list("Pune", "Mumbai", "Nashik")
names(cities) <- c("C1","C2","C3")
# Add an element at the end
cities[[length(cities) + 1]] <- "Nagpur"
# Remove last element
cities <- cities[-length(cities)]
# Update 3rd element (if exists)
if(length(cities) >= 3) cities[[3]] <- "Aurangabad"
print(cities)

# 3(c). Create a list of elements using a vector, a matrix and a function. Print contents
v <- c(1,2,3)
m <- matrix(1:6, nrow=2)
f <- function(x) x^2
mylist <- list(numbers = v, mat = m, square = f)
print(mylist)
# call function inside list
cat("Square of 4 via list function:", mylist$square(4), "\n")


# 3(d). Convert a given matrix to a list and print list in ascending order
m <- matrix(c(3,1,4,2,5,6), nrow = 3)
# convert matrix to list of column-vectors
lst_cols <- as.list(as.data.frame(m))
print(lst_cols)
# to sort entire flattened values ascending
sorted_vals <- sort(as.vector(m))
cat("Sorted values from matrix:", sorted_vals, "\n")