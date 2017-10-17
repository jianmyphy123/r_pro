# normal distribution mean = 80, sd = 10
x <- seq(40, 120, length=300)
y <- dnorm(x, mean = 80, sd=10)
plot(x, y, type='l', col='red')
# lines(x, dnorm(x, mean=80, sd=20), col='blue')

# a. probability between 65~75
x2 <- seq(65, 75, length=200)
y2 <- dnorm(x2, mean=80, sd=10)
polygon(c(65, x2, 75), c(0, y2, 0), col='gray')

pnorm(75, mean=80, sd=10) - pnorm(65, mean=80, sd=10)

# b. probability over 92
# pnorm(92, mean=80, sd=10, lower.tail = FALSE)
1 - pnorm(92, mean=80, sd=10)

# c.probability of less than 68
pnorm(68, mean=80, sd=10)

# d. cutoff that seperates the bottom 30%
qnorm(0.3, mean=80, sd=10)

# e. 80th pecentile
qnorm(0.8, mean=80, sd=10)

# f. cutoffs that contain the middle 60%
80 - qnorm(0.8, mean=80, sd=10)
80 - qnorm(0.2, mean=80, sd=10)
