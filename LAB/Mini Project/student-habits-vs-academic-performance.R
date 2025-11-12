#Import necessary pacakages
library(ggplot2)
library(dplyr)

#Import the dataset
data <- read.csv("C:/Users/Rohan/Documents/ROHAN/COLLEGE/DSA/LAB/Lab/Mini_Project/Student_Habits_vs_Academic_Performance/student_habits_performance.csv")

#View dataset
head(data)
summary(data)

#Clean data
data <- na.omit(data)       #To remove missing values
data <- distinct(data)      #To remove duplicate values

#Selected only those columns that might have strong effect on the exam scores
num_cols <- c("study_hours_per_day", "social_media_hours",
              "attendance_percentage", "sleep_hours", "exam_score")
summary(data[, num_cols])
print(cor(data[, num_cols]))

#Visualize data using plots
# Study Hours vs Exam Score
ggplot(data, aes(study_hours_per_day, exam_score)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Study Hours vs Exam Score", 
       x = "Study Hours per Day", y = "Exam Score")

# Social Media Hours vs Exam Score
ggplot(data, aes(social_media_hours, exam_score)) +
  geom_point(color = "orange") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Social Media Hours vs Exam Score", 
       x = "Social Media Hours per Day", y = "Exam Score")

# Attendance vs Exam Score
ggplot(data, aes(attendance_percentage, exam_score)) +
  geom_point(color = "green") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Attendance vs Exam Score", 
       x = "Attendance (%)", y = "Exam Score")

#Print observations
cat("\n--- Observations ---\n")
cat("• More study hours → higher exam scores.\n")
cat("• More social media hours → lower scores.\n")
cat("• Better attendance → better performance.\n")
cat("• Balanced sleep improves results.\n")
