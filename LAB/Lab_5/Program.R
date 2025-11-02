library(dplyr)
library(caret)

#Load dataset
data("mtcars")
head(mtcars)

#1. Binning: Categorize mpg into Low, Medium, High
mtcars$mpg_category <- cut(mtcars$mpg,
                           breaks = c(-Inf, 15, 25, Inf),
                           labels = c("Low", "Medium", "High"))

table(mtcars$mpg_category)

#2. Encoding: Convert Species to numeric codes (iris dataset)
data("iris")
iris$Species_code <- as.numeric(as.factor(iris$Species))
head(iris[, c("Species", "Species_code")])

#3. Normalization: Scale wt (weight) column
mtcars$wt_normalized <- (mtcars$wt - min(mtcars$wt)) /
  (max(mtcars$wt) - min(mtcars$wt))
head(mtcars$wt_normalized)

#4. Standardization: Z-score for hp (horsepower)
mtcars$hp_zscore <- scale(mtcars$hp)
head(mtcars$hp_zscore)

#5. Feature Creation: Power-to-Weight Ratio
mtcars$power_to_weight <- mtcars$hp / mtcars$wt
head(mtcars$power_to_weight)
