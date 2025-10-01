# 1. Display first 15 rows of mtcars data set
data("mtcars")
head(mtcars, 15)

# 2. Find maximum and minimum value of Sepal.Length from iris data set
data("iris")
head(iris)
max(iris$Sepal.Length)
min(iris$Sepal.Length)

# 3. Calculate mean of variable mpg in mtcars data set
mean(mtcars$mpg) 

# 4. Display structure of airquality data set
data("airquality")
str(airquality)

# 5. Check whether the number 100 is greater than 50 in R
100 > 50
