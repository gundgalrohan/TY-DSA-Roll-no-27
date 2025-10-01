# Load required package
library(dplyr)

#1. Import inbuilt dataset: iris
data("iris")
head(iris)
str(iris)
summary(iris)

#2. Import dataset: mtcars
data("mtcars")
head(mtcars)
str(mtcars)

#3. Titanic dataset
data("Titanic")
Titanic

#4. Check for missing values
sum(is.na(iris))
colSums(is.na(mtcars))

#5. Summarize distribution by group
iris %>%
  group_by(Species) %>%
  summarise(
    Avg_Sepal_Length = mean(Sepal.Length),
    Avg_Petal_Length = mean(Petal.Length)
  )
