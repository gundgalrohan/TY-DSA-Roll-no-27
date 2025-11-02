library(dplyr)
library(ggplot2)
library(modeest)

#Load dataset
data("iris")
data("mtcars")
data("airquality")
data("iris")

#Calculate the mean, median, mode and standard deviation of Petal.width from isis
mean(iris$Petal.Width)
median(iris$Petal.Width)
mlv(iris$Petal.Width, method="mfv")
sd(iris$Petal.Width)
range(iris$Petal.Width)
summary(iris$Petal.Width)


#Histogram of mpg from mtcars
hist(mtcars$mpg,
     main="Histogram f MPG from mtcars",
     xlab="Miles Per Gallon (mpg)",
     col="lightblue", border="black")

#Scatterplot of hp vs mpg from mtcars
plot(mtcars$hp, mtcars$mpg,
     main="Scatterplot of Horsepower vs MPG",
     xlab="Horsepower (hp)", ylab="Miles Per Gallon (mpg)",
     col="blue", pch=19)

#boxplot of Ozone from airquality data
boxplot(airquality$Ozone,
        main="Boxplot of Ozone Levels in Airquality Dataset",
        ylab = "Ozone",
        col="lightgreen",
        border = "black")

#Variance of Sepal.Width from iris dataset
var(iris$Sepal.Width)
