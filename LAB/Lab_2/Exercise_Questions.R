# 1. Import airquality data set and check its structure
data("airquality")
str(airquality)

# 2. Find number of missing values in airquality
sum(is.na(airquality))

# 3. Use summary() on mtcars dataset and interpret output
data("mtcars")
summary(mtcars)
# for each variable, summary() gives:
#   Min, 1st Quantile, Median, Mean, 3rd Quantile, Max

# 4. Find mean horsepower in mtcars dataset
mean(mtcars$hp)

# 5. Group iris dataset by Species and calculate average Sepal.Width
library(dplyr)
iris %>%
  group_by(Species) %>%
  summarise(avg_SepalWidth = mean(Sepal.Width))
