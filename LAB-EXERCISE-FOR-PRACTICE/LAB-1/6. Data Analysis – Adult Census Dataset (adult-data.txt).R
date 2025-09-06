#1. Load the data set
adult <- read.table("C:/Users/Rohan/Documents/ROHAN/COLLEGE/DSA/LAB/Lab_1/datasets_lab1/adult-data.txt", sep = ",", header = FALSE, strip.white = TRUE, na.strings = "?")

#Add column names from data set description
colnames(adult) <- c("age","workclass","fnlwgt","education","education_num",
                      "marital_status","occupation","relationship","race","sex",
                      "capital_gain","capital_loss","hours_per_week","native_country","income")
#2. Show first 10 rows
head(adult, 10)

#3. See structure of data set
str(adult)

#4. Average age of all individuals
mean(adult$age, na.rm = TRUE)

#5.Count people earning >50K and <=50K
table(adult$income)

#6. Most common occupation
sort(table(adult$occupation), decreasing = TRUE)[1]

#7. Average hours per week for each income group
tapply(adult$hours_per_week, adult$income, mean, na.rm = TRUE)

#8. Bar chart of education levels
barplot(table(adult$education),
        main = "Education Levels",
        xlab = "Education",
        ylab = "Count",
        las = 2, col = "skyblue")

#9. Country with highest % of >50K earners
library(dplyr)

adult %>%
  group_by(native_country) %>%
  summarise(total = n(),
            high_income = sum(income == ">50K")) %>%
  mutate(percent = high_income / total * 100) %>%
  arrange(desc(percent)) %>%
  head(1)
