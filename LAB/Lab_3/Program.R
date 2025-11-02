library(dplyr)

#Load dataset
data("airquality")
head(airquality)

#1. Check for missing values 
sum(is.na(airquality))
colSums(is.na(airquality))

#2. Handle missing values
#Replace missing Ozone values with mean
airquality$Ozone[is.na(airquality$Ozone)] <- mean(airquality$Ozone, na.rm = TRUE)

#Replace missing Solar.R values with median
airquality$Solar.R[is.na(airquality$Solar.R)] <- median(airquality$Solar.R, na.rm = TRUE)

#View clean data set
head(airquality)

#3. Remove duplicates 
data("iris")
head(iris)
iris_with_duplicates <- rbind(iris, iris[1:5,])
nrow(iris_with_duplicates)
iris_clean <- distinct(iris_with_duplicates)
nrow(iris_clean)

#4. Standardize formats
iris_clean$Species <- tolower(as.character(iris_clean$Species))
iris_clean$Species <- as.factor(iris_clean$Species)

#View cleaned data set
head(iris_clean)
