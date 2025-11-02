library(readxl)
library(dplyr)
library(ggplot2)
library(tidyr)

#Select only the columns Name, Sex, Age, and Survived
titanic %>% select(Name, Sex, Age, Survived)

#Show passengers older than 50.
titanic %>% filter(Age > 50)

#Count the number of survivors in each passenger class (Pclass).
titanic %>% group_by(Pclass) %>% summarise(Survivors = sum(Survived, na.rm = TRUE))

# Facebook dataset analysis
#Find the post with the maximum number of likes.
fb %>% filter(like == max(like, na.rm = TRUE))

#Calculate the average number of shares per post.
fb %>% summarise(avg_shares = mean(share, na.rm = TRUE))

#Create a new column Engagement = Likes + Comments + Shares.
fb <- fb %>% mutate(Engagement = like + comment + share)
