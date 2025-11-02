library(dplyr)
library(ggplot2)
library(modeest)

#Load dataset
data("iris")

#Descriptive statistics
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
mlv(iris$Sepal.Length, method="mfv")
sd(iris$Sepal.Length)
range(iris$Sepal.Length)
summary(iris$Sepal.Length)

#Histogram
hist(iris$Sepal.Length, 
     main="Histogram of Sepal Length", 
     xlab="Sepal Length", col="lightblue", border="black")

#Scatterplot
plot(iris$Sepal.Length, iris$Petal.Length,
     main="Scatterplot of Sepal vc Petal Length",
     xlab="Sepal Length", ylab="Petal Length",
     col="blue", pch=19)

#Boxplot
boxplot(Sepal.Length ~ Species, data=iris,
        main="Boxplot of Sepal Length by Species",
        xlab="Species", ylab="Sepal Length",
        col=c("lightgreen", "lightblue", "pink"))
