library(dplyr)
library(ggplot2)
library(factoextra)

#Load dataset
data("iris")
iris_data <- iris[, 1:4]

# 1.Elbow Method to find optimal K
fviz_nbclust(iris_data, kmeans, method = "wss") +
  labs(title = "Elbow Method for Optimal K")

#2. Apply K-means clustering with K = 3
set.seed(123)
kmeans_model <- kmeans(iris_data, centers = 3, nstart = 20)

#3. Cluster assignments
kmeans_model$cluster[1:10]
table(kmeans_model$cluster, iris$Species)

#4. Visualize clusters
fviz_cluster(kmeans_model, data = iris_data,
             ellipse.type = "norm",
             palette = "jco",
             ggtheme = theme_minimal())

