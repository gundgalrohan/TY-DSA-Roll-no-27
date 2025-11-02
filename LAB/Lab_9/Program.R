library(dplyr)
library(caret)
library(rpart)
library(rpart.plot)
library(pROC)
library(ggplot2)

#Load dataset
data("iris")

#Convert to binary classification: setosa vs non_setosa
iris_bin <- iris %>%
  mutate(Species = factor(ifelse(Species == "setosa","setosa", "non_setosa"),
                          levels = c("non_setosa", "setosa")))

#Train test split
set.seed(123)
idx <- createDataPartition(iris_bin$Species, p = 0.7, list = FALSE)
trainData <- iris_bin[idx, ]
testData <- iris_bin[-idx, ]

#1. Logistic Regression
log_model <- glm(Species ~ Sepal.Length + Petal.Length,
                 data = trainData, family = binomial())
log_prob <- predict(log_model, testData, type = "response")
log_class <- ifelse(log_prob > 0.5, "setosa", "non_setosa")
confusionMatrix(factor(log_class, levels = levels(testData$Species)),
                testData$Species)

#ROC Curve
roc_obj <- roc(testData$Species, log_prob,
               levels = c("non_setosa", "setosa"))
plot(roc_obj, col="blue", main="ROC Curve - Logistic Regression")

#2. Decision Tree
tree_model <- rpart(Species ~ Sepal.Length + Petal.Length,
                    data = trainData, method = "class")
dev.off()
par(mar = c(4, 4, 2, 1))
rpart.plot(tree_model)

#Predictions & Confusion Matrix
tree_pred <- predict(tree_model, testData, type="class")
confusionMatrix(tree_pred, testData$Species)
