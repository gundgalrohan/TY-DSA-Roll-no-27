library(readxl)
library(dplyr)
library(ggplot2)
library(tidyr)

#Rename the columns of Titanic dataset to lowercase.
names(titanic) <- tolower(names(titanic))

#Sort the Titanic dataset by Age in descending order.
titanic <- titanic %>% arrange(desc(age))

#Create a new column in Titanic dataset AgeGroup
titanic <- titanic %>%
  mutate(AgeGroup = case_when(
    age < 12 ~ "Child",
    age >= 12 & age <= 18 ~ "Teen",
    age >= 19 & age <= 59 ~ "Adult",
    age >= 60 ~ "Senior"
  ))

#Calculate mean Fare by Pclass and Survived status.
titanic %>%
  group_by(pclass, survived) %>%
  summarise(mean_fare = mean(fare, na.rm = TRUE))

#From Facebook dataset, group posts by Type (e.g., Photo, Link, Status) and compute average likes.
fb %>% group_by(Type) %>% summarise(avg_likes = mean(like, na.rm = TRUE))
