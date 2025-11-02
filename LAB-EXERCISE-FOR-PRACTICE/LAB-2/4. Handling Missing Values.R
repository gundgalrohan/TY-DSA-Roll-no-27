library(readxl)
library(dplyr)
library(ggplot2)
library(tidyr)

#Identify the columns with missing values in the Titanic dataset.
colSums(is.na(titanic))

#Replace missing Age values with the median Age.
titanic$age[is.na(titanic$age)] <- median(titanic$age, na.rm = TRUE)

#Drop rows where Embarked is missing.
titanic <- titanic %>% drop_na(embarked)
