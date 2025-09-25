setwd("/Users/kavindu/Desktop/IT24104101_Lab_06")


#Question 01
#part 1

n <- 50
p <- 0.85

# Probability at least 47 pass
prob <- sum(dbinom(47:50, size=n, prob=p))
prob

#part 2
prob <- 1 - pbinom(46, size=n, prob=p)
prob

#Question 02
# part 1
# Random variable X = number of customer calls received in one hour

#part 2
# X follows a Poisson distribution with lambda = 12
lambda <- 12

#part 3
# Probability that exactly 15 calls are received in an hour
prob_q2 <- dpois(15, lambda)
print(prob_q2)
