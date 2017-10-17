x <- c(1:10)
y <- x^2 - x + 10

plot(x, y)
plot(x, y, type='p')
plot(x, y, type = 'n')
plot(x, y, type='b')
plot(x, y, type='S')
plot(x, y, type='s')
plot(x, y, type='h')
plot(x, y, type='h', col='blue')
plot(x, y, type='p', pch=1)

par(mfrow = c(2,4))
types <- c('p', 'l', 'o', 'b', 'c', 'S', 's', 'h')
for(i in 1:8)
  plot(x, y, type=types[i], pch=i)