#1. For loop to print numbers from 1-10
for (i in 1:10){
  print(i)
}

#2. While loop to sum numbers from 1-100
sum <- 0
i <- 1
while (i <= 100){
  sum <- sum + i
  i <- i + 1
}
sum

#3. Loop to print even numbers from 1-50
for( i in 1:50){
  if (i %% 2 == 0){
    print(i)
  }
}

#4. Loop to print multiplication table of 7
for (i in 1:10){
  print(7 * i)
}

#5. Loop to calculate factorial of n
n <- 5
fact <- 1
for (i in 1:n){
  fact <- fact * i
}
fact

#6. Nested loop to print star pattern
for (i in 1:4){
  for (j in 1:i){
    cat("*") 
  }
  cat("\n")
}

