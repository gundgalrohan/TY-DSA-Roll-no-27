library(dplyr)
library(caret)
library(rpart)
library(rpart.plot)
library(pROC)

#1. Build logistic regression predicting am using hp vs wt
data(mtcars)
mtcars$am <- factor(mtcars$am, labels = c("Automatic", "Manual"))
log_model <- glm(am ~ hp + wt, data = mtcars, family = binomial())
summary(log_model)

#2. Construct a decision tree to classify Species in the full iris dataset
data("iris")
tree_model <- rpart(Species ~ ., data = iris, method = "class")
dev.off()
par(mar = c(4, 4, 2, 1))
rpart.plot(tree_model)

#3. Calculate confusion matrix and accuracy for Q1
log_prob <- predict(log_model, type = "response")
log_pred <- ifelse(log_prob > 0.5, "Manual", "Automatic")
conf_mat <- confusionMatrix(factor(log_pred, levels = c("Automatic", "Manual")),
                            mtcars$am)
conf_mat

#4. Plot the ROC curve for the logistic regression model in Q1
roc_obj <- roc(mtcars$am, log_prob, levels = c("Automatic", "Manual"))
plot(roc_obj, col = "blue", main = "ROC Curve - Logistic Regression")

#5. Compare logistic regression and decision tree performance on the iris dataset
cat("Logistic Regression Accuracy:", conf_mat$overall['Accuracy'], "\n")
tree_pred <- predict(tree_model, iris, type = "class")
tree_conf <- confusionMatrix(tree_pred, iris$Species)
cat("Decision Tree Accuracy:", tree_conf$overall['Accuracy'], "\n")

