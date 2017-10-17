mtcars

newdata <- mtcars[1:2]

mpg_4 <- newdata[which(newdata$cyl == 4), ]
mpg_6 <- newdata[which(newdata$cyl == 6), ]
mpg_8 <- newdata[which(newdata$cyl == 8), ]

cbind(mean(mpg_4$mpg), mean(mpg_6$mpg), mean(mpg_8$mpg))

tapply(mtcars$mpg, mtcars$cyl, mean)