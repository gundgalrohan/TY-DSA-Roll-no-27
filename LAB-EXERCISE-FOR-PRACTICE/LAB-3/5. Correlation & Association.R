library(arules)
data("Groceries")

#1. Compute the Pearson correlation between mpg and hp.
cor(mtcars$mpg, mtcars$hp)

#2. Plot a scatterplot with regression line of mpg ~ hp.
plot(mtcars$hp, mtcars$mpg, main="MPG vs HP", xlab="HP", ylab="MPG", col="blue")
abline(lm(mpg ~ hp, data=mtcars), col="red")

#3. Create a correlation matrix for all numeric columns in mtcars.
cor(mtcars)

#4. Compute and interpret the Spearman rank correlation between Sepal.Length and Petal.Length.
cor(iris$Sepal.Length, iris$Petal.Length, method="spearman")

#5. Perform association rule mining (using arules package) on a small market basket dataset.
rules <- apriori(Groceries, parameter=list(supp=0.01, conf=0.5))
inspect(head(rules))