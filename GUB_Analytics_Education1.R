#Counter 
X <- 5
X <- X + 1

#Die Roll
S <- 1:6
#function_name(argument1 = x, arg2 = y...)
S <- seq(from = 1, to = 6, by = 1)
wprob <- c(1/6,1/6,1/6,1/6,1/6,1/6)
n <- 60

set.seed(27)
samps <- sample(S, n, replace = TRUE, prob = wprob)
summary(samps)

sampsdf <- as.data.frame(samps)
summary(sampsdf)



#Fantasy Football

