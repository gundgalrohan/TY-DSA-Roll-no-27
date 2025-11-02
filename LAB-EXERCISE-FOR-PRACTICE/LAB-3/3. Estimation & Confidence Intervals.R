#1. Construct a 95% confidence interval for the mean of mpg.
t.test(mtcars$mpg, conf.level=0.95)

#2. Use bootstrapping (boot package) to estimate CI for hp (horsepower).
library(boot)
boot_mean <- function(data, i) mean(data[i])
boot_res <- boot(mtcars$hp, boot_mean, R=1000)
boot.ci(boot_res, type="bca")

#3. Compare confidence intervals of mpg for automatic vs manual cars (am variable).
t.test(mpg ~ am, data=mtcars, conf.level=0.95)
