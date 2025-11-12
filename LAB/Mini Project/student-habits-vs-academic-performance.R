# Student Habits vs Academic Performance
# --------------------------------------

# 1. Import libraries
library(ggplot2)
library(dplyr)

# 2. Load dataset
data <- read.csv("C:/Users/Rohan/Documents/ROHAN/COLLEGE/DSA/LAB/Lab/Mini_Project/Student_Habits_vs_Academic_Performance/student_habits_performance.csv")

# 3. Inspect data
head(data)
summary(data)

# 4. Clean data
data <- na.omit(data)       # remove missing rows
data <- distinct(data)      # remove duplicates

# 5. Transform / Prepare (if needed)
# Example: ensure exam_score within valid range
data <- filter(data, exam_score <= 100)

# 6. Descriptive statistics
num_cols <- c("study_hours_per_day", "social_media_hours",
              "attendance_percentage", "sleep_hours", "exam_score")
summary(data[, num_cols])

# 7. Correlation analysis
print(cor(data[, num_cols]))

# 8. Visualizations
# Study Hours vs Exam Score
ggplot(data, aes(study_hours_per_day, exam_score)) +
  geom_point(color="blue") +
  geom_smooth(method="lm", se=FALSE, color="red") +
  labs(title="Study Hours vs Exam Score", x="Study Hours", y="Exam Score")

# Social Media Hours vs Exam Score
ggplot(data, aes(social_media_hours, exam_score)) +
  geom_point(color="orange") +
  geom_smooth(method="lm", se=FALSE, color="red") +
  labs(title="Social Media Hours vs Exam Score", x="Social Media Hours", y="Exam Score")

# Attendance vs Exam Score
ggplot(data, aes(attendance_percentage, exam_score)) +
  geom_point(color="green") +
  geom_smooth(method="lm", se=FALSE, color="red") +
  labs(title="Attendance vs Exam Score", x="Attendance (%)", y="Exam Score")

# 9. Interpret & Conclude
cat("\n--- Observations ---\n")
cat("• More study hours → higher exam scores.\n")
cat("• More social media hours → lower scores.\n")
cat("• Better attendance → better performance.\n")
cat("• Balanced sleep improves results.\n")
