plot(mtcars$mpg)

dotchart(mtcars$mpg, labels=row.names(mtcars), cex = 0.7)

carmpg <- mtcars[order(mtcars$mpg), ]
carmpg$cyl <- factor(carmpg$cyl)
carmpg$color[carmpg$cyl == 4] <- 'blue'
carmpg$color[carmpg$cyl == 6] <- 'green'
carmpg$color[carmpg$cyl == 8] <- 'red'

dotchart(carmpg$mpg, labels=row.names(carmpg), cex = 0.7, color = carmpg$color, groups = carmpg$cyl,
         main = 'Mileage depending on numbers of cylinder', xlab = 'Miles per gallon')