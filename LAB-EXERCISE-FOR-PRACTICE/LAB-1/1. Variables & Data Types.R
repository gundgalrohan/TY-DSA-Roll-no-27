#1. Create variable
name <- "Rohan"
age <- 20
is_student <- TRUE

#2. Vector containing 1-10
vec1 <- c(1,2,3,4,5,6,7,8,9,10)
vec1

#3. Sequence from 5-50 with step 5
seq_vec <- seq(5, 50, by = 5)
seq_vec

#4. Store fruit name and display 2nd & 4th
fruits <- c("Apple", "Banana", "Cherry", "Durian", "Elderberry")
fruits[c(2,4)]

#5. Numeric vector of 10 random numbers between 1-100
random_numbers <- sample(1:100, 10)
random_numbers

#Find max, min, mean
max(random_numbers)
min(random_numbers)
mean(random_numbers)

#6. Data frame with name, age, marks
students <- data.frame(
   Name = c("Rohan", "Meet", "Jeff", "Elon", "Mahesh"),
   Age = c(20, 20, 60, 40, 35),
   Marks = c(95, 90, 70, 85, 70)
   )
students

#7. Sort data frame by marks(decending)
students_sorted_dec <- students[order(-students$Marks), ]
students_sorted_dec

