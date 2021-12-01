#Die Roll
Y <- seq(from = 2, to = 12, by = 2)
p <- c(1/6,1/6,1/6,1/6,1/6,1/6)
rep(Y, 500)

set.seed(40)
sample2 <- 50
sample <- sample(Y, sample2, replace = FALSE, prob = p)
summary(sample)
plot(sample)