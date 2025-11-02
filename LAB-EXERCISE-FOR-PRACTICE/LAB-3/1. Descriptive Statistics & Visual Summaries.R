#1. Calculate mean, median, mode, variance, standard deviation, and range of the mpg column.
mean(mtcars$mpg); median(mtcars$mpg)
mode_mpg <- names(sort(table(mtcars$mpg), decreasing = TRUE))[1]
mode_mpg
var(mtcars$mpg); sd(mtcars$mpg); range(mtcars$mpg)

#2. Create a frequency table of the number of cylinders (cyl).
table(mtcars$cyl)

#3. Generate a histogram of mpg and overlay a density curve.
hist(mtcars$mpg, col="lightblue", freq=FALSE, main="Histogram of mpg")
lines(density(mtcars$mpg), col="red", lwd=2)

#4. Create a boxplot of mpg by cyl and interpret the spread.
boxplot(mpg ~ cyl, data=mtcars, main="MPG by Cylinders", col=c("pink","lightgreen","lightblue"))

#5. Use summary() to produce a descriptive statistics report of the dataset.
summary(mtcars)