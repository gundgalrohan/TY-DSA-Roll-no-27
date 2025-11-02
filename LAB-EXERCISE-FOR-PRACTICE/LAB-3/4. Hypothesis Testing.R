titanic <- read.csv("C:/Users/Rohan/Documents/ROHAN/COLLEGE/DSA/LAB/Lab_Exercises_for_Practice/Lab-2/train_titanic.csv")

#1. Perform a one-sample t-test: Is the mean Sepal.Length significantly different from 5.5?
t.test(iris$Sepal.Length, mu=5.5)

#2. Perform a two-sample t-test: Is there a significant difference in mpg between automatic and manual cars?
t.test(mpg ~ am, data=mtcars)

#3. Conduct a chi-square test of independence: Are Survived and Sex independent in the Titanic dataset?
table_t <- table(titanic$Survived, titanic$Sex)
chisq.test(table_t)

#4. Perform a one-way ANOVA: Compare Sepal.Length means across the 3 iris species.
aov_res <- aov(Sepal.Length ~ Species, data=iris)
summary(aov_res)

#5. Apply a post-hoc Tukey HSD test after ANOVA and interpret.
TukeyHSD(aov_res)