#Print a message
print("Hello, Welcome to R Programming")

#Assign Variables
x <- 25
y <- 5

#Arithmetic Operations
sum_val <- x + y
diff_val <- x - y
prod_val <- x * y
div_val <-x / y

sum_val
diff_val
prod_val
div_val

#Relational Operations
greater_check <- x > y
equal_check <- x == y

#Load and explore iris data set
data("iris")
head(iris)
str(iris)
summary(iris)
