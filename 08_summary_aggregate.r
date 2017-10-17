library(MASS)

data(Aids2)
str(Aids2)
head(Aids2)
Aids2[which(Aids2$age == 0), ]

summary(Aids2)

Alive <- Aids2[which(Aids2$status == 'A'), ]
Dead <- Aids2[which(Aids2$status == 'D'), ]

aggregate(Alive$age, by=list(Alive$sex), mean)
aggregate(Dead$age, by=list(Dead$sex), mean)

aggregate(Aids2$age, by=list(Aids2$sex, Aids2$status), mean)