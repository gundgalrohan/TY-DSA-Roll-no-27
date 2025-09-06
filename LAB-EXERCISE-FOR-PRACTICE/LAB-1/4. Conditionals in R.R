#1. Check if number is positive/negative
num <- -5
if (num > 0) {
  print("Positive")
} else {
  print("Negative")
}

#2. Check if number is even or odd
num <- 7
if (num %% 2 == 0) {
  print("Even")
} else {
  print("Odd")
}

#3. Check if year is leap year
current_year <- 2024
if ((current_year %% 400 == 0) || (current_year %% 4 == 0 && current_year %% 100 != 0)) {
  print("Leap Year")
} else {
  print("Not a Leap Year")
}

#4. Pass or Fail based on marks
marks <- 35
if (marks >= 40) {
  print("Pass")
} else {
  print("Fail")
}

# 5. Nested if-else for grading system
marks <- 82
if (marks >= 90) {
  print("Grade A+")
} else if (marks >= 80) {
  print("Grade A")
} else if (marks >= 70) {
  print("Grade B")
} else if (marks >= 60) {
  print("Grade C")
} else {
  print("Fail")
}
