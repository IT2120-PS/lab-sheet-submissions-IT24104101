setwd("C:/Users/user/Desktop/IT24104101_Lab_7.pdf")
getwd()

#Question 01
#Uniform Distribution
#Here, random variable X has  follows distribution with a=0 and b=40.
#p(10<X<25)=p(x<=25)-p(X<=10)
punif(25,min=0,max=40,lower.tail = TRUE)-punif(10,min=0,max=40,lower.tail = TRUE)

#Question 02
#Exponential Distribution
#Here, random variable X has exponential distribution with lamda=0.33
#p(X<=2)
pexp(2,rate = 1/3,lower.tail = TRUE)

#Question 03
#Normal Distribution
#Here, random variable X has normal distribution with mean=100 and standard deviation=15.

#Part 01
#p(X>130)
pnorm(130,mean=100,sd=15,lower.tail = FALSE)
#or
1-pnorm(130,mean=100,sd=15,lower.tail = TRUE)

#Part 02
#p(X=95/100)=0.95
qnorm(0.95,mean=100,sd=15,lower.tail = TRUE)
