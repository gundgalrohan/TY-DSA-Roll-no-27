#1. Plot a normal distribution curve with mean = mean of Sepal.Length and sd = sd of Sepal.Length.
x <- seq(min(iris$Sepal.Length), max(iris$Sepal.Length), length=100)
y <- dnorm(x, mean(iris$Sepal.Length), sd(iris$Sepal.Length))
plot(x, y, type="l", col="blue", main="Normal Distribution of Sepal.Length")

#2. Perform a Shapiro–Wilk test to check if Sepal.Length follows a normal distribution.
shapiro.test(iris$Sepal.Length)

#3. Simulate 1000 samples from a binomial distribution (n = 10, p = 0.5) and plot its histogram.
binom_data <- rbinom(1000, size=10, prob=0.5)
hist(binom_data, col="lightgreen", main="Binomial Distribution (n=10, p=0.5)")

#4. Compare the sample mean and variance with theoretical values for the binomial distribution.
mean(binom_data); var(binom_data)
theoretical_mean <- 10*0.5; theoretical_var <- 10*0.5*0.5
theoretical_mean; theoretical_var
