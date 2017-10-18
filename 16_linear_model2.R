year <- c(2000, 2001, 2002, 2003, 2004)
value <- c(2.3, 3.2, 5.6, 5.4, 5.8)
plot(year, value, ylim = c(0, 10), xlim = c(2000, 2007))

fit <- lm(value ~ year)
abline(fit, col='red')

str(fit$coefficients)
fit$coefficients[[2]]

# value = 0.92 * year - 1837.38
fit$residuals
summary(fit)
