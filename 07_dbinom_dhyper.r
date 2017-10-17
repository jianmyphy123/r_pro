dbinom(3, 10, 0.4)

dhyper(3, 8, 12, 10) # white ball: 8, black ball: 12

a = 100
approx = numeric(length = a)
for(i in 1:a) {
  approx[i] = dhyper(3, 4*i, 6*i, 10)
}

plot(approx[2:a])
abline(h = dbinom(3, 10, 0.4), col='red')

approx - dbinom(3, 10, 0.4)