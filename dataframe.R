# 4(a). Create a data frame using two given vectors and display duplicated elements and unique rows
v1 <- c(1,2,2,3,4)
v2 <- c("A","B","B","C","D")
df <- data.frame(id = v1, grp = v2, stringsAsFactors = FALSE)
cat("Data Frame:\n")
print(df)
# duplicated rows
dup_rows <- df[duplicated(df) | duplicated(df, fromLast = TRUE), ]
cat("Duplicated rows:\n")
print(dup_rows)
# unique rows
unique_rows <- unique(df)
cat("Unique rows:\n")
print(unique_rows)

# 4(b) Create a data frame with details of 5 employees and display details in ascending order
emps <- data.frame(
  emp_id = 101:105,
  name = c("Amit","Bina","Chirag","Deepa","Esha"),
  salary = c(50000, 45000, 60000, 52000, 48000),
  stringsAsFactors = FALSE
)
# display in ascending order by name
emps_sorted <- emps[order(emps$name), ]
print(emps_sorted)

# 4(c) Compare two data frames to find elements in first not present in second
df1 <- data.frame(id = 1:5, val = letters[1:5])
df2 <- data.frame(id = c(2,4), val = c('b','d'))
# rows in df1 not in df2 (by all columns)
not_in_df2 <- df1[!apply(df1, 1, function(r) any(apply(df2,1, function(r2) all(r==r2)))), ]
cat("Rows in df1 not present in df2:\n")
print(not_in_df2)

# 4(d) Extract 3rd and 5th rows with 1st and 3rd columns from a given data frame
df <- data.frame(A=1:6, B=letters[1:6], C = rnorm(6))
extracted <- df[c(3,5), c(1,3)]
print(extracted)