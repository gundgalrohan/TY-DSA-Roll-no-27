library(readxl)
library(dplyr)
library(ggplot2)
library(tidyr)

#Draw a histogram of Age (Titanic dataset).
ggplot(titanic, aes(x = age)) + geom_histogram(binwidth = 5, fill = "skyblue")

#Create a bar chart of Pclass vs. count of passengers.
ggplot(titanic, aes(x = factor(pclass))) + geom_bar(fill = "orange")

#Create a scatter plot of Likes vs Comments.
ggplot(fb, aes(x = like, y = comment)) + geom_point(color = "purple")

#Create a histogram of Shares.
ggplot(fb, aes(x = share)) + geom_histogram(binwidth = 10, fill = "pink")

#For Titanic dataset, use a pie chart to show the proportion of survivors vs non-survivors.
x11(width = 6, height = 6)   # Opens a new plot window
pie(table(titanic$survived),
    labels = c("Did not survive", "Survived"),
    col = c("red", "green"),
    main = "Survival Proportion")
