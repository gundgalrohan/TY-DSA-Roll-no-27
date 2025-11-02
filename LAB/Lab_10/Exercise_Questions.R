library(dplyr)
library(ggplot2)
library(factoextra)

#1. Perform K-means clustering with K=4 on iris dataset and compare with species labels
data("iris")
iris_data <- iris[, 1:4]
set.seed(123)
kmeans_iris4 <- kmeans(iris_data, centers = 4, nstart = 20)
table(kmeans_iris4$cluster, iris$Species)

# Q2. Apply clustering on mtcars using mpg, hp, and wt. Interpret clusters
data("mtcars")
mtcars_data <- mtcars[, c("mpg", "hp", "wt")]
set.seed(123)
kmeans_mtcars <- kmeans(mtcars_data, centers = 3, nstart = 20)
kmeans_mtcars$centers   # cluster centers
fviz_cluster(kmeans_mtcars, data = mtcars_data, ggtheme = theme_minimal())

# Q3. Use the elbow method to find optimal number of clusters for iris
fviz_nbclust(iris_data, kmeans, method = "wss") +
  labs(title = "Elbow Method for Optimal K (iris)")

# Q4. Visualize clusters using PCA-based scatterplot in factoextra
fviz_cluster(kmeans_iris4, data = iris_data,
             ellipse.type = "norm",
             palette = "jco",
             ggtheme = theme_minimal())

# Q5. Create a subset of iris with only Sepal.Length and Sepal.Width and cluster it
iris_subset <- iris[, c("Sepal.Length", "Sepal.Width")]
set.seed(123)
kmeans_subset <- kmeans(iris_subset, centers = 3, nstart = 20)
fviz_cluster(kmeans_subset, data = iris_subset,
             palette = "jco", ggtheme = theme_minimal())
