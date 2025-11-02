library(dplyr)
library(ggplot2)

path <- "C:/Users/Rohan/Documents/ROHAN/COLLEGE/DSA/LAB/Lab_Exercises_for_Practice/Lab-2/"

titanic <- read.csv(paste0(path, "train_titanic.csv"))
fb <- read.csv(paste0(path, "dataset_Facebook.csv"), sep = ";", header = TRUE)

#Create a boxplot of Fare and visually identify potential outliers.
par(mar = c(4, 4, 2, 2))
boxplot(titanic$Fare, main = "Boxplot of Fare", col = "lightblue")

#Create a boxplot of Age separated by Survived (use boxplot(Age ~ Survived, data=Titanic) in R).
boxplot(Age ~ Survived, data = titanic,
        main = "Age by Survival",
        xlab = "Survived (0 = No, 1 = Yes)",
        ylab = "Age",
        col = c("red", "green"))

#Create a boxplot of Likes and identify extreme posts.
boxplot(fb$like,
        main = "Boxplot of Likes",
        ylab = "Number of Likes",
        col = "orange",
        border = "brown")

#Draw a combined boxplot of Likes, Shares, and Comments side by side.
boxplot(fb[, c("like", "share", "comment")],
        main = "Engagement Comparison",
        names = c("Likes", "Shares", "Comments"),
        col = c("pink", "lightgreen", "lightblue"))

#Compute Q1, Q3, and IQR for Fare (Titanic dataset).
Q1_F <- quantile(titanic$Fare, 0.25, na.rm = TRUE)
Q3_F <- quantile(titanic$Fare, 0.75, na.rm = TRUE)
IQR_F <- Q3_F - Q1_F

#Define lower bound = Q1 – 1.5 × IQR, upper bound = Q3 + 1.5 × IQR.
lower_F <- Q1_F - 1.5 * IQR_F
upper_F <- Q3_F + 1.5 * IQR_F

#Count how many passengers have Fare outside this range.
sum(titanic$Fare < lower_F | titanic$Fare > upper_F, na.rm = TRUE)

#How many passengers have ages outside the IQR range?
Q1_A <- quantile(titanic$Age, 0.25, na.rm = TRUE)
Q3_A <- quantile(titanic$Age, 0.75, na.rm = TRUE)
IQR_A <- Q3_A - Q1_A
lower_A <- Q1_A - 1.5 * IQR_A
upper_A <- Q3_A + 1.5 * IQR_A
sum(titanic$Age < lower_A | titanic$Age > upper_A, na.rm = TRUE)

#Replace these outliers with the nearest boundary value (capping method).
titanic$Age <- ifelse(titanic$Age < lower_A, lower_A,
                      ifelse(titanic$Age > upper_A, upper_A, titanic$Age))
