library(dplyr)

#load iris datatset
data("iris")

#1. t-test: Compare sepal.length of setosa and versicolor
t_test_result <- t.test(Sepal.Length ~ Species,
                        data = iris%>% filter(Species %in% c("setosa",
                                                             "versicolor")))
t_test_result

#2. ANOVA: compare Sepal.Length across all species
anova_model <- aov(Sepal.Length ~ Species, data = iris)
summary(anova_model)

#3. Correlation: Sepal.Length and Petal.Length
correlation <- cor(iris$Sepal.Length, iris$Petal.Length)
correlation

#4. Correlation test with significance
cor_test <- cor.test(iris$Sepal.Length, iris$Petal.Length)
cor_test
