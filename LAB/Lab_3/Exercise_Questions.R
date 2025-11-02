#Load data set
data(airquality)
data(mtcars)
data(iris)

#1. Count how many missing values are present in airquality data set
sum(is.na(airquality))

#2. Replace missing values in Ozone with median instead of mean
head(airquality)
airquality$Ozone[is.na(airquality$Ozone)] <-  median(airquality$Ozone, na.rm = TRUE)
head(airquality)

#3. Create a duplicate data set from mtcars and remove the duplicates
head(mtcars)
mt_cars_dup <- rbind(mtcars, mtcars)
mt_cars_dup <- unique(mt_cars_dup)
head(mt_cars_dup)

#4.Convert all car names in mtcars row names to uppercase
head(mtcars)
rownames(mtcars) <- toupper(rownames(mtcars))
head(mtcars)

#5. Convert the Species column in iris data set into numeric codes (1, 2, 3)
head(iris)
iris$Species <- as.numeric(iris$Species)
head(iris)
