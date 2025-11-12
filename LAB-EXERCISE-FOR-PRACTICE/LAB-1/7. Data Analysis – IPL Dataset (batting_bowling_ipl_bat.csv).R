#1. Load the data set
ipl <- read.csv("C:/Users/Rohan/Documents/ROHAN/COLLEGE/DSA/LAB/Lab_1/datasets_lab1/batting_bowling_ipl_bat.csv",
                na.strings = c("", "NA"))
ipl <- na.omit(ipl)

#2. Show first 10 rows
head(ipl, 10)

#3. Top 5 players with highest runs
top5_runs <- ipl[order(-ipl$Runs), ][1:5, c("Name", "Runs")]
top5_runs

#4. Player with highest batting average
ipl[which.max(ipl$Ave), c("Name", "Ave")]

#5. Bar chart for top 10 players by strike rate
top10_sr <- ipl[order(-ipl$SR), ][1:10, ]
barplot(top10_sr$SR,
        names.arg = top10_sr$Name,
        las = 2, col = "orange",
        main = "Top 10 Players by Strike Rate",
        ylab = "Strike Rate")

#6. Correlation between Runs and Strike Rate
cor(ipl$Runs, ipl$SR)

