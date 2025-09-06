#1. Add two numbers
add_numbers <- function(a, b){
  a + b
}
add_numbers(5, 3)

#2. Square of a number
square <- function(n){
  n * n
}
square(4)

#3. Factorial using recursion
factorial_recursive <- function(n){
  if(n == 0){
    1
  } else{
    n * factorail_recursive(n - 1)
  }
}
factorial_recursive(5)

#4. Check if number is prime
is_prime <- function(n){
  if(n <= 1) return(FALSE)
  for(i in 2:(n-1)){
    if (n %% i == 0) return(FALSE)
  }
  TRUE
}
is.prime(7)

#5. Mean, Median, Standard deviation of a vector
vector_stats <- function(v){
  list(
    mean = mean(v),
    median = median(v),
    sd = sd(v)
  )
}
vector_stats(c(10, 20, 30))

#6. Top 5 values in a column of a data frame
top5_column <- function(df, col_name){
  sorted <- sort(df[[col_name]], decreasing = TRUE)
  head(sorted, 5)
}
df <- data.frame(marks = c(45, 89, 76, 90, 100, 67))
top5_column(fd, "marks")