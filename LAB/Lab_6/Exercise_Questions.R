#1. Create histogram of mpg from mtcars dataset
hist(mtcars$mpg, main="Histogram of MPG", xlab="MPG", col="lightblue", border="black")

#2. Generate scatterplot of hp vs wt from mtcars
plot(mtcars$hp, mtcars$wt, main="Scatterplot of HP vs Weight", xlab="Horsepower (HP)", ylab="Weight (WT)", pch=19, col="red")

#3. Draw boxplot of ozone values from airquality dataset
boxplot(airquality$Ozone, main="Boxplot of Ozone", ylab="Ozone Concentration", col="green")

#4. Find correlation between Sepal.Length and Sepal.Width in iris dataset
correlation <- cor(iris$Sepal.Length, iris$Sepal.Width)
cat("Correlation between Sepal.Length and Sepal.Width: ", correlation, "\n")

#5. Create pair plot of the first four columns of mtcars dataset
pairs(mtcars[, 1:4], main="Pair Plot of First Four Columns of mtcars")
