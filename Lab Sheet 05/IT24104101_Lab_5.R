setwd("C:\Users\user\Desktop\IT24104101_Lab_5.R")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

Delivery_Times$Delivery_Time_.minutes. <- as.numeric(Delivery_Times$Delivery_Time_.minutes.)

hist(Delivery_Times$Delivery_Time_.minutes.,
     breaks = seq(20, 70, by = 5),
     right = TRUE,
     col = "lightblue",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time",
     ylab = "Frequency")
##The histogram of delivery times displays a slightly right-skewed distribution, indicating that most deliveries occur within the lower time intervals (between 20 and 40 minutes), while fewer deliveries take longer. The frequency gradually decreases as delivery time increases, suggesting that longer delivery times are less common. This pattern is typical in service-related data, where efficiency is prioritized but occasional delays may occur.

cf <- cumsum(table(cut(Delivery_Times$Delivery_Time_.minutes.,breaks = seq(20, 70, by = 5), right = TRUE)))

plot(seq(22.5, 67.5, by = 5), cf, type = "o", col = "blue",
     xlab = "Delivery Time", ylab = "Cumulative Frequency", 
     main = "Cumulative Frequency Polygon (Ogive)")
