#1. Build a logistic regression model predicting Survived using Age, Sex, and Pclass.
#   Interpret coefficients and odds ratios.
titanic$Sex <- as.factor(titanic$Sex)
model_log <- glm(Survived ~ Age + Sex + Pclass, data=titanic, family="binomial")
summary(model_log)
exp(coef(model_log))  # odds ratios

#2. Fit a linear regression model predicting Petal.Length from Sepal.Length.
#   Plot fitted line + residuals.
model_lin <- lm(Petal.Length ~ Sepal.Length, data=iris)
summary(model_lin)
plot(iris$Sepal.Length, iris$Petal.Length, main="Linear Regression", xlab="Sepal.Length", ylab="Petal.Length")
abline(model_lin, col="red")
plot(resid(model_lin), main="Residuals", col="purple")

#3. Cluster cars using k-means clustering (k = 3) on mpg, hp, wt.
#   Visualize clusters.
data_cluster <- mtcars[, c("mpg", "hp", "wt")]
km <- kmeans(scale(data_cluster), centers=3)
plot(data_cluster$mpg, data_cluster$hp, col=km$cluster, pch=19, main="K-means Clusters")