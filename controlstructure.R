# 6.1 Fibonacci series
fib <- function(n){
  if(n<=0) return(NULL)
  if(n==1) return(0)
  if(n==2) return(c(0,1))
  a <- 0; b <- 1; res <- c(a,b)
  for(i in 3:n){
    c <- a + b
    res <- c(res, c)
    a <- b; b <- c
  }
  res
}
print(fib(10))

# 6.2 Multiplication table of a given number
mult_table <- function(n, upto=10){
  for(i in 1:upto) cat(n, "x", i, "=", n*i, "\n")
}
mult_table(7, 12)

# 6.3 Armstrong check (for 3-digit numbers generic) (narcissistic) check for a given number
is_armstrong <- function(n){
  digits <- as.integer(unlist(strsplit(as.character(n), split="")))
  sum_pow <- sum(digits ^ length(digits))
  return(sum_pow == n)
}
cat("153 is Armstrong?", is_armstrong(153), "\n")
cat("9474 is Armstrong?", is_armstrong(9474), "\n")
 
# 6.4 Factorial of a number
fact <- function(n){
  if(n==0) return(1)
  res <- 1
  for(i in 1:n) res <- res * i
  res
}
cat("5! =", fact(5), "\n")

# 6.5 Sum of natural numbers up to n
sum_natural <- function(n){
  sum(1:n)
}
cat("Sum 1..10 =", sum_natural(10), "\n")

