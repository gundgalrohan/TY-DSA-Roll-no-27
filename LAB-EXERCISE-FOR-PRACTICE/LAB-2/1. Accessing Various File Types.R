library(readxl)
library(dplyr)
library(ggplot2)
library(tidyr)

path <- "C:/Users/Rohan/Documents/ROHAN/COLLEGE/DSA/LAB/Lab_Exercises_for_Practice/Lab-2/"

#Load a CSV file (dataset_Facebook.csv) into a dataframe.
fb <- read.csv(paste0(path, "dataset_Facebook.csv"), sep = ";")

#Load an Excel file (LungCap_Dataset.xls) into a dataframe.
titanic <- read.csv(paste0(path, "train_titanic.csv"))

#Load a text file separated by commas.
text_data <- read.table(paste0(path, "data_text.txt"), sep = ",", header = TRUE)

#Display the first 10 rows of each dataset using head().
head(fb, 10)
head(titanic, 10)
head(text_data, 10)

#Check the data type of each column in the Titanic dataset.
str(titanic)

#Save the Titanic dataset into a new CSV file after filtering only passengers who survived.
survivors <- subset(titanic, Survived == 1)
write.csv(survivors, paste0(path, "Titanic_Survivors.csv"), row.names = FALSE)
