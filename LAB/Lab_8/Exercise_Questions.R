#1. Build a regression model prediting Petal.Length from Sepal.length in iris
data("iris")
model1 <- lm(Petal.Length ~ Sepal.Length, data = iris)
summary(model1)

#2. Create a multiple regression model predicting mpg vc wt, hp, and drat in mtcars
data("mtcars")
model2 <- lm(mpg ~ wt + hp + drat, data = mtcars)
summary(model2)

#3. Check the R^2 and Adjusted R^2 of the model in Q2
r2 <- summary(model2)$r.squared
adj_r2 <- summary(model2)$adj.r.squared
cat("R^2:", r2, "\nAdjusted R^2:", adj_r2, "\n")

#4. Plot residuals of your regression model in Q1 and interpret the result
dev.new(width = 7, height = 5)
plot(model1$residuals,
     main = "Residuals of Model 1",
     xlab = "Observation",
     ylab = "Residuals",
     pch = 19, col = "blue")
abline(h = 0, col = "red")

#5. Build a regression model predicting Ozone vs Temp from airquality
data("airquality")
model3 <- lm(Ozone ~ Temp, data = airquality)
summary(model3)