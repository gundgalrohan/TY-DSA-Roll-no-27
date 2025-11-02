#Load libraries
library(dplyr)
library(ggplot2)
library(GGally)
library(ggcorrplot)

#Load dataset
data("iris")
head(iris)

#1. Summary statistics
summary(iris)

#2. Histogram of Sepal.Length
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(bins = 20, fill = "lightblue", color = "black") +
  labs(title = "Distribution of Sepal Length", x = "Sepal Length", y = "Frequency")

#3. Scatterplot Sepal.Length vs Petal.Length
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point(size = 3) +
  labs(title = "Sepal Length vs Petal Length")

#4. Boxplot of Sepal.Width by Species
ggplot(iris, aes(x = Species, y = Sepal.Width, fill = Species)) +
  geom_boxplot() +
  labs(title = "Boxplot of Sepal Width by Species")

#5. Correlation matrix
corr_matrix <- cor(iris[, 1:4])
ggcorrplot(corr_matrix, lab = TRUE, title = "Correlation Matrix Heatmap")

#6. Pair plot
ggpairs(iris[, 1:4])
