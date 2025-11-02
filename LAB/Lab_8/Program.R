library(dplyr)
library(ggplot2)

#Load dataset
data("mtcars")
head(mtcars)

#1. Simple Linear Regression: mpg predicted by wt
model_simple <- lm(mpg ~ wt, data = mtcars)
summary(model_simple)

#2. Plot regression line
ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point(color = "blue") + 
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(title = "Simpile Linear Regression: MPG vs Weight",
       x = "Weight (1000 lbs)", y = "Miler per Gallon")

#3. Multiple Linear Regression: mpg predicted by wt and hp
model_multiple <- lm(mpg ~ wt + hp, data = mtcars)
summary(model_multiple)

#4. Residual diagnostics
plot(model_multiple, which = 1)
plot(model_multiple, which = 2)

