library(dplyr)
library(caret)

#1. Perform binning on Sepal.Length from iris into categories: Short, Medium, Long.
iris$SepalLength_category <- cut(iris$Sepal.Length, 
                                 breaks = c(-Inf, 5, 6, Inf), 
                                 labels = c("Short", "Medium", "Long"))
head(iris)

#2. Convert Species column in iris into dummy variables (One-Hot Encoding).
iris_dummies <- dummyVars(~ Species, data = iris)
iris_encoded <- predict(iris_dummies, newdata = iris)
head(iris_encoded)

#3. Normalize the mpg column in mtcars dataset.
mtcars$mpg_normalized <- (mtcars$mpg - min(mtcars$mpg)) / 
  (max(mtcars$mpg) - min(mtcars$mpg))
head(mtcars)

#4. Standardize the Sepal.Width column in iris.
iris$SepalWidth_zscore <- scale(iris$Sepal.Width)
head(iris)

#5. Create a new feature in mtcars: efficiency = mpg / hp.
mtcars$efficiency <- mtcars$mpg / mtcars$hp
head(mtcars)

