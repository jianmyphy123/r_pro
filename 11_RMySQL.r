library(RMySQL)

mydb <- dbConnect(MySQL(), user='root', password='', dbname='bench805', unix.sock='/Applications/XAMPP/xamppfiles/var/mysql/mysql.sock')
result <- dbGetQuery(mydb, 'show tables;')
tbl <- dbGetQuery(mydb, 'select * from main;')
newdf <- tbl[c(2:5, 10,11)]
newdf$col9 <-gsub('na', 0, newdf$col9)
newdf$col10 <-gsub('na', 0, newdf$col10)

str(newdf)
summary(newdf)

newdf$col4 <- as.Date(newdf$col4, format = '%m/%d/%y')
newdf$col9 <- as.numeric(newdf$col9)
newdf$col10 <- as.numeric(newdf$col10)

str(newdf)
summary(newdf)

dbDisconnect(mydb)
