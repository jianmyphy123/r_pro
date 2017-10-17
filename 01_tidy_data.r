library(tidyr)
library(dplyr)

member <- data.frame(family=c(1,2,3), namef=c('a','b','c'), agef=c(30,40,23), namem=c('d','e','f'), agem=c(44,53,25))
member

a <- gather(member, key, value, namef:agem)
b <- separate(a, key, c('variable', 'type'), -2)
new <- spread(b, variable, value)

filter(new, age>=30)
select(member, family, namef, agef)

new2 = member %>%
  gather(key, value, namef:agem) %>%
  separate(key, c('variable', 'type'), -2) %>%
  spread(variable, value)

new2


