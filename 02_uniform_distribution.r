# sum of four dice
roll <- 10000
dice <- ceiling(runif(roll) * 6) + ceiling(runif(roll) * 6) + ceiling(runif(roll) * 6) + ceiling(runif(roll) * 6)
a <- table(dice)
a
barplot(a)