#1. Perform a one sample t-test to check if the mean mpg in mtcars differs from 20
data("mtcars")
t1 <- t.test(mtcars$mpg, mu = 20)
t1

#2. Compare Petal.Width across Species in iris using ANOVA
data("iris")
aov_res <- aov(Petal.Width ~ Species, data = iris)
summary(aov_res)

#3. Find the correlation between mpg and hp in mt cars
cor_res <- cor.test(mtcars$mpg, mtcars$hp)
cor_res

#4. Perform a paired t-test on Sepal.Length and Sepal.Width in iris
paired_t <- t.test(iris$Sepal.Length, iris$Sepal.Width, paired = TRUE)
paired_t

#5. Check if Ozone and Temp in airquality are significantly related
data("airquality")
cor_ozone_temp <- cor.test(airquality$Ozone, airquality$Temp, use = "complete.obs")
cor_ozone_temp
