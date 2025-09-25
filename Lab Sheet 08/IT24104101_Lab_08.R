setwd("C:\\Users\\it24104101\\Desktop\\IT24104101") 
weights <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

fix(weights)
attach(weights)
# Extract the Weight column
w <- weights$Weight.kg.


pop_mean <- mean(w)
pop_sd   <- sd(w)

print("Q1: Population Mean and SD")
print(pop_mean)
print(pop_sd)


set.seed(42)   # for reproducibility

sample_means <- c()
sample_sds   <- c()

for(i in 1:25){
  samp <- sample(w, size = 6, replace = TRUE)
  sample_means[i] <- mean(samp)
  sample_sds[i]   <- sd(samp)
}

print("Q2: Sample Means (25 samples)")
print(sample_means)

print("Q2: Sample SDs (25 samples)")
print(sample_sds)

# -------------------------------
# Question 3:
# Mean & SD of the 25 sample means
# and compare with true mean & SD
# -------------------------------
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)

print("Q3: Mean of Sample Means")
print(mean_of_sample_means)

print("Q3: SD of Sample Means")
print(sd_of_sample_means)

# -------------------------------
# Relationships
# -------------------------------
print("Relationship:")
print(" - Mean of sample means ≈ Population mean")
print(" - SD of sample means < Population SD")