# normal distribution mean = 80, sd = 10
x <- seq(40, 120, length=300)
y <- dnorm(x, mean = 80, sd=10)
plot(x, y, type='l', col='red')
# lines(x, dnorm(x, mean=80, sd=20), col='blue')

# a.probability between 65~75
x2 <- seq(65, 75, length=200)
y2 <- dnorm(x2, mean=80, sd=10)
polygon(c(65, x2, 75), c(0, y2, 0), col='gray')
